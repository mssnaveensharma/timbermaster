<?php

/**
* @copyright	Copyright (C) 2009 - 2012 Ready Bytes Software Labs Pvt. Ltd. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* @package 		RBInstaller
* @subpackage	Back-end
* @contact		team@readybytes.in
*/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

Rb_HelperTemplate::loadSetupEnv();
Rb_HelperTemplate::loadSetupScripts();

// load bootsrap css
Rb_Html::_('bootstrap.loadcss');

Rb_Html::script('com_rbinstaller/admin.js');
Rb_Html::script('com_rbinstaller/angular/angular.js');
Rb_Html::script('com_rbinstaller/angular/ui-router.js');
Rb_Html::script('com_rbinstaller/angular/cookie.js');
Rb_Html::script('com_rbinstaller/angular/config.js');
Rb_Html::script('com_rbinstaller/angular/controller.js');
Rb_Html::script('com_rbinstaller/angular/filters.js');