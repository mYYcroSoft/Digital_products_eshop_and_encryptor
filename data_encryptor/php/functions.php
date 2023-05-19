<?php 

function load_files(){
  $data_analysis = shell_exec('python ../data_analysis.py 2>&1');
   $jsonstring = file_get_contents('../json_data/files_data.json');
   $json_file = json_decode($jsonstring, true);
    
   foreach ($json_file as $group) {
      foreach ($group as $file) {
        echo "  
                    <div class='file_box'>
                        <span class='file_name'>" . $file['file_name'] ."</span>
                        <span class='file_size'>" . $file['file_size'] . "/mb</span>
                        <button  onclick='remove_file(this)' class='file_remove'>Remove</button>
                        <button class='file_encrypt'>Encrypt</button>
                    </div>      
        "; 
      
      }
    }
}

if (isset($_POST['action'])){
  print_r('This file mame:');
  print_r( $_POST['file_name'] );
  $out =  shell_exec('python ../remove_file.py 2>&1' . escapeshellarg(isset($_POST['file_name'])));

  print_r($out);
}







?>