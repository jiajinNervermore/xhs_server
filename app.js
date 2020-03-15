//*** xhs服务器 ***
//引入express模块
const express = require("express")
const mysql = require("mysql");//mysql模块
//引入history模块
const history = require("connect-history-api-fallback")
//引入cors模块
const cors = require('cors')
//引入session模块
const session = require("express-session")

var pool = mysql.createPool({
  host:"127.0.0.1",
  user:"root",
  password:"",
  database:"xhs",
  port:3306,
  connectionLimit:15
})
//引入路由模块
var index=require("./routes/index");
var details=require("./routes/details");
var products=require("./routes/products");
var users=require("./routes/users");
var cartItems=require("./routes/cartItems");

//创建web服务器
let server = express()
//配置跨域模块
server.use(cors({
  origin: ["http://127.0.0.1:8080", "http://localhost:8080"],
  credentials: true
}))
//指定静态资源目录 public
server.use(express.static("public"));
server.use(express.urlencoded({ extended: false }));
//配置session对象
server.use(session({
    secret: "128位安全字符串",//加密条件
    cookie:{maxAge:60*1000*30},//过期时间ms
    resave: true,//每次请求更新数据
    saveUninitialized: true,//保存初始化数据
}));
//使用路由器管理路由
// server.use("/index",index);
// server.use("/details",details);
// server.use("/products",products);
server.use("/users",users);
// server.use("/cartItems",cartItems)
//注册history
server.use(history());
//为服务器绑定监听端口 9527
server.listen(9527);

console.log("服务器起动.......");

server.get("/details",(req,res)=>{
  var sql = "SELECT title,price1,details_pic,imags FROM xhs_product"
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"没有找到相关信息"});
    }else{
      res.send(result)
    }
  })
})