//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .


$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();
  $('a#scroll-to-info').click(function(e){
    e.preventDefault();
    console.log('hello');
    if (this.hash !== "") {
      var hash = this.hash;
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
        window.location.hash = hash;
      });
    }
  });

  console.log("Hi,");
  console.log("What're you looking for?");
});