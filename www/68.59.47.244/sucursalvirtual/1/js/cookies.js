    var IE = navigator.appName=="Microsoft Internet Explorer";
    var NS = navigator.appName=="Netscape";

	function setCookie(cookieName, cookieValue, expires, path, domain, secure) {
		document.cookie = escape(cookieName) + '=' + escape(cookieValue)
		+ (expires ? '; EXPIRES=' + expires.toGMTString() : '')
		+ (path ? '; PATH=' + path : '')
		+ (domain ? '; DOMAIN=' + domain : '')
		+ (secure ? '; SECURE' : '');
	}
