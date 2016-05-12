<?php
// Create connection
require("connection.php");
global $con;


$uname = $_POST['username'];
$pswd = $_POST['password'];


  $sql = "CALL getLogin('$uname','$pswd')";  
  $result = mysqli_query($con, $sql);
          
  if (mysqli_num_rows($result) > 0) {
	  echo 'Login Successful!';
  }else {
   	  echo "An error has occured".mysql_error();
  }

   
  
?>