<?php
error_reporting(E_ERROR);
header("Content-Type: text/html;charset=utf-8"); 
$mysql_user=include('./config.php');//得到数据库配置
$username=$mysql_user['default']['username'];
$password=$mysql_user['default']['password'];
$tablepre=$mysql_user['default']['tablepre'];
$database=$mysql_user['default']['database'];
$con = mysqli_connect($mysql_user['default']['hostname'],$username,$password);//句柄
if (empty($_GET['id'])) {
	print_r(array('err_code'=>10000, 'message'=>'参数错误','id'=>$_GET['id']));exit;
}
mysqli_select_db($con,$database);//选择数据库 
$sqlcount = ' DELETE FROM '.$tablepre."organization where id=".$_GET['id'];
$result1=mysqli_query($con,$sqlcount);

if ($result1 && mysqli_affected_rows($con)) {
	print_r(json_encode(array('code'=>1,'message'=>'删除成功','id'=>$_GET['id'])));
} else {
	print_r(json_encode(array('err_code'=>10001,'message'=>'删除失败','id'=>$_GET['id'])));
}
mysqli_close($con);

?>