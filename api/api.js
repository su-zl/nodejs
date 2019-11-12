const router=require('koa-router')();
// const moment = require('moment');
const book_movie_music=require('./search').book_movie_music;
// const time_travel=require('./search').time_travel;
// const time_album=require('./search').time_album;
const article=require('./search').article;
const article_detail=require('./search').article_detail;
const whimsy_content=require('./search').whimsy_content;
const comment=require('./search').comment;
const user_img=require('./search').user_img;

const fs = require('fs');
const path = require('path');



router.get('/api/book_movie_music', async (ctx, next) => {
 
    const type = ctx.query.type;
    let data=null;

    data=await book_movie_music.findAll({
        where:{
            type:type
        },
        order:[['index','ASC']], //排序,升序
        attributes: { 
            exclude: ['id'] //排除
        }
    });
    // 设置Content-Type:
    // ctx.response.type = 'application/json';
    // ctx.response.body = data;
    ctx.rest(data);
});
//相册首页
router.get('/api/time_travel', async (ctx, next) => {
    let data=[];
    // data =await time_travel;
    // ctx.rest(data);
    let albumList={
        knowless:[],
        primaryschool:[],
        middleschool:[],
        highschool:[],
        university:[],
        atwork:[]
    };
    let fiePath=path.join(__dirname,'../static/timeAlbum');
    var files = fs.readdirSync(fiePath);
    for(var f of files){
        for(item in albumList){
            if(f.indexOf(item)>-1){
                albumList[item].push(f)
            }
        }
    }
    // console.log(albumList);
    for(item in albumList){
        var temp={};
        temp.count=albumList[item].length;
        temp.type=item;
        temp.url=albumList[item].length?'/timeAlbum/'+albumList[item][albumList[item].length-1]:'';
        data.push(temp);
    }
    ctx.rest(data);
});
//相册详情
router.get('/api/time_album', async (ctx, next) => {
 
    const type = ctx.query.type;
    let photoList=[];

    let fiePath=path.join(__dirname,'../static/timeAlbum');
    var files = fs.readdirSync(fiePath);
    for(var f of files){
            if(f.indexOf(type)>-1){
                photoList.push({url:'/timeAlbum/'+f})
            }     
    }
    // 设置Content-Type:
    // ctx.response.type = 'application/json';
    // ctx.response.body = data;
    ctx.rest(photoList);
});
//


//文章首页
router.get('/api/article', async (ctx, next) => {
 
    const pageIndex=ctx.query.pageIndex;
    let data=null;

    data=await article.findAndCountAll({
        where:{
            hidden:'0'
        },
        limit:10,
        offset:10*(pageIndex-1),
        order:[['sort','ASC']]
    });
    // 设置Content-Type:
    // ctx.response.type = 'application/json';
    // ctx.response.body = data;
    ctx.rest(data);
});
//文章详情
router.get('/api/article_detail', async (ctx, next) => {
 
    const id=ctx.query.id;
    let data1=null;
    let data2=null;
    let data={};

    data1=await article_detail.findAll({
        where:{
            article_id:id
        },
        order:[['id','ASC']]
    });
    data.article=data1;
    data2=await comment.findAll({
        where:{
            type:'article',
            item_id:id
        },
        order:[['id','ASC']],
        attributes: { 
            exclude: ['id','item_id','type'] //排除
        }
    });
    data.commentList=data2;
    
    // 设置Content-Type:
    // ctx.response.type = 'application/json';
    // ctx.response.body = data;
    ctx.rest(data);
});
//随想
router.get('/api/whimsy', async (ctx, next) => {
    
    const pageIndex=ctx.query.pageIndex;
    let data1=null;
    let data2=null;
    let data=null;

    data1=await whimsy_content.findAndCountAll({
        limit:10,
        offset:10*(pageIndex-1),
        order:[['id','ASC']]
    });
    data=JSON.parse(JSON.stringify(data1));
    // console.log(data);
    for (var i = 0; i < data.rows.length; i++) {
        // data.rows[i].time=moment(data.rows[i].time).format('YYYY-MM-DD HH:mm');
        data2=await comment.findAll({
            where:{
                type:'whimsy',
                item_id:data.rows[i].id
            },
            order:[['id','ASC']],
            attributes: { 
                exclude: ['id','item_id','type'] //排除
            }
        });
        data.rows[i].commentList=data2;
    }
    // 设置Content-Type:
    // ctx.response.type = 'application/json';
    // ctx.response.body = data;
    ctx.rest(data);
});
//留言
router.get('/api/message', async (ctx, next) => {
 
    const pageIndex=ctx.query.pageIndex;
    let data=null;

    data=await comment.findAndCountAll({
        where:{
            type:'message'
        },
        limit:10,
        offset:10*(pageIndex-1),
        order:[['id','DESC']],
        attributes: { 
                exclude: ['item_id','type'] //排除
            }
    });
    // 设置Content-Type:
    // ctx.response.type = 'application/json';
    // ctx.response.body = data;
    ctx.rest(data);
});

router.post('/api/addComment', async (ctx, next) => {
    const name = ctx.request.body.name;
    const type = ctx.request.body.type;
    const content = ctx.request.body.content;
    const date = ctx.request.body.date;
    let item_id = ctx.request.body.item_id;
    if(!item_id){
        const max_item_id=await comment.max('item_id',{
            where:{
                type:type
            }
        });
        item_id=max_item_id+1;
    }
    const max_id=await comment.max('id');
    
    let data=null;
    data=await comment.create({
       id:max_id+1,
       item_id:item_id,
       name:name,
       type:type,
       content:content,
       date:date
    });
    console.log('created: ' + JSON.stringify(data));
    // 设置Content-Type:
    // ctx.response.type = 'application/json';
    // ctx.response.body = data;
    ctx.rest({code:'200',message:'提交成功'});
});
//头像上传
router.post('/api/loginWithImg', async (ctx, next) => {
    const file = ctx.request.files.file;
    const username=ctx.request.body.username;
    
    const  reader=fs.createReadStream(file.path);
    const timeStamp=Date.parse(new Date());
    let fiePath=path.join(__dirname,'../static/person/') + `/${file.name}`;

    const upStream=fs.createWriteStream(fiePath);

    reader.pipe(upStream);


    let data=null;
    const max_id=await user_img.max('id');
    data=await user_img.create({
       id:max_id+1,
       name:username,
       path:'/person'+`/${file.name}`,
    });
    console.log('created: ' + JSON.stringify(data));
    // 设置Content-Type:
    // ctx.response.type = 'application/json';
    // ctx.response.body = data;
    ctx.rest({code:'200',message:'提交成功',path:data.path,name:username});
});
//根据人名查找最近日期头像
router.get('/api/getLoginUserImg', async (ctx, next) => {
 
    const name=ctx.query.name;
    let data=null;

    data=await user_img.findAndCountAll({
        where:{
            name:name
        },
        limit:1,
        order:[['id','DESC']],
        attributes: { 
                exclude: ['id'] //排除
            }
    });
    // 设置Content-Type:
    // ctx.response.type = 'application/json';
    // ctx.response.body = data;
    ctx.rest(data);
});
module.exports=router;