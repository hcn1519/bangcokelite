// jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});
$(document).ready(function() {
  $(".navbar-nav li a.btn").click(function(event) {
    $(".navbar-collapse").collapse('hide');
  });
});


$(document).ready(function(){

$(window).scroll(function() {
    if ($(window).width() >= 992 & $(".navbar").offset().top > 50) {
        
        //내려가면서 바 생가는 효과(no collapse)
        
        $(".navbar-default").css("background", "#fff");
        $(".navbar-default li a").css("color", "#3e5771");
        $(".navbar-default .navbar-brand").css("color", "#3e5771");
        $(".navbar-default").css("border-bottom", "1px solid #BDC3C7");
        
        
    } else if ($(window).width() >= 992 & $(".navbar").offset().top <= 50) {
        
        //다시 돌아오면서 원래대로 바뀌는 효과(no collapse)
        
        $(".navbar-default").css("background", "none");
        $(".navbar-default li a").css("color", "#ffffff");
        $(".navbar-default .navbar-brand").css("color", "#ffffff");
        $(".navbar-default").css("border-bottom", "none");
        
        
    } else if ($(window).width() < 992 & $(".navbar").offset().top > 50) {
        //줄어든 상태 css 내려가기(with collapse)
        $(".navbar-default .navbar-toggle:before").css("color", "#3e5771");
        $(".navbar-default .navbar-brand").css("color", "#3e5771");
        $(".navbar-default").css("background", "#fff");
        $(".navbar-default li a").css("color", "#3e5771");
        $(".navbar-default").css("border-bottom", "1px solid #BDC3C7");
        
    } else {
        
        //줄어든 상태 css 올라가기(with collapse)
        
        $(".navbar-default .navbar-toggle:before").css("color", "#fff");
        $(".navbar-default li a").css("color", "#fff");
        $(".navbar-default").css("background", "none");
        $(".navbar-default .navbar-brand").css("color", "#fff");
        $(".navbar-default").css("border-bottom", "none");
    }
    });
});

    $(document).ready(function(){
      if( $("navbar-collapse collapse").hasClass("in") ==true ) {
        //열린 상태
        $(".navbar-default .navbar-toggle").click(function(){
            $(this).collapse(hide);
        });
        
      } else {
        //닫힌 상태
        $(".navbar-default .navbar-toggle").click(function(){
           //색 변하기
           $(".navbar-default .navbar-toggle").css("color", "#3e5771");
           $(".navbar-default .navbar-toggle:before").css("color", "#3e5771");
           $(".navbar-default li a").css("color", "#3e5771");
           $(".navbar-default .navbar-brand").css("color", "#3e5771");
           $(".navbar-default").css("background", "#fff");
           $(".navbar-default").css("border-bottom", "1px solid #BDC3C7");
           $(".navbar-collapse.collapse.in").css("background", "#fff");
        });

        $(".navbar-nav li a.btn").click(function() {
            
            $(".navbar-default li a").css("color", "#ffffff");
            $(".navbar-default").css("background", "none");
            $(".navbar-default .navbar-toggle:before").css("color", "#ffffff");
            $(".navbar-default .navbar-brand").css("color", "#ffffff");
            $(".navbar-default").css("border-bottom", "none");
        });
    }
    $(".ready").click(function(){
       alert("준비중인 서비스입니다."); 
    });
});


var sogang_option = {
  "": "구역 선택",
  "남문(대흥역)": "남문(대흥역)",
};
var yonsei_option = {
  "": "구역 선택",
  "정문(신촌역)": "정문(신촌역)",
  "연대서문": "서문",
  "연대남문": "남문",
  "연대동문": "동문",
  "신촌기차역": "신촌기차역"
};
var ewha_option = {
  "": "구역 선택",
  "정문(이대역)": "정문(이대역)",
  "신촌기차역": "신촌기차역",
  "이대후문": "후문"
};

$("#univ_btn").change(function(){
   var optionSelected = $("option:selected", this);
   var valueSelected = this.value;
   
   if (valueSelected == "서강") {
       var $el = $("#section_btn");
        $el.empty(); // remove old options
        
        $.each(sogang_option, function(value,key) {
          $el.append($("<option></option>")
             .attr("value", value).text(key));
        });
        
   } else if (valueSelected == "연세") {
       var $el = $("#section_btn");
        $el.empty(); // remove old options
        
        $.each(yonsei_option, function(value,key) {
          $el.append($("<option></option>")
             .attr("value", value).text(key));
        });
       
   } else if (valueSelected == "이화") {
       var $el = $("#section_btn");
        $el.empty(); // remove old options
        
        $.each(ewha_option, function(value,key) {
          $el.append($("<option></option>")
             .attr("value", value).text(key));
        });
   }
});
