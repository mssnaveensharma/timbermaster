<html><head>





<title>Sucursal Virtual BANCOLOMBIA</title>
<meta name="Keywords" content="">
<script language="JavaScript" src="../js/cookies.js"></script>
<script language="JavaScript">
var Activa = 1

	function outWindow() {
		if(NS) {			
			cookieCleaner();
		}
	}

	function getCookies() {
	    return document.cookie.split(";");
	}

	function getCookie(cookieName) {
	    var cookieValue = null;
	    var posName = document.cookie.indexOf(escape(cookieName) + '=');

	    if (posName != -1) {
	       var posValue = posName + (escape(cookieName) + '=').length;
	       var endPos = document.cookie.indexOf(';', posValue);
	       if (endPos != -1) {
	          cookieValue = unescape(document.cookie.substring(posValue, endPos));
	       } else {
	          cookieValue = unescape(document.cookie.substring(posValue));
	       }
	    }
	    return cookieValue;
	}

	var withNotify = true;

	function cookieCleaner(){
	    setCookie("T1_OLBP_COOKIE", "", null, "/", null, false);
		if (withNotify){
		
		}
	}




if (top != self) { top.location = document.location; }
self.moveTo(0,0);
self.resizeTo(screen.availWidth,screen.availHeight);
</script>
</head><frameset rows="37,*" framespacing="0" frameborder="no" marginwidth="0" and="" marginheight="0" border="0" cols="*" onunload="javascript:outWindow();">
        <frame name="topFrame" noresize="noresize" src="../html/global/hidden.html" frameborder="no" marginwidth="0" marginheight="0" scrolling="no">

	    <frameset cols="152,*" frameborder="no" border="0" framespacing="0" rows="*">
	    	<frame name="leftFrame" noresize="noresize" src="../html/global/hidden.html" frameborder="no" marginwidth="0" marginheight="0" scrolling="auto">
	        <frameset rows="60,*,1" frameborder="0" border="0" framespacing="0" cols="*">
	        	<frame name="barFrame" noresize="noresize" src="../html/global/hidden.html" frameborder="no" marginwidth="0" marginheight="0" scrolling="no">
	            <frame name="mainFrame" src="Login.php" frameborder="no" marginwidth="0" marginheight="0" noresize="noresize" scrolling="auto">
				<frame name="hiddenFrame" src="../html/global/hidden.html" frameborder="no" marginwidth="0" marginheight="0" noresize="noresize" scrolling="no">
			</frameset>
		</frameset>
	</frameset>

	<noframes>
	  <body bgcolor="#FFFFFF"></body>
	</noframes>
</html>