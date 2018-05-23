"use strict";

const Koa = require('koa');

const app = new Koa();

const bodyParser=require("koa-bodyparser");

const controllers=require("./controllers");

app.use(bodyParser());
// add router middleware:
app.use(controllers());

app.listen(3000);

console.log('app started at port 3000...');
