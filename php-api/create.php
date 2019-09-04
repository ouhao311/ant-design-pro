<?php
error_reporting(E_ERROR);
header("Content-Type: text/html;charset=utf-8"); 
$mysql_user=include('./config.php');//得到数据库配置
$username=$mysql_user['default']['username'];
$password=$mysql_user['default']['password'];
$tablepre=$mysql_user['default']['tablepre'];
$database=$mysql_user['default']['database'];

$data = json_decode(file_get_contents('php://input'), true);

$con = mysqli_connect($mysql_user['default']['hostname'],$username,$password);//句柄
mysqli_query($con, 'set names utf8');
mysqli_select_db($con,$database);//选择数据库 
$fields = "";
$values = "";
foreach($data as $key=>$value) {
    $fields .= $key.",";
    $values .= "'".$value."',";
}
$fields = rtrim($fields, ',').",year";
$values = rtrim($values, ',').",2019";

$sql = "insert into spms_organization (".$fields.") value(".$values.")";
mysqli_query($con, $sql);
$result1=mysqli_affected_rows($con);
if($result1 > 0) {
    print_r(json_encode(array('code'=>1,'message'=>'创建成功')));
} else {
    print_r(json_encode(array('err_code'=>10000,'message'=>'创建失败')));
}
mysqli_close($con);

?>