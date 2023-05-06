<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <title>LUA | Encryptor</title>
    <link rel="stylesheet" href="css/css.css">
</head>
<body>

    <div class="left-bar">
        <div class="bar-title">LUA Encryptor</div>
        <br>
        <div class="bar-item" onclick="php_func()">Secure check</div>
        <div class="bar-item">Load files</div>
        <div class="bar-item">Encryptor</div>
    </div>
  
<div class="load_files">
    <?php 
    

    if (isset($_POST['test'])) {
        echo "AHOJ";
      }

    include('functions.php');
    load_files()

    
    ?>
    <button id="new-file">Add File</button>

    <div class="files_list">

    </div>
</div>


<script src="js/functions.js"></script>
</body>
</html>