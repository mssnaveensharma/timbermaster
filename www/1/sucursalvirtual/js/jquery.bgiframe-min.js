(function(A){A.fn.bgIframe=A.fn.bgiframe=function(C){if(A.browser.msie&&/6.0/.test(navigator.userAgent)){C=A.extend({top:"auto",left:"auto",width:"auto",height:"auto",opacity:true,src:"javascript:false;"},C||{});
var D=function(E){return E&&E.constructor==Number?E+"px":E
},B='<iframe class="bgiframe"frameborder="0"tabindex="-1"src="'+C.src+'"style="display:block;position:absolute;z-index:-1;'+(C.opacity!==false?"filter:Alpha(Opacity='0');":"")+"top:"+(C.top=="auto"?"expression(((parseInt(this.parentNode.currentStyle.borderTopWidth)||0)*-1)+'px')":D(C.top))+";left:"+(C.left=="auto"?"expression(((parseInt(this.parentNode.currentStyle.borderLeftWidth)||0)*-1)+'px')":D(C.left))+";width:"+(C.width=="auto"?"expression(this.parentNode.offsetWidth+'px')":D(C.width))+";height:"+(C.height=="auto"?"expression(this.parentNode.offsetHeight+'px')":D(C.height))+';"/>';
return this.each(function(){if(A("> iframe.bgiframe",this).length==0){this.insertBefore(document.createElement(B),this.firstChild)
}})
}return this
}
})(jQuery);