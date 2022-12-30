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

<div class="bg-secondary">
<nav class="navbar navbar-expand-sm div-2 justify-content-center">
    <ul class="navbar-nav">
        <li class="nav-item">
        <a class="nav-link" href="index.php">Calculator</a>
        </li>
        <a> <class="navbar-brand" href="#">
          <img src="Laser-Peacock.jpg" alt="Logo" style="width:80px;">
        </a>
        <li class="nav-item active">
        <a class="nav-link" href="list.php">Nutritional List</a>
        </li>
    </ul>
</nav>
</div>

<table>

  <?php
      $fp = fopen ( "Full_Ingredient_Nutrients.csv" , "r" );
      while (( $data = fgetcsv ( $fp , 1000 , "," )) !== FALSE ) {
          $i = 0;
          echo "<tr>";
          foreach($data as $row) {
             echo "<td>" . $row . "</td>";
             $i++ ;
          }
          echo "/<tr>";
      }
      fclose ( $fp );
      ?>
  </table>
  

</body>
</html> 