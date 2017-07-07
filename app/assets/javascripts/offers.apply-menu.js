$(document).on('turbolinks:load',function() {
  $(".entry-btn").click(function(){
    $(".apply-menu").fadeIn("slow");
    $("#modalApply-bg").fadeIn("slow");
  });
  $(".close").click(function(){
    $(".apply-menu").fadeOut("slow");
    $("#modalApply-bg").fadeOut("slow");
  });
});
