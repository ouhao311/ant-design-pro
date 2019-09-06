<?php
error_reporting(E_ERROR);
header("Content-Type: text/html;charset=utf-8"); 
$mysql_user=include('./config.php');//得到数据库配置
$username=$mysql_user['default']['username'];
$password=$mysql_user['default']['password'];
$tablepre=$mysql_user['default']['tablepre'];
$database=$mysql_user['default']['database'];

$data = json_decode(file_get_contents('php://input'), true);
$id = $_GET['id'];
if (empty($id)) {
	print_r(json_encode(array('err_code'=>10000,'message'=>'参数错误')));exit;
}

$con = mysqli_connect($mysql_user['default']['hostname'],$username,$password);//句柄
mysqli_query($con, 'set names utf8');
mysqli_select_db($con,$database);//选择数据库 
$sqlfetch = ' SELECT * FROM '.$tablepre."organization where year=2019 and id=".$id;
$result1=mysqli_query($con,$sqlfetch);
$fetch = mysqli_fetch_assoc($result1);
if (empty($fetch)) {
	print_r(json_encode(array('err_code'=>10001,'message'=>'数据不存在')));exit;
}

$sqlEdit = ' UPDATE '.$tablepre."organization set ";
foreach ($data as $key => $value) {
	$sqlEdit .= " ".$key."='".$value."',";
}
$sqlEdit = rtrim($sqlEdit, ',');
$sqlEdit .= " where id=".$id;

$result2=mysqli_query($con,$sqlEdit);
$rows = mysqli_affected_rows($con);

$result1=mysqli_query($con,$sqlfetch);
$fetch = mysqli_fetch_assoc($result1);
if ($result2 && $rows) {
	print_r(json_encode(array('code'=>1,'message'=>'编辑成功','item'=>$fetch)));
} else {
	print_r(json_encode(array('err_code'=>10001,'message'=>'编辑失败','item'=>$fetch)));
}
mysqli_close($con);

?>