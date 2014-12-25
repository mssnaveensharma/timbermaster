<?php
/**
* @package plugin HeadTag
* @copyright (C) 2010-2011 RicheyWeb - www.richeyweb.com
* @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
*
*/
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport( 'joomla.plugin.plugin' );

/**
 * HeadTag system plugin
 */
if(!class_exists('plg_system_headtag\TagParser')) require_once('tagparser.php');
class plgSystemHeadTag extends JPlugin
{
	/**
	 * Constructor
	 *
	 * @access	protected
	 * @param	object	$subject The object to observe
	 * @param 	array   $config  An array that holds the plugin configuration
	 * @since	1.0
	 */
	function __construct( &$subject, $config )
	{
            parent::__construct( $subject, $config );
	}
	function onBeforeRender()
	{
            // this plugin is not meant for /administrator
            $app = JFactory::getApplication();
            if($app->isAdmin()) return true;
            $doc = JFactory::getDocument();
            if($doc->getType() != 'html') return true;
            $menu = $app->getMenu();
            $activemenu = $menu->getActive();
            $menuitem = is_object($activemenu)?(array)$activemenu->id:array(0);
            $user = JFactory::getUser();
            $accesslevel = (array)$user->getAuthorisedViewLevels();
            $usergroup = (array)$user->getAuthorisedGroups();
            $rules = (object)json_decode($this->params->get('rules'));
            if(count(get_object_vars($rules))) {
                if(property_exists($rules,$menuitem[0])) {
                    foreach($rules->$itemid as $rule) $this->_headtag($rule->type,$rule->content);
                }
            } else {
                foreach(array('menuitem','accesslevel','usergroup') as $group) {
                    $rules = (object)json_decode($this->params->get($group.'rules','{}'));
                    foreach($$group as $criteria) {
                        if(property_exists($rules,$criteria)) {
                            foreach($rules->$criteria as $rule) $this->_headtag($rule->type,$rule->content);
                        }
                    }
                }
            }
	}
        
        function onContentPrepare($context, &$article, &$params, $page = 0) {
            // this plugin is not meant for /administrator
            if(JFactory::getApplication()->isAdmin()) return true;
            // skip if output scanning disabled
            if(!$this->params->get('afterrender',0)) return true;
            // skip if document isn't html
            if (JFactory::getDocument()->getType()!='html') return true;
            $article->text = $this->_scanContent($article->text);
        }
        function onAfterRender() 
        {
            // this plugin is not meant for /administrator
            if(JFactory::getApplication()->isAdmin()) return true;
            // skip if output scanning disabled
            if(!$this->params->get('afterrender',0)) return true;
            // skip if document isn't html
            if (JFactory::getDocument()->getType()!='html') return true;
            $body = $this->_scanContent(JResponse::getBody(),true);
            JResponse::setBody($body);
        }
        function _scanContent($body,$afterrender=false) {            
            $user = JFactory::getUser();
            $accesslevel = (array)$user->getAuthorisedViewLevels();
            $usergroup = (array)$user->getAuthorisedGroups();
            if(strpos($body,'{headtag:')===false) return $body; // only operate on pages that contain the headtag code
            $tagparser = plg_system_headtag\TagParser::getInstance('headtag',array('alternateclose'=>'headtag'));
            $tagarray = array('scriptdeclaration','script','customtag');
            if(!$afterrender) $tagarray = array_merge($tagarray,array('stylesheet','styledeclaration'));
            foreach($tagarray as $type) {
                $tagparser->setIdentifier('headtag:'.$type);
                $tagparser->tags = array();
                $tagparser->parse($body);
                foreach($tagparser->tags as $tag) {
                    $accesslevels = $tag->getParam('accesslevel',false);
                    $usergroups = $tag->getParam('usergroup',false);
                    $exit = false;
                    if($accesslevels || $usergroups) {
                        $exit = true;
                        foreach(array('accesslevel','usergroup') as $criteria) {
                            if($exit == false) continue;
                            $varname = $criteria.'s';
                            $compare = explode(',',$$varname);
                            if(count($$criteria) > count(array_diff($$criteria,$compare))) $exit = false;
                        }                        
                    }
                    if(!$exit) {
                        $this->_headtag($type,$tag->content,$afterrender);
                    }
                    $body = $tag->replace($body,'');
                }
            }
            return $body;            
        }
        private function _headtag($type,$content,$afterrender=false) 
        {
            switch($type){
                case 'script':
                    $url = parse_url($content);
                    if(!isset($url['scheme'])) $content = JURI::root(true).$content;
                    if($this->params->get('localonly',true) && isset($url['host']) && $url['host']!=JURI::getInstance()->getHost()) return false;
                    if($afterrender) {
                        return '<script type="text/javascript" src="'.$content.'"></script>';
                    } else {
                        JFactory::getDocument()->addScript($content);
                    }
                    break;
                case 'scriptdeclaration':
                    if($afterrender) {                        
                        return '<script type="text/javascript">'.$content.'</script>';
                    } else {
                        JFactory::getDocument()->addScriptDeclaration($content);
                    }
                    break;
                case 'stylesheet':
                    $url = parse_url($content);
                    if(!isset($url['scheme'])) $content = JURI::root(true).$content;
                    if($this->params->get('localonly',true) && isset($url['host']) && $url['host']!=JURI::getInstance()->getHost()) return false;
                    JFactory::getDocument()->addStyleSheet($content);
                    break;
                case 'styledeclaration':
                    JFactory::getDocument()->addStyleDeclaration($content);
                    break;
                case 'customtag':
                    if($afterrender) {
                        return $content;
                    } else {
                        JFactory::getDocument()->addCustomTag($content);
                    }
                    break;
            }
        }
}
