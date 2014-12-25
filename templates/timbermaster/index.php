<?php
/**
 * @package     Joomla.Site
 * @subpackage  Templates.protostar
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

$app             = JFactory::getApplication();
$doc             = JFactory::getDocument();
$user            = JFactory::getUser();
$this->language  = $doc->language;
$this->direction = $doc->direction;

// Getting params from template
$params = $app->getTemplate(true)->params;

// Detecting Active Variables
$option   = $app->input->getCmd('option', '');
$view     = $app->input->getCmd('view', '');
$layout   = $app->input->getCmd('layout', '');
$task     = $app->input->getCmd('task', '');
$itemid   = $app->input->getCmd('Itemid', '');
$sitename = $app->get('sitename');

if($task == "edit" || $layout == "form" )
{
	$fullWidth = 1;
}
else
{
	$fullWidth = 0;
}

// Add JavaScript Frameworks
JHtml::_('bootstrap.framework');
$doc->addScript('templates/' . $this->template . '/js/template.js');

// Add Stylesheets
$doc->addStyleSheet('templates/' . $this->template . '/css/template.css');
$doc->addStyleSheet('templates/' . $this->template . '/css/layout.css');
$doc->addStyleSheet('templates/' . $this->template . '/css/joomla.css');
$doc->addStyleSheet('templates/' . $this->template . '/css/wood/wood-layout.css');
$doc->addStyleSheet('templates/' . $this->template . '/css/modules.css');
$doc->addStyleSheet('templates/' . $this->template . '/css/mod_yoo_search.css');

// Load optional RTL Bootstrap CSS
JHtml::_('bootstrap.loadCss', false, $this->direction);

// Adjusting content width
if ($this->countModules('position-7') && $this->countModules('position-8'))
{
	$span = "span6";
}
elseif ($this->countModules('position-7') && !$this->countModules('position-8'))
{
	$span = "span9";
}
elseif (!$this->countModules('position-7') && $this->countModules('position-8'))
{
	$span = "span9";
}
else
{
	$span = "span12";
}

// Logo file or site title param
if ($this->params->get('logoFile'))
{
	$logo = '<img src="' . JUri::root() . $this->params->get('logoFile') . '" alt="' . $sitename . '" />';
}
elseif ($this->params->get('sitetitle'))
{
	$logo = '<span class="site-title" title="' . $sitename . '">' . htmlspecialchars($this->params->get('sitetitle')) . '</span>';
}
else
{
	$logo = '<span class="site-title" title="' . $sitename . '">' . $sitename . '</span>';
}
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<jdoc:include type="head" />
	<?php if ($this->countModules('position-7')) :			
		else:?>
		<style>
		.background > div{margin : 0px;}
		#page #middle .background {
    		background: none repeat scroll 0 0 rgba(0, 0, 0, 0);
		}
		#page .background > div {
		    margin: 0 auto;
		   * text-align: center;
		}

		</style>
	 <?php endif; ?>
	<?php // Use of Google Font ?>
	<?php if ($this->params->get('googleFont')) : ?>
		<link href='//fonts.googleapis.com/css?family=<?php echo $this->params->get('googleFontName'); ?>' rel='stylesheet' type='text/css' />
		<style type="text/css">
			h1,h2,h3,h4,h5,h6,.site-title{
				*font-family: '<?php echo str_replace('+', ' ', $this->params->get('googleFontName')); ?>', sans-serif;
			}
		</style>
	<?php endif; ?>
	<?php // Template color ?>
	<?php if ($this->params->get('templateColor')) : ?>
		<style type="text/css">
	    		div.wrapper { width: 890px; }
	    </style>	
	<?php endif; ?>
	<!--[if lt IE 9]>
		<script src="<?php echo $this->baseurl; ?>/media/jui/js/html5.js"></script>
	<![endif]-->	
</head>

<body id="page" class="yoopage right  green site <?php echo $option
	. ' view-' . $view
	. ($layout ? ' layout-' . $layout : ' no-layout')
	. ($task ? ' task-' . $task : ' no-task')
	. ($itemid ? ' itemid-' . $itemid : '')
	. ($params->get('fluidContainer') ? ' fluid' : '');
?>">

		<div id="absolute">
		
	</div>
	
	<div id="page-header">
		<div class="wrapper floatholder">

			<div id="toolbar">
				<div class="floatbox ie_fix_floats">

					
					

				</div>
			</div>
			
		</div>
	</div>

	<div id="page-body">
		<div class="wrapper floatholder">
			<div class="wrapper-bg">
				<div class="wrapper-l">
					<div class="wrapper-r">

						<div id="header">

									
							<div id="logobar">
							
								<div id="logo">
									<jdoc:include type="modules" name="banner" style="xhtml" />
								</div>
								
																
							</div>
							
							<div id="menubar">
								<div class="menubar-2"></div>
							</div>
			
							<div id="menu">
								<?php if ($this->countModules('position-1')) : ?>
									<nav class="navigation" role="navigation">
										<jdoc:include type="modules" name="position-1" style="none" />
									</nav>
								<?php endif; ?>							
							</div>
															
														<div id="search">
								<div class="default">
	<div id="yoo-search-1" class="yoo-search">
	
		<form action="index.php" method="post">
			<div class="searchbox" style="">
				<button class="search-magnifier" type="submit" value="Search"></button>
				<input class="searchfield" type="text" onfocus="if(this.value=='search...') this.value='';" onblur="if(this.value=='') this.value='search...';" value="search..." size="20" alt="search..." maxlength="20" name="searchword" />
				<button class="search-close" type="reset" value="Reset"></button>
			</div>	
			<input type="hidden" name="task"   value="search" />
			<input type="hidden" name="option" value="com_search" />
		</form>		

		<div class="resultbox" style="width: 400px;"></div>

	</div>
</div>


							</div>
											
										
														
														<div id="header-right">
											<div class="mod-blank">
				<div class="module deepest">
				
										
					
				</div>
			</div>
			
							</div>
										
						</div>
						<!-- header end -->

			<div id="top">
							<div class="floatbox ie_fix_floats">
					
																<div class="topblock width100 float-left">
												<div class="mod-blank">
				<div class="module deepest">
				<jdoc:include type="modules" name="position-0" style="none" />				

					
				</div>
			</div>
			
								</div>
													
																					
							</div>
						</div>
						<!-- top end -->
											
						<div id="middle">
							<div class="background">
								<div id="left">
									<?php if ($this->countModules('position-7')) : ?>
									<div id="left_container" class="clearfix">
										<div class="mod-header mod-menu">
											<div class="module">
												<div class="box-1">
													<div class="box-2">
									<div id="aside" class="span3">
										<!-- Begin Right Sidebar -->
										<jdoc:include type="modules" name="position-7" style="well" />
										<!-- End Right Sidebar -->
									</div>
							
													</div>
												</div>
											</div>
										</div>
									</div>
									<?php endif; ?>
								</div><!-- left end -->
													
								<div id="main">
										<main id="content" role="main" class="<?php echo $span; ?>">
											<!-- Begin Content -->
											<jdoc:include type="modules" name="position-3" style="xhtml" />
											<jdoc:include type="message" />
											<jdoc:include type="component" />
											<div class="position_2">
												<jdoc:include type="modules" name="position-2" style="xhtml" />
											</div>
											<!-- End Content -->
										</main>									
								</div>
								<!-- main end -->
					
							</div>
						</div>
						<!-- middle end -->
						
												<div id="bottom">
							<div class="floatbox ie_fix_floats">
					<div class="bottomblock width100 float-left">
					<div class="mod-blank">		
						<?php if ($this->countModules('position-8')) : ?>
							<!-- Begin Sidebar -->
							<div id="sidebar" class="span3">
								<div class="sidebar-nav">
									<jdoc:include type="modules" name="position-8" style="xhtml" />
								</div>
							</div>
					<!-- End Sidebar -->
				<?php endif; ?>

			</div>
			
								</div>
																		
							</div>
						</div>
						<!-- bottom end -->
						
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="page-footer">
		<div class="wrapper floatholder">
		
			<div id="footer">
				<a href="#page" id="back-top">
					<?php echo JText::_('TPL_PROTOSTAR_BACKTOTOP'); ?>
				</a>
				<!--a class="anchor" id="back-top" href="#top"></a-->
				<div id="footer">
					<div align="center">Copyright © 2011 Timber Master | <a href="legal-disclaimer">Legal Disclaimer</a> </div>
				</div>				
			</div>
			<!-- footer end -->			
		</div>
	</div>
</body>
</html>
