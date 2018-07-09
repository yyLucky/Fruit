<?php
require("init.php");
@$u=$_REQUEST["uname"] or die("用户名不能为空");
@$p=$_REQUEST['upwd'] or die("密码不能为空");
$sql="insert into f_user(uname,upwd) values('$u','$p')";
$result=mysqli_query($conn,$sql);
if($result===true){
  echo '{"code":1,"msg":"注册成功"}';
}else{
 echo '{"code":-1,"msg":"注册失败"}';
}
