const router=require('koa-router')();
// const moment = require('moment');
const book_movie_music=require('./search').book_movie_music;
const time_travel=require('./search').time_travel;
const time_album=require('./search').time_album;
const article=require('./search').article;
const article_detail=require('./search').article_detail;
const whimsy_content=require('./search').whimsy_content;

const comment=require('./search').comment;




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
    let data=null;
    data =await time_travel;
    ctx.rest(data);
});
//相册详情
router.get('/api/time_album', async (ctx, next) => {
 
    const type = ctx.query.type;
    let data=null;

    data=await time_album.findAll({
        where:{
            type:type
        },
        order:[['url','ASC']], //排序,升序
        attributes: { 
            exclude: ['id','type'] //排除
        }
    });
    // 设置Content-Type:
    // ctx.response.type = 'application/json';
    // ctx.response.body = data;
    ctx.rest(data);
});
//文章首页
router.get('/api/article', async (ctx, next) => {
 
    const pageIndex=ctx.query.pageIndex;
    let data=null;

    data=await article.findAndCountAll({
        limit:10,
        offset:10*(pageIndex-1),
        order:[['id','DESC']]
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
    const item_id = ctx.request.body.item_id;
    if(!item_id){
        const max_item_id=await comment.max('item_id',{
            where:{
                type:type
            }
        });
        item_id=max_item_id++;
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

module.exports=router;