const express = require('express')
let router = express.Router()
let pool = require("../pool.js")
router.get("/cart", (req, res) => {
  //获取session uid凭证
  var uid = req.session.uid;
  //2.如果当前用户没有登录凭证，输出请登录
  if (!uid) {
      res.send({ code: -2, msg: "请登录", data: [] });
      return
  }
  var sql = "select id,lid,lname,price,count,pic from xhs_shopping_cart where uid=?";
  pool.query(sql, [uid], (err, result) => {
      if (err) throw err;
      res.send({ code: 1, msg: "查询成功", data: result })
  })
})
module.exports=router