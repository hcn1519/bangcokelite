!function(e){e.fn.columnize=function(t){var n={width:400,columns:!1,buildOnce:!1,overflow:!1,doneFunc:function(){},target:!1,ignoreImageLoading:!0,columnFloat:"left",lastNeverTallest:!1,accuracy:!1,manualBreaks:!1,cssClassPrefix:""};return t=e.extend(n,t),"string"==typeof t.width&&(t.width=parseInt(t.width,10),isNaN(t.width)&&(t.width=n.width)),this.each(function(){function i(e,t){var n=t?".":"";return h.length?n+h+"-"+e:n+e}function r(n,r,o,a){for(;(p||o.height()<a)&&r[0].childNodes.length;){var s=r[0].childNodes[0];if(e(s).find(i("columnbreak",!0)).length)return;if(e(s).hasClass(i("columnbreak")))return;n.append(s)}if(0!==n[0].childNodes.length){var l=n[0].childNodes,c=l[l.length-1];n[0].removeChild(c);var u=e(c);if(3==u[0].nodeType){var d=u[0].nodeValue,f=t.width/18;t.accuracy&&(f=t.accuracy);for(var h,g=null;o.height()<a&&d.length;){var v=d.indexOf(" ",f);h=-1!=v?d.substring(0,d.indexOf(" ",f)):d,g=document.createTextNode(h),n.append(g),d=d.length>f&&-1!=v?d.substring(v):""}if(o.height()>=a&&null!==g&&(n[0].removeChild(g),d=g.nodeValue+d),!d.length)return!1;u[0].nodeValue=d}return r.contents().length?r.prepend(u):r.append(u),3==u[0].nodeType}}function o(e,t,n,a){if(!e.contents(":last").find(i("columnbreak",!0)).length&&!e.contents(":last").hasClass(i("columnbreak"))&&t.contents().length){var s=t.contents(":first");if(1!=s.get(0).nodeType)return;var l=s.clone(!0);s.hasClass(i("columnbreak"))?(e.append(l),s.remove()):p?(e.append(l),s.remove()):1!=l.get(0).nodeType||l.hasClass(i("dontend"))||(e.append(l),l.is("img")&&n.height()<a+20?s.remove():!s.hasClass(i("dontsplit"))&&n.height()<a+20?s.remove():l.is("img")||s.hasClass(i("dontsplit"))?l.remove():(l.empty(),r(l,s,n,a)?s.addClass(i("split")):(s.addClass(i("split")),s.children().length&&o(l,s,n,a)),0===l.get(0).childNodes.length&&l.remove()))}}function a(){if(!c.data("columnized")||1!=c.children().length){if(c.data("columnized",!0),c.data("columnizing",!0),c.empty(),c.append(e("<div class='"+i("first")+" "+i("last")+" "+i("column")+" ' style='width:100%; float: "+t.columnFloat+";'></div>")),$col=c.children().eq(c.children().length-1),$destroyable=d.clone(!0),t.overflow){for(targetHeight=t.overflow.height,r($col,$destroyable,$col,targetHeight),$destroyable.contents().find(":first-child").hasClass(i("dontend"))||o($col,$destroyable,$col,targetHeight);$col.contents(":last").length&&s($col.contents(":last").get(0));){var n=$col.contents(":last");n.remove(),$destroyable.prepend(n)}for(var a="",l=document.createElement("DIV");$destroyable[0].childNodes.length>0;){var u=$destroyable[0].childNodes[0];if(u.attributes)for(var f=0;f<u.attributes.length;f++)0===u.attributes[f].nodeName.indexOf("jQuery")&&u.removeAttribute(u.attributes[f].nodeName);l.innerHTML="",l.appendChild($destroyable[0].childNodes[0]),a+=l.innerHTML}var p=e(t.overflow.id)[0];p.innerHTML=a}else $col.append($destroyable);c.data("columnizing",!1),t.overflow&&t.overflow.doneFunc&&t.overflow.doneFunc()}}function s(t){return 3==t.nodeType?/^\s+$/.test(t.nodeValue)&&t.previousSibling?s(t.previousSibling):!1:1!=t.nodeType?!1:e(t).hasClass(i("dontend"))?!0:0===t.childNodes.length?!1:s(t.childNodes[t.childNodes.length-1])}function l(){if(g=0,f!=c.width()){f=c.width();var n=Math.round(c.width()/t.width),l=t.width,h=t.height;if(t.columns&&(n=t.columns),p&&(n=d.find(i("columnbreak",!0)).length+1,l=!1),1>=n)return a();if(!c.data("columnizing")){c.data("columnized",!0),c.data("columnizing",!0),c.empty(),c.append(e("<div style='width:"+Math.floor(100/n)+"%; float: "+t.columnFloat+";'></div>")),S=c.children(":last"),S.append(d.clone()),u=S.height(),c.empty();var v=u/n,m=3,y=!1;t.overflow?(m=1,v=t.overflow.height):h&&l&&(m=1,v=h,y=!0);for(var x=0;m>x&&20>x;x++){c.empty();var b,w,S,C;try{b=d.clone(!0)}catch(T){b=d.clone()}b.css("visibility","hidden");for(var E=0;n>E;E++)w=0===E?i("first"):"",w+=" "+i("column"),w=E==n-1?i("last")+" "+w:w,c.append(e("<div class='"+w+"' style='width:"+Math.floor(100/n)+"%; float: "+t.columnFloat+";'></div>"));for(E=0;E<n-(t.overflow?0:1)||y&&b.contents().length;){for(c.children().length<=E&&c.append(e("<div class='"+w+"' style='width:"+Math.floor(100/n)+"%; float: "+t.columnFloat+";'></div>")),S=c.children().eq(E),y&&S.width(l+"px"),r(S,b,S,v),o(S,b,S,v);S.contents(":last").length&&s(S.contents(":last").get(0));)C=S.contents(":last"),C.remove(),b.prepend(C);E++,0===S.contents().length&&b.contents().length?S.append(b.contents(":first")):E!=n-(t.overflow?0:1)||t.overflow||b.find(i("columnbreak",!0)).length&&n++}if(t.overflow&&!y){var k=!1,N=document.all&&-1!=navigator.appVersion.indexOf("MSIE 7.");if(k||N){for(var A="",M=document.createElement("DIV");b[0].childNodes.length>0;){var j=b[0].childNodes[0];for(E=0;E<j.attributes.length;E++)0===j.attributes[E].nodeName.indexOf("jQuery")&&j.removeAttribute(j.attributes[E].nodeName);M.innerHTML="",M.appendChild(b[0].childNodes[0]),A+=M.innerHTML}var D=e(t.overflow.id)[0];D.innerHTML=A}else e(t.overflow.id).empty().append(b.contents().clone(!0))}else if(y)c.children().each(function(e){S=c.children().eq(e),S.width(l+"px"),0===e?S.addClass(i("first")):e==c.children().length-1?S.addClass(i("last")):(S.removeClass(i("first")),S.removeClass(i("last")))}),c.width(c.children().length*l+"px");else{S=c.children().eq(c.children().length-1),b.contents().each(function(){S.append(e(this))});var L=(S.height(),0),H=1e7,I=0,P=!1,O=0;c.children().each(function(e){return function(t){var n=e.children().eq(t),r=n.children(":last").find(i("columnbreak",!0)).length;if(!r){var o=n.height();P=!1,L+=o,o>I&&(I=o,P=!0),H>o&&(H=o),O++}}}(c));var q=L/O;0===L?x=m:t.lastNeverTallest&&P?(g+=30,v+=30,x==m-1&&m++):I-H>30?v=q+30:Math.abs(q-v)>20?v=q:x=m}c.append(e("<br style='clear:both;'>"))}c.find(i("column",!0)).find(":first"+i("removeiffirst",!0)).remove(),c.find(i("column",!0)).find(":last"+i("removeiflast",!0)).remove(),c.data("columnizing",!1),t.overflow&&t.overflow.doneFunc(),t.doneFunc()}}}var c=e(t.target?t.target:this),u=e(this).height(),d=e("<div></div>"),f=0,p=t.manualBreaks,h=n.cssClassPrefix;"string"==typeof t.cssClassPrefix&&(h=t.cssClassPrefix);var g=0;if(d.append(e(this).contents().clone(!0)),!t.ignoreImageLoading&&!t.target&&!c.data("imageLoaded")&&(c.data("imageLoaded",!0),e(this).find("img").length>0)){var v=function(e,n){return function(){e.data("firstImageLoaded")||(e.data("firstImageLoaded","true"),e.empty().append(n.children().clone(!0)),e.columnize(t))}}(e(this),d);return e(this).find("img").one("load",v),void e(this).find("img").one("abort",v)}c.empty(),l(),t.buildOnce||e(window).resize(function(){t.buildOnce||(c.data("timeout")&&clearTimeout(c.data("timeout")),c.data("timeout",setTimeout(l,200)))})})}}(jQuery);