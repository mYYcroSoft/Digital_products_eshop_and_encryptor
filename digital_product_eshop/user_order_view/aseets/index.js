
/*$('#pages_container').load("pages/home_page/user_home.html");*/
function open_home_page(){
    $('#pages_container').load("pages/home_page/user_home.html");
    document.getElementById('pages_container').animate([{ transform: "translateY(-100%)" },{ transform: "translateX(auto)" },],{ duration: 400, });
}


function open_orders_page(){
    $('#pages_container').load("pages/contracts_page/orders_page.html");
    document.getElementById('pages_container').animate([{ transform: "translateY(-100%)" },{ transform: "translateX(auto)" },],{ duration: 400, });

}

$('#pages_container').load(`pages/assets/assets.html`);

let time = 400
function open_page(page){
    document.getElementById('pages_container').animate([{ transform: "translateY(0%)" },{ transform: "translateY(-190%)" },],{ duration: time + 50, });
    setTimeout(() => { 
    $('#pages_container').load(`pages/${page}/${page}.html`);
    document.getElementById('pages_container').animate([{ transform: "translateY(-100%)" },{ transform: "translateX(auto)" },],{ duration: time, });
    }, time)
    
    
}