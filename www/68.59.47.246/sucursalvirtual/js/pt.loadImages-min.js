$(window).bind("load",function(){var B=new Array();
$(".hover").each(function(){s=$(this).attr("src").replace(/\.(.+)$/i,"_over.$1");
B.push(s)
});
var A=document.createElement("img");
$(A).bind("load",function(){if(B[0]){this.src=B.shift()
}}).trigger("load")
});
$(document).ready(function(){$(".hover").each(function(){if($(this).attr("src").match(/_over\.(.+)$/i)){$(this).removeClass("hover")
}});
$(".hover").hover(function(){s=$(this).attr("src").replace(/_over\.(.+)$/i,".$1");
s=s.replace(/\.(.+)$/i,"_over.$1");
$(this).attr("src",s)
},function(){s=$(this).attr("src").replace(/_over\.(.+)$/i,".$1");
$(this).attr("src",s)
})
});