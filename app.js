//引入express模块(接收响应 发送请求)
const express=require('express');
//引入body-parser中间件(用于将post请求的数据格式化为对象)
const bodyParser=require('body-parser');
const userRouter=require('./router/user.js');
//建库
var app=express();
app.listen(8080);
app.use(express.static('public'));
//不使用第三方qs模块 而是使用querystring模块
app.use(bodyParser.urlencoded({
    extended:false
}));
app.use('/user',userRouter);


































