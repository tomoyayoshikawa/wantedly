$(document).on('turbolinks:load',function() {
  $(".postArticle").click(function(){
    $(".post-menu").fadeIn("slow");
    $("#modalPost-bg").fadeIn("slow");
  });
  $(".close").click(function(){
    $(".post-menu").fadeOut("slow");
    $("#modalPost-bg").fadeOut("slow");
  });
});
