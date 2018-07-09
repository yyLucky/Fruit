<?php
require("../init.php");
//获取用户输入的关键词
@$kw=$_REQUEST["kw"];
$cond="";
//模糊查询
$kw="title LIKE '%".$kw."%' ";
//创建sql并发送
$sql="SELECT title,img,price,spec,href  FROM f_fruit_list ";
if($kw!="")$sql.=" where ".$kw;
//转换成json格式输出
echo json_encode(sql_execute($sql));
