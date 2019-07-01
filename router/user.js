const express=require('express');
//引入链接池
const pool=require('../pool.js');
//创建路由器对象
var router=express.Router();
//创建路由
//登录
router.get('/v5/login/:uname-:upwd',function(req,res){
    //获取数据
    var $uname=req.params.uname;
    var $upwd=req.params.upwd;
//    执行sql语句
    var sql='select * from u9_user where uname=? and upwd=?'
    pool.query(sql,[$uname,$upwd],function(err,result){
        if(err) throw err;
        if(result.length>0){
            res.send('1');
        }else{
            res.send('0');
        }
    });
});
// 注册
router.post('/v5/reg',function(req,res){
    // 获取数据
    var obj=req.body;
    console.log(obj);
    // 执行sql语句
    var sql_select='selelct '
    var sql='insert into u9_user set ?';
    pool.query(sql,[obj],function(err,result){
        if(err) throw err;
        if(result.affectedRows>0){
            res.send('1');
        }else{
            res.send('0');
        }
    });
});
//导出路由
module.exports=router;




