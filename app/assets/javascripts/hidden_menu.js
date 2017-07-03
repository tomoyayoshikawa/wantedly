$(function() {
  $(".header__profile").on("click", function() {
    $(".hidden-menu").show();
  });
});
$(function() {
  $(".main-contents").on("click", function() {
    $(".hidden-menu").hide();
  });
});

$(function() {
  $(".header__menu__left").on("click", function() {
    $(".hidden-menu").show();
  });
});
$(function() {
  $(".messages").on("click", function() {
    $(".hidden-menu").hide();
  });
});

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
