  var $jj = jQuery.noConflict();

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

