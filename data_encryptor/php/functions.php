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
                        <button  onclick='encrypt_file(this)' class='file_encrypt'>Basic encrypt</button>
                    </div>      
        "; 
      
      }
    }
}

if (isset($_POST['action'])){
  print_r('This file mame:');
  print_r( $_POST['file_name'] );
  $file_name = isset($_POST['file_name']) ? $_POST['file_name'] : '';
  $file_name_escaped = escapeshellarg($file_name);
  $command = 'python ../remove_file.py ' . $file_name_escaped . ' 2>&1';
  $out = shell_exec($command);
  header("Refresh:0");
  print_r($out);
  
}



if (isset($_POST['action2'])){
  print_r('This file mame encrypt :');
  print_r( $_POST['file_name'] );
  $file_name = isset($_POST['file_name']) ? $_POST['file_name'] : '';
  $file_name_escaped = escapeshellarg($file_name);
  $command = 'python ../basic_encrypt.py ' . $file_name_escaped . ' 2>&1';
  $out = shell_exec($command);
  header("Refresh:0");
  print_r($out);
  
}







?>