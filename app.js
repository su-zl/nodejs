const Koa =require('koa');
const router=require('./api/api');
const rest=require('./api/rest');
const cors = require('koa2-cors');
const path = require('path');
const serve = require('koa-static');

const app=new Koa();
//跨域
app.use(cors());
//静态文件
app.use(serve(__dirname+'/static/')); 

app.use(rest.restify());
app.use(router.routes());

// 在端口3000监听:
app.listen(3000);
console.log('app started at port 3000...');
