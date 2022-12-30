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
  
$servername = "localhost";
  
$username = "mike";
  
$password = "laserpeacock";
  
$conn = new mysqli($servername, 
            $username, $password);
  
if ($conn->connect_error) {
    die("Connection failure: " 
. $conn->connect_error);

}
 
$nc = "USE nutritionalcalc";

mysqli_query($conn, $nc);


if ($conn->query($nc) === TRUE) {
    echo "";
} else {
    echo "Error: " . $conn->error;
}



$pros = "
SELECT options_sandwich_bread.bread_id, options_sandwich_cheese.cheese_id, options_sandwich_herb.herb_id,
    options_sandwich_protein.protein_id, options_sandwich_sauce.sauce_id, options_sandwich_seasoning.seasoning_id,
    mybread.bread_id, mycheese.cheese_id, myherbs.herb_id, mysauces.sauce_id, myseasoning.seasoning_id, 
	
	mybread.proteins AS breadproteins, mycheese.proteins AS cheeseproteins, myherbs.proteins AS herbproteins, 
	mysauces.proteins AS sauceproteins, myseasoning.proteins AS seasoningproteins, myprotein.proteins AS proteinproteins, 
	
	sandwiches.selection

FROM options_sandwich_bread,options_sandwich_cheese,options_sandwich_herb,options_sandwich_protein,options_sandwich_sauce, options_sandwich_seasoning,
    mybread, mycheese, myherbs, mysauces, myseasoning, myprotein, sandwiches

WHERE
    
    options_sandwich_bread.bread_id = mybread.bread_id  AND options_sandwich_cheese.cheese_id = mycheese.cheese_id  AND options_sandwich_herb.herb_id = myherbs.herb_id 
	AND options_sandwich_protein.protein_id = myprotein.protein_id AND options_sandwich_sauce.sauce_id = mysauces.sauce_id  AND options_sandwich_seasoning.seasoning_id = myseasoning.seasoning_id 
    AND sandwiches.sandwich_id = options_sandwich_bread.sandwich_id AND sandwiches.sandwich_id = options_sandwich_cheese.sandwich_id AND sandwiches.sandwich_id = options_sandwich_protein.sandwich_id 
	AND sandwiches.sandwich_id = options_sandwich_herb.sandwich_id AND sandwiches.sandwich_id = options_sandwich_sauce.sandwich_id AND sandwiches.sandwich_id = options_sandwich_seasoning.sandwich_id
    
	AND sandwiches.selection = '1' AND options_sandwich_bread.selection = '1' AND options_sandwich_cheese.selection = '1' AND options_sandwich_protein.selection = '1' AND options_sandwich_herb.selection = '1'
    AND options_sandwich_sauce.selection = '1' AND options_sandwich_seasoning.selection = '1'";
	

$fats = " 

SELECT options_sandwich_bread.bread_id, options_sandwich_cheese.cheese_id, options_sandwich_herb.herb_id,
    options_sandwich_protein.protein_id, options_sandwich_sauce.sauce_id, options_sandwich_seasoning.seasoning_id,
    mybread.bread_id, mycheese.cheese_id, myherbs.herb_id, mysauces.sauce_id, myseasoning.seasoning_id, 
	
	mybread.fatsTotal AS breadfats, mycheese.fatsTotal AS cheesefats, myherbs.fatsTotal AS herbfats, 
	mysauces.fatsTotal AS saucefats, myseasoning.fatsTotal AS seasoningfats, myprotein.fatsTotal AS proteinfats, 
	
	sandwiches.selection

FROM options_sandwich_bread,options_sandwich_cheese,options_sandwich_herb,options_sandwich_protein,options_sandwich_sauce, options_sandwich_seasoning,
    mybread, mycheese, myherbs, mysauces, myseasoning, myprotein, sandwiches

WHERE
    
    options_sandwich_bread.bread_id = mybread.bread_id  AND options_sandwich_cheese.cheese_id = mycheese.cheese_id  AND options_sandwich_herb.herb_id = myherbs.herb_id 
	AND options_sandwich_protein.protein_id = myprotein.protein_id AND options_sandwich_sauce.sauce_id = mysauces.sauce_id  AND options_sandwich_seasoning.seasoning_id = myseasoning.seasoning_id 
    AND sandwiches.sandwich_id = options_sandwich_bread.sandwich_id AND sandwiches.sandwich_id = options_sandwich_cheese.sandwich_id AND sandwiches.sandwich_id = options_sandwich_protein.sandwich_id 
	AND sandwiches.sandwich_id = options_sandwich_herb.sandwich_id AND sandwiches.sandwich_id = options_sandwich_sauce.sandwich_id AND sandwiches.sandwich_id = options_sandwich_seasoning.sandwich_id
    
	AND sandwiches.selection = '1' AND options_sandwich_bread.selection = '1' AND options_sandwich_cheese.selection = '1' AND options_sandwich_protein.selection = '1' AND options_sandwich_herb.selection = '1'
    AND options_sandwich_sauce.selection = '1' AND options_sandwich_seasoning.selection = '1'";




