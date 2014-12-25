<?php
######################################################################
# BIGSHOT Google Analytics          	          	          	     #
# Copyright (C) 2013 by BIGSHOT  	   	   	   	   	   	   	   	   	 #
# Homepage   : www.thinkBIGSHOT.com		   	   	   	   	   	   		 #
# Author     : Jeff Henry	    		   	   	   	   	   	   	   	 #
# Email      : JeffH@thinkBIGSHOT.com 	   	   	   	   	   	   	     #
# Version    : 1.8                      	   	    	   	   		 #
# License    : http://www.gnu.org/copyleft/gpl.html GNU/GPL          #
######################################################################

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport( 'joomla.plugin.plugin');
jimport( 'joomla.html.parameter');

class plgSystemBigshotgoogleanalytics extends JPlugin
{
	function plgSystemBigshotgoogleanalytics(&$subject, $config)
	{
		parent::__construct($subject, $config);
		$this->_plugin = JPluginHelper::getPlugin( 'system', 'bigshotgoogleanalytics' );
		$this->_params = new JRegistry( $this->_plugin->params );
	}
	
	function onAfterRender()
	{
		$mainframe = &JFactory::getApplication();
		$web_property_id = $this->params->get('web_property_id', '');
		if($web_property_id == '' || $mainframe->isAdmin() || strpos($_SERVER["PHP_SELF"], "index.php") === false)
		{
			return;
		}

		$buffer = JResponse::getBody();
		$google_analytics_javascript = "
<!-- Google Analytics -->
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
ga('create', '".$web_property_id."', 'auto');  // Replace with your property ID.
ga('send', 'pageview');
</script>
<!-- End Google Analytics -->
";

		
		$buffer = str_replace ("</head>", $google_analytics_javascript."</head>", $buffer);
		JResponse::setBody($buffer);
		return true;
	}
}
?>