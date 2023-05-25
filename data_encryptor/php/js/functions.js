function php_func(function_name){

    $.ajax({
        url: 'index.php',
        type: 'post',
        data: { "action": "1"},
        success: function(response) { console.log(response); }
    });
}





function remove_file(element){
data_box = element.parentNode;
file_name = data_box.querySelector('.file_name').textContent;



console.log(file_name)

$.ajax({
    url: 'functions.php',
    type: 'post',
   
    data: {'action': 'remove_file' ,'file_name': file_name},
    success: function(response) { console.log(response); }
})
location.reload(true);
    

}
function remove_encrypted_file(element){
data_box = element.parentNode;
file_name = data_box.querySelector('.file_name').textContent;


console.log(file_name)
$.ajax({
    url: 'functions.php',
    type: 'post',
   
    data: {'remove_encrypted_files': 'remove_file' ,'file_name': file_name, 'file_dir': '../encrypted_files/'},
    success: function(response) { console.log(response); }
})
//location.reload(true);

}



function encrypt_file(element){
data_box = element.parentNode;
file_name = data_box.querySelector('.file_name').textContent;


console.log(file_name)
$.ajax({
    url: 'functions.php',
    type: 'post',
   
    data: {'action2': 'remove_file' ,'file_name': file_name},
    success: function(response) { console.log(response); }
    
})
location.reload(true);

}
function decrypt_file(element){
data_box = element.parentNode;
file_name = data_box.querySelector('.file_name').textContent;


console.log(file_name)
$.ajax({
    url: 'functions.php',
    type: 'post',
   
    data: {'decrypt_file': 'remove_file' ,'file_name': file_name},
    success: function(response) { console.log(response); }
    
})
//location.reload(true);
location.reload(true);

}


function open_files(){
    console.log("Open files section")
    document.getElementById('non_encrypted').style.display = 'block'
    document.getElementById('encrypted').style.display = 'none'
}

function open_encrypted(){

    console.log("Open coded section")
    document.getElementById('non_encrypted').style.display = 'none'
    document.getElementById('encrypted').style.display = 'block'
}

    


function new_notify(title, text, dur){
var text = text
    $("#alert-list").append(
        `
        <div class="alert_1" id="alert">
        <span class="aler_title">${title}</span><br>
        <span class="aler_text">${text}</span>
        <script>
        
        
        setTimeout(() => {
            var el = document.getElementById('alert')
            document.getElementById('alert').animate([{ transform: "translateX(0px)" },{ transform: "translateX(+200%)" },],{ duration: 500, });
                setTimeout(() => {
                    el.remove();
                }, 500);
         }, ${dur});
        </script>
         </div>
        
        `
    )
}