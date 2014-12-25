<?php
/**
 * @copyright   Copyright (C) 2005 - 2013 Michael Richey. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
namespace plg_system_headtag;
defined('_JEXEC') or die;
if(!class_exists('plg_system_headtag\TagParser')) {
    class TagParser {
        protected static $instances = array();
        private $identifier = '';
        private $options = array(
            'bracket'=>'{}',
            'alternateclose'=>false,
            'selfclosing'=>false
        );
        public $tags = array();
        public $total = 0;
        public function __construct($identifier=false,$options=false) {
            if($identifier) {
                $this->setIdentifier($identifier);
                if($options) $this->setOptions($options);
            }
        }
        public static function getInstance($identifier=false,$options=false) {
            $instanceid = $identifier?$identifier:'';
            if(empty(self::$instances[$instanceid])) {
                self::$instances[$instanceid] = new TagParser($identifier,$options);
            }
            return self::$instances[$instanceid];
        }
        public function setIdentifier($identifier=false) {
            if($identifier) $this->identifier = $identifier;
        }
        public function setOptions($options=false) {
            if(is_array($options)) {
                foreach($options as $key=>$option) $this->options[$key]=$option;
            }
            if(strlen($this->options['bracket']) == 1) $this->options['bracket'] = $this->options['bracket'].$this->options['bracket'];       
        }
        public function parse($content) {
            $regex ='/'.$this->bracket('open').$this->identifier.'\s*?(?<params>.*?)'.$this->bracket('close');
            if(!$this->options['selfclosing']) $regex.='(?<content>.*?)(?<closetag>'.$this->bracket('open').'\/'.($this->options['alternateclose']?$this->options['alternateclose']:$this->identifier).$this->bracket('close').')';
            $regex.='/s';
            $matches = array();
            preg_match_all($regex,$content,$matches);
            foreach($matches[0] as $key=>$match) {
                $this->total++;
                $this->tags[$key]=new TagParserItem($match);
                $this->tags[$key]->tagid = $this->total;
                if(strlen($matches['params'][$key])) {
                    $params = new \DOMDocument;
                    $params->loadHTML('<br '.trim($matches['params'][$key]).' />');
                    $paramsxml = simplexml_import_dom($params->documentElement);
                    if(count($paramsxml->body->br->attributes())) {
                        $this->tags[$key]->params = array();
                        foreach($paramsxml->body->br->attributes() as $attribute=>$value) {
                            $this->tags[$key]->params[$attribute]=(strlen($value->__toString())?$value->__toString():true);
                        }
                    }
                }
                if(!$this->options['selfclosing']) $this->tags[$key]->content = $matches['content'][$key];
            }
        }    
        private function bracket($type='open') {
            return preg_quote(($type=='open')?$this->options['bracket'][0]:$this->options['bracket'][1]);
        }
    }
    class TagParserItem {
        public $tag;
        public $tagid=0;
        public $params = false;
        public $content = false;
        public function __construct($tag) {
            $this->tag = $tag;
        }
        public function getParam($name,$default) {
            return isset($this->params[$name])?$this->params[$name]:$default;
        }
        public function getContent($default='') {
            return $this->content?$this->content:$default;
        }
        public function replace($content,$replacement='') {
            $regex='/'.preg_quote($this->tag,'/').'/';
            return preg_replace($regex,$replacement,$content,1);
        }
    }
}