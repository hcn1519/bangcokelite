$(".vote").click(function(){
  if($(this).hasClass("btn-danger2") == true) {
    $(this).removeClass("btn-danger2");
    $(this).addClass("btn-danger");
    $(".glyphicon-heart").css("color", "#e74c4c");
    $("#sizeoflike").css("color", "#e74c4c");
  } else if ($(this).hasClass("btn-danger") == true){
    $(this).removeClass("btn-danger");
    $(this).addClass("btn-danger2");
    $(".glyphicon-heart").css("color", "#888888");
    $("#sizeoflike").css("color", "#888888");
  }
});
     
$('#pictab1 a').click(function (e) {
  e.preventDefault()
  $(this).tab('show');
  $("#pictab2 a").tab("hide");
  $("#pictab3 a").tab("hide");
});
$('#pictab2 a').click(function (e) {
  e.preventDefault()
  $(this).tab('show');
  $("#pictab1 a").tab("hide");
  $("#pictab2 a").tab("hide");
});
$('#pictab3 a').click(function (e) {
  e.preventDefault()
  $(this).tab('show');
  $("#pictab1 a").tab("hide");
  $("#pictab3 a").tab("hide");
});

$(window).load(function(){
  $('#slide-counter').prepend('<span class="current-index"></span>/');
  var realSlider= $("ul#bxslider").bxSlider({
        speed:1000,
        pager:false,
        controls: true,
        infiniteLoop:false,
        onSliderLoad: function (currentIndex){
        $('#slide-counter .current-index').text(currentIndex + 1);
        },
        onSlideBefore:function($slideElement, oldIndex, newIndex){
          //changeRealThumb(realThumbSlider,newIndex);
          $('#slide-counter .current-index').text(newIndex + 1);
        }
      });
  $('#slide-counter').append(realSlider.getSlideCount());
});