$cals = "SELECT options_sandwich_bread.bread_id, options_sandwich_cheese.cheese_id, options_sandwich_herb.herb_id,
    options_sandwich_protein.protein_id, options_sandwich_sauce.sauce_id, options_sandwich_seasoning.seasoning_id,
    mybread.bread_id, mycheese.cheese_id, myherbs.herb_id, mysauces.sauce_id, myseasoning.seasoning_id, 
	
	mybread.calories AS breadcalories, mycheese.calories AS cheesecalories, myherbs.calories AS herbcalories, 
	mysauces.calories AS saucecalories, myseasoning.calories AS seasoningcalories, myprotein.calories AS proteincalories, 
	
	sandwiches.selection

FROM options_sandwich_bread,options_sandwich_cheese,options_sandwich_herb,options_sandwich_protein,options_sandwich_sauce, options_sandwich_seasoning,
    mybread, mycheese, myherbs, mysauces, myseasoning, myprotein, sandwiches

WHERE
    
    options_sandwich_bread.bread_id = mybread.bread_id  AND options_sandwich_cheese.cheese_id = mycheese.cheese_id  AND options_sandwich_herb.herb_id = myherbs.herb_id 
	AND options_sandwich_protein.protein_id = myprotein.protein_id AND options_sandwich_sauce.sauce_id = mysauces.sauce_id  AND options_sandwich_seasoning.seasoning_id = myseasoning.seasoning_id 
    AND sandwiches.sandwich_id = options_sandwich_bread.sandwich_id AND sandwiches.sandwich_id = options_sandwich_cheese.sandwich_id AND sandwiches.sandwich_id = options_sandwich_protein.sandwich_id 
	AND sandwiches.sandwich_id = options_sandwich_herb.sandwich_id AND sandwiches.sandwich_id = options_sandwich_sauce.sandwich_id AND sandwiches.sandwich_id = options_sandwich_seasoning.sandwich_id
    
	AND sandwiches.selection = '1' AND options_sandwich_bread.selection = '1' AND options_sandwich_cheese.selection = '1' AND options_sandwich_protein.selection = '1' AND options_sandwich_herb.selection = '1'
    AND options_sandwich_sauce.selection = '1' AND options_sandwich_seasoning.selection = '1'";

	

	
$carbs = "SELECT options_sandwich_bread.bread_id, options_sandwich_cheese.cheese_id, options_sandwich_herb.herb_id,
    options_sandwich_protein.protein_id, options_sandwich_sauce.sauce_id, options_sandwich_seasoning.seasoning_id,
    mybread.bread_id, mycheese.cheese_id, myherbs.herb_id, mysauces.sauce_id, myseasoning.seasoning_id, 
	
	mybread.carbs AS breadcarbs, mycheese.carbs AS cheesecarbs, myherbs.carbs AS herbcarbs, 
	mysauces.carbs AS saucecarbs, myseasoning.carbs AS seasoningcarbs, myprotein.carbs AS proteincarbs, 
	
	sandwiches.selection

FROM options_sandwich_bread,options_sandwich_cheese,options_sandwich_herb,options_sandwich_protein,options_sandwich_sauce, options_sandwich_seasoning,
    mybread, mycheese, myherbs, mysauces, myseasoning, myprotein, sandwiches

WHERE
    
    options_sandwich_bread.bread_id = mybread.bread_id  AND options_sandwich_cheese.cheese_id = mycheese.cheese_id  AND options_sandwich_herb.herb_id = myherbs.herb_id 
	AND options_sandwich_protein.protein_id = myprotein.protein_id AND options_sandwich_sauce.sauce_id = mysauces.sauce_id  AND options_sandwich_seasoning.seasoning_id = myseasoning.seasoning_id 
    AND sandwiches.sandwich_id = options_sandwich_bread.sandwich_id AND sandwiches.sandwich_id = options_sandwich_cheese.sandwich_id AND sandwiches.sandwich_id = options_sandwich_protein.sandwich_id 
	AND sandwiches.sandwich_id = options_sandwich_herb.sandwich_id AND sandwiches.sandwich_id = options_sandwich_sauce.sandwich_id AND sandwiches.sandwich_id = options_sandwich_seasoning.sandwich_id
    
	AND sandwiches.selection = '1' AND options_sandwich_bread.selection = '1' AND options_sandwich_cheese.selection = '1' AND options_sandwich_protein.selection = '1' AND options_sandwich_herb.selection = '1'
    AND options_sandwich_sauce.selection = '1' AND options_sandwich_seasoning.selection = '1'";

