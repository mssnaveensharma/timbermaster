<?php
######################################################################
# tagmanager for Joomla 1.6		       	          	          	     #
# Copyright (C) 2011 by Analytics for Joomla	   	   	             #
# Homepage   : http://www.analyticsforjoomla.com		   	   	   	 #
# Author     : Tim Robinson & Martijn van Vreeden	   	   	   	   	 #
# Email      : info@analyticsforjoomla.com 	   	   	   	   	   	   	 #
# Version    : 1.0	                       	   	    	   	   	     #
# License    : http://www.gnu.org/copyleft/gpl.html GNU/GPL          #
######################################################################

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport( 'joomla.plugin.plugin');


class plgSystemtagmanager4joomla extends JPlugin
{


	function onAfterRender()
		{
		$mainframe = &JFactory::getApplication();

		if($app->isAdmin || strpos($_SERVER["PHP_SELF"], "index.php") === false || JRequest::getVar('format','html') != 'html'){
			return;
		}

		$tagmanager_id = $this->params->get('tagmanager_id', '');
		$asynch = $this->params->get('asynch', '');

		if($tagmanager_id == '' || $mainframe->isAdmin() || strpos($_SERVER["PHP_SELF"], "index.php") === false)
		{
			return;
		}

		$buffer = JResponse::getBody();

		$javascript = '
<!-- Start tagmanager for Joomla by Analytics for Joomla -->
<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id='. $tagmanager_id .'"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':
new Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=
\'//www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,\'script\',\'dataLayer\',\''. $tagmanager_id .'\');</script>
<!-- End Google Tag Manager -->



<!-- End tagmanager for Joomla by Analytics for Joomla -->
';

		$buffer = str_replace ("</head>", $javascript."</head>", $buffer);
		JResponse::setBody($buffer);

		return true;
	}
}
?>