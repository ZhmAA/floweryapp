// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
// require turbolinks
//= require_tree .
//= require fancybox

//fancybox
$(document).ready(function() {
$("a.fancybox").fancybox({ 
        parent: 'body',
        openEffect  : 'none',
        closeEffect : 'none'
    });
});

//scroll anchors
jQuery(document).ready(function() {
jQuery('body').append('<div id="top"></div>');
jQuery("#top").click(function () {
 jQuery("body, html").animate({
   scrollTop: 0
  }, 800);
  return false;
 });
 jQuery('.main-menu').find('a').click(function() {
  var it = jQuery(this)
   .attr('href')
   .substring(2);
  if(jQuery.trim(it)!=''){
   jQuery('html,body').animate({scrollTop:jQuery('#'+it).offset().top},800);
   return false;
  }
 });
});

// Facebook Widget
(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));