<?php
/**
 * @version		$Id: jsonhidden.php 20196 2011-01-09 02:40:25Z mrichey $
 * @package		Joomla.Framework
 * @subpackage	Form
 * @copyright	Copyright (C) 2005 - 2011 Michael Richey. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('JPATH_BASE') or die;

jimport('joomla.form.formfield');

class JFormFieldRules extends JFormField
{
	protected $type = 'Rules';
        
	protected function getInput()
	{
//            if(version_compare(JVERSION,3,'<')) { 
//                return '<div class="controls"></div>';
//            } else {               
//                return ' ';
//            }
            return '<div id="'.$this->id.'"></div>';
	}
}