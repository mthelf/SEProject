
<?php
  
$servername = "localhost";
  
$username = "root";
  
$password = "laserpeacock";
  
$conn = new mysqli($servername, 
            $username, $password);
  
if ($conn->connect_error) {
    die("Connection failure: " 
. $conn->connect_error);

}else{
	echo "Successfully Connected";
} 
 
$nutritionalcalc = "USE nutritionalcalc";
  
if ($conn->query($nutritionalcalc) === TRUE) {
    echo "Data Successfully Imported";
} else {
    echo "Error: " . $conn->error;
}
  
$conn->close();
?>
