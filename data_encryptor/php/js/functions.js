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

}