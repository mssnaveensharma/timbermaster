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

class JFormFieldRemove extends JFormField
{
	protected $type = 'Remove';
        protected function getLabel()
        {
            return '';
        }
	protected function getInput()
	{
            $return=array('<button id="'.$this->id.'">'.JText::_('PLG_SYS_HEADTAG_REMOVE_BUTTON').'</button>');
            return implode("\n",$return);
	}
}