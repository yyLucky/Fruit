<?php
header('Content-Type:application/json;charset=UTF-8');
require_once("../init.php");
$sql="SELECT img FROM f_index_middle_pic";
echo json_encode(sql_execute($sql));

