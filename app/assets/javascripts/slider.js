$(function() {
    $('.contents').slick({
          infinite: true,
          dots:true,
          slidesToShow: 1,
          centerMode: true, //要素を中央寄せ
          centerPadding:'400px', //両サイドの見えている部分のサイズ
          autoplay:true, //自動再生
          responsive: [{
               breakpoint: 400,
                    settings: {
                         centerMode: false,
               }
          }]
     });
});
