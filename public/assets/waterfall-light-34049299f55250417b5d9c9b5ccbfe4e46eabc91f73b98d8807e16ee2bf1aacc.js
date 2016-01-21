/**
 * Copyright 2015, Zap Lin
 * All rights reserved.
 *
 * This source code is licensed under the Apache license found in the
 * LICENSE file in the root directory of this source tree.
 */
!function(t){function e(t,e){for(var i=r[t].top,n=0,s=i[n],o=0;o<i.length;o++)e?i[o]>s&&(s=i[o],n=o):i[o]<s&&(s=i[o],n=o);return n}function i(i){var n=o(i),s=r[n].gridWidth,a=r[n].w,l=r[n].gap,d=r[n].scrollbottom;r[n].col=1,r[n].top=[];for(var c=s.length-1;c>=0;c--)if(a>s[c]){r[n].col=c+1;break}for(var g=(a-(r[n].col-1)*l)/r[n].col,u=[],h=0;h<r[n].col;h++)u.push(h*g+h*l),r[n].top.push(0);i.children().css({position:"absolute",left:a/2-g/2+"px",top:i.scrollTop(),transition:"left "+r[n].refresh+"ms ease-in-out,top "+r[n].refresh+"ms ease-in-out,opacity "+r[n].refresh+"ms ease-in-out"}).each(function(){var i=e(n,!1);t(this).css({width:g+"px",left:u[i]+"px",top:r[n].top[i]+"px",opacity:"1"}),r[n].top[i]+=t(this)[0].offsetHeight+l}),i.css("height",r[n].top[e(n,!0)]+"px"),d&&d.endele&&d.endele.addClass("endele").text(d.endtxt).css("top",r[n].top[e(n,!0)]+"px")}function n(t){var e=o(t);r[e].timer||(r[e].timer=setInterval(function(){var n=t[0].offsetWidth;r[e].w!==n&&(r[e].w=n,i(t)),r[e].scrollbottom&&r[e].scrollbottom.callback&&s(r[e].scrollbottom.ele,r[e].scrollbottom.gap)&&r[e].scrollbottom.callback(t)},r[e].refresh)),i(t)}function s(e,i){var n=t(window).height();return n+e.scrollTop()>e.prop("scrollHeight")-i}function o(t){return t.attr("wf-id")||(a+=.1,t.attr("wf-id",a)),t.attr("wf-id")}var r={_init_:{top:!1,w:!1,col:!1,gap:10,gridWidth:[0,400,600,800,1200],refresh:500,timer:!1,scrollbottom:!1}},a=0,l={init:function(){var e=o(this);r[e]||(r[e]=t.extend({},r._init_)),arguments[0]&&(r[e]=t.extend(r[e],arguments[0])),r[e].scrollbottom&&(r[e].scrollbottom=t.extend({ele:this.parent(),endele:t("<div>").css({width:"100%",textAlign:"center",position:"absolute"}),endtxt:"No More Data",gap:300},r[e].scrollbottom)),this.css("position","relative"),n(this)},sort:function(){i(this)},stop:function(){var t=o(this);r[t].timer&&(clearInterval(r[t].timer),r[t].timer=!1)},end:function(){var t=o(this);r[t].scrollbottom&&(r[t].scrollbottom.ele.css("top",r[t].top[e(t,!0)]+"px"),this.append(r[t].scrollbottom.endele)),r[t].timer&&(clearInterval(r[t].timer),r[t].timer=!1)}};t.fn.waterfall=function(){var e;return arguments[0]&&"object"!=typeof arguments[0]?l[arguments[0]]?e=l[arguments[0]].apply(this,Array.prototype.slice.call(arguments[0],1)):t.error("Method "+arguments[0]+" does not exist on jQuery.waterfall"):e=l.init.apply(this,arguments),e||this}}(jQuery);