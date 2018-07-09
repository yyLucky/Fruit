<?php
//header('Content-Type:application/json;charset=UTF-8');
//require_once("../init.php");
//$sql="SELECT img,href,price,spec,title  FROM f_seafood_list";
//echo json_encode(sql_execute($sql));



require("../init.php");
//获取用户输入的关键词
@$kw=$_REQUEST["kw"];
$cond="";
$kw="title LIKE '%".$kw."%' ";
//创建sql并发送
$sql="SELECT title,img,price,spec,href  FROM f_seafood_list ";
if($kw!="")$sql.=" where ".$kw;
//转换成json格式输出
echo json_encode(sql_execute($sql));
