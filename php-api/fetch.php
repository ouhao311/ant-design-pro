<?php
error_reporting(E_ERROR);
header("Content-Type: text/html;charset=utf-8"); 
$mysql_user=include('./config.php');//得到数据库配置
$username=$mysql_user['default']['username'];
$password=$mysql_user['default']['password'];
$tablepre=$mysql_user['default']['tablepre'];
$database=$mysql_user['default']['database'];

$con = mysqli_connect($mysql_user['default']['hostname'],$username,$password);//句柄

mysqli_select_db($con,$database);//选择数据库 
$sqlcount = ' SELECT count(*) FROM '.$tablepre."organization where year=2019";
$result1=mysqli_query($con,$sqlcount);
$count = mysqli_fetch_row($result1);
$data['page']['num'] = (int)$count[0];
$data['page']['pageno'] = $_GET['pageno'] ? $_GET['pageno'] : 1;
$data['page']['pagesize'] = 20;
$start = (($data['page']['pageno']-1) * $data['page']['pagesize']);
if ($start == 0) {
	$start = 0;
}

$sql = ' SELECT * FROM '.$tablepre."organization where year=2019 order by id desc limit ".$start.",20";

//file_put_contents('3.txt',$sql);
$result2=mysqli_query($con,$sql);
while($row = mysqli_fetch_assoc($result2)){
    $data['list'][] = $row;
}
print_r(json_encode($data));
mysqli_close($con);

?>