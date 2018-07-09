<?php
header('Content-Type:application/json;charset=UTF-8');
require_once("../init.php");
$sql="SELECT pic,href,price,spec,title  FROM f_index_floor3";
echo json_encode(sql_execute($sql));