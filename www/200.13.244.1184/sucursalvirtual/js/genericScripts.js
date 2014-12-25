/**Utilizada en conjunto con jquery.validate_t1.js. Pinta los errores en la pantalla.*/
function paint_error(id,lid,t,msj, width ){
	var idDiv = 'error_popup';
	

    var ime = "<a href='#' onMouseOver=\"getMouseXY( event ); showHelp('error_popup','"+ t +"','"+msj+"', "+width+"  );\" onMouseOut=\"hideHelp('error_popup');\" onclick=\"return false;\"><img src='/images/warning.gif'  align=\"absmiddle\" class=\"ico_err\" ></a>";
    var ll = '<label class="error" for="'+id+'" generated="true">'+ime+'</label>';
	
	$("#"+lid).addClass("lblred");
	
    var $miel = jQuery("#"+id);
    
    if( $miel.parent(".mito").length > 0   ){
    	if( jQuery.browser.msie && jQuery.browser.version < 8 )         
       		$miel.parent(".mito").css("border","1px solid #FF0000");
       	else $("#"+id).addClass("error");	
			$("#"+id).parent(".mito").parent().parent().parent().parent().append( ll );
	}
	else{	    		
		$("#"+id).addClass("error");			
		if ( $("#"+id).parent().is('td') ){
			$("#"+id).parent().append(ll);
		}else if ( $("#"+id).parent().parent().is('td') ){
			$("#"+id).parent().parent().append(ll);
		}else $("#"+id).parent().append(ll);
		//$("#"+id).after(ll);
	} 
     
}
/**Para que las burbujas de ayuda no se solapen con select en ie6*/
$(document).ready(function() {
    $('#help_popupTopLeft').bgiframe();
    $('#help_popupTopRight').bgiframe();
    $('#help_popupBottomLeft').bgiframe();
    $('#help_popupBottomRight').bgiframe();
    $('#error_popupTopLeft').bgiframe();
    $('#error_popupTopRight').bgiframe();
    $('#error_popupBottomLeft').bgiframe();
    $('#error_popupBottomRight').bgiframe();
});