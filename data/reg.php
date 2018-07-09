<?php
require("init.php");
@$u=$_REQUEST["uname"];

$sql="select * from f_user where uname='$u'";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);
if($row!=null){
    echo '{"code":-1,"msg":"用户名已存在，请重新输入"}';
}else{
    echo '{"code":1,"注册成功"}';
}
