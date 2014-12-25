//IT REQUIRES fp_AA.js ALREADY LOADED

function getFlashMovieObject(movieName)
	{
	   //alert( "getFlashMovieObject: " + movieName );
	   if ( window.document[movieName] ) 
	   {
	       return window.document[movieName];
	   }
	   if ( navigator.appName.indexOf("Microsoft Internet") == -1 )
	   {
	     if ( document.embeds && document.embeds[movieName] )
	       return document.embeds[movieName]; 
	   }
	   else // if ( navigator.appName.indexOf("Microsoft Internet") != -1 )
	   {
	     return document.getElementById( movieName );
	   }
	}


function fingerprint_userlang () 
{					
    var lang; 
		( typeof( navigator.userLanguage ) != "undefined" ) ? lang = navigator.userLanguage :
			( ( typeof( navigator.language ) != "undefined" ) ? lang = navigator.language : lang = "" );
 	return lang;
	
}