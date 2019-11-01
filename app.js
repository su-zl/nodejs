const Koa =require('koa');
const router=require('./api/api');
const rest=require('./api/rest');
const cors = require('koa2-cors');
const path = require('path');
const serve = require('koa-static');
const bodyParser=require('koa-bodyparser');
const koaBody = require('koa-body');

const app=new Koa();
//跨域
app.use(cors());
//静态文件
app.use(serve(__dirname+'/static/')); 
//文件上传
app.use(koaBody({
    multipart: true,
    formidable: {
        keepExtensions: true,         //保持原格式
        maxFileSize: 200*1024*1024    // 设置上传文件大小最大限制，默认2M
    }
}));

app.use(bodyParser());
app.use(rest.restify());
app.use(router.routes());

// 在端口3000监听:
app.listen(3000);
console.log('app started at port 3000...');
