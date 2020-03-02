var express = require("express");
var router = express.Router();
var query = require("./query.js")
//引入连接池
var pool = require("../pool");
//注册
router.get("/signin", (req, res) => {
  var obj = req.query;
  var sql = "select verification_code,phone from xhs_user where phone=?";
  query(sql, [obj.phone])
    .then((result) => {
      if (result.length == 0) {
        var sql = "insert into xhs_user set ?";
        pool.query(sql, [obj], (err, result) => {
          err && console.log(err);
          console.log(result)
          if (result.affectedRows > 0) {
            res.send({ code: 1, result, obj })
          }
        })
      } else {
        var sql = "update xhs_user set verification_code=? where phone=?";
        pool.query(sql, [obj.verification_code, obj.phone], (err, result) => {
          if (err) throw err;
          console.log(result)
          let verification_code = obj.verification_code;
          if (result.affectedRows > 0) {
            res.send({ code: 1, result,verification_code})
          } else {
            res.send({ code: 0, msg: "请重新发送..." })
          }
        })
      }
    })
    .catch(error => {
      console.log(error)
      return
    })
})
//登录
router.get("/login", (req, res) => {
  var phone = req.query.phone;
  var verification_code = req.query.verification_code;
  var uid = req.session.uid
  console.log(uid)
  // if (uid == null) {
  //   res.write(JSON.stringify({ ok: 0 }));
  //   res.end();
  // } else {
    var sql = "select * from xhs_user where phone=? and verification_code=?";
    pool.query(sql, [phone,verification_code], (err, result) => {
      // res.write(JSON.stringify({ ok: 1, uname: result[0].uname }));
      if(err) throw err;
      console.log(result)
      console.log(result.length)
      if(result.length>0){
        res.send({code:1,msg:"登录成功"})
      }else{
        res.send({code:-1,msg:"登录失败"})
      }
    })
  // }
})
//注销
router.get("/signout", (req, res) => {
  delete req.session.uid;
  res.send();
})

module.exports = router;