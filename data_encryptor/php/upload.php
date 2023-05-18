<?php
if(isset($_POST['submit'])){
    $targetDir = "../files/";
    $targetFile = $targetDir . basename($_FILES["fileToUpload"]["name"]);
    $uploadOk = 1;
    $fileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));

    // Kontrola, zda soubor již existuje
    if (file_exists($targetFile)) {
        echo "Chyba: Soubor již existuje.";
        $uploadOk = 0;
    }

    // Povolení nahrávání všech typů souborů
    // Zde nejsou žádné omezení přípon souborů
    // Můžete však přidat další ověřování, pokud je to nutné pro vaše konkrétní potřeby

    // Pokud je vše v pořádku, uložte soubor na server
    if ($uploadOk == 1) {
        if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $targetFile)) {
            echo "Soubor ". basename( $_FILES["fileToUpload"]["name"]). " byl úspěšně nahrán.";
        } else {
            echo "Chyba při nahrávání souboru.";
        }
    }
}
?>