$prosFinal = 0;
$fatsFinal = 0;
$calsFinal = 0;
$carbsFinal = 0;
$sandName = 0;

$sand = "SELECT sandwiches.sandwich_name FROM sandwiches WHERE sandwiches.selection='1'";
$result = $conn->query($sand);
while($row = $result->fetch_array()) {
    $sandName = $row['sandwich_name'];
}


if($result = $conn->query($pros)){
    if($result->num_rows > 0){
        while($row = $result->fetch_array()){
            echo "<tr>";
                $prosFinal = $prosFinal + (int)$row['proteinproteins'];
				$prosFinal = $prosFinal + (int)$row['cheeseproteins'];
				$prosFinal = $prosFinal + (int)$row['herbproteins'];
				$prosFinal = $prosFinal + (int)$row['breadproteins'];
				$prosFinal = $prosFinal + (int)$row['sauceproteins'];
				$prosFinal = $prosFinal + (int)$row['seasoningproteins'];

				
           echo "</tr>";
        }
        echo "</table>";
        // Free result set
        $result->free();
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . $conn->error;
}

if($result = $conn->query($fats)){
    if($result->num_rows > 0){
        while($row = $result->fetch_array()){
            echo "<tr>";
                $fatsFinal = $fatsFinal + (int)$row['proteinfats'];
				$fatsFinal = $fatsFinal + (int)$row['cheesefats'];
				$fatsFinal = $fatsFinal + (int)$row['herbfats'];
				$fatsFinal = $fatsFinal + (int)$row['breadfats'];
				$fatsFinal = $fatsFinal + (int)$row['saucefats'];
				$fatsFinal = $fatsFinal + (int)$row['seasoningfats'];

				
           echo "</tr>";
        }
        echo "</table>";
        // Free result set
        $result->free();
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . $conn->error;
}   

if($result = $conn->query($cals)){
    if($result->num_rows > 0){
        while($row = $result->fetch_array()){
                $calsFinal = $calsFinal + (int)$row['proteincalories'];
				$calsFinal = $calsFinal + (int)$row['cheesecalories'];
				$calsFinal = $calsFinal + (int)$row['herbcalories'];
				$calsFinal = $calsFinal + (int)$row['breadcalories'];
				$calsFinal = $calsFinal + (int)$row['saucecalories'];
				$calsFinal = $calsFinal + (int)$row['seasoningcalories'];
        }
        // Free result set
        $result->free();
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . $conn->error;
}  

if($result = $conn->query($carbs)){
    if($result->num_rows > 0){
        while($row = $result->fetch_array()){
            echo "<tr>";
                $carbsFinal = $carbsFinal + (int)$row['proteincarbs'];
				$carbsFinal = $carbsFinal + (int)$row['cheesecarbs'];
				$carbsFinal = $carbsFinal + (int)$row['herbcarbs'];
				$carbsFinal = $carbsFinal + (int)$row['breadcarbs'];
				$carbsFinal = $carbsFinal + (int)$row['saucecarbs'];
				$carbsFinal = $carbsFinal + (int)$row['seasoningcarbs'];
        }
        // Free result set
        $result->free();
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . $conn->error;
}   

// <div>
// <table>
// <tr>Total Calories: ' . $calsFinal. '</tr>
// </table>
// </div>

echo '<div class="row justify-content-center" style="text-align: center">
<table>
<tr>' . $sandName. '</tr>
<br>
<tr>Total Calories: ' . $calsFinal. '</tr>
<br>
<tr>Total Proteins: ' . $prosFinal. '</tr>
<br>
<tr>Total Carbs: ' . $carbsFinal. '</tr>
<br>
<tr>Total Fats: ' . $fatsFinal. '</tr>
</table>
<br>
</div>';

echo '<div class="row justify-content-center">
      <form action="/index.php">
         <button type="submit" class="btn btn-light">New Sandwich!</button>
      </form>
</div>';

$conn->close();
?>