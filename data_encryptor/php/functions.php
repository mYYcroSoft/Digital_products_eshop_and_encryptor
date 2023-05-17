<?php 

function load_files(){
 
   $jsonstring = file_get_contents('../json_data/files_data.json');
   $json_file = json_decode($jsonstring, true);
  
   foreach ($json_file as $group) {
      foreach ($group as $file) {
        echo "  
                    <div class='file_box'>
                        <span class='file_name'>" . $file['file_name'] ."</span>
                        <span class='file_size'>" . $file['file_size'] . "</span>
                        <button class='file_remove'>Remove</button>
                        <button class='file_encrypt'>Encrypt</button>
                    </div>      
        "; 
      
      }
    }
}
load_files();


?>