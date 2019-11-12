const Sequelize = require('sequelize');
const config = require('../config');
let md={};

var sequelize = new Sequelize(config.database, config.username, config.password, {
    host: config.host,
    dialect: 'mysql',
    pool: {
        max: 5,
        min: 0,
        idle: 30000
    }
});

md.book_movie_music = sequelize.define('book_movie_music', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true
    },
    index:Sequelize.INTEGER,
    type: Sequelize.STRING(10),
    img_src: Sequelize.STRING(100),
    title: Sequelize.STRING(100),
    message: Sequelize.STRING(100),
    excerpt: Sequelize.STRING(2000),
    comment: Sequelize.STRING(2000),
}, {
        timestamps: false,
        freezeTableName: true // Model 对应的表名将与model名相同
    });
//相册首页
// md.time_travel = sequelize.query('select count(*)as count,type,max(url) as url from album group by type',{ type: sequelize.QueryTypes.SELECT});
//相册详情
// md.time_album = sequelize.define('album', {
//     id: {
//         type: Sequelize.INTEGER,
//         primaryKey: true
//     },
//     type: Sequelize.STRING(20),
//     url: Sequelize.STRING(100)
// }, {
//         timestamps: false,
//         freezeTableName: true // Model 对应的表名将与model名相同
//     });

//文章首页
md.article = sequelize.define('article',{
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true
    },
    day:Sequelize.INTEGER,
    month: Sequelize.STRING(10),
    title: Sequelize.STRING(100),
    content: Sequelize.STRING(100),
}, {
        timestamps: false,
        freezeTableName: true // Model 对应的表名将与model名相同
    });
//文章详情
md.article_detail = sequelize.define('article_detail',{
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true
    },
    article_id:Sequelize.INTEGER,
    class: Sequelize.STRING(20),
    content: Sequelize.STRING(1000)
}, {
        timestamps: false,
        freezeTableName: true // Model 对应的表名将与model名相同
    });


//随想
md.whimsy_content = sequelize.define('whimsy',{
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true
    },
    date:Sequelize.DATE,
    img_src: Sequelize.STRING(300),
    content: Sequelize.STRING(300)
}, {
        timestamps: false,
        freezeTableName: true // Model 对应的表名将与model名相同
    });

md.comment = sequelize.define('comment',{
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true
    },
    item_id:Sequelize.INTEGER,
    name:Sequelize.STRING(100),
    type:Sequelize.STRING(10),
    date:Sequelize.DATEONLY,
    content: Sequelize.STRING(100)
}, {
        timestamps: false,
        freezeTableName: true // Model 对应的表名将与model名相同
    });

md.user_img = sequelize.define('user_img',{
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true
    },
    name:Sequelize.STRING(100),
    path:Sequelize.STRING(100),

}, {
        timestamps: false,
        freezeTableName: true // Model 对应的表名将与model名相同
    });

module.exports=md;

// mysql> select a.* from album a join (select ceil(rand()*max(id)) as id from album) as b on a.id=b.id;