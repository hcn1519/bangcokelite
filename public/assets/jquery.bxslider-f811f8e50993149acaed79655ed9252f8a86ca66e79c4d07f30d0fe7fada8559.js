/**
 * bxSlider v4.2.5
 * Copyright 2013-2015 Steven Wanderski
 * Written while drinking Belgian ales and listening to jazz

 * Licensed under MIT (http://opensource.org/licenses/MIT)
 */
!function(e){var t={mode:"horizontal",slideSelector:"",infiniteLoop:!0,hideControlOnEnd:!1,speed:500,easing:null,slideMargin:0,startSlide:0,randomStart:!1,captions:!1,ticker:!1,tickerHover:!1,adaptiveHeight:!1,adaptiveHeightSpeed:500,video:!1,useCSS:!0,preloadImages:"visible",responsive:!0,slideZIndex:50,wrapperClass:"bx-wrapper",touchEnabled:!0,swipeThreshold:50,oneToOneTouch:!0,preventDefaultSwipeX:!0,preventDefaultSwipeY:!1,ariaLive:!0,ariaHidden:!0,keyboardEnabled:!1,pager:!0,pagerType:"full",pagerShortSeparator:" / ",pagerSelector:null,buildPager:null,pagerCustom:null,controls:!0,nextText:"Next",prevText:"Prev",nextSelector:null,prevSelector:null,autoControls:!1,startText:"Start",stopText:"Stop",autoControlsCombine:!1,autoControlsSelector:null,auto:!1,pause:4e3,autoStart:!0,autoDirection:"next",stopAutoOnClick:!1,autoHover:!1,autoDelay:0,autoSlideForOnePage:!1,minSlides:1,maxSlides:1,moveSlides:0,slideWidth:0,shrinkItems:!1,onSliderLoad:function(){return!0},onSlideBefore:function(){return!0},onSlideAfter:function(){return!0},onSlideNext:function(){return!0},onSlidePrev:function(){return!0},onSliderResize:function(){return!0}};e.fn.bxSlider=function(n){if(0===this.length)return this;if(this.length>1)return this.each(function(){e(this).bxSlider(n)}),this;var r={},o=this,s=e(window).width(),a=e(window).height();if(!e(o).data("bxSlider")){var l=function(){e(o).data("bxSlider")||(r.settings=e.extend({},t,n),r.settings.slideWidth=parseInt(r.settings.slideWidth),r.children=o.children(r.settings.slideSelector),r.children.length<r.settings.minSlides&&(r.settings.minSlides=r.children.length),r.children.length<r.settings.maxSlides&&(r.settings.maxSlides=r.children.length),r.settings.randomStart&&(r.settings.startSlide=Math.floor(Math.random()*r.children.length)),r.active={index:r.settings.startSlide},r.carousel=r.settings.minSlides>1||r.settings.maxSlides>1?!0:!1,r.carousel&&(r.settings.preloadImages="all"),r.minThreshold=r.settings.minSlides*r.settings.slideWidth+(r.settings.minSlides-1)*r.settings.slideMargin,r.maxThreshold=r.settings.maxSlides*r.settings.slideWidth+(r.settings.maxSlides-1)*r.settings.slideMargin,r.working=!1,r.controls={},r.interval=null,r.animProp="vertical"===r.settings.mode?"top":"left",r.usingCSS=r.settings.useCSS&&"fade"!==r.settings.mode&&function(){for(var e=document.createElement("div"),t=["WebkitPerspective","MozPerspective","OPerspective","msPerspective"],n=0;n<t.length;n++)if(void 0!==e.style[t[n]])return r.cssPrefix=t[n].replace("Perspective","").toLowerCase(),r.animProp="-"+r.cssPrefix+"-transform",!0;return!1}(),"vertical"===r.settings.mode&&(r.settings.maxSlides=r.settings.minSlides),o.data("origStyle",o.attr("style")),o.children(r.settings.slideSelector).each(function(){e(this).data("origStyle",e(this).attr("style"))}),c())},c=function(){var t=r.children.eq(r.settings.startSlide);o.wrap('<div class="'+r.settings.wrapperClass+'"><div class="bx-viewport"></div></div>'),r.viewport=o.parent(),r.settings.ariaLive&&!r.settings.ticker&&r.viewport.attr("aria-live","polite"),r.loader=e('<div class="bx-loading" />'),r.viewport.prepend(r.loader),o.css({width:"horizontal"===r.settings.mode?1e3*r.children.length+215+"%":"auto",position:"relative"}),r.usingCSS&&r.settings.easing?o.css("-"+r.cssPrefix+"-transition-timing-function",r.settings.easing):r.settings.easing||(r.settings.easing="swing"),r.viewport.css({width:"100%",overflow:"hidden",position:"relative"}),r.viewport.parent().css({maxWidth:f()}),r.settings.pager||r.settings.controls||r.viewport.parent().css({margin:"0 auto 0px"}),r.children.css({"float":"horizontal"===r.settings.mode?"left":"none",listStyle:"none",position:"relative"}),r.children.css("width",h()),"horizontal"===r.settings.mode&&r.settings.slideMargin>0&&r.children.css("marginRight",r.settings.slideMargin),"vertical"===r.settings.mode&&r.settings.slideMargin>0&&r.children.css("marginBottom",r.settings.slideMargin),"fade"===r.settings.mode&&(r.children.css({position:"absolute",zIndex:0,display:"none"}),r.children.eq(r.settings.startSlide).css({zIndex:r.settings.slideZIndex,display:"block"})),r.controls.el=e('<div class="bx-controls" />'),r.settings.captions&&C(),r.active.last=r.settings.startSlide===m()-1,r.settings.video&&o.fitVids(),("all"===r.settings.preloadImages||r.settings.ticker)&&(t=r.children),r.settings.ticker?r.settings.pager=!1:(r.settings.controls&&T(),r.settings.auto&&r.settings.autoControls&&S(),r.settings.pager&&w(),(r.settings.controls||r.settings.autoControls||r.settings.pager)&&r.viewport.after(r.controls.el)),u(t,d)},u=function(t,n){var i=t.find('img:not([src=""]), iframe').length,r=0;return 0===i?void n():void t.find('img:not([src=""]), iframe').each(function(){e(this).one("load error",function(){++r===i&&n()}).each(function(){this.complete&&e(this).load()})})},d=function(){if(r.settings.infiniteLoop&&"fade"!==r.settings.mode&&!r.settings.ticker){var t="vertical"===r.settings.mode?r.settings.minSlides:r.settings.maxSlides,n=r.children.slice(0,t).clone(!0).addClass("bx-clone"),i=r.children.slice(-t).clone(!0).addClass("bx-clone");r.settings.ariaHidden&&(n.attr("aria-hidden",!0),i.attr("aria-hidden",!0)),o.append(n).prepend(i)}r.loader.remove(),y(),"vertical"===r.settings.mode&&(r.settings.adaptiveHeight=!0),r.viewport.height(p()),o.redrawSlider(),r.settings.onSliderLoad.call(o,r.active.index),r.initialized=!0,r.settings.responsive&&e(window).bind("resize",z),r.settings.auto&&r.settings.autoStart&&(m()>1||r.settings.autoSlideForOnePage)&&I(),r.settings.ticker&&O(),r.settings.pager&&L(r.settings.startSlide),r.settings.controls&&F(),r.settings.touchEnabled&&!r.settings.ticker&&q(),r.settings.keyboardEnabled&&!r.settings.ticker&&e(document).keydown(P)},p=function(){var t=0,n=e();if("vertical"===r.settings.mode||r.settings.adaptiveHeight)if(r.carousel){var o=1===r.settings.moveSlides?r.active.index:r.active.index*v();for(n=r.children.eq(o),i=1;i<=r.settings.maxSlides-1;i++)n=o+i>=r.children.length?n.add(r.children.eq(i-1)):n.add(r.children.eq(o+i))}else n=r.children.eq(r.active.index);else n=r.children;return"vertical"===r.settings.mode?(n.each(function(n){t+=e(this).outerHeight()}),r.settings.slideMargin>0&&(t+=r.settings.slideMargin*(r.settings.minSlides-1))):t=Math.max.apply(Math,n.map(function(){return e(this).outerHeight(!1)}).get()),"border-box"===r.viewport.css("box-sizing")?t+=parseFloat(r.viewport.css("padding-top"))+parseFloat(r.viewport.css("padding-bottom"))+parseFloat(r.viewport.css("border-top-width"))+parseFloat(r.viewport.css("border-bottom-width")):"padding-box"===r.viewport.css("box-sizing")&&(t+=parseFloat(r.viewport.css("padding-top"))+parseFloat(r.viewport.css("padding-bottom"))),t},f=function(){var e="100%";return r.settings.slideWidth>0&&(e="horizontal"===r.settings.mode?r.settings.maxSlides*r.settings.slideWidth+(r.settings.maxSlides-1)*r.settings.slideMargin:r.settings.slideWidth),e},h=function(){var e=r.settings.slideWidth,t=r.viewport.width();if(0===r.settings.slideWidth||r.settings.slideWidth>t&&!r.carousel||"vertical"===r.settings.mode)e=t;else if(r.settings.maxSlides>1&&"horizontal"===r.settings.mode){if(t>r.maxThreshold)return e;t<r.minThreshold?e=(t-r.settings.slideMargin*(r.settings.minSlides-1))/r.settings.minSlides:r.settings.shrinkItems&&(e=Math.floor((t+r.settings.slideMargin)/Math.ceil((t+r.settings.slideMargin)/(e+r.settings.slideMargin))-r.settings.slideMargin))}return e},g=function(){var e=1,t=null;return"horizontal"===r.settings.mode&&r.settings.slideWidth>0?r.viewport.width()<r.minThreshold?e=r.settings.minSlides:r.viewport.width()>r.maxThreshold?e=r.settings.maxSlides:(t=r.children.first().width()+r.settings.slideMargin,e=Math.floor((r.viewport.width()+r.settings.slideMargin)/t)):"vertical"===r.settings.mode&&(e=r.settings.minSlides),e},m=function(){var e=0,t=0,n=0;if(r.settings.moveSlides>0)if(r.settings.infiniteLoop)e=Math.ceil(r.children.length/v());else for(;t<r.children.length;)++e,t=n+g(),n+=r.settings.moveSlides<=g()?r.settings.moveSlides:g();else e=Math.ceil(r.children.length/g());return e},v=function(){return r.settings.moveSlides>0&&r.settings.moveSlides<=g()?r.settings.moveSlides:g()},y=function(){var e,t,n;r.children.length>r.settings.maxSlides&&r.active.last&&!r.settings.infiniteLoop?"horizontal"===r.settings.mode?(t=r.children.last(),e=t.position(),b(-(e.left-(r.viewport.width()-t.outerWidth())),"reset",0)):"vertical"===r.settings.mode&&(n=r.children.length-r.settings.minSlides,e=r.children.eq(n).position(),b(-e.top,"reset",0)):(e=r.children.eq(r.active.index*v()).position(),r.active.index===m()-1&&(r.active.last=!0),void 0!==e&&("horizontal"===r.settings.mode?b(-e.left,"reset",0):"vertical"===r.settings.mode&&b(-e.top,"reset",0)))},b=function(t,n,i,s){var a,l;r.usingCSS?(l="vertical"===r.settings.mode?"translate3d(0, "+t+"px, 0)":"translate3d("+t+"px, 0, 0)",o.css("-"+r.cssPrefix+"-transition-duration",i/1e3+"s"),"slide"===n?(o.css(r.animProp,l),0!==i?o.bind("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd",function(t){e(t.target).is(o)&&(o.unbind("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd"),j())}):j()):"reset"===n?o.css(r.animProp,l):"ticker"===n&&(o.css("-"+r.cssPrefix+"-transition-timing-function","linear"),o.css(r.animProp,l),0!==i?o.bind("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd",function(t){e(t.target).is(o)&&(o.unbind("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd"),b(s.resetValue,"reset",0),H())}):(b(s.resetValue,"reset",0),H()))):(a={},a[r.animProp]=t,"slide"===n?o.animate(a,i,r.settings.easing,function(){j()}):"reset"===n?o.css(r.animProp,t):"ticker"===n&&o.animate(a,i,"linear",function(){b(s.resetValue,"reset",0),H()}))},x=function(){for(var t="",n="",i=m(),o=0;i>o;o++)n="",r.settings.buildPager&&e.isFunction(r.settings.buildPager)||r.settings.pagerCustom?(n=r.settings.buildPager(o),r.pagerEl.addClass("bx-custom-pager")):(n=o+1,r.pagerEl.addClass("bx-default-pager")),t+='<div class="bx-pager-item"><a href="" data-slide-index="'+o+'" class="bx-pager-link">'+n+"</a></div>";r.pagerEl.html(t)},w=function(){r.settings.pagerCustom?r.pagerEl=e(r.settings.pagerCustom):(r.pagerEl=e('<div class="bx-pager" />'),r.settings.pagerSelector?e(r.settings.pagerSelector).html(r.pagerEl):r.controls.el.addClass("bx-has-pager").append(r.pagerEl),x()),r.pagerEl.on("click touchend","a",A)},T=function(){r.controls.next=e('<a class="bx-next" href="">'+r.settings.nextText+"</a>"),r.controls.prev=e('<a class="bx-prev" href="">'+r.settings.prevText+"</a>"),r.controls.next.bind("click touchend",k),r.controls.prev.bind("click touchend",E),r.settings.nextSelector&&e(r.settings.nextSelector).append(r.controls.next),r.settings.prevSelector&&e(r.settings.prevSelector).append(r.controls.prev),r.settings.nextSelector||r.settings.prevSelector||(r.controls.directionEl=e('<div class="bx-controls-direction" />'),r.controls.directionEl.append(r.controls.prev).append(r.controls.next),r.controls.el.addClass("bx-has-controls-direction").append(r.controls.directionEl))},S=function(){r.controls.start=e('<div class="bx-controls-auto-item"><a class="bx-start" href="">'+r.settings.startText+"</a></div>"),r.controls.stop=e('<div class="bx-controls-auto-item"><a class="bx-stop" href="">'+r.settings.stopText+"</a></div>"),r.controls.autoEl=e('<div class="bx-controls-auto" />'),r.controls.autoEl.on("click",".bx-start",N),r.controls.autoEl.on("click",".bx-stop",D),r.settings.autoControlsCombine?r.controls.autoEl.append(r.controls.start):r.controls.autoEl.append(r.controls.start).append(r.controls.stop),r.settings.autoControlsSelector?e(r.settings.autoControlsSelector).html(r.controls.autoEl):r.controls.el.addClass("bx-has-controls-auto").append(r.controls.autoEl),M(r.settings.autoStart?"stop":"start")},C=function(){r.children.each(function(t){var n=e(this).find("img:first").attr("title");void 0!==n&&(""+n).length&&e(this).append('<div class="bx-caption"><span>'+n+"</span></div>")})},k=function(e){e.preventDefault(),r.controls.el.hasClass("disabled")||(r.settings.auto&&r.settings.stopAutoOnClick&&o.stopAuto(),o.goToNextSlide())},E=function(e){e.preventDefault(),r.controls.el.hasClass("disabled")||(r.settings.auto&&r.settings.stopAutoOnClick&&o.stopAuto(),o.goToPrevSlide())},N=function(e){o.startAuto(),e.preventDefault()},D=function(e){o.stopAuto(),e.preventDefault()},A=function(t){var n,i;t.preventDefault(),r.controls.el.hasClass("disabled")||(r.settings.auto&&r.settings.stopAutoOnClick&&o.stopAuto(),n=e(t.currentTarget),void 0!==n.attr("data-slide-index")&&(i=parseInt(n.attr("data-slide-index")),i!==r.active.index&&o.goToSlide(i)))},L=function(t){var n=r.children.length;return"short"===r.settings.pagerType?(r.settings.maxSlides>1&&(n=Math.ceil(r.children.length/r.settings.maxSlides)),void r.pagerEl.html(t+1+r.settings.pagerShortSeparator+n)):(r.pagerEl.find("a").removeClass("active"),void r.pagerEl.each(function(n,i){e(i).find("a").eq(t).addClass("active")}))},j=function(){if(r.settings.infiniteLoop){var e="";0===r.active.index?e=r.children.eq(0).position():r.active.index===m()-1&&r.carousel?e=r.children.eq((m()-1)*v()).position():r.active.index===r.children.length-1&&(e=r.children.eq(r.children.length-1).position()),e&&("horizontal"===r.settings.mode?b(-e.left,"reset",0):"vertical"===r.settings.mode&&b(-e.top,"reset",0))}r.working=!1,r.settings.onSlideAfter.call(o,r.children.eq(r.active.index),r.oldIndex,r.active.index)},M=function(e){r.settings.autoControlsCombine?r.controls.autoEl.html(r.controls[e]):(r.controls.autoEl.find("a").removeClass("active"),r.controls.autoEl.find("a:not(.bx-"+e+")").addClass("active"))},F=function(){1===m()?(r.controls.prev.addClass("disabled"),r.controls.next.addClass("disabled")):!r.settings.infiniteLoop&&r.settings.hideControlOnEnd&&(0===r.active.index?(r.controls.prev.addClass("disabled"),r.controls.next.removeClass("disabled")):r.active.index===m()-1?(r.controls.next.addClass("disabled"),r.controls.prev.removeClass("disabled")):(r.controls.prev.removeClass("disabled"),r.controls.next.removeClass("disabled")))},I=function(){if(r.settings.autoDelay>0){setTimeout(o.startAuto,r.settings.autoDelay)}else o.startAuto(),e(window).focus(function(){o.startAuto()}).blur(function(){o.stopAuto()});r.settings.autoHover&&o.hover(function(){r.interval&&(o.stopAuto(!0),r.autoPaused=!0)},function(){r.autoPaused&&(o.startAuto(!0),r.autoPaused=null)})},O=function(){var t,n,i,s,a,l,c,u,d=0;"next"===r.settings.autoDirection?o.append(r.children.clone().addClass("bx-clone")):(o.prepend(r.children.clone().addClass("bx-clone")),t=r.children.first().position(),d="horizontal"===r.settings.mode?-t.left:-t.top),b(d,"reset",0),r.settings.pager=!1,r.settings.controls=!1,r.settings.autoControls=!1,r.settings.tickerHover&&(r.usingCSS?(s="horizontal"===r.settings.mode?4:5,r.viewport.hover(function(){n=o.css("-"+r.cssPrefix+"-transform"),i=parseFloat(n.split(",")[s]),b(i,"reset",0)},function(){u=0,r.children.each(function(t){u+="horizontal"===r.settings.mode?e(this).outerWidth(!0):e(this).outerHeight(!0)}),a=r.settings.speed/u,l="horizontal"===r.settings.mode?"left":"top",c=a*(u-Math.abs(parseInt(i))),H(c)})):r.viewport.hover(function(){o.stop()},function(){u=0,r.children.each(function(t){u+="horizontal"===r.settings.mode?e(this).outerWidth(!0):e(this).outerHeight(!0)}),a=r.settings.speed/u,l="horizontal"===r.settings.mode?"left":"top",c=a*(u-Math.abs(parseInt(o.css(l)))),H(c)})),H()},H=function(e){var t,n,i,s=e?e:r.settings.speed,a={left:0,top:0},l={left:0,top:0};"next"===r.settings.autoDirection?a=o.find(".bx-clone").first().position():l=r.children.first().position(),t="horizontal"===r.settings.mode?-a.left:-a.top,n="horizontal"===r.settings.mode?-l.left:-l.top,i={resetValue:n},b(t,"ticker",s,i)},R=function(t){var n=e(window),i={top:n.scrollTop(),left:n.scrollLeft()},r=t.offset();return i.right=i.left+n.width(),i.bottom=i.top+n.height(),r.right=r.left+t.outerWidth(),r.bottom=r.top+t.outerHeight(),!(i.right<r.left||i.left>r.right||i.bottom<r.top||i.top>r.bottom)},P=function(e){var t=document.activeElement.tagName.toLowerCase(),n="input|textarea",i=new RegExp(t,["i"]),r=i.exec(n);if(null==r&&R(o)){if(39===e.keyCode)return k(e),!1;if(37===e.keyCode)return E(e),!1}},q=function(){r.touch={start:{x:0,y:0},end:{x:0,y:0}},r.viewport.bind("touchstart MSPointerDown pointerdown",_),r.viewport.on("click",".bxslider a",function(e){r.viewport.hasClass("click-disabled")&&(e.preventDefault(),r.viewport.removeClass("click-disabled"))})},_=function(e){if(r.controls.el.addClass("disabled"),r.working)e.preventDefault(),r.controls.el.removeClass("disabled");else{r.touch.originalPos=o.position();var t=e.originalEvent,n="undefined"!=typeof t.changedTouches?t.changedTouches:[t];r.touch.start.x=n[0].pageX,r.touch.start.y=n[0].pageY,r.viewport.get(0).setPointerCapture&&(r.pointerId=t.pointerId,r.viewport.get(0).setPointerCapture(r.pointerId)),r.viewport.bind("touchmove MSPointerMove pointermove",B),r.viewport.bind("touchend MSPointerUp pointerup",W),r.viewport.bind("MSPointerCancel pointercancel",$)}},$=function(e){b(r.touch.originalPos.left,"reset",0),r.controls.el.removeClass("disabled"),r.viewport.unbind("MSPointerCancel pointercancel",$),r.viewport.unbind("touchmove MSPointerMove pointermove",B),r.viewport.unbind("touchend MSPointerUp pointerup",W),r.viewport.get(0).releasePointerCapture&&r.viewport.get(0).releasePointerCapture(r.pointerId)},B=function(e){var t=e.originalEvent,n="undefined"!=typeof t.changedTouches?t.changedTouches:[t],i=Math.abs(n[0].pageX-r.touch.start.x),o=Math.abs(n[0].pageY-r.touch.start.y),s=0,a=0;3*i>o&&r.settings.preventDefaultSwipeX?e.preventDefault():3*o>i&&r.settings.preventDefaultSwipeY&&e.preventDefault(),"fade"!==r.settings.mode&&r.settings.oneToOneTouch&&("horizontal"===r.settings.mode?(a=n[0].pageX-r.touch.start.x,s=r.touch.originalPos.left+a):(a=n[0].pageY-r.touch.start.y,s=r.touch.originalPos.top+a),b(s,"reset",0))},W=function(e){r.viewport.unbind("touchmove MSPointerMove pointermove",B),r.controls.el.removeClass("disabled");var t=e.originalEvent,n="undefined"!=typeof t.changedTouches?t.changedTouches:[t],i=0,s=0;r.touch.end.x=n[0].pageX,r.touch.end.y=n[0].pageY,"fade"===r.settings.mode?(s=Math.abs(r.touch.start.x-r.touch.end.x),s>=r.settings.swipeThreshold&&(r.touch.start.x>r.touch.end.x?o.goToNextSlide():o.goToPrevSlide(),o.stopAuto())):("horizontal"===r.settings.mode?(s=r.touch.end.x-r.touch.start.x,i=r.touch.originalPos.left):(s=r.touch.end.y-r.touch.start.y,i=r.touch.originalPos.top),!r.settings.infiniteLoop&&(0===r.active.index&&s>0||r.active.last&&0>s)?b(i,"reset",200):Math.abs(s)>=r.settings.swipeThreshold?(0>s?o.goToNextSlide():o.goToPrevSlide(),o.stopAuto()):b(i,"reset",200)),r.viewport.unbind("touchend MSPointerUp pointerup",W),r.viewport.get(0).releasePointerCapture&&r.viewport.get(0).releasePointerCapture(r.pointerId)},z=function(t){if(r.initialized)if(r.working)window.setTimeout(z,10);else{var n=e(window).width(),i=e(window).height();(s!==n||a!==i)&&(s=n,a=i,o.redrawSlider(),r.settings.onSliderResize.call(o,r.active.index))}},X=function(e){var t=g();r.settings.ariaHidden&&!r.settings.ticker&&(r.children.attr("aria-hidden","true"),r.children.slice(e,e+t).attr("aria-hidden","false"))},V=function(e){return 0>e?r.settings.infiniteLoop?m()-1:r.active.index:e>=m()?r.settings.infiniteLoop?0:r.active.index:e};return o.goToSlide=function(t,n){var i,s,a,l,c=!0,u=0,d={left:0,top:0},f=null;if(r.oldIndex=r.active.index,r.active.index=V(t),!r.working&&r.active.index!==r.oldIndex){if(r.working=!0,c=r.settings.onSlideBefore.call(o,r.children.eq(r.active.index),r.oldIndex,r.active.index),"undefined"!=typeof c&&!c)return r.active.index=r.oldIndex,void(r.working=!1);"next"===n?r.settings.onSlideNext.call(o,r.children.eq(r.active.index),r.oldIndex,r.active.index)||(c=!1):"prev"===n&&(r.settings.onSlidePrev.call(o,r.children.eq(r.active.index),r.oldIndex,r.active.index)||(c=!1)),r.active.last=r.active.index>=m()-1,(r.settings.pager||r.settings.pagerCustom)&&L(r.active.index),r.settings.controls&&F(),"fade"===r.settings.mode?(r.settings.adaptiveHeight&&r.viewport.height()!==p()&&r.viewport.animate({height:p()},r.settings.adaptiveHeightSpeed),r.children.filter(":visible").fadeOut(r.settings.speed).css({zIndex:0}),r.children.eq(r.active.index).css("zIndex",r.settings.slideZIndex+1).fadeIn(r.settings.speed,function(){e(this).css("zIndex",r.settings.slideZIndex),j()})):(r.settings.adaptiveHeight&&r.viewport.height()!==p()&&r.viewport.animate({height:p()},r.settings.adaptiveHeightSpeed),!r.settings.infiniteLoop&&r.carousel&&r.active.last?"horizontal"===r.settings.mode?(f=r.children.eq(r.children.length-1),d=f.position(),u=r.viewport.width()-f.outerWidth()):(i=r.children.length-r.settings.minSlides,d=r.children.eq(i).position()):r.carousel&&r.active.last&&"prev"===n?(s=1===r.settings.moveSlides?r.settings.maxSlides-v():(m()-1)*v()-(r.children.length-r.settings.maxSlides),f=o.children(".bx-clone").eq(s),d=f.position()):"next"===n&&0===r.active.index?(d=o.find("> .bx-clone").eq(r.settings.maxSlides).position(),r.active.last=!1):t>=0&&(l=t*parseInt(v()),d=r.children.eq(l).position()),"undefined"!=typeof d?(a="horizontal"===r.settings.mode?-(d.left-u):-d.top,b(a,"slide",r.settings.speed)):r.working=!1),r.settings.ariaHidden&&X(r.active.index*v())}},o.goToNextSlide=function(){if(r.settings.infiniteLoop||!r.active.last){var e=parseInt(r.active.index)+1;o.goToSlide(e,"next")}},o.goToPrevSlide=function(){if(r.settings.infiniteLoop||0!==r.active.index){var e=parseInt(r.active.index)-1;o.goToSlide(e,"prev")}},o.startAuto=function(e){r.interval||(r.interval=setInterval(function(){"next"===r.settings.autoDirection?o.goToNextSlide():o.goToPrevSlide()},r.settings.pause),r.settings.autoControls&&e!==!0&&M("stop"))},o.stopAuto=function(e){r.interval&&(clearInterval(r.interval),r.interval=null,r.settings.autoControls&&e!==!0&&M("start"))},o.getCurrentSlide=function(){return r.active.index},o.getCurrentSlideElement=function(){return r.children.eq(r.active.index)},o.getSlideElement=function(e){return r.children.eq(e)},o.getSlideCount=function(){return r.children.length},o.isWorking=function(){return r.working},o.redrawSlider=function(){r.children.add(o.find(".bx-clone")).outerWidth(h()),r.viewport.css("height",p()),r.settings.ticker||y(),r.active.last&&(r.active.index=m()-1),r.active.index>=m()&&(r.active.last=!0),r.settings.pager&&!r.settings.pagerCustom&&(x(),L(r.active.index)),r.settings.ariaHidden&&X(r.active.index*v())},o.destroySlider=function(){r.initialized&&(r.initialized=!1,e(".bx-clone",this).remove(),r.children.each(function(){void 0!==e(this).data("origStyle")?e(this).attr("style",e(this).data("origStyle")):e(this).removeAttr("style")}),void 0!==e(this).data("origStyle")?this.attr("style",e(this).data("origStyle")):e(this).removeAttr("style"),e(this).unwrap().unwrap(),r.controls.el&&r.controls.el.remove(),r.controls.next&&r.controls.next.remove(),r.controls.prev&&r.controls.prev.remove(),r.pagerEl&&r.settings.controls&&!r.settings.pagerCustom&&r.pagerEl.remove(),e(".bx-caption",this).remove(),r.controls.autoEl&&r.controls.autoEl.remove(),clearInterval(r.interval),r.settings.responsive&&e(window).unbind("resize",z),r.settings.keyboardEnabled&&e(document).unbind("keydown",P),e(this).removeData("bxSlider"))},o.reloadSlider=function(t){void 0!==t&&(n=t),o.destroySlider(),l(),e(o).data("bxSlider",this)},l(),e(o).data("bxSlider",this),this}}}(jQuery);