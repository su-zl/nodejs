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

module.exports=md;