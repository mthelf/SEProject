<!DOCTYPE html>
<html lang="en">
<head>
  <title>LP Nutritional Calculator.</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

 <style>
    .div-1 {
        background-color: #E69A8DFF;
        color: #5F4B8BFF;
    }
    
    .div-2 {
    	background-color: #5F4B8BFF;
      color: #E69A8DFF;
    }

    .col-1 {
      color: #E69A8DFF;
    }
</style>
</head>

<body class="div-1">

<div class=".col-xl-">
    <nav class="navbar navbar-expand-sm justify-content-center text-center div-2">
        <ul class="navbar-nav">
            <li class="nav-item active">
            <a class="col-1 nav-link" href="index.php">Calculator</a>
            <!--^ This can be linked to a "script" that auto clears the DB selection-->
            </li>
            <a> <class="navbar-brand" href="#">
                <img src="Laser-Peacock.jpg" alt="Logo" style="width:80px;">
            </a>
            <li class="nav-item">
            <a class="col-1 nav-link" href="list.php">Nutritional List</a>
            </li>
        </ul>
    </nav>
</div>
<?php
echo '
<div class="row justify-content-center" style="text-align: center">
    <form method="post" action="" onsubmit="myButton.disabled = true; return true;>
        <label for="sandwich">Choose a sandwich:</label>
        <select name="sandwich" id="sandwich">
          <option value="1">Chicken Bacon Ranch</option>
          <option value="2">Meatball Marinara Sub</option>
          <option value="3">Veggie Delite</option>
        </select>
        <br><br>
        <input type="submit" name="myButton" value="Add selection">
      </form>
</div>';

$servername = "localhost";
  
$username = "mike";
  
$password = "laserpeacock";
  
$conn = new mysqli($servername, 
            $username, $password);
  
if ($conn->connect_error) {
    die("Connection failure: " 
. $conn->connect_error);
}

$db = "USE nutritionalcalc";
mysqli_query($conn, $db); 

$sql = "UPDATE sandwiches SET selection='0'";
$conn->query($sql);
// $sql2 = "UPDATE options_sandwich_bread SET selection='0'";
// $conn->query($sql2);
// $sql3 = "UPDATE options_sandwich_cheese SET selection='0'";
// $conn->query($sql3);
// $sql4 = "UPDATE options_sandwich_herb SET selection='0'";
// $conn->query($sql4);
// $sql5 = "UPDATE options_sandwich_protein SET selection='0'";
// $conn->query($sql5);
// $sql6 = "UPDATE options_sandwich_sauce SET selection='0'";
// $conn->query($sql6);
// $sql7 = "UPDATE options_sandwich_seasoning SET selection='0'";
// $conn->query($sql7);



$conn -> autocommit(FALSE);


(int)$choice = (isset($_POST["sandwich"]) ? $_POST["sandwich"] : null);

$stmt = $conn->prepare("UPDATE sandwiches SET selection='1' WHERE sandwich_id= ?");
$stmt->bind_param("i", $choice);
$stmt->execute();

if(!$conn -> commit()){
  echo "Commit transaction FAILED";
  exit();
}

$stmt->close();
$conn -> close();

?>
<div class="row justify-content-center">
      <form action="/choose_bread.php">
         <button type="submit" class="btn btn-light">Choose your bread!</button>
      </form>
</div>
</body>
</html
