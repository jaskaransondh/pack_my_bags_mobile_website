/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}

$(document).on('click', 'a', function(event){
    event.preventDefault();

    $('html, body').animate({
        scrollTop: $( $.attr(this, 'href') ).offset().top
    }, 500);
});

$(document).ready(function () {
    $("#btnNextDestination").click(function () {
        $("#content3").css("display", "none");
        $("#content3-2").css("display", "block");
    });
});

