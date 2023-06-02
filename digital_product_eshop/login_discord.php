<?php 
$user_data = array('user_name' => 'demo', 'user_id' => '0123456789');

beta_login();
function beta_login(){




}

insrt_new_user();

function insrt_new_user(){
    $servername = "localhost";
$username = "root";
$password = "";
$dbname = "digital_eshop";
global $user_data;

    // Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection 
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
$time = date("H:i", strtotime("now"));
$sql = "INSERT INTO users (discord_id, first_login_date, last_login_time)
VALUES ({$user_data['user_id']}, {$time}, {$time})";
echo $conn->query($sql);
}
?> 