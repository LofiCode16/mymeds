$(document).on('turbolinks:load', function(){
  $('[name=q]').on('keyup', function(){
    //filtra
    if ($(this).val().length > 2){
      $.ajax({
        type: "GET",
        url: "/docs",
        data: { q: $(this).val() },
        dataType: "script"
      });
    };
    //Libera
    if ($(this).val().length == 0){
      $.ajax({
        type: "GET",
        url: "/docs",
        dataType: "script"
      });
    };
  });
});  


