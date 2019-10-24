$(document).on('ready turbolinks: load', function(){
  $('#done').on('click', function(){
    $('#date').toggle(500);
  });
});
