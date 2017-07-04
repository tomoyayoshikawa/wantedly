$(document).on('turbolinks:load',function() {
  $(".rogIn").click(function () {
    $(".rogIn-menu").fadeIn("slow");
    $("#modalrogIn-bg").fadeIn("slow");
  });
  $(".close").click(function(){
    $(".rogIn-menu").fadeOut("slow");
    $("#modalrogIn-bg").fadeOut("slow");
  });
});
