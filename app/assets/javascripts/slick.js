
$(function() {
  $('.slider').slick({
      centerMode: true, //スライド画面に次のスライドが表示される
      centerPadding: '10%', //次のスライドの幅
      dots: true, //スライドの下にドットのナビゲーションを表示
      autoplay: true, //自動再生オン
      autoplaySpeed: 2000, //再生スピード
      infinite: true, //スライドが終了したら最初に戻る
      prevArrow: '<i class="fas fa-arrow-alt-circle-left"></i>',
      nextArrow: '<i class="fas fa-arrow-alt-circle-right"></i>',
     fade:true
  });
});