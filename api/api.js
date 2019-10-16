const router=require('koa-router')();
const book_movie_music=require('./search').book_movie_music;
const time_travel=require('./search').time_travel;
const time_album=require('./search').time_album;
const article=require('./search').article;
const article_detail=require('./search').article_detail;
const whimsy_content=require('./search').whimsy_content;
const whimsy_comment=require('./search').whimsy_comment;


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
    let data=null;

    data=await article_detail.findAll({
        where:{
            article_id:id
        },
        order:[['id','ASC']]
    });
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

    data1=await whimsy_content.findAndCountAll({
        limit:10,
        offset:10*(pageIndex-1),
        order:[['id','ASC']]
    });
    for (var i = 0; i < data1.length; i++) {
        data2=await whimsy_comment.findAll({
            where:{
                type:'whimsy',
                item_id:data1[i].id
            },
            order:[['id','ASC']]
        });
        console.log(data2);

    }
    // 设置Content-Type:
    // ctx.response.type = 'application/json';
    // ctx.response.body = data;
    ctx.rest(data);
});

router.get('/api/addTest', async (ctx, next) => {
    
    const name = ctx.query.name;
    const type = ctx.query.type;
    const max_id=await book_movie_music.max('id');
    const max_index=await book_movie_music.max('index',{
        where:{
            type:type
        }
    });
    console.log(max_id);
    console.log(max_index);
    let data=null;
    data=await book_movie_music.create({
       id:max_id+1,
       index:max_index+1,
       type:type,
       img_src:'img/music_3.jpg',
       title:'test',
       message:'test',
       excerpt:'test',
       comment:'test'
    });
    console.log('created: ' + JSON.stringify(data));
    // 设置Content-Type:
    // ctx.response.type = 'application/json';
    // ctx.response.body = data;
    // ctx.rest(data);
});

module.exports=router;