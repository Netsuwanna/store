<?php
error_reporting(E_ALL & ~E_NOTICE);
header("Access-Control-Allow-Origin: *");
    foreach ($_SERVER as $k => $v) {
      if(substr($k, 0, 20) == 'HTTP_ACCESS_CONTROL_') {
        header(substr(str_replace('_', '-', str_replace('_REQUEST_', '_allow_', $k)), 5) . ': ' . $v);
      }
  }
require_once('config.php'); 
$jsondata = file_get_contents('php://input');
$data = json_decode($jsondata, true);

  if (!$data['member']) {
     exit;
   }  
  $member = ($data['member']);
  
  
  $sql = "SELECT * FROM tb_student where s_code LIKE '$member'  ";
  $result = $conn->query($sql);
  if ($result->num_rows > 0) {

  $arr = array();
   while($row = mysqli_fetch_assoc($result)){
    $arr[] = $row;
   }
  echo json_encode(Array(ok => true, admin => $arr));
  } else {
      echo "0 results";
  }

$conn->close();
?>