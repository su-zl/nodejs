const router=require('koa-router')();
const book_movie_music=require('./search').book_movie_music;


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