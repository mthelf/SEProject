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
<body class ="div-1">

<div class=".col-xl-">
    <nav class="navbar navbar-expand-sm div-2 justify-content-center text-center">
        <ul class="navbar-nav">
            <li class="nav-item active">
            <a class="col-1 nav-link" href="index.php">Calculator</a>
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
$servername = "localhost";

$username = "mike";

$password = "laserpeacock";

$conn = new mysqli($servername, 
            $username, $password);

if ($conn->connect_error) {
    die("Connection failure: " 
. $conn->connect_error);

}
 
$nutritionalcalc = "USE nutritionalcalc";

if ($conn->query($nutritionalcalc) === TRUE) {
    echo "";
} else {
    echo "Error: " . $conn->error;
}

$sql5 = "UPDATE options_sandwich_protein SET selection='0'";
$conn->query($sql5);

$pro = "

SELECT sandwiches.sandwich_id, options_sandwich_protein.sandwich_id, 
sandwiches.selection, options_sandwich_protein.selection, myprotein.ProteinName, myprotein.protein_id,
options_sandwich_protein.protein_id

FROM sandwiches 
INNER JOIN options_sandwich_protein 
ON sandwiches.sandwich_id = options_sandwich_protein.sandwich_id 

INNER JOIN myprotein
ON myprotein.protein_id = options_sandwich_protein.protein_id

WHERE sandwiches.selection = '1'";

$result = mysqli_query($conn, $pro);

echo '
<div class="row justify-content-center" style="text-align:center;">
    <form method="post" action="">
        <label for="protein">Choose a protein:</label>
        <select name="protein" id="protein">';

    while($row = mysqli_fetch_array($result)){  
    echo '<option value="' . $row['protein_id'] . '">' . $row['ProteinName'] . '</option>';

}

echo '</select>
<br><br>
<input type="submit" value="Add selection">
</form>
</div>';

$conn -> autocommit(FALSE);
 
(int)$choice = (isset($_POST["protein"]) ? $_POST["protein"] : null);

$stmt = $conn->prepare("UPDATE options_sandwich_protein SET selection='1' WHERE protein_id= ?");

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
    <form action="/choose_cheese.php">
        <button type="submit" class="btn btn-light">Reselect cheese</button>
    </form>
    <form action="/choose_sauces.php">
        <button type="submit" class="btn btn-light">Choose your sauce</button>
    </form>
</div>
</body>
</html>