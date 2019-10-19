// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

//example
//$(document).ready(function(){
// $(".titles").delay(1000).fadeOut();
//});
function onReady(callback) {
    var intervalID = window.setInterval(checkReady, 1000);
    function checkReady() {
        if (document.getElementsByTagName('body')[0] !== undefined) {
            window.clearInterval(intervalID);
            callback.call(this);
        }
    }
}

function show(id, value) {
    document.getElementById(id).style.display = value ? 'block' : 'none';
}

onReady(function () {
    show('page', true);
    show('loading', false);
});
//door animation
$(document).ready(function(){
    $(".imgcenter").animate({
      left: '250px',
      opacity: '0.0',
      height: '4000px',
      width: '2500px'
    });
});
$(document).ready(function(){
	$(".close").click(function(){

	$("h1,.divission,footer,.images,.button,.close").show();
    $(".close").removeClass("intro");
	});    
    
 $(".scroll").click(function(){
 $("#form").show();
	$("h1,.divission,footer,.images").hide();
	$("#on").removeClass("ad")
	$("#close,#form").removeClass("intro");
	$(".button").hide();	
	});
//close add

	});

