<?php
/**
 * @copyright	Copyright (C) 2010 Michael Richey. All rights reserved.
 * @license		GNU General Public License version 3; see LICENSE.txt
 */

defined('JPATH_BASE') or die;

jimport('joomla.form.formfield');

class JFormFieldJavascript extends JFormField
{
	protected $type = 'Javascript';
        protected function getLabel()
        {
            return '';
        }
	protected function getInput()
	{
                JHtml::_('behavior.framework',true);
                JText::script('PLG_SYS_HEADTAG_SHOWALL');
		JFactory::getDocument()->addScript(JURI::root(true).'/media/plg_system_headtag/admin.js');
		return;
	}
}
