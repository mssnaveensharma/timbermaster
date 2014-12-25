//IT REQUIRES fp_AA.js ALREADY LOADED

var flashinstalled = 0; // Put 2 in order to pass the checks and always put the flash cookie
var flashversion = 0; // Put 6 in order to pass the checks and always put the flash cookie
MSDetect = "false";

// alert("navigator.plugins.length is: " + navigator.plugins.length + " , If it is 0 then there are no plugins");
// alert("navigator.mimeTypes.length is: " + navigator.mimeTypes.length + " , If it is 0 then there are no mimetypes");

if( navigator.plugins && navigator.plugins.length ){
    x = navigator.plugins["Shockwave Flash"];    
    //alert("Option 1 - you are probably using Firefox, Netscape, Opera or Safari browser");
    
    
    if(x){
        flashinstalled = 2;
    }
    else {
        flashinstalled = 1;
    }
    
    if( navigator.plugins["Shockwave Flash 2.0"] ){
        flashinstalled = 2;
        flashversion = 2;
        //alert("en navitator.plugins");
    }
}
else if( navigator.mimeTypes && navigator.mimeTypes.length ){
    //alert("Option 2");    
    x = navigator.mimeTypes['application/x-shockwave-flash'];
    
    if( x && x.enabledPlugin ){
        flashinstalled = 2;
    }
    else{
        flashinstalled = 1;
    }
}
else{
    //alert("Option 3 - you are probably using IE browser");    
    MSDetect = "true";
}
