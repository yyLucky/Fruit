<?php
//点击价格进行排序
require("../init.php");
@$num=$_REQUEST["num"];
//如果为1正序
if($num==1){
    $sql="SELECT * FROM f_seafood_list ORDER BY price";
}else{
//否则降序
    $sql="SELECT * FROM f_seafood_list ORDER BY price DESC";
}
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
 echo json_encode($rows);