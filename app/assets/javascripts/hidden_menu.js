$(document).on('turbolinks:load',function() {
  $(".header__profile").click(function () {
    $(".hidden-menu").show();
  });
  $(".contents").click(function() {
    $(".hidden-menu").hide();
  });
});
