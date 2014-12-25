<?php
/**
* @copyright		Copyright (C) 2009 - 2013 Ready Bytes Software Labs Pvt. Ltd. All rights reserved.
* @license			GNU/GPL, see LICENSE.php
* @package			Paymart
* @subpackage		Backend
*/
if(defined('_JEXEC')===false) die();

class Com_rbinstallerInstallerScript
{
	public function preflight($type, $parent)
    {     	
		// get contetnt for rbframework version
    	$file_url  = 'http://pub.readybytes.net/rbinstaller/update/live.json';
		$link 		= new JURI($file_url);	
		$curl 		= new JHttpTransportCurl(new JRegistry());
		$response 	= $curl->request('GET', $link);
			
		if($response->code != 200){
			return false;
		}
								
		$content   =  json_decode($response->body, true);		
		
		// check if already exixts
     	$db	= JFactory::getDbo();
     	$query	= $db->getQuery(true);
     
     	$query->select('*')
     	  ->from($db->quoteName('#__extensions'))
     	  ->where('`type` = '.$db->quote('plugin'))
     	  ->where('`folder` = '.$db->quote('system'))
     	  ->where('`client_id` = 0')
     	  ->where('`element` = '.$db->quote('rbsl'));
     	$db->setQuery($query);
		$result = $db->loadObject();

		if($result){
			if(!isset($content['rbframework']) || !isset($content['rbframework']['file_path'])){
				return true;
			}
			
			$params = json_decode($result->manifest_cache, true);
			if(version_compare($params['version'], $content['rbframework']['version']) > -1){
				if(!$result->enabled){
					$this->changeExtensionState(1);
				}
				
				return true;
			} 			
		}
		
		// install the plugin		
		if(!$this->installRBFramework($content['rbframework'])){
			return false;			
		}
		
		return $this->changeExtensionState(1);		
    }
    
	function changeExtensionState($state = 1)
	{
		$db	= JFactory::getDbo();
	     	$query	= $db->getQuery(true);
		$query->update($db->quoteName('#__extensions'))
			  ->set('`enabled` = '.$state)
     		  ->where('`type` = '.$db->quote('plugin'))
     		  ->where('`folder` = '.$db->quote('system'))
     		  ->where('`client_id` = 0')
     		  ->where('`element` = '.$db->quote('rbsl'));
     		$db->setQuery($query);
		return $db->query();		
	}
	
   	protected function installRBFramework($content)
 	{	
		// get file
   		$link 		=	new JUri($content['file_path']);
		$curl		= 	new JHttpTransportCurl(new JRegistry());
		$response 	=	$curl->request('GET', $link);
		
		$content_type = $response->headers['Content-Type'];
		
		if ($content_type != 'application/zip'){
			return false;
		}
		else {
			$response =  $response->body;
		}
		
		return $this->installExtension($response, 'rbframework', $content['version']);
    } 
    
	public function installExtension($file, $item_id, $version)
	{
		$random			 = rand(1000, 999999);
		$tmp_file_name 	 = JPATH_ROOT.'/tmp/'.$random.'item_'.$item_id.'_'.$version.'.zip';
		$tmp_folder_name = JPATH_ROOT.'/tmp/'.$random.'item_'.$item_id.'_'.$version;
		
		// create a file
		JFile::write($tmp_file_name, $file);	
		
		jimport('joomla.filesystem.archive');
		jimport( 'joomla.installer.installer' );
		jimport('joomla.installer.helper');
		
		JArchive::extract($tmp_file_name, $tmp_folder_name);
		$installer = new JInstaller;

		if($installer->install($tmp_folder_name)){
				$response = true;
		}
		else{
			$response = false;
		}
		
		if (JFolder::exists($tmp_folder_name)){
			JFolder::delete($tmp_folder_name);
		}
		
		if (JFile::exists($tmp_file_name)){
			JFile::delete($tmp_file_name);
		}
		
		return $response;
	}
}
