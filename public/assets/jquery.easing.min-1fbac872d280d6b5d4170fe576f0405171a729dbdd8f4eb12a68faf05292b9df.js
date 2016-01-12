/*
 * jQuery Easing v1.3 - http://gsgd.co.uk/sandbox/jquery/easing/
 *
 * Uses the built in easing capabilities added In jQuery 1.1
 * to offer multiple easing options
 *
 * TERMS OF USE - EASING EQUATIONS
 * 
 * Open source under the BSD License. 
 * 
 * Copyright Ã‚Â© 2001 Robert Penner
 * All rights reserved.
 *
 * TERMS OF USE - jQuery Easing
 * 
 * Open source under the BSD License. 
 * 
 * Copyright Ã‚Â© 2008 George McGinley Smith
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 * 
 * Redistributions of source code must retain the above copyright notice, this list of 
 * conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list 
 * of conditions and the following disclaimer in the documentation and/or other materials 
 * provided with the distribution.
 * 
 * Neither the name of the author nor the names of contributors may be used to endorse 
 * or promote products derived from this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY 
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 *  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 *  GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED 
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 *  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED 
 * OF THE POSSIBILITY OF SUCH DAMAGE. 
 *
*/
$(document).ready(function(){jQuery.easing.jswing=jQuery.easing.swing,jQuery.extend(jQuery.easing,{def:"easeOutQuad",swing:function(e,t,n,i,r){return jQuery.easing[jQuery.easing.def](e,t,n,i,r)},easeInQuad:function(e,t,n,i,r){return i*(t/=r)*t+n},easeOutQuad:function(e,t,n,i,r){return-i*(t/=r)*(t-2)+n},easeInOutQuad:function(e,t,n,i,r){return(t/=r/2)<1?i/2*t*t+n:-i/2*(--t*(t-2)-1)+n},easeInCubic:function(e,t,n,i,r){return i*(t/=r)*t*t+n},easeOutCubic:function(e,t,n,i,r){return i*((t=t/r-1)*t*t+1)+n},easeInOutCubic:function(e,t,n,i,r){return(t/=r/2)<1?i/2*t*t*t+n:i/2*((t-=2)*t*t+2)+n},easeInQuart:function(e,t,n,i,r){return i*(t/=r)*t*t*t+n},easeOutQuart:function(e,t,n,i,r){return-i*((t=t/r-1)*t*t*t-1)+n},easeInOutQuart:function(e,t,n,i,r){return(t/=r/2)<1?i/2*t*t*t*t+n:-i/2*((t-=2)*t*t*t-2)+n},easeInQuint:function(e,t,n,i,r){return i*(t/=r)*t*t*t*t+n},easeOutQuint:function(e,t,n,i,r){return i*((t=t/r-1)*t*t*t*t+1)+n},easeInOutQuint:function(e,t,n,i,r){return(t/=r/2)<1?i/2*t*t*t*t*t+n:i/2*((t-=2)*t*t*t*t+2)+n},easeInSine:function(e,t,n,i,r){return-i*Math.cos(t/r*(Math.PI/2))+i+n},easeOutSine:function(e,t,n,i,r){return i*Math.sin(t/r*(Math.PI/2))+n},easeInOutSine:function(e,t,n,i,r){return-i/2*(Math.cos(Math.PI*t/r)-1)+n},easeInExpo:function(e,t,n,i,r){return 0==t?n:i*Math.pow(2,10*(t/r-1))+n},easeOutExpo:function(e,t,n,i,r){return t==r?n+i:i*(-Math.pow(2,-10*t/r)+1)+n},easeInOutExpo:function(e,t,n,i,r){return 0==t?n:t==r?n+i:(t/=r/2)<1?i/2*Math.pow(2,10*(t-1))+n:i/2*(-Math.pow(2,-10*--t)+2)+n},easeInCirc:function(e,t,n,i,r){return-i*(Math.sqrt(1-(t/=r)*t)-1)+n},easeOutCirc:function(e,t,n,i,r){return i*Math.sqrt(1-(t=t/r-1)*t)+n},easeInOutCirc:function(e,t,n,i,r){return(t/=r/2)<1?-i/2*(Math.sqrt(1-t*t)-1)+n:i/2*(Math.sqrt(1-(t-=2)*t)+1)+n},easeInElastic:function(e,t,n,i,r){var o=1.70158,s=0,a=i;if(0==t)return n;if(1==(t/=r))return n+i;if(s||(s=.3*r),a<Math.abs(i)){a=i;var o=s/4}else var o=s/(2*Math.PI)*Math.asin(i/a);return-(a*Math.pow(2,10*(t-=1))*Math.sin((t*r-o)*(2*Math.PI)/s))+n},easeOutElastic:function(e,t,n,i,r){var o=1.70158,s=0,a=i;if(0==t)return n;if(1==(t/=r))return n+i;if(s||(s=.3*r),a<Math.abs(i)){a=i;var o=s/4}else var o=s/(2*Math.PI)*Math.asin(i/a);return a*Math.pow(2,-10*t)*Math.sin((t*r-o)*(2*Math.PI)/s)+i+n},easeInOutElastic:function(e,t,n,i,r){var o=1.70158,s=0,a=i;if(0==t)return n;if(2==(t/=r/2))return n+i;if(s||(s=r*(.3*1.5)),a<Math.abs(i)){a=i;var o=s/4}else var o=s/(2*Math.PI)*Math.asin(i/a);return 1>t?-.5*(a*Math.pow(2,10*(t-=1))*Math.sin((t*r-o)*(2*Math.PI)/s))+n:a*Math.pow(2,-10*(t-=1))*Math.sin((t*r-o)*(2*Math.PI)/s)*.5+i+n},easeInBack:function(e,t,n,i,r,o){return void 0==o&&(o=1.70158),i*(t/=r)*t*((o+1)*t-o)+n},easeOutBack:function(e,t,n,i,r,o){return void 0==o&&(o=1.70158),i*((t=t/r-1)*t*((o+1)*t+o)+1)+n},easeInOutBack:function(e,t,n,i,r,o){return void 0==o&&(o=1.70158),(t/=r/2)<1?i/2*(t*t*(((o*=1.525)+1)*t-o))+n:i/2*((t-=2)*t*(((o*=1.525)+1)*t+o)+2)+n},easeInBounce:function(e,t,n,i,r){return i-jQuery.easing.easeOutBounce(e,r-t,0,i,r)+n},easeOutBounce:function(e,t,n,i,r){return(t/=r)<1/2.75?i*(7.5625*t*t)+n:2/2.75>t?i*(7.5625*(t-=1.5/2.75)*t+.75)+n:2.5/2.75>t?i*(7.5625*(t-=2.25/2.75)*t+.9375)+n:i*(7.5625*(t-=2.625/2.75)*t+.984375)+n},easeInOutBounce:function(e,t,n,i,r){return r/2>t?.5*jQuery.easing.easeInBounce(e,2*t,0,i,r)+n:.5*jQuery.easing.easeOutBounce(e,2*t-r,0,i,r)+.5*i+n}})});