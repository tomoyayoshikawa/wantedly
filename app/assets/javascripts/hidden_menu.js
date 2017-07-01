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
