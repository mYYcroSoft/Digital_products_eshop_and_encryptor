function php_func(function_name){
    console.log("SD")
    $.ajax({
        url: 'index.php',
        type: 'post',
        data: { "action": "1"},
        success: function(response) { console.log(response); }
    });
}