//引入express模块
const express = require("express")
var router = express.Router();

let pool = require("../pool.js")
//引入封装好了的连接池语句
// var query = require("./query.js")
router.get("/details",(req,res)=>{
  var sql = "SELECT lid,family_id,title,price,details_pic FROM xhs_product";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"没有找到相关信息"});
    }else{
      res.send(result)
    }
  })
})
module.exports=router