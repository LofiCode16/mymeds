$(document).on('ready turbolinks: load', function(){

  var $date = $('[name=Done]');

  $date.on('click', function(){

    $(this).fadeOut(500);
  })


})