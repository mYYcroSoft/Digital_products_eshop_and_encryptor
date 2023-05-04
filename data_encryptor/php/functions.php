<?php 

function load_files(){
   echo  "JSON";
   $jsonstring = file_get_contents('../json_data/files_data.json');
   $json_file = json_decode($jsonstring, true);
  
   foreach ($json_file as $group) {
      foreach ($group as $file) {
        echo $file['file_name'] . "\n";
      
      }
    }
}
load_files();


?>