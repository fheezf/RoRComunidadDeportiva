// -----------------------------------------------------------------------------------
// http://wowslider.com/
// JavaScript Wow Slider is a free software that helps you easily generate delicious 
// slideshows with gorgeous transition effects, in a few clicks without writing a single line of code.
// Generated by WOW Slider 7.2
//
//***********************************************
// Obfuscated by Javascript Obfuscator
// http://javascript-source.com
//***********************************************
function ws_basic_linear(j,g,a){var c=jQuery;var f=c(this);var i=c("<div>").addClass("ws_effect ws_basic_linear").css({position:"absolute",top:0,left:0,width:"100%",height:"100%",overflow:"hidden"}).appendTo(a);var b=c("<div>").css({position:"absolute",display:"none","z-index":2,width:"200%",height:"100%",transform:"translate3d(0,0,0)"}).appendTo(i);var h=c("<div>").css({position:"absolute",left:"auto",top:"auto",width:"50%",height:"100%",overflow:"hidden"}),d=h.clone();b.append(h,d);function e(n,k,l,m){if(j.support.transform&&j.support.transition){if(k.right){k.left=-k.right;delete k.right}k.transform="translate3d("+k.left+"px,0,0)";delete k.left;k.transition="all "+l+"ms cubic-bezier(0.770, 0.000, 0.175, 1.000)";n.css(k);if(m){n.on("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd",function(){n.css({transform:"",transition:""});n.off("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd");m()})}}else{n.animate(k,{easing:"easeInOutExpo",duration:j.duration,complete:m?m:0})}}this.go=function(k,o,m){b.stop(1,1);if(m==undefined){m=(!!((k-o+1)%g.length)^j.revers?"left":"right")}else{m=m?"left":"right"}var p=c(g[o]);var l={width:p.width()||j.width,height:p.height()||j.height};p.clone().css(l).appendTo(h).css(m,0);c(g[k]).clone().css(l).appendTo(d).show();if(m=="right"){h.css("left","50%");d.css("left",0)}else{h.css("left",0);d.css("left","50%")}b.css({left:"auto",right:"auto",top:0}).css(m,0).show();var n={};n[m]=-a.width();e(b,n,j.duration,function(){f.trigger("effectEnd");b.hide().find("div").html("")})}};// -----------------------------------------------------------------------------------
// http://wowslider.com/
// JavaScript Wow Slider is a free software that helps you easily generate delicious 
// slideshows with gorgeous transition effects, in a few clicks without writing a single line of code.
// Generated by WOW Slider 7.2
//
//***********************************************
// Obfuscated by Javascript Obfuscator
// http://javascript-source.com
//***********************************************
function iniciaSlider(){
	jQuery("#wowslider-container1").wowSlider({effect:"basic_linear",prev:"",next:"",duration:12*100,delay:41*100,width:830,height:360,autoPlay:false,autoPlayVideo:false,playPause:false,stopOnHover:false,loop:false,bullets:1,caption:false,captionEffect:"parallax",controls:true,responsive:1,fullScreen:false,gestures:2,onBeforeStep:0,images:0});
}	