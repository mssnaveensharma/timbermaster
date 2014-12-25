-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 24, 2014 at 11:00 AM
-- Server version: 5.1.73-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wwwtimbe_data1`
--

-- --------------------------------------------------------

--
-- Table structure for table `jos_banner`
--

CREATE TABLE IF NOT EXISTS `jos_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(90) NOT NULL DEFAULT 'banner',
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(150) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_banner`
--

INSERT INTO `jos_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES
(1, 1, 'banner', 'OSM 1', 'osm-1', 0, 43, 0, 'osmbanner1.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2, 1, 'banner', 'OSM 2', 'osm-2', 0, 49, 0, 'osmbanner2.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_bannerclient`
--

CREATE TABLE IF NOT EXISTS `jos_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `contact` text NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_bannerclient`
--

INSERT INTO `jos_bannerclient` (`cid`, `name`, `contact`, `email`, `extrainfo`, `checked_out`, `checked_out_time`, `editor`) VALUES
(1, 'Open Source Matters', 'Administrator', 'admin@opensourcematters.org', '', 0, '00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jos_bannertrack`
--

CREATE TABLE IF NOT EXISTS `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_bfdbversions`
--

CREATE TABLE IF NOT EXISTS `jos_bfdbversions` (
  `tablename` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `component` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bfdbversions`
--

INSERT INTO `jos_bfdbversions` (`tablename`, `version`, `component`) VALUES
('form_forms', '1.1', 'com_form'),
('form_layouts', '0.2', 'com_form'),
('form_fields', '1.0', 'com_form'),
('form_actions', '0.1', 'com_form'),
('form_submission_trackings', '0.1', 'com_form');

-- --------------------------------------------------------

--
-- Table structure for table `jos_categories`
--

CREATE TABLE IF NOT EXISTS `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text NOT NULL,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(150) NOT NULL DEFAULT '',
  `image_position` varchar(90) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(150) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `jos_categories`
--

INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES
(2, 0, 'Joomla! Specific Links', '', 'joomla-specific-links', 'clock.jpg', 'com_weblinks', 'left', 'A selection of links that are all related to the Joomla! Project.', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(4, 0, 'Joomla!', '', 'joomla', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(5, 0, 'General', '', 'general', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(6, 0, 'Linux', '', 'linux', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(12, 0, 'Contacts', '', 'contacts', '', 'com_contact_details', 'left', 'Contact Details for this Web site', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(13, 0, 'Joomla', '', 'joomla', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(15, 0, 'Features', '', 'features', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(17, 0, 'Benefits', '', 'benefits', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(18, 0, 'Platforms', '', 'platforms', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(19, 0, 'Other Resources', '', 'other-resources', '', 'com_weblinks', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(29, 0, 'The CMS', '', 'the-cms', 'powered_by.png', '4', 'right', 'Joomla! provides plenty of flexibility when displaying your Web content. Whether you are using Joomla! for a blog site, news or a Web site for a company, you''ll find one or more content styles to showcase your information. You can also change the style of content dynamically depending on your preferences. Joomla! calls how a page is laid out a layout. Use the guide below to understand which layouts are available and how you might use them.', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(34, 0, 'YOOtheme', '', 'yootheme', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(35, 0, 'YOOcarousel (Plain)', '', 'yoocarousel-plain', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(36, 0, 'Banner', '', 'banner', '', '6', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_components`
--

CREATE TABLE IF NOT EXISTS `jos_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` text NOT NULL,
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `jos_components`
--

INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES
(1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1),
(2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1),
(5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1),
(9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, '', 1),
(10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1),
(15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1),
(16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1),
(17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1),
(18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1),
(19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=1\n\n', 1),
(20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=0\nlink_titles=0\nshow_intro=0\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=1\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=0\nfilter_groups=29|18|19|20|21|30|23|24\nfilter_type=BL\nfilter_tags=\nfilter_attritbutes=\n\n', 1),
(21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1),
(22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1),
(23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, '', 1),
(24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1),
(25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1),
(27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1),
(28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1),
(29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1),
(30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1),
(31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1),
(32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1),
(33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1),
(34, 'Blue Flame Forms For Joomla 1.5.x v0.2.204', 'option=com_form', 0, 0, 'option=com_form', 'Configure Blue Flame Forms For Joomla 1.5.x v0.2.204712', 'com_form', 0, '../plugins/system/blueflame/view/images/menulogo.gif', 0, '', 1),
(35, 'Core Design Login Confirmation', 'option=com_cdloginconfirmation', 0, 0, 'option=com_cdloginconfirmation', 'Core Design Login Confirmation', 'com_cdloginconfirmation', 0, 'components/com_cdloginconfirmation/assets/images/cdloginconfirmation-menu-icon.png', 0, 'confirmation_method=email\nkey_length=5\nsession_attempt=3\nsend_mail=0', 1),
(51, 'WF_MENU_INSTALL', '', 0, 36, 'option=com_jce&view=installer', 'WF_MENU_INSTALL', 'com_jce', 3, 'components/com_jce/media/img/menu/jce-install.png', 0, '', 1),
(50, 'WF_MENU_PROFILES', '', 0, 36, 'option=com_jce&view=profiles', 'WF_MENU_PROFILES', 'com_jce', 2, 'components/com_jce/media/img/menu/jce-profiles.png', 0, '', 1),
(49, 'WF_MENU_CONFIG', '', 0, 36, 'option=com_jce&view=config', 'WF_MENU_CONFIG', 'com_jce', 1, 'components/com_jce/media/img/menu/jce-config.png', 0, '', 1),
(48, 'WF_MENU_CPANEL', '', 0, 36, 'option=com_jce', 'WF_MENU_CPANEL', 'com_jce', 0, 'components/com_jce/media/img/menu/jce-cpanel.png', 0, '', 1),
(36, 'JCE', 'option=com_jce', 0, 0, 'option=com_jce', 'JCE', 'com_jce', 0, 'components/com_jce/media/img/menu/logo.png', 0, '{"editor":{}}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_contact_details`
--

CREATE TABLE IF NOT EXISTS `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` text,
  `address` text,
  `suburb` text,
  `state` text,
  `country` text,
  `postcode` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(60) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_contact_details`
--

INSERT INTO `jos_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`) VALUES
(1, 'Name 1', 'name-1', 'Position', 'Street', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', 'Miscellanous info', 'articles.jpg', 'top', 'email@email.com', 0, 1, 62, '2008-12-15 15:46:45', 1, 'show_name=1\nshow_position=1\nshow_email=1\nshow_street_address=1\nshow_suburb=1\nshow_state=1\nshow_postcode=1\nshow_country=1\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nshow_webpage=1\nshow_misc=1\nshow_image=1\nallow_vcard=1\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=1\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', 0, 12, 0, '', ''),
(2, 'Name 2', 'name-2', '', 'Street Address', 'Town', 'State', 'Country', 'Postal Code', 'Telephone', 'Fax', 'Informations', 'clock.jpg', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 2, 'show_name=1\nshow_position=1\nshow_email=1\nshow_street_address=1\nshow_suburb=1\nshow_state=1\nshow_postcode=1\nshow_country=1\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nshow_webpage=1\nshow_misc=1\nshow_image=1\nallow_vcard=1\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', 0, 12, 0, 'Mobile Phone', 'http://Web URL');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content`
--

CREATE TABLE IF NOT EXISTS `jos_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` text NOT NULL,
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` text NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `jos_content`
--

INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(1, 'Welcome to Joomla!', 'welcome-to-joomla', '', '<strong>Joomla! is a free open source framework and content publishing system designed for quickly creating highly interactive multi-language Web sites, online communities, media portals, blogs and eCommerce applications.</strong>\r\n\r\n<p>Joomla! provides an easy-to-use graphical user interface that simplifies the management and publishing of large volumes of content including HTML, documents, and rich media.  Joomla! is used by organisations of all sizes for Public Web sites, Intranets, and Extranets and is supported by a community of thousands of users.</p>\r\n', '\r\nWith a fully documented library of developer resources, Joomla! allows the customisation of every aspect of a Web site including presentation, layout, administration, and the rapid integration with third-party applications.\r\n\r\n<p>Joomla! has a rich heritage and has been crowned CMS king many times over.  Now with more power under the hood, Joomla! is shifting gear and provides developer power while making the user experience all the more friendly.  For those who always wanted increased extensibility, Joomla! 1.5 can make this happen.</p>\r\n\r\n<p>A new framework, ground-up refactoring, and a highly-active development team brings the excitement of ''the next generation CMS'' to your fingertips.  Whether you are a systems architect or a complete ''noob'' Joomla! can take you to the next level of content delivery. ''More than a CMS'' is something we have been playing with as a catchcry because the new Joomla! API has such incredible power and flexibility, you are free to take whatever direction your creative mind takes you and Joomla! can help you get there so much more easily than ever before.</p>\r\n\r\n<p>Thinking Web publishing? Think Joomla!</p>', 0, 4, 0, 29, '2006-10-13 10:00:00', 62, '', '2008-12-16 15:36:38', 62, 0, '0000-00-00 00:00:00', '2006-01-03 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 40, 0, 1, '', '', 0, 115, 'robots=\nauthor='),
(5, 'Joomla! License Guidelines', 'joomla-license-guidelines', 'joomla-license-guidelines', '<p>This Web site is powered by <a href="http://www.joomla.org/">Joomla!</a> The software and default templates on which it runs are Copyright 2005-2007 <a href="http://www.opensourcematters.org/">Open Source Matters</a>.  All other content and data, including data entered into this Web site and templates added after installation, are copyrighted by their respective copyright owners.</p>\r\n\r\n<p>If you want to distribute, copy, or modify Joomla!, you are welcome to do so under the terms of the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC1">GNU General Public License</a>.  If you are unfamiliar with this license, you might want to read <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC4">''How To Apply These Terms To Your Program''</a> and the <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0-faq.html">''GNU General Public License FAQ''</a>.</p>\r\n', '\r\n<p>Joomla! documentation is released under the terms of the <a href="http://creativecommons.org/licenses/by-nc-sa/2.5/" title="Creative Commons ">Creative Commons Attribution-Non-Commercial-Share-Alike License 2.5</a> or by the specific license of their respective copyright owners.</p>\r\n\r\n<p>The Joomla! licence has always been GPL.</p>', 0, 4, 0, 29, '2004-08-20 10:11:07', 62, '', '2008-12-16 15:45:30', 62, 0, '0000-00-00 00:00:00', '2004-08-19 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 5, '', '', 0, 120, 'robots=\nauthor='),
(18, 'Joomla! Features', 'joomla-features', '', '<h4>Joomla! features:</h4>\r\n<ul>\r\n	<li>Completely database driven site engines </li>\r\n	<li>News, products, or services sections fully editable and manageable</li>\r\n	<li>Topics sections can be added to by contributing Authors </li>\r\n	<li>Fully customisable layouts including <em>left</em>, <em>center</em>, and <em>right </em>Menu boxes </li>\r\n	<li>Browser upload of images to your own library for use anywhere in the site </li>\r\n	<li>Dynamic Forum/Poll/Voting booth for on-the-spot results </li>\r\n	<li>Runs on Linux, FreeBSD, MacOSX server, Solaris, and AIX</li>\r\n</ul>\r\n', '\r\n<h4>Extensive Administration:</h4>\r\n<ul>\r\n	<li>Change order of objects including news, FAQs, Articles etc. </li>\r\n	<li>Random Newsflash generator </li>\r\n	<li>Remote Author submission Module for News, Articles, FAQs, and Links </li>\r\n	<li>Object hierarchy - as many Sections, departments, divisions, and pages as you want </li>\r\n	<li>Image library - store all your PNGs, PDFs, DOCs, XLSs, GIFs, and JPEGs online for easy use </li>\r\n	<li>Automatic Path-Finder. Place a picture and let Joomla! fix the link </li>\r\n	<li>News Feed Manager. Choose from over 360 News Feeds from around the world </li>\r\n	<li>E-mail a friend and Print format available for every story and Article </li>\r\n	<li>In-line Text editor similar to any basic word processor software </li>\r\n	<li>User editable look and feel </li>\r\n	<li>Polls/Surveys - Now put a different one on each page </li>\r\n	<li>Custom Page Modules. Download custom page Modules to spice up your site </li>\r\n	<li>Template Manager. Download Templates and implement them in seconds </li>\r\n	<li>Layout preview. See how it looks before going live </li>\r\n	<li>Banner Manager. Make money out of your site</li>\r\n</ul>', 0, 4, 0, 29, '2006-10-08 23:32:45', 62, '', '2008-12-16 15:41:08', 62, 62, '2008-12-22 20:04:32', '2006-10-07 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 15, 0, 3, '', '', 0, 66, 'robots=\nauthor='),
(19, 'Joomla! Overview', 'joomla-overview', '', '<p>If you''re new to Web publishing systems, you''ll find that Joomla! delivers sophisticated solutions to your online needs. It can deliver a robust enterprise-level Web site, empowered by endless extensibility for your bespoke publishing needs. Moreover, it is often the system of choice for small business or home users who want a professional looking site that''s simple to deploy and use. <em>We do content right</em>.<br />\r\n</p>\r\n\r\n<p><strong>So what''s the catch? How much does this system cost?</strong></p>\r\n\r\n<p> Well, there''s good news ... and more good news! Joomla! 1.5 is free, it is released under an Open Source license - the GNU/General Public License v 2.0.</p>\r\n\r\n', '\r\n\r\n<p>Joomla! changes all that ... <br />\r\n	Joomla! is different from the normal models for content management software. For a start, it''s not complicated. Joomla! has been developed for everybody, and anybody can develop it further. It is designed to work (primarily) with other Open Source, free, software such as PHP, MySQL, and Apache. </p>\r\n	\r\n<p>It is easy to install and administer, and is reliable. </p>\r\n\r\n<p>Joomla! doesn''t even require the user or administrator of the system to know HTML to operate it once it''s up and running.</p>\r\n\r\n<p>To get the perfect Web site with all the functionality that you require for your particular application may take additional time and effort, but with the Joomla! Community support that is available and the many Third Party Developers actively creating and releasing new Extensions for the 1.5 platform on an almost daily basis, there is likely to be something out there to meet your needs. Or you could develop your own Extensions and make these available to the rest of the community. </p>', 0, 4, 0, 29, '2006-10-13 07:49:20', 62, '', '2009-02-23 17:23:59', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 23, 0, 2, '', '', 0, 218, 'robots=\nauthor='),
(20, 'Support and Documentation', 'support-and-documentation', '', '<h3>Support</h3>\r\n\r\n<p>Support for the Joomla! CMS can be found on several places. The best place to start would be the official <a href="http://help.joomla.org/" target="_blank">Help Site</a>. Here you can help yourself to the information that is regularly published and updated as Joomla! develops. There is much more to come too! </p>\r\n<p>Of course you should not forget the Help System of the CMS itself. On the <em>topmenu </em>in the Back-end Control panel you find the Help button which will provide you with lots of explanation on features. </p>\r\n\r\n<p>Another great place would of course be the <a href="http://forum.joomla.org/" target="_blank">Forum</a> . On the Joomla! Forum you can find help and support from Community members as well as from Joomla! Core members and Working Group members. The forum contains a lot of information, FAQ''s, just about anything you are looking for in terms of support.</p>\r\n', '\r\n<p>Two other resources for Support are the <a href="http://dev.joomla.org/" target="_blank">Joomla! Developer Network</a> (JDN) and the <a href="http://extensions.joomla.org/" target="_blank">Joomla! Extensions Directory</a> (JED). The Developer Network for example provides lots of technical information for the experienced Developer as well as those new to Joomla! and development work in general. The JED whilst not a support site in the strictest sense has many of the Extensions that you will need as you develop your own Web site. </p>\r\n\r\n<p>The Joomla! Core members are regularly posting their blog reports about several topics such as programming techniques used in Joomla!, Security, Events and more. You can even subscribe to get notified by e-mail when a new blog post is made! </p>\r\n\r\n<h3>Documentation </h3>\r\n\r\n<p>Joomla! Documentation can of course be found on the <a href="http://help.joomla.org/" target="_blank">Help Site</a>. You can find information such as an Installation Guide, User and Administrator manuals, Frequently Asked Questions and a lot more. The User Documentation Team are the guardians of the documentation relating to the practical use of Joomla!. The Developer Documentation Team are the stalwarts behind detailing how Joomla! works from the ground up and how you can develop your own Extensions and Templates and much more.</p>\r\n\r\n<p>Other than the documentation provided by the Joomla! Documentation Work Groups there are also books written about Joomla! You can find a listing of these books in the <a href="http://help.joomla.org/content/section/44/254/" target="_blank">Joomla! Bookshelf</a> .</p>\r\n\r\n<h1>Want to help? </h1>\r\n\r\n<p>If you want to help in the documentation project for Joomla! then please post your details on the <a href="http://forum.joomla.org/index.php/board,62.0.html" title="The Joomla! User Documentation Forums">User Documentation Forum</a> or the <a href="http://forum.joomla.org/index.php/board,60.0.html" title="The Joomla! Developer Documentation Forum">Developer Documentation Forum</a> </p>\r\n\r\n<p><a class="urlextern" href="http://forum.joomla.org/index.php/board,391.0.html" target="_blank" title="http://forum.joomla.org/index.php/board,59.0.html" onclick="return svchk()"><br />\r\n	</a></p>', 0, 4, 0, 29, '2006-10-09 08:33:57', 62, '', '2008-12-22 19:39:55', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 16, 0, 7, '', '', 0, 9, 'robots=\nauthor='),
(23, 'Platforms and Open Standards', 'platforms-and-open-standards', '', '<p>Joomla! runs on any platform including Windows, most flavours of Linux, several Unix versions, and the Apple OS/X platform.  Joomla! depends on PHP and the MySQL database to deliver dynamic content. </p>\r\n<p>The minimum requirements are:</p>\r\n<ul>\r\n	<li>Apache 1.x, 2.x and higher</li>\r\n	<li>PHP 4.3 and higher</li>\r\n	<li>MySQL 3.23 and higher</li>\r\n</ul>\r\nIt will also run on alternative server platforms such as Windows IIS - provided they support PHP and MySQL - but these require additional configuration in order for the Joomla! core package to be successful installed and operated.', '', 0, 4, 0, 29, '2006-10-11 04:22:14', 62, '', '2008-12-16 15:34:16', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 6, '', '', 0, 17, 'robots=\nauthor='),
(27, 'The Joomla! Community', 'the-joomla-community', '', '<p><strong>Got a question? </strong>With more than 140,000 members, the online forums at <a href="http://forum.joomla.org/" target="_blank">forum.joomla.org</a> are a great resource for both new and experienced users. Go ahead, ask your toughest questions, the community is waiting to see what you''re going to do with your Joomla! site.</p>\r\n\r\n<p><strong>Do you want to show off your new Joomla! Web site?</strong> Go ahead, we have a section dedicated to that on our forum. </p>\r\n', '\r\n<p><strong>Do you want to join in?</strong></p>\r\n\r\n<p>If you think working with Joomla! is fun, wait until you start working on it. We''re passionate about helping Joomla! Users make the jump to becoming contributing members of the community, so there are many ways you can help Joomla!''s development:</p>\r\n\r\n<ul>\r\n	<li>Submit news about Joomla!. We syndicate all Joomla! related news on our <a href="http://news.joomla.org" title="Joomla! News Portal">news portal</a>. If you have some Joomla! news that you would like to share with the community, please submit your short story, article, announcement or review <a href="http://www.joomla.org/component/option,com_submissions/Itemid,75" title="Submit News">here</a>.</li>\r\n	<li>Report bugs and request features in our <a href="http://joomlacode.org/gf/project/joomla/tracker/" title="Joomla! developement trackers">trackers</a>. Please read <a href="http://dev.joomla.org/content/view/1450/89/">Reporting Bugs</a>, for details on how we like our bug reports served up</li>\r\n	<li>Submit patches for new and/or fixed behaviour. Please read <a href="http://dev.joomla.org/content/view/14/55/">Submitting Patches</a>, for details on how to submit a patch.</li>\r\n	<li>Join the <a href="http://forum.joomla.org/index.php/board,126.0.html" title="Joomla! development forums">developer forums</a> and share your ideas for how to improve Joomla!. We''re always open to suggestions, although we''re likely to be sceptical of large-scale suggestions without some code to back it up.</li>\r\n	<li>Join any of the <a href="http://dev.joomla.org/content/view/13/53/" title="Joomla! working groups">Joomla!  Working Groups</a> and bring your personal expertise to  the Joomla! community. More info about the different working groups can be found <a href="http://dev.joomla.org/content/view/13/53/" title="Joomla! working groups">on the Working Group Roll Call</a>. </li>\r\n</ul>\r\n\r\n<p> That''s all you need to know if you''d like to join the Joomla! development community. </p>', 0, 4, 0, 29, '2006-10-12 16:50:48', 62, '', '2008-12-16 15:44:55', 62, 0, '0000-00-00 00:00:00', '2006-10-11 02:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 4, '', '', 0, 53, 'robots=\nauthor='),
(44, 'Welcome to Timber Master - Extending your World', 'welcome-to-timber-master-extending-your-world', '', '<p style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; text-align: justify;"><strong><span style="color: #000000;">Welcome to Timber Master - Extending your World </span></strong></p>\r\n<div style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; text-align: justify;"><span style="color: #000000;"><br />Timber Master has been a leading company in the timber and building industry for over twenty years. We are proud to be able to boast of our high quality workmanship and skill. Our head carpenter, with thirty years carpentry and building experience, ensures perfection is aimed for and that an excellent quality product is built and achieved. From conventional brick and mortar to plas-tering on a timber frame, we will build a cosy and cost effective home for you.</span><br /><br /><span style="color: #000000;">Our  work is carried out with pride, confidence and efficiency at all times  by highly skilled carpenters. We do all types of projects which are  undertaken from a small balustrade to decking, larger housing contracts and timber framed homes. <br /><br />Our work ethic is  driven by the concept of results relating to the quality of work. We  drive our team to make the best possible products for our clients.</span></div>\r\n<p style="text-align: justify;"> </p>\r\n<br /><br />', '', 1, 5, 0, 34, '2007-12-30 13:00:00', 62, '', '2013-07-11 11:35:03', 62, 0, '0000-00-00 00:00:00', '2007-12-30 13:00:00', '0000-00-00 00:00:00', '', '', 'show_title=0\nlink_titles=0\nshow_intro=0\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_vote=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 147, 0, 1, '', '', 0, 11489, 'robots=\nauthor='),
(45, 'Features', 'features', '', '<h3>Tableless template overrides</h3>\r\n<p>From 2009 on all YOOtheme templates come with overrides for Joomla''s core output. This means that not only the template''s layout is tableless but also the whole content area that Joomla usually renders as tables.</p>\r\n<br />\r\n<h3>The YOOmenu system</h3>\r\nThe YOOmenu is a flexible all-in-one menu system right out of the box. It bundles some sophisticated features which are all covered in this <a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=112&Itemid=2" target="_blank" title="Watch the advanced YOOmenu system video tutorial.">advanced video tutorial</a>. Here are some of them:\r\n<div style="overflow: hidden;">\r\n	<img style="float: right; margin: 15px 0px 0px 10px" src="images/yootheme/features_menu.png" alt="YOOmenu System" title="YOOmenu System" width="270" height="257" />\r\n	<ul>\r\n		<li style="margin-bottom: 13px;">Advanced menu with <strong>split functionality</strong> and lots of <strong>fancy effects</strong> like sliding boxes and fading colors...\r\n			<br />Learn more about setting up the menu by reading this <a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=99&Itemid=2" target="_blank" title="Read how to set up the YOOmenu system">tutorial</a>.\r\n		</li>\r\n		<li style="margin-bottom: 13px;">Expanding and collapsing <strong>accordion menus</strong>. Watch the <a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=108&Itemid=2" target="_blank" title="Get to know how to set up the accordion menu">video tutorial</a>.\r\n		</li>\r\n		<li style="margin-bottom: 13px;"><strong>Different page backgrounds</strong> for each menu item possible. Watch the <a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=101&Itemid=2" target="_blank" title="Learn how to change the site color for each menu item.">video tutorial</a>.\r\n		</li>\r\n		<li style="margin-bottom: 13px;">Menu items can have explanatory <strong>subtitles</strong>. Read the <a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=141&Itemid=2" target="_blank" title="See how to set subtitles for the menu items">tutorial</a>.\r\n		</li>\r\n		<li style="margin-bottom: 13px;"><strong>Background images</strong> for menu items. Read the <a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=102&Itemid=2" target="_blank" title="Read how to set a menu item background image">tutorial</a>.\r\n		</li>\r\n	</ul>\r\n</div>\r\n<br /><br />\r\n<h3>Full compatibility with all YOOtools extensions</h3>\r\n<div class="tip ie6-zoom" style="overflow: hidden;">\r\n	All YOOtools extensions are working right out of the box. Take a look at the demo pages and watch the video tutorials.\r\n	\r\n	<div class="float-left width50">\r\n		<ul class="checkbox">\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/extensions/yooaccordion" title="YOOaccordion">YOOaccordion</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/yooaccordion" title="YOOaccordion">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=129&Itemid=2" target="_blank">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/extensions/yoocarousel" title="YOOcarousel">YOOcarousel</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/yoocarousel" title="YOOcarousel">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=126&Itemid=2" target="_blank">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/extensions/yoodrawer" title="YOOdrawer">YOOdrawer</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/yoodrawer" title="YOOdrawer">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=127&Itemid=2" target="_blank">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/extensions/yooslider" title="YOOslider">YOOslider</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/yooslider" title="YOOslider">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=128&Itemid=2" target="_blank">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/extensions/yooscroller" title="YOOscroller">YOOscroller</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/yooscroller" title="YOOscroller">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=130&Itemid=2" target="_blank">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/extensions/yoosearch" title="YOOsearch">YOOsearch</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/yoosearch" title="YOOsearch">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=134&Itemid=2" target="_blank">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/extensions/yoogallery" title="YOOgallery">YOOgallery</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/yoogallery" title="YOOgallery">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=144&Itemid=2" target="_blank">\r\n				<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/></a></li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/extensions/yoomaps" title="YOOmaps">YOOmaps</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/yoomaps" title="YOOmaps">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=132&Itemid=2" target="_blank">\r\n				<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n	<div class="float-left width50">\r\n		<ul class="checkbox">\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/extensions/yootooltip" title="YOOtooltip">YOOtooltip</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/yootooltip" title="YOOtooltip">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=137&Itemid=2" target="_blank">\r\n				<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a></li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/extensions/yootoppanel" title="YOOtoppanel">YOOtoppanel</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/yootoppanel" title="YOOtoppanel">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=135&Itemid=2" target="_blank">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/free-stuff/yooeffects" title="YOOeffects">YOOeffects</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/free-stuff/yooeffects" title="YOOeffects">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/free-stuff/yoologin" title="YOOlogin">YOOlogin</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/free-stuff/yoologin" title="YOOlogin">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=131&Itemid=2" target="_blank">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/free-stuff/yooholidays" title="YOOholidays">YOOholidays</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/extensions/free-stuff" title="YOOholidays">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/free-stuff/yooiecheck" title="YOOiecheck">YOOiecheck</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/free-stuff/yooiecheck" title="YOOiecheck">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n			<li style="margin-bottom: 4px; overflow: hidden;">\r\n				<a style="display: block; float: left; width: 100px;" target="_blank" href="http://tools.yootheme.com/free-stuff/yoosnapshots" title="YOOsnapshots">YOOsnapshots</a>\r\n				<a target="_blank" href="http://tools.yootheme.com/free-stuff/yoosnapshots" title="YOOsnapshots">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 5px" src="images/yootheme/features_demo.png" alt="See the live demo" title="See the live demo" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n				<a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=133&Itemid=2" target="_blank">\r\n					<img class="correct-png" style="margin: 0px 0px 0px 3px" src="images/yootheme/features_tutorial.png" alt="Watch the video tutorial" title="Watch the video tutorial" width="17" height="17" align="absmiddle"/>\r\n				</a>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n<p>Of course, this YOOtheme template is also fully compatible with the <a target="_blank" href="http://teamlog.yootheme.com/">Teamlog component</a>.</p>\r\n<br />\r\n<h3>Installation package & sliced image source files</h3>\r\n<p>You can download a full installation package of this template. It includes the current Joomla version and the complete demo content of the website you are looking at right now. You can install it to take a look at how everything is set up in the Joomla backend.</p>\r\n<span class="info">Make sure you click "Install Sample Data" during the installation process.</span>\r\n<p>Also you can download the editable fully sliced image source files. With them you can completely customise your template''s look to match your or your client''s corporate identity.</p>\r\n<span class="info">Adobe Fireworks CS3 or higher is required to edit the image source files.</span>\r\n<br />\r\n<h3>Basic Help</h3>\r\n<p>Learn more about how to install and set up a YOOtheme template and watch <a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=88&Itemid=2" target="_blank" title="How to install and set up a YOOtheme template">this video tutorial.</a></p>', '', 1, 5, 0, 34, '2007-12-19 03:00:00', 62, '', '2009-02-25 20:11:39', 62, 0, '0000-00-00 00:00:00', '2007-12-19 03:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 76, 0, 2, '', '', 0, 1198, 'robots=\nauthor='),
(46, 'Typography', 'typography', '', '<div class="note">Typography is a key element in web design. This templates delivers you sophisticated typography and various stylings. The style guide gives you an overview about all possible HTML tag stylings provided by the template. It also helps you to set up the available classes for special stylings.</div>\r\n\r\n<h1>This is an H1 Header</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<h2>This is an H2 Header</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<h3>This is an H3 Header</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<h4>This is an H4 Header</h4>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<h5>This is an H5 Header</h5>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<h6>This is an H6 Header</h6>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<p class="dropcap"><strong>Dropcap: use &lt;p class="dropcap"&gt;</strong>. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<hr class="dotted" />\r\n\r\n<strong>Horizontal Rule:</strong> &lt;hr&gt; tag with class="dotted"\r\n\r\n<hr class="dotted" />\r\n\r\n<div class="floatbox">\r\n	<div class="float-left width33">\r\n	\r\n		<h4>Inline Styles</h4>\r\n		<p>\r\n			<a href="#">Default &lt;a&gt; tag</a>\r\n			<br /><a href="#" class="icon-folder">&lt;a&gt; with class="icon-folder"</a>\r\n			<br /><a href="#" class="icon-file">&lt;a&gt; with class="icon-file"</a>\r\n			<br /><a href="#" class="icon-download">&lt;a&gt; with class="icon-download"</a>\r\n			<br /><a href="#" class="icon-external">&lt;a&gt; with class="icon-external"</a>\r\n			<br /><a href="#" class="icon-pdf">&lt;a&gt; with class="icon-pdf"</a>\r\n			<br /><br /><em>Default &lt;em&gt;</em>\r\n			<br /><em class="box">&lt;em&gt; with class="box"</em>\r\n			<br /><br /><acronym title="By marking up acronyms you can give useful information to browsers, spell checkers, translation systems and search-engine indexers.">Default &lt;acronym&gt;</acronym>\r\n			<br /><abbr title="By marking up abbreviations you can give useful information to browsers, spell checkers, translation systems and search-engine indexers.">Default &lt;abbr&gt;</abbr>\r\n		\r\n		</p>\r\n	\r\n	</div>\r\n	<div class="float-left width33">\r\n\r\n		<h4>Unordered List Styles</h4>\r\n\r\n		<ul>\r\n			<li>Default &lt;ul&gt; tag</li>\r\n			<li>Lorem ipsum dolor</li>\r\n			<li>Lorem ipsum dolor</li>\r\n		</ul>\r\n\r\n		<ul class="checkbox">\r\n			<li>&lt;ul&gt; with class="checkbox"</li>\r\n		</ul>\r\n		\r\n		<ul class="arrow">\r\n		  <li>&lt;ul&gt; with class="arrow"</li>\r\n		</ul>\r\n		\r\n		<ul class="star">\r\n		  <li>&lt;ul&gt; with class="star"</li>\r\n		</ul>\r\n		\r\n		<ul class="check">\r\n		  <li>&lt;ul&gt; with class="check"</li>\r\n		</ul>\r\n\r\n	</div>\r\n	<div class="float-left width33">\r\n	\r\n		<h4>Ordered List Styles</h4>\r\n\r\n		<ol>\r\n			<li>Default &lt;ol&gt; tag</li>\r\n			<li>Lorem ipsum dolor</li>\r\n			<li>Lorem ipsum dolor</li>\r\n		</ol>\r\n\r\n		<ol class="disc">\r\n		  <li>&lt;ol&gt; tag with class="disc"</li>\r\n		  <li>Item 2</li>\r\n		  <li>Item 3</li>\r\n		  <li>Item 4</li>\r\n		</ol>\r\n\r\n	</div>\r\n</div>\r\n\r\n<hr class="dotted" />\r\n\r\n<h4>Div and Span Styles</h4>\r\n<div class="note"><strong>&lt;div&gt; or &lt;span&gt; tag with class="note"</strong> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br />\r\n</div>\r\n<div class="info"><strong>&lt;div&gt; or &lt;span&gt; tag with class="info"</strong> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br />\r\n</div>\r\n<div class="alert"><strong>&lt;div&gt; or &lt;span&gt; tag with class="alert"</strong> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br />\r\n</div>\r\n<div class="download"><strong>&lt;div&gt; or &lt;span&gt; tag with class="download"</strong> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br />\r\n</div>\r\n<div class="tip"><strong>&lt;div&gt; or &lt;span&gt; tag with class="tip"</strong> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.<br />\r\n</div>\r\n\r\n<hr class="dotted" />\r\n\r\n<h4>Blockquote and Q Styles</h4>\r\n<strong>Default &lt;blockquote&gt;</strong>\r\n<br /><strong>Or &lt;q&gt; tag with class="blockqoute"</strong>\r\n<blockquote>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</blockquote>\r\n\r\n<strong>&lt;blockquote&gt; tag with class="quotation" and an an additional &lt;p&gt; tag.</strong>\r\n<br />(use &lt;blockquote&gt;&lt;p&gt;....&lt;/p&gt;&lt;/blockquote&gt;)\r\n<blockquote class="quotation">\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.<br />\r\n	</p>\r\n</blockquote>\r\n\r\n<hr class="dotted" />\r\n\r\n<h4>Combine Styles</h4>\r\n<div class="floatbox">\r\n\r\n	<p class="dropcap" style="margin-top: 5px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation <span class="info inset-right width25"><strong>Combine Tags</strong> with class "inset-right" or "inset-left". Example: &lt;span class=" info inset-right width25"&gt;.</span> ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n	</p>\r\n	\r\n	<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <q class="blockquote inset-left width25"><strong>Combine Tags</strong> with class "inset-right" or "inset-left". Example: &lt;q class=" blockquote inset-right width25"&gt;.</q> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n	</p>\r\n	\r\n	<p class="dropcap">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <span class="tip inset-right width25"><strong>Possible Width Classes</strong> .width15, .width18, .width20, .width23, .width25, .width33, .width35, .width40, .width45, .width50</span> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\r\n	</p>\r\n	\r\n	<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n	</p>\r\n	\r\n</div>\r\n\r\n<hr class="dotted" />\r\n\r\n<div class="floatbox">\r\n	<div class="float-left width50">\r\n		\r\n		<h4>Form Styles</h4>\r\n	\r\n		<form action="#">\r\n		<fieldset style="margin-right: 20px;">\r\n		<legend>Form legend</legend>\r\n		<div><label for="f1">Text input:</label> <input type="text" value="input text" id="f1"/></div>\r\n		<div><label for="f2">Radio input:</label> <input type="radio" id="f2"/></div>\r\n		<div><label for="f3">Checkbox input:</label> <input type="checkbox" id="f3"/></div>\r\n		<div><label for="f4">Select field:</label> <select id="f4"><option>Option 01</option><option>Option 02</option></select></div>\r\n		<div><label for="f5">Textarea:</label><br/><textarea rows="5" cols="30" id="f5">Textarea text</textarea></div>\r\n		<div><label for="f6">Button:</label> <input type="button" value="button text" id="f6"/></div>\r\n		</fieldset>\r\n		</form>\r\n\r\n	</div>\r\n	<div class="float-left width50">\r\n	\r\n		<h4>Preformatted Text Style</h4>\r\n		<pre>\r\npre {\r\n	margin: 10px 0 10px 0px;\r\n	padding: 5px 0 5px 10px;\r\n	border: 1px dotted #aab4be;\r\n	border-left: 20px solid #b4b4b4;\r\n	background: #fafafa;\r\n	font-size: 90%;\r\n	color: #2E8B57;\r\n	font-family: "Courier New", Courier, monospace;\r\n	\r\n	/* Browser specific (not valid) styles */\r\n	/* to make preformatted text wrap */\r\n	 \r\n	white-space: pre-wrap;       /* css-3 */\r\n	white-space: -moz-pre-wrap;  /* Mozilla */\r\n}\r\n		</pre>\r\n			\r\n	</div>\r\n</div>', '', 1, 5, 0, 34, '2007-12-19 05:00:00', 62, '', '2009-02-23 14:40:54', 62, 0, '0000-00-00 00:00:00', '2007-12-19 05:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 133, 0, 3, '', '', 0, 1399, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(47, 'Layout', 'layout', '', 'This template supports a wide variety of module positions and variations. Almost any column and module layout can be achieved with the YOOtheme module system. Read the following descriptions carefully to learn all about the possibilities this template has to offer.\r\n\r\n<br /><br />\r\n<h3>Module Variations</h3>\r\nMany modules variations are included in this template. They come with different colors and styles. To enable a specific module variation for a module you have to set the specific module class suffix in the module parameters.\r\n<div class="info">All different module stylings can be seen at the <a href="index.php?option=com_content&view=article&id=48&Itemid=58">Module Variations Page</a>.</div>\r\n\r\n<br />\r\n<h3>Module Positions</h3>\r\nThe YOOtheme module system offers nearly unlimited combinations of module positions. For example you can have a 1-Column, 2-Column or 3 Column layout. It is also possible to have a nested right column instead of a right column which has an equal height as the left column.\r\n<br /><br />\r\nIn most module positions you can publish as many modules as possible for you current layout. You are surely familiar with this for the vertical module positions like left and right. But <strong>with the YOOtheme module system we introduce some new module positions which supports publishing as many modules as possible in one horizontal row.</strong> Also the height of all published modules in one vertical row  is adjust to match each other.\r\n<br /><br />\r\n<strong>All module positions are fully collapsible.</strong> If there is no module published in a certain position, this module position will contract and disappear.\r\n<br /><br />\r\n<div class="floatbox">\r\n	<div class="float-left width50" style="text-align: center;">\r\n		<h4>Positions</h4>\r\n		<img style="margin: 0px 0px 10px 0px" src="images/yootheme/layout_positions_overview.png" alt="Module Positions" title="Module Positions" width="270" height="400" />\r\n	</div>\r\n	<div class="float-left width50" style="text-align: center;">\r\n		<h4>More Details</h4>\r\n		<img class="correct-png" style="margin: 0px 0px 10px 0px" src="images/yootheme/layout_positions_details.png" alt="More Details" title="More Details" width="270" height="400" />\r\n	</div>\r\n</div>\r\n\r\n<br /><br />\r\n<h3>Module Proportions</h3>\r\nOne outstanding feature of the YOOtheme module system is the possibility to chose between different module proportions for each module position. By default YOOtheme offers two module proportions: equal and golden ratio. For all module positions with the suffix "-equal" in the upper figure exists an equivalent module position with the suffix "-goldenratio". The proportions of the modules depend on the position in which they are published ("-equal" or "-goldenratio").\r\n<div class="tip"><strong>Example:</strong> You can publish 2 modules in top-equal. The width of each module will be 50%. If you publish the 2 modules in top-goldenratio the width of the first module will be 62% and of the second module 38%.</div>\r\nOf course you can publish the modules for each page in different positions. For example this feature allows you to publish one big module and a second smaller one (golden ratio) on the frontpage. For all other sites you can use equal module widths.\r\n<div class="alert"><strong>Important:</strong> For each page and each module position you have to chose if you are going to publish in the "equal" or "golden ratio" position. It is not possible to publish a module in the "equal" position and at the same time another module in the "golden ratio" position on the same page and for the same position. If this happens the "equal" proportion has priority and will be displayed. All modules published in the "golden ratio" position will not be displayed.</div>\r\nThe following figures show the different proportions depending on the numbers of published modules.\r\n<br /><br />\r\n<div class="floatbox">\r\n	<div class="float-left width50" style="text-align: center;">\r\n		<h4>Equal</h4>\r\n		<img class="correct-png" style="margin: 0px 0px 10px 0px" src="images/yootheme/layout_proportions_equal.png" alt="Equal Proportions" title="Equal Proportions" width="270" height="390" />\r\n	</div>\r\n	<div class="float-left width50" style="text-align: center;">\r\n		<h4>Golden Ratio</h4>\r\n		<img class="correct-png" style="margin: 0px 0px 10px 0px" src="images/yootheme/layout_proportions_goldenratio.png" alt="Golden Ratio Proportions" title="Golden Ratio Proportions" width="270" height="390" />\r\n	</div>\r\n</div>\r\n<div class="tip">If you want add your own custom proportion or learn more technical details take a look at this tutorial: <a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=143&Itemid=2" target="_blank">How to add custom proportions for module positions?</a></div>\r\n\r\n<br /><br />\r\n<h3 style="margin-top: 15px;">Left Column Layout</h3>\r\nThis template supports two different layout options. The "left" module position can be aligned to the left or the right. To chose between these two possible options goto the Joomla backend, open the template parameters and set the parameter "Layout Style" to "left" or "right".\r\n<br /><br />\r\n<div class="floatbox">\r\n	<div class="float-left width50" style="text-align: center;">\r\n		<h4>Left aligned</h4>\r\n		<img style="margin: 0px 0px 10px 0px" src="images/yootheme/layout_left.png" alt="Left aligned layout" title="Left aligned layout" width="270" height="270" />\r\n	</div>\r\n	<div class="float-left width50" style="text-align: center;">\r\n		<h4>Right aligned</h4>\r\n		<img style="margin: 0px 0px 10px 0px" src="images/yootheme/layout_right.png" alt="Right aligned layout" title="Right aligned layout" width="270" height="270" />\r\n	</div>\r\n</div>', '', 1, 5, 0, 34, '2007-12-19 05:00:00', 62, '', '2009-02-23 14:41:03', 62, 0, '0000-00-00 00:00:00', '2007-12-19 05:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 60, 0, 4, '', '', 0, 645, 'robots=\nauthor='),
(48, 'Dummy Content', 'dummy-content', '', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', '', 1, 5, 0, 34, '2007-12-19 05:00:00', 62, '', '2008-10-02 11:28:25', 62, 0, '0000-00-00 00:00:00', '2007-12-19 05:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 5, '', '', 0, 4278, 'robots=\nauthor='),
(49, 'Links', 'links', '', '<a href="http://tools.yootheme.com/extensions/yoocarousel">YOOcarousel</a>\r\n<br />Available for Joomla 1.0/1.5 native\r\n<br /><span style="color: #969696; font-style:italic">Type: YOOtools  module</span>\r\n<br /><br />\r\n\r\n<a href="http://tools.yootheme.com/extensions/yooscroller">YOOscroller</a>\r\n<br />Available for Joomla 1.0/1.5 native\r\n<br /><span style="color: #969696; font-style:italic">Type: YOOtools module</span>\r\n<br /><br />\r\n\r\n<a href="http://tools.yootheme.com/extensions/yoosearch">YOOsearch</a>\r\n<br />Available for Joomla 1.5 native\r\n<br /><span style="color: #969696; font-style:italic">Type: YOOtools module</span>\r\n<br /><br />\r\n\r\n<a href="http://tools.yootheme.com/extensions/yoogallery">YOOgallery</a>\r\n<br />Available for Joomla 1.0/1.5 native\r\n<br /><span style="color: #969696; font-style:italic">Type: YOOtools module/plugin</span>\r\n<br /><br />\r\n\r\n<a href="http://tools.yootheme.com/extensions/yoomaps">YOOmaps</a>\r\n<br />Available for Joomla 1.0/1.5 native\r\n<br /><span style="color: #969696; font-style:italic">Type: YOOtools module</span>\r\n<br /><br />', '', 1, 5, 0, 35, '2009-02-26 17:50:02', 62, '', '2009-02-26 17:54:29', 62, 0, '0000-00-00 00:00:00', '2009-02-26 17:50:02', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 2, '', '', 0, 0, 'robots=\nauthor='),
(50, 'ZOO', 'zoo', '', '<h3>Little ZOO helpers</h3>\r\nTo make the ZOO a great extensions we need a seamless integration into Joomla. To achieve this we developed a menu and a search extension.\r\n\r\n<br /><br />\r\n<h3>Versatile catalog system</h3>\r\nOne great thing about the ZOO is that you can create unlimited catalogs. For example you can create a product catalog and a news magazine.\r\n\r\n<br /><br />\r\n<h3>Versatile catalog system</h3>\r\nWe will release a brand new catalog system that comes with a content construction kit. The CCK allows you to create custom content types.', '', 1, 5, 0, 35, '2009-02-26 17:54:31', 62, '', '2009-02-26 18:29:18', 62, 0, '0000-00-00 00:00:00', '2009-02-26 17:54:31', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 1, '', '', 0, 0, 'robots=\nauthor='),
(51, 'Templates', 'templates', '', '<h3>Pinboard</h3>\r\nPut it on your wall! Our february template Pinboard is made of different materials and you also get a wide range of nice wallpapers.\r\n\r\n<br /><br />\r\n<h3>Way Beyond</h3>\r\nWe proudly present our new template: Way Beyond! Our first template to come with overrides for the Joomla core. What does that mean?\r\n\r\n<br /><br />\r\n<h3>Daylight</h3>\r\nGood Day Sunshine! Outside it''s getting darker but this month''s YOOtheme template Daylight reminds us of when the days were still long.\r\n<br /><br />', '', 1, 5, 0, 35, '2009-02-26 18:30:04', 62, '', '2009-02-26 18:33:11', 62, 0, '0000-00-00 00:00:00', '2009-02-26 18:30:04', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 3, '', '', 0, 0, 'robots=\nauthor='),
(52, 'About Us', 'about-us', '', '<p><span style="font-family: verdana,geneva;">&nbsp;</span><span style="font-family: verdana,geneva;"><span style="font-size: 12px; color: #000000;"><strong><br /></strong></span></span></p>\r\n<div><span style="font-family: verdana,geneva;"><span style="font-size: 12px; color: #000000;"><strong>USING:</strong></span><span style="font-size: 12px; color: #000000;">&nbsp;</span></span> <span style="font-family: verdana,geneva;"><span style="color: #000000;">&nbsp;</span></span></div>\r\n<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;">&nbsp;</span></span><span style="font-family: verdana,geneva;"><span style="color: #000000;">Only the finest quality hardwoods are used to ensure the finest quality end product.We  are also always up to date with latest trends such as combining  stainless steel and timber as well as an extensive knowledge of the age  old traditions in high quality timber work. This research and  application into our work differentiates us from the rest, as well as  ensuring the customer is satisfied with the work, whether it be  traditional or cutting edge trends.</span></span></div>\r\n<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="font-size: 12px; color: #000000;">&nbsp;</span></span></div>\r\n<div style="text-align: justify;"></div>\r\n<div style="text-align: justify;"><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">MAINTENANCE: </strong></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">We have many years of experience in maintaining internal and external timber work. Certain tools are custom made especially for maintenance of timber work. </span><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">We will look after your woodwork keeping it looking good and making sure it lasts, without any damages.</span></div>', '', 0, 0, 0, 0, '2011-04-28 08:58:34', 62, '', '2013-07-11 11:33:31', 62, 0, '0000-00-00 00:00:00', '2011-04-28 08:58:34', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 24, 0, 28, '', '', 0, 642, 'robots=\nauthor='),
(53, 'Services', 'services', '', 'Services', '', 1, 0, 0, 0, '2011-04-28 08:59:02', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-04-28 08:59:02', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 27, '', '', 0, 556, 'robots=\nauthor='),
(54, 'Sundecks', 'sundecks', '', '<span style="color: #000000;"><strong style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px;">Sundecks</strong></span><br /><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Our Sundecks are built to client specifications or designed on site, working closely with the client to ensure overall satisfaction.</span>', '', 1, 0, 0, 0, '2011-04-28 08:59:31', 62, '', '2011-06-02 10:21:55', 62, 0, '0000-00-00 00:00:00', '2011-04-28 08:59:31', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 26, '', '', 0, 872, 'robots=\nauthor='),
(55, 'Balustrades', 'balustrades', '', '<span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><span style="color: #000000;"><strong style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px;">Balustrades</strong></span><br /><br /></span>\r\n<div style="text-align: justify;"><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Balustrades aren’t merely staircase fashion accessories; they provide structure and safety while reflecting homeowners’ personalities. The balustrade can also be called a handrail, which is supported by short pillars, called balusters.</span></div>', '', 1, 0, 0, 0, '2011-04-28 09:00:07', 62, '', '2011-06-02 10:21:28', 62, 0, '0000-00-00 00:00:00', '2011-04-28 09:00:07', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 25, '', '', 0, 1020, 'robots=\nauthor='),
(56, 'Deck Maintenance', 'deck-maintenance', '', '<p><strong><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Deck Maintenance</span></strong></p>\r\n<p><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Outdoor Decking transforms outside spaces into practical and stylish outdoor rooms. Wooden decking makes a warm and comfortable surface while creating a seamless transition between house and garden.</span></p>', '', 1, 0, 0, 0, '2011-04-28 09:00:53', 62, '', '2011-06-02 10:20:41', 62, 0, '0000-00-00 00:00:00', '2011-04-28 09:00:53', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 24, '', '', 0, 834, 'robots=\nauthor='),
(57, 'Products', 'products', '', '<h6 style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;"><strong>Products</strong></span></span></h6>\r\n<div style="text-align: justify;"></div>\r\n<div style="text-align: justify;"></div>\r\n<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;"><br /></span></span></div>\r\n<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;"><strong><a name="house"></a>Housing :<br /></strong></span><span style="color: #000000;">Timber frame homes are becoming more and more fashionable and are much more eco-friendly and cost effective than conventional brick and mortar. We are experienced in all types of timer homes namely timber frame. This method can incorporate a number of finishes for example: cladding i.e. using half log planking, conventional plaster on timber frame or nu-tec ship lap.</span></span><span style="font-family: verdana,geneva;"><span style="color: #000000;">&nbsp;</span></span>\r\n<p><span style="font-family: verdana,geneva;"><span style="color: #000000;">We also do solid log homes.<br /><a target="_self" href="index.php?option=com_content&amp;view=article&amp;id=79&amp;Itemid=168">Click To View Log Home Gallery</a><br /><a target="_self" href="index.php?option=com_content&amp;view=article&amp;id=80&amp;Itemid=169">Click To View Timber Frame Gallery</a></span></span></p>\r\n</div>\r\n<span style="color: #000000;"> </span>\r\n<div style="text-align: justify;"></div>\r\n<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;"><strong><a name="decks"></a>Decks :</strong></span></span><span style="font-family: verdana,geneva;">&nbsp;</span><span style="font-family: verdana,geneva;"><span style="color: #000000;"><span style="color: #000000;"> </span></span></span></div>\r\n<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;"><span style="color: #000000;">Outdoor  Decking transforms outside spaces into practical and stylish outdoor  rooms. Wooden decking makes a warm and comfortable surface while  creating a seamless transition between house and g</span>arden.</span></span><span style="font-family: verdana,geneva;"><span style="color: #000000;">&nbsp;</span></span></div>\r\n<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><a target="_self" href="index.php?option=com_content&amp;view=article&amp;id=77&amp;Itemid=166">Click To View Decks Gallery</a></span></div>\r\n<div style="text-align: center;">\r\n<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;">&nbsp;</span></span></div>\r\n</div>\r\n<div style="text-align: justify;"></div>\r\n<div style="text-align: justify;">\r\n<div id="content"><span style="font-family: verdana,geneva;"><span style="color: #000000;"> </span></span>\r\n<div id="content_container" class="clearfix"><span style="font-family: verdana,geneva;"><span style="color: #000000;"> </span></span>\r\n<div class="floatbox"><span style="font-family: verdana,geneva;"><span style="color: #000000;"> </span></span>\r\n<div class="joomla "><span style="font-family: verdana,geneva;"><span style="color: #000000;"> </span></span>\r\n<div class="article"><span style="font-family: verdana,geneva;"><span style="color: #000000;"><strong style="font-size: 12px;"><a name="bal"></a>Balustrades :</strong></span></span><span style="font-family: verdana,geneva;"><span style="color: #000000;"><br />Balustrades  aren’t merely staircase fashion accessories; they provide structure and  safety while reflecting homeowners’ personalities. The balustrade can  also be called a handrail, which is supported by short pillars, called  balusters.</span></span><span style="font-family: verdana,geneva;"><span style="color: #000000;">&nbsp;</span></span></div>\r\n<div class="article"><a target="_self" href="index.php?option=com_content&amp;view=article&amp;id=85"><span style="font-family: verdana,geneva;">Click To View <span style="font-size: 12px;">Balustrades</span> Gallery</span></a></div>\r\n<span style="font-family: verdana,geneva;"> </span></div>\r\n<span style="font-family: verdana,geneva;"> </span></div>\r\n<span style="font-family: verdana,geneva;"> </span></div>\r\n<span style="font-family: verdana,geneva;"> </span></div>\r\n<span style="font-family: verdana,geneva;"> </span></div>\r\n<span style="font-family: verdana,geneva;"> </span><span style="font-family: verdana,geneva;"> </span>\r\n<div style="text-align: justify;"><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong><br /><a name="stair"></a>Staircases:</strong></span><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">&nbsp;</span></div>\r\n<div style="text-align: justify;"><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">When one talks about manufacturing staircases, handwork is fundamental and we manufacture all kinds of staircases, e.g. straight, half, quarter, geometrical, half space and quarter space landings, curved, spirals, etc. Every staircase is custom made to the requirements of the client. Balustrading to concrete and cast iron staircases is also part of our production. Installation of staircases and balustrading is carried out by our own skilled tradesmen.</span><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><br /></span><a href="index.php?option=com_content&amp;view=article&amp;id=83&amp;Itemid=172" target="_self"><span style="font-family: verdana,geneva;">Click To View Staircases Gallery<span style="font-size: 12px; color: #000000;"> </span></span></a></div>\r\n<div style="text-align: justify;"><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong>&nbsp;</strong></span></div>\r\n<div style="text-align: justify;"></div>\r\n<div style="text-align: justify;"><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong><a name="per"></a>Pergolas: </strong></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">A pergola or arbour is a garden feature forming a shaded walkway, passageway or sitting area of pillars that support cross-beams and a sturdy open lattice, often upon which woody vines are trained. As a type of gazebo, it may also be an extension of a building, or serve as protection for an open terrace or a link between pavilions.</span></div>\r\n<div style="text-align: justify;"><a target="_self" href="index.php?option=com_content&amp;view=article&amp;id=81&amp;Itemid=170"><span style="font-family: verdana,geneva;">Click To View Pergolas Gallery</span></a><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">&nbsp;</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong><a name="screen"></a>Screens: </strong></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Screens are a full-screen window manager that multiplexes a physical terminal between several processes, typically interactive shells.</span><br /><a target="_self" href="index.php?option=com_content&amp;view=article&amp;id=82&amp;Itemid=171"><span style="font-family: verdana,geneva;">Click To View Screens Gallery</span></a></div>\r\n<div style="text-align: justify;"><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"> </span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong><a name="gate"></a>Gates: </strong></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Driveway gates made of wrought iron, stainless steel etc, along with pedestrian gates which could be decorative or plain to suit your home or business. </span></div>\r\n<div style="text-align: justify;"><a target="_self" href="index.php?option=com_content&amp;view=article&amp;id=78&amp;Itemid=167"><span style="font-family: verdana,geneva;">Click To View Gates Gallery</span></a><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">&nbsp;</span><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">&nbsp;</span></div>', '', 1, 0, 0, 0, '2011-04-28 09:01:21', 62, '', '2013-07-11 12:13:14', 62, 0, '0000-00-00 00:00:00', '2011-04-28 09:01:21', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 34, 0, 23, '', '', 0, 3071, 'robots=\nauthor='),
(58, 'Gallery', 'gallery', '', '<p><strong style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Gallery<br /><br /></span><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Please click on the image to view large.<br /></span></strong><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">{gallery}gallery{/gallery}</span></span><strong style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span></strong></p>', '', 1, 0, 0, 0, '2011-04-28 09:02:00', 62, '', '2011-06-02 10:09:08', 62, 62, '2014-10-20 07:36:10', '2011-04-28 09:02:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 22, '', '', 0, 1082, 'robots=\nauthor='),
(59, 'Testimonials', 'testimonials', '', '<table border="0">\r\n<tbody>\r\n<tr>\r\n<td><strong>Client Testimonial</strong></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<hr />\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<div style="text-align: justify;">“The end result is beyond my expectations. You have given us the exact product feel we are looking for. I am absolutely ec-static. You have indeed con-firmed and justified the choice of your business title “Timber Master.”</div>\r\n<br /><strong>Andrew Stevens</strong><br /><a target="_blank" href="mailto:andrew.stevens@iinet.net.au">andrew.stevens@iinet.net.au</a><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<hr />\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2"></td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">"Timber Master was given the contract to build our Ekuthuleni lodge in the Royal Jozini &nbsp;Big Six reserve.<br />\r\n<div style="text-align: justify;">We are delighted with the finished product in terms of aesthetics, quality of workmanship, and of course cost. The Timber Master team has been happy to go the extra mile to ensure  that we got the lodge that we wanted and we would gladly recommend them  to others who are also looking for a cost-effective, quality wooden  structure."</div>\r\n<br /><strong>Jason Stevens</strong><br /><a target="_blank" href="http://mce_host/email:Stevensfamily@saol.com">email:Stevensfamily@saol.com</a></td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<hr />\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 0, '2011-04-28 09:02:15', 62, '', '2013-07-11 10:44:55', 62, 0, '0000-00-00 00:00:00', '2011-04-28 09:02:15', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 21, '', '', 0, 1044, 'robots=\nauthor='),
(60, 'Contacts Us', 'contacts-us', '', '<strong><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Contact Us</span></strong><br /><br /> \r\n<table style="width: 488px; height: 124px;" border="0">\r\n<tbody>\r\n<tr>\r\n<td style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong>Cell:</strong></td>\r\n<td valign="top"></td>\r\n<td></td>\r\n<td style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">082 928 7067</td>\r\n</tr>\r\n<tr>\r\n<td style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong>E-mail</strong></td>\r\n<td valign="top"></td>\r\n<td></td>\r\n<td style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><a target="_blank" href="mailto:timbermaster@mweb.co.za">timbermaster@mweb.co.za</a><br /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">{form1}</span><br />', '', 1, 0, 0, 0, '2011-04-28 09:02:32', 62, '', '2013-07-11 11:51:14', 62, 0, '0000-00-00 00:00:00', '2011-04-28 09:02:32', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 20, '', '', 0, 1780, 'robots=\nauthor='),
(61, 'Commercial and Residential', 'commercial-and-residential', '', 'Coming Soon', '', 1, 0, 0, 0, '2011-06-01 08:12:09', 62, '', '2011-06-01 08:12:53', 62, 0, '0000-00-00 00:00:00', '2011-06-01 08:12:09', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 19, '', '', 0, 2514, 'robots=\nauthor='),
(62, 'Banner 1', 'banner-1', '', '<img src="images/stories/banners/timbermasterbanner1.jpg" /><br />', '', 1, 6, 0, 36, '2011-06-01 16:43:17', 62, '', '2011-06-02 09:04:03', 62, 0, '0000-00-00 00:00:00', '2011-06-01 16:43:17', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 3, '', '', 0, 0, 'robots=\nauthor='),
(63, 'Banner 2', 'banner-2', '', '<img src="images/stories/banners/timbermasterbanner2.jpg" /><br />', '', 1, 6, 0, 36, '2011-06-01 16:45:02', 62, '', '2011-06-02 09:06:57', 62, 0, '0000-00-00 00:00:00', '2011-06-01 16:45:02', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 4, '', '', 0, 0, 'robots=\nauthor='),
(64, 'Banner 3', 'banner-3', '', '<img src="images/stories/banners/timbermasterbanner3.jpg" />', '', 1, 6, 0, 36, '2011-06-01 16:45:55', 62, '', '2011-06-02 09:09:30', 62, 0, '0000-00-00 00:00:00', '2011-06-01 16:45:55', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 5, '', '', 0, 0, 'robots=\nauthor='),
(65, 'Banner 4', 'banner-4', '', '<img src="images/stories/banners/timbermasterbanner4.jpg" /><br />', '', 1, 6, 0, 36, '2011-06-01 16:46:32', 62, '', '2011-06-02 09:30:19', 62, 0, '0000-00-00 00:00:00', '2011-06-01 16:46:32', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 6, '', '', 0, 0, 'robots=\nauthor='),
(66, 'Banner 5', 'banner-5', '', '<img src="images/stories/banners/timbermasterbanner5.jpg" /><br />', '', 0, 6, 0, 36, '2011-06-01 16:46:32', 62, '', '2011-06-02 09:31:12', 62, 0, '0000-00-00 00:00:00', '2011-06-01 16:46:32', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 7, '', '', 0, 0, 'robots=\nauthor='),
(86, 'About Us', 'about-us', '', '<p style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;">Timber Master has many years of experience in the building industry. We specialise in timber work of any kind and have built hundreds of structures from balustrades, pergolas and decks to timber frame homes. &nbsp;Not only will we build the structure for you but we will maintain it too.</span></span></p>\r\n<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;"> </span></span></div>\r\n<p style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;">As a leading company in the industry, we are up to date with latest trends such as combining stainless steel and timber as well as an extensive knowledge of the age old traditions in high quality timber work. This research and application into our work differentiates us from the rest, whether it is traditional or cutting edge trends.</span></span></p>\r\n<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;"> </span></span></div>\r\n<p style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;">Using only the finest quality hardwoods to ensure the finest quality end product, you are guaranteed satisfaction.&nbsp; Not only do we offer a competitive price, but the quality of our work has been rated outstanding.</span></span></p>', '', 1, 0, 0, 0, '2011-04-28 08:58:34', 62, '', '2013-07-11 12:00:24', 62, 0, '0000-00-00 00:00:00', '2011-04-28 08:58:34', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 544, 'robots=\nauthor='),
(67, 'Legal Disclaimer', 'legal-disclaimer', '', '<span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong>Legal Disclaimer</strong><br /><br /><strong>Use of Site</strong><br /><br /></span>\r\n<div style="text-align: justify;"><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">You may only use this site to browse the content, make legitimate purchases and shall not use this site for any other purposes. This site and the content provided in this site may not be copied, reproduced, republished, uploaded, posted, transmitted or distributed. ''Deep-linking'', ''embedding'' or using analogous technology is strictly prohibited. Unauthorized use of this site and/or the materials contained on this site may violate applicable copyright, trademark or other intellectual property laws or other laws.</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span></div>\r\n<span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><br /><strong>Disclaimer of Warranty</strong><br /><br /></span>\r\n<div style="text-align: justify;"><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">The contents of this site are provided "as is" without warranty of any kind, either expressed or implied, including but not limited to warranties of merchantability, fitness for a purpose and non-infringement. The owner of this site, the authors of these contents and in general anybody connected to this site in any way, from now on collectively called "Providers", assume no responsibility for errors or omissions in these contents. The Providers shall not be liable for any direct, indirect, general, special, incidental or consequential damages (including, without limitation - data loss, lost revenues and lost profit) which may result from the inability to use or the correct or incorrect use, abuse, or misuse of these contents, even if the Providers have been informed of the possibilities of such damages. The Providers cannot assume any obligation or responsibility. The use of these contents is forbidden in those places where the law does not allow this disclaimer to take full effect.</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><strong><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Our Rights</span></strong><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">We reserve the right to:</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"> Modify or withdraw, temporarily or permanently, the website (or any part thereof) with or without notice to you and you confirm that we shall not be liable to you or any third party for any modification to or withdrawal of the Website; and/or</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"> Change these Conditions from time to time and your continued use of the Website (or any part thereof) following such change shall be deemed to be your acceptance of such change. It is your responsibility to check regularly to determine whether the Conditions have been changed. If you do not agree to any change to the Conditions then you must immediately stop using the Website.</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"> We will use our reasonable endeavors to maintain the Website. The Website is subject to change from time to time. You will not be eligible for any compensation because you cannot use any part of the Website or because of failure, suspension or withdrawal of all or part of the Website due to circumstances beyond our control.</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"> We have the right, but not the obligation, to monitor any activity and content associated with the Website. We may investigate any reported violation of these Conditions or complaints and take any action that we deem appropriate (which may include, but is not limited to issuing warnings, suspending, terminating or attaching conditions to your access and/or removing any materials from the Website).</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><strong><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Privacy Policy</span></strong><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">We are committed to protecting your privacy. This privacy policy applies to all the web pages related to this website. All the information gathered in the online forms on the website is used to personally identify users that subscribe to this service. The information WILL NOT be used for anything other that which is stated in the Terms &amp; Conditions of use for this service. None of the information will be sold or made available to anyone. The Site may collect certain information about your visit, such as the name of the Internet Service Provider and the Internet Protocol (IP) address through which you access the Internet; the date and time you access the Site; the pages that you access while at the Site and the Internet Address of the Web site from which you linked directly to our site. This information is used to help improve the Site, analyze trends, and administer the Site. We may need to change this policy from time to time in order to address new issues and reflect changes on our site. We will post those changes here so that you will always know what information we gather, how we might use that information, and whether we will disclose that information to anyone. Please refer back to this policy regularly. If you have any questions or concerns about our privacy policy, please send us an E-Mail. By using this website, you signify your acceptance of our Privacy Policy. If you do not agree to this policy, please do not use our site. Your continued use of the website following the posting of changes to these terms will mean that you accept those changes.</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><strong><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Email Disclaimer</span></strong><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">This website has the ability to send you emails. These messages are privileged and private communication and may be read, copied and used only by the intended recipient (s).&nbsp; If you are not an intended recipient, please let us know by return email.&nbsp; Please then delete the message and do not disclose its contents to any person.&nbsp; Neither the sender nor his/her employer accepts any liability whatsoever as a result of the further dissemination of this message.</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">While every effort is taken to ensure that the email message and any attachments are free from viruses, the sender and his/her employer cannot be held liable in the unlikely event that a virus is transmitted to the recipient''s computer systems. The recipient is responsible for maintaining suitable anti-virus mechanisms to protect its computer systems."</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">The Conditions will be exclusively governed by and construed in accordance with the laws of South Africa whose Courts will have exclusive jurisdiction in any dispute, save that we have the right, at our sole discretion, to commence and pursue proceedings in alternative jurisdictions.</span></div>', '', 1, 0, 0, 0, '2011-06-02 10:22:15', 62, '', '2011-10-13 11:05:32', 62, 62, '2014-10-21 12:52:05', '2011-06-02 10:22:15', '0000-00-00 00:00:00', '', '', 'show_title=0\nlink_titles=0\nshow_intro=0\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_vote=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 3, 0, 18, '', '', 0, 4378, 'robots=\nauthor='),
(68, 'banner6', 'banner6', '', '<img alt="timberframedbanner1" src="images/stories/banners/timberframedbanner1.jpg" height="430" width="870" />', '', 1, 6, 0, 36, '2013-07-09 07:45:56', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-07-09 07:45:56', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 0, 'robots=\nauthor='),
(69, 'banner7', 'banner7', '', '<img alt="solidlogbanner2" src="images/stories/banners/solidlogbanner2.jpg" height="430" width="870" />', '', 1, 6, 0, 36, '2013-07-09 07:49:43', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-07-09 07:49:43', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 2, '', '', 0, 0, 'robots=\nauthor='),
(70, 'Staircases', 'staircases', '', '<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;"><strong>Staircases</strong></span></span></div>\r\n<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;"><br />When  one talks about manufacturing staircases, handwork is fundamental and  we manufacture all kinds of staircases, e.g. straight, half, quarter,  geometrical, half space and quarter space landings, curved, spirals,  etc. Every staircase is custom made to the requirements of the client.  Balustrading to concrete and cast iron staircases is also part of our  production. Installation of staircases and balustrading is carried out  by our own skilled tradesmen.</span></span></div>', '', 1, 0, 0, 0, '2013-07-10 08:09:52', 62, '', '2013-07-10 08:42:18', 62, 0, '0000-00-00 00:00:00', '2013-07-10 08:09:52', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 17, '', '', 0, 14, 'robots=\nauthor='),
(71, 'Pergolas', 'pergolas', '', '<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;"><strong>Pergolas</strong><br /><br />A  pergola or arbour is a garden feature forming a shaded walkway,  passageway or sitting area of pillars that support cross-beams and a  sturdy open lattice, often upon which woody vines are trained. As a type  of gazebo, it may also be an extension of a building, or serve as  protection for an open terrace or a link between pavilions.</span></span></div>', '', 1, 0, 0, 0, '2013-07-10 08:10:38', 62, '', '2013-07-10 08:43:19', 62, 0, '0000-00-00 00:00:00', '2013-07-10 08:10:38', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 16, '', '', 0, 18, 'robots=\nauthor='),
(72, 'Cladding', 'cladding', '', '<p><span style="font-family: verdana,geneva;"><span style="color: #000000;"><strong>Cladding</strong><br /><br />Cladding is the covering of one material with another.</span></span></p>', '', 1, 0, 0, 0, '2013-07-10 08:11:12', 62, '', '2013-07-10 08:44:57', 62, 0, '0000-00-00 00:00:00', '2013-07-10 08:11:12', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 15, '', '', 0, 24, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(73, 'Screens', 'screens', '', '<span style="font-family: verdana,geneva;"><span style="color: #000000;"><strong>Screens</strong><br /><br />Screens  are a full-screen window manager that multiplexes a physical terminal  between several processes, typically interactive shells.</span></span><br />', '', 1, 0, 0, 0, '2013-07-10 08:11:48', 62, '', '2013-07-10 08:47:22', 62, 0, '0000-00-00 00:00:00', '2013-07-10 08:11:48', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 14, '', '', 0, 27, 'robots=\nauthor='),
(74, 'Gates', 'gates', '', '<span style="font-family: verdana,geneva;"><span style="color: #000000;"><strong>Gates</strong><br /><br />Driveway  gates made of wrought iron, stainless steel etc, along with pedestrian  gates which could be decorative or plain to suit your home or business.</span></span>', '', 1, 0, 0, 0, '2013-07-10 08:12:49', 62, '', '2013-07-10 08:48:00', 62, 0, '0000-00-00 00:00:00', '2013-07-10 08:12:49', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 13, '', '', 0, 8, 'robots=\nauthor='),
(75, 'Indoor', 'indoor', '', '<span style="font-family: verdana,geneva;"><span style="color: #000000;"><strong>Indoor</strong><br /><br />Staircases and balustrades are also indoor along with mezzanine floors.</span></span>', '', 1, 0, 0, 0, '2013-07-10 08:13:20', 62, '', '2013-07-10 08:48:38', 62, 0, '0000-00-00 00:00:00', '2013-07-10 08:13:20', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 12, '', '', 0, 6, 'robots=\nauthor='),
(76, 'Mezzanine Floors', 'mezzanine-floors', '', '<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;"><strong>Mezzanine Floors</strong><br /><br />Adding  a mezzanine floor to your home or business can be a solution to a range  of space &amp; storage problems. Mezzanine Floors enable the full  working height of a building to be utilised to its maximum by doubling  the surface area. They are custom designed and manufactured to suit all  customers specific requirements. Mezzanine Floors can be used as storage  areas, fabrication areas, packing areas and offices among the many  other uses. Installing a Mezzanine Floor is the most cost effective way  of optimizing your existing space, because all your fixed costs are  already covered.</span></span></div>', '', 1, 0, 0, 0, '2013-07-10 08:13:47', 62, '', '2013-07-10 08:49:43', 62, 0, '0000-00-00 00:00:00', '2013-07-10 08:13:47', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 11, '', '', 0, 15, 'robots=\nauthor='),
(77, 'Decks::Gallery', 'decksgallery', '', '{gallery}Productimages/photosdecks{/gallery}', '', 1, 0, 0, 0, '2013-07-10 09:30:08', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-07-10 09:30:08', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 10, '', '', 0, 522, 'robots=\nauthor='),
(78, 'Gates::Gallery', 'gatesgallery', '', '{gallery}Productimages/photosgates{/gallery}', '', 1, 0, 0, 0, '2013-07-10 09:47:17', 62, '', '0000-00-00 00:00:00', 0, 62, '2014-10-18 05:19:44', '2013-07-10 09:47:17', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 9, '', '', 0, 367, 'robots=\nauthor='),
(79, 'Log Homes', 'log-homes', '', '{gallery}Productimages/photoshousingloghomes{/gallery}', '', 1, 0, 0, 0, '2013-07-10 09:49:49', 62, '', '2013-07-10 09:52:12', 62, 0, '0000-00-00 00:00:00', '2013-07-10 09:49:49', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 8, '', '', 0, 405, 'robots=\nauthor='),
(80, 'Timber frames:: Gallery', 'timber-frames-gallery', '', '{gallery}Productimages/photoshousingtimberframe{/gallery}', '', 1, 0, 0, 0, '2013-07-10 10:04:14', 62, '', '2013-07-11 11:56:00', 62, 62, '2014-10-18 05:15:53', '2013-07-10 10:04:14', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 7, '', '', 0, 554, 'robots=\nauthor='),
(81, 'Pergolas::Gallery', 'pergolasgallery', '', '{gallery}Productimages/photospergolas{/gallery}', '', 1, 0, 0, 0, '2013-07-10 10:12:58', 62, '', '0000-00-00 00:00:00', 0, 62, '2014-10-18 05:18:46', '2013-07-10 10:12:58', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 6, '', '', 0, 446, 'robots=\nauthor='),
(82, 'Screens::Gallery', 'screens', '', '{gallery}Productimages/photosscreens{/gallery}', '', 1, 0, 0, 0, '2013-07-10 10:16:32', 62, '', '2013-07-10 10:17:58', 62, 62, '2014-10-18 05:19:19', '2013-07-10 10:16:32', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 5, '', '', 0, 412, 'robots=\nauthor='),
(83, 'Staircase::gallery', 'staircasegallery', '', '{gallery}Productimages/photosstaircases{/gallery}', '', 1, 0, 0, 0, '2013-07-10 10:19:28', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-07-10 10:19:28', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 4, '', '', 0, 407, 'robots=\nauthor='),
(84, 'Other Services', 'other-services', '', '<div style="text-align: justify;"><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong>Other Services</strong></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong>Staircases:</strong></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">When one talks about manufacturing staircases, handwork is fundamental and we manufacture all kinds of staircases, e.g. straight, half, quarter, geometrical, half space and quarter space landings, curved, spirals, etc. Every staircase is custom made to the requirements of the client. Balustrading to concrete and cast iron staircases is also part of our production. Installation of staircases and balustrading is carried out by our own skilled tradesmen.</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong>Pergolas: </strong></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">A pergola or arbour is a garden feature forming a shaded walkway, passageway or sitting area of pillars that support cross-beams and a sturdy open lattice, often upon which woody vines are trained. As a type of gazebo, it may also be an extension of a building, or serve as protection for an open terrace or a link between pavilions.</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong>Cladding: </strong></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Cladding is the covering of one material with another.</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong>Screens: </strong></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Screens are a full-screen window manager that multiplexes a physical terminal between several processes, typically interactive shells.</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong>Gates: </strong></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Driveway gates made of wrought iron, stainless steel etc, along with pedestrian gates which could be decorative or plain to suit your home or business. </span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong> Indoor: </strong></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Staircases and balustrades are also indoor along with mezzanine floors. </span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong>Mezzanine Floors: </strong></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Adding a mezzanine floor to your home or business can be a solution to a range of space &amp; storage problems. Mezzanine Floors enable the full working height of a building to be utilised to its maximum by doubling the surface area. They are custom designed and manufactured to suit all customers specific requirements. Mezzanine Floors can be used as storage areas, fabrication areas, packing areas and offices among the many other uses. Installing a Mezzanine Floor is the most cost effective way of optimizing your existing space, because all your fixed costs are already covered.</span></div>', '', 0, 0, 0, 0, '2011-04-28 09:01:21', 62, '', '2011-06-02 08:37:08', 62, 0, '0000-00-00 00:00:00', '2011-04-28 09:01:21', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 0, 0, 3, '', '', 0, 0, 'robots=\nauthor='),
(85, 'Balustrades::Gallery', 'balustradesgallery', '', '{gallery}Productimages/Balustrades{/gallery}', '', 1, 0, 0, 0, '2013-07-11 11:12:41', 62, '', '2013-07-11 12:34:19', 62, 62, '2014-10-18 05:17:27', '2013-07-11 11:12:41', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 2, '', '', 0, 689, 'robots=\nauthor=');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_content_frontpage`
--

INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`) VALUES
(23, 7),
(20, 8),
(5, 6),
(1, 2),
(27, 5),
(19, 3),
(18, 4),
(44, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_rating`
--

CREATE TABLE IF NOT EXISTS `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `__section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `jos_core_acl_aro`
--

INSERT INTO `jos_core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', '62', 0, 'Administrator', 0),
(100, 'users', '152', 0, 'pierces5555', 0),
(101, 'users', '153', 0, 'tanzimr4444', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_groups`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `jos_core_acl_aro_groups`
--

INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES
(17, 0, 'ROOT', 1, 22, 'ROOT'),
(28, 17, 'USERS', 2, 21, 'USERS'),
(29, 28, 'Public Frontend', 3, 12, 'Public Frontend'),
(18, 29, 'Registered', 4, 11, 'Registered'),
(19, 18, 'Author', 5, 10, 'Author'),
(20, 19, 'Editor', 6, 9, 'Editor'),
(21, 20, 'Publisher', 7, 8, 'Publisher'),
(30, 28, 'Public Backend', 13, 20, 'Public Backend'),
(23, 30, 'Manager', 14, 19, 'Manager'),
(24, 23, 'Administrator', 15, 18, 'Administrator'),
(25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_sections`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_sections` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`section_id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `jos_core_acl_aro_sections`
--

INSERT INTO `jos_core_acl_aro_sections` (`section_id`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_groups_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_groups_aro_map`
--

INSERT INTO `jos_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES
(18, '', 100),
(18, '', 101),
(25, '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_items`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_searches` (
  `search_term` text NOT NULL,
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_form_actions`
--

CREATE TABLE IF NOT EXISTS `jos_form_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL DEFAULT '0',
  `plugin` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `desc` mediumtext COLLATE utf8_bin NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `dbtable` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emailfrom` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emailfromname` varchar(255) COLLATE utf8_bin NOT NULL,
  `emailto` mediumtext COLLATE utf8_bin NOT NULL,
  `emailsubject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emailbcc` mediumtext COLLATE utf8_bin NOT NULL,
  `emailcc` mediumtext COLLATE utf8_bin NOT NULL,
  `emailplain` mediumtext COLLATE utf8_bin NOT NULL,
  `emailhtml` mediumtext COLLATE utf8_bin NOT NULL,
  `gpgpublickey` mediumtext COLLATE utf8_bin NOT NULL,
  `senduploadedfiles` int(11) NOT NULL,
  `attachments` mediumtext COLLATE utf8_bin NOT NULL,
  `custom4` mediumtext COLLATE utf8_bin NOT NULL,
  `custom5` mediumtext COLLATE utf8_bin NOT NULL,
  `custom6` int(11) NOT NULL DEFAULT '0',
  `custom7` int(11) NOT NULL DEFAULT '0',
  `custom8` int(11) NOT NULL DEFAULT '0',
  `custom9` int(11) NOT NULL DEFAULT '0',
  `custom10` int(11) NOT NULL DEFAULT '0',
  `ordering` float unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jos_form_actions`
--

INSERT INTO `jos_form_actions` (`id`, `form_id`, `plugin`, `title`, `desc`, `published`, `access`, `dbtable`, `emailfrom`, `emailfromname`, `emailto`, `emailsubject`, `emailbcc`, `emailcc`, `emailplain`, `emailhtml`, `gpgpublickey`, `senduploadedfiles`, `attachments`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`, `ordering`, `checked_out`, `checked_out_time`, `created`, `created_by`) VALUES
(1, 1, 'save', 'Submission', '', 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', '2011-06-02 08:01:36', 62),
(2, 1, 'mail', 'Send Email', '', 1, 0, '', 'info@timbermaster.co.za', 'Timber Master', 'info@timbermaster.co.za', 'Submission Results', '', '', 'First Name:: #FIRSTNAME# \nLast Name:: #LASTNAME# \nContact Number:: #CONTACTNUMBER# \nE-Mail Address:: #EMAILADDRESS# \nMessage Subject:: #MESSAGESUBJECT# \nMessage:: #MESSAGE# \n', '<b>First Name::</b> #FIRSTNAME#<br />\n<b>Last Name::</b> #LASTNAME#<br />\n<b>Contact Number::</b> #CONTACTNUMBER#<br />\n<b>E-Mail Address::</b> #EMAILADDRESS#<br />\n<b>Message Subject::</b> #MESSAGESUBJECT#<br />\n<b>Message::</b> #MESSAGE#<br />\n', '', 0, '', '', '', 0, 0, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', '2011-06-02 08:22:50', 62),
(3, 1, 'thankyou', 'Thank You Note', '<span style="font-size: 12pt;"><span style="color: #000000;">Thank you for your submission. Our consultants will contact you shortly.</span></span>', 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', '2011-06-02 08:23:35', 62);

-- --------------------------------------------------------

--
-- Table structure for table `jos_form_fields`
--

CREATE TABLE IF NOT EXISTS `jos_form_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Joomla Forms - Form Fields',
  `form_id` int(11) NOT NULL DEFAULT '0',
  `plugin` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `title` mediumtext COLLATE utf8_bin NOT NULL,
  `publictitle` varchar(255) COLLATE utf8_bin NOT NULL,
  `slug` varchar(255) COLLATE utf8_bin NOT NULL,
  `desc` mediumtext COLLATE utf8_bin NOT NULL,
  `accept` mediumtext COLLATE utf8_bin NOT NULL,
  `checked` int(11) NOT NULL DEFAULT '0',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `readonly` int(11) NOT NULL DEFAULT '0',
  `value` mediumtext COLLATE utf8_bin NOT NULL,
  `dir` mediumtext COLLATE utf8_bin NOT NULL,
  `lang` mediumtext COLLATE utf8_bin NOT NULL,
  `style` mediumtext COLLATE utf8_bin NOT NULL,
  `cssfile` varchar(255) COLLATE utf8_bin NOT NULL,
  `class` mediumtext COLLATE utf8_bin NOT NULL,
  `idattribute` mediumtext COLLATE utf8_bin NOT NULL,
  `accesskey` varchar(5) COLLATE utf8_bin NOT NULL,
  `size` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cols` varchar(10) COLLATE utf8_bin NOT NULL,
  `rows` varchar(10) COLLATE utf8_bin NOT NULL,
  `maxlength` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `layoutoption` int(11) NOT NULL,
  `params` mediumtext COLLATE utf8_bin NOT NULL,
  `onblur` mediumtext COLLATE utf8_bin NOT NULL,
  `ordering` float unsigned NOT NULL DEFAULT '0',
  `allowbyemail` int(11) NOT NULL DEFAULT '1',
  `required` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `emsg` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `allowsetbyget` int(11) NOT NULL,
  `populatebysql` mediumtext COLLATE utf8_bin NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `showonsubmissionindex` int(11) NOT NULL,
  `fileupload_destdir` mediumtext COLLATE utf8_bin NOT NULL,
  `fileupload_filenamemask` varchar(255) COLLATE utf8_bin NOT NULL,
  `fileupload_setvalueto` int(11) NOT NULL,
  `filter_StringTrim` int(11) NOT NULL DEFAULT '1',
  `filter_StripTags` int(11) NOT NULL DEFAULT '1',
  `filter_Alnum` int(11) NOT NULL DEFAULT '0',
  `filter_Digits` int(11) NOT NULL DEFAULT '0',
  `filter_strtoupper` int(11) NOT NULL,
  `filter_strtolower` int(11) NOT NULL,
  `filter_a2z` int(11) NOT NULL,
  `filter_ucwords` int(11) NOT NULL,
  `verify_isemailaddress` int(11) NOT NULL,
  `verify_isblank` int(11) NOT NULL,
  `verify_isnotblank` int(11) NOT NULL,
  `verify_isipaddress` int(11) NOT NULL,
  `verify_isvalidukninumber` int(11) NOT NULL,
  `verify_isvalidssn` int(11) NOT NULL,
  `verify_isvaliduszip` int(11) NOT NULL,
  `verify_isvalidukpostcode` int(11) NOT NULL,
  `verify_isvalidcreditcardnumber` int(11) NOT NULL,
  `verify_isvalidurl` int(11) NOT NULL,
  `verify_isvalidvatnumber` int(11) NOT NULL,
  `verify_isinteger` int(11) NOT NULL,
  `verify_stringlengthgreaterthan` varchar(11) COLLATE utf8_bin NOT NULL,
  `verify_stringlengthlessthan` varchar(11) COLLATE utf8_bin NOT NULL,
  `verify_stringlengthequals` varchar(11) COLLATE utf8_bin NOT NULL,
  `verify_numbergreaterthan` varchar(11) COLLATE utf8_bin NOT NULL,
  `verify_numberlessthan` varchar(11) COLLATE utf8_bin NOT NULL,
  `verify_regex` varchar(255) COLLATE utf8_bin NOT NULL,
  `verify_numberequals` varchar(11) COLLATE utf8_bin NOT NULL,
  `verify_equalto` varchar(255) COLLATE utf8_bin NOT NULL,
  `verify_isinarray` mediumtext COLLATE utf8_bin NOT NULL,
  `verify_isexistingusername` int(11) NOT NULL,
  `verify_isnotexistingusername` int(11) NOT NULL,
  `verify_fileupload_extensions` mediumtext COLLATE utf8_bin NOT NULL,
  `verify_fileupload_maxsize` varchar(255) COLLATE utf8_bin NOT NULL,
  `verify_fileupload_overwritemode` int(11) NOT NULL,
  `verify_brazil_cpf` int(11) NOT NULL,
  `verify_brazil_cnpj` int(11) NOT NULL,
  `verify_iban` int(11) NOT NULL,
  `verify_isalloweddomain` mediumtext COLLATE utf8_bin NOT NULL,
  `verify_isdenieddomain` mediumtext COLLATE utf8_bin NOT NULL,
  `option1` varchar(255) COLLATE utf8_bin NOT NULL,
  `option2` varchar(255) COLLATE utf8_bin NOT NULL,
  `multiple` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `plugin` (`plugin`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jos_form_fields`
--

INSERT INTO `jos_form_fields` (`id`, `form_id`, `plugin`, `type`, `title`, `publictitle`, `slug`, `desc`, `accept`, `checked`, `disabled`, `readonly`, `value`, `dir`, `lang`, `style`, `cssfile`, `class`, `idattribute`, `accesskey`, `size`, `cols`, `rows`, `maxlength`, `layoutoption`, `params`, `onblur`, `ordering`, `allowbyemail`, `required`, `published`, `access`, `checked_out`, `checked_out_time`, `emsg`, `allowsetbyget`, `populatebysql`, `created`, `created_by`, `showonsubmissionindex`, `fileupload_destdir`, `fileupload_filenamemask`, `fileupload_setvalueto`, `filter_StringTrim`, `filter_StripTags`, `filter_Alnum`, `filter_Digits`, `filter_strtoupper`, `filter_strtolower`, `filter_a2z`, `filter_ucwords`, `verify_isemailaddress`, `verify_isblank`, `verify_isnotblank`, `verify_isipaddress`, `verify_isvalidukninumber`, `verify_isvalidssn`, `verify_isvaliduszip`, `verify_isvalidukpostcode`, `verify_isvalidcreditcardnumber`, `verify_isvalidurl`, `verify_isvalidvatnumber`, `verify_isinteger`, `verify_stringlengthgreaterthan`, `verify_stringlengthlessthan`, `verify_stringlengthequals`, `verify_numbergreaterthan`, `verify_numberlessthan`, `verify_regex`, `verify_numberequals`, `verify_equalto`, `verify_isinarray`, `verify_isexistingusername`, `verify_isnotexistingusername`, `verify_fileupload_extensions`, `verify_fileupload_maxsize`, `verify_fileupload_overwritemode`, `verify_brazil_cpf`, `verify_brazil_cnpj`, `verify_iban`, `verify_isalloweddomain`, `verify_isdenieddomain`, `option1`, `option2`, `multiple`) VALUES
(1, 1, 'textbox', 'text', 'First Name: (From textbox Field Template)', 'First Name:', 'firstname', '', '', 0, 0, 0, '', '', '', '', '', 'inputbox', '', '', '30', '', '', '255', 0, '', '', 1, 1, 0, 1, 0, 0, '0000-00-00 00:00:00', '', 0, '', '2011-06-02 07:58:10', 62, 0, '', '', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 0, 0, 0, 0, '', '', '', '', ''),
(2, 1, 'textbox', 'text', 'Last Name: (From textbox Field Template)', 'Last Name:', 'lastname', '', '', 0, 0, 0, '', '', '', '', '', 'inputbox', '', '', '30', '', '', '255', 0, '', '', 2, 1, 0, 1, 0, 0, '0000-00-00 00:00:00', '', 0, '', '2011-06-02 07:58:38', 62, 0, '', '', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 0, 0, 0, 0, '', '', '', '', ''),
(3, 1, 'textbox', 'text', 'Contact Number: (From textbox Field Template)', 'Contact Number:', 'contactnumber', '', '', 0, 0, 0, '', '', '', '', '', 'inputbox', '', '', '30', '', '', '255', 0, '', '', 3, 1, 0, 1, 0, 0, '0000-00-00 00:00:00', '', 0, '', '2011-06-02 07:59:04', 62, 0, '', '', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 0, 0, 0, 0, '', '', '', '', ''),
(4, 1, 'textbox', 'text', 'E-Mail Address: (From textbox Field Template)', 'E-Mail Address:', 'emailaddress', '', '', 0, 0, 0, '', '', '', '', '', 'inputbox', '', '', '30', '', '', '255', 0, '', '', 4, 1, 0, 1, 0, 0, '0000-00-00 00:00:00', '', 0, '', '2011-06-02 07:59:33', 62, 0, '', '', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 0, 0, 0, 0, '', '', '', '', ''),
(5, 1, 'textbox', 'text', 'Message Subject: (From textbox Field Template)', 'Message Subject:', 'messagesubject', '', '', 0, 0, 0, '', '', '', '', '', 'inputbox', '', '', '30', '', '', '255', 0, '', '', 5, 1, 0, 1, 0, 0, '0000-00-00 00:00:00', '', 0, '', '2011-06-02 08:00:11', 62, 0, '', '', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 0, 0, 0, 0, '', '', '', '', ''),
(6, 1, 'textarea', 'textarea', 'Message: (From textarea Field Template)', 'Message:', 'message', '', '', 0, 0, 0, '', '', '', '', '', 'inputbox', '', '', '50', '40', '10', '', 0, '', '', 6, 1, 0, 1, 0, 0, '0000-00-00 00:00:00', '', 0, '', '2011-06-02 08:00:36', 62, 0, '', '', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, '', '', 0, 0, 0, 0, '', '', '0', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_form_forms`
--

CREATE TABLE IF NOT EXISTS `jos_form_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_name` mediumtext COLLATE utf8_bin NOT NULL,
  `published` int(11) NOT NULL,
  `access` int(11) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `accesssubmit` int(11) NOT NULL,
  `introtext` mediumtext COLLATE utf8_bin NOT NULL,
  `submitbuttontext` mediumtext COLLATE utf8_bin NOT NULL,
  `resetbuttontext` mediumtext COLLATE utf8_bin NOT NULL,
  `showresetbutton` int(11) NOT NULL,
  `showpreviewbutton` int(11) NOT NULL,
  `showsubmitbutton` int(11) NOT NULL DEFAULT '1',
  `nextbuttontext` mediumtext COLLATE utf8_bin NOT NULL,
  `prevbuttontext` mediumtext COLLATE utf8_bin NOT NULL,
  `processorurl` mediumtext COLLATE utf8_bin NOT NULL,
  `onlyssl` int(11) NOT NULL,
  `formtype` varchar(50) COLLATE utf8_bin NOT NULL,
  `method` varchar(5) COLLATE utf8_bin NOT NULL,
  `enctype` varchar(255) COLLATE utf8_bin NOT NULL,
  `accept-charset` mediumtext COLLATE utf8_bin NOT NULL,
  `classid` varchar(255) COLLATE utf8_bin NOT NULL,
  `target` varchar(255) COLLATE utf8_bin NOT NULL,
  `disablebuttons` int(11) NOT NULL,
  `embedinmodules` int(11) NOT NULL,
  `embedinplugins` int(11) NOT NULL,
  `layout` varchar(255) COLLATE utf8_bin NOT NULL,
  `template` mediumtext COLLATE utf8_bin NOT NULL,
  `hasusertable` varchar(255) COLLATE utf8_bin DEFAULT '0',
  `page_title` varchar(255) COLLATE utf8_bin NOT NULL,
  `showtitle` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_bin NOT NULL,
  `useblacklist` int(11) NOT NULL,
  `maxsubmissionsperuser` int(11) DEFAULT NULL,
  `maxsubmissions` int(11) DEFAULT NULL,
  `count_spamsubmissions` int(11) NOT NULL,
  `count_oksubmissions` int(11) NOT NULL,
  `spam_akismet_key` varchar(255) COLLATE utf8_bin NOT NULL,
  `spam_akismet_author` varchar(255) COLLATE utf8_bin NOT NULL,
  `spam_akismet_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `spam_akismet_website` varchar(255) COLLATE utf8_bin NOT NULL,
  `spam_akismet_body` varchar(255) COLLATE utf8_bin NOT NULL,
  `spam_mollom_privatekey` varchar(255) COLLATE utf8_bin NOT NULL,
  `spam_mollom_publickey` varchar(255) COLLATE utf8_bin NOT NULL,
  `spam_ipblacklist` mediumtext COLLATE utf8_bin NOT NULL,
  `spam_wordblacklist` mediumtext COLLATE utf8_bin NOT NULL,
  `spam_hiddenfield` varchar(255) COLLATE utf8_bin NOT NULL,
  `usecustomtemplate` int(11) NOT NULL,
  `custom_smarty` mediumtext COLLATE utf8_bin NOT NULL,
  `custom_js` mediumtext COLLATE utf8_bin NOT NULL,
  `custom_css` mediumtext COLLATE utf8_bin NOT NULL,
  `allowpause` int(11) NOT NULL,
  `allowownsubmissionedit` int(11) NOT NULL,
  `allowownsubmissiondelete` int(11) NOT NULL,
  `enableixedit` int(11) NOT NULL,
  `enablejankomultipage` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=49 ;

--
-- Dumping data for table `jos_form_forms`
--

INSERT INTO `jos_form_forms` (`id`, `form_name`, `published`, `access`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `accesssubmit`, `introtext`, `submitbuttontext`, `resetbuttontext`, `showresetbutton`, `showpreviewbutton`, `showsubmitbutton`, `nextbuttontext`, `prevbuttontext`, `processorurl`, `onlyssl`, `formtype`, `method`, `enctype`, `accept-charset`, `classid`, `target`, `disablebuttons`, `embedinmodules`, `embedinplugins`, `layout`, `template`, `hasusertable`, `page_title`, `showtitle`, `created`, `created_by`, `slug`, `useblacklist`, `maxsubmissionsperuser`, `maxsubmissions`, `count_spamsubmissions`, `count_oksubmissions`, `spam_akismet_key`, `spam_akismet_author`, `spam_akismet_email`, `spam_akismet_website`, `spam_akismet_body`, `spam_mollom_privatekey`, `spam_mollom_publickey`, `spam_ipblacklist`, `spam_wordblacklist`, `spam_hiddenfield`, `usecustomtemplate`, `custom_smarty`, `custom_js`, `custom_css`, `allowpause`, `allowownsubmissionedit`, `allowownsubmissiondelete`, `enableixedit`, `enablejankomultipage`) VALUES
(1, 'Contact Us', 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 'Submit Form', 'Reset', 1, 1, 1, '', '', '', 0, 'normal', 'POST', 'multipart/form-data', 'UTF-8', '', '_self', 0, 0, 0, 'default', 'blank', '#__form_submitteddata_form1', 'Contact Us', 0, '2011-06-02 07:55:58', 62, '', 0, 0, 0, 982, 10, '', '', '', '', '', '', '', '', '', 'my_last_name', 0, '', '', '', 1, 1, 0, 0, 0),
(2, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(3, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(4, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(5, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(6, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(7, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(8, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(9, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(10, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(11, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(12, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(13, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(14, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(15, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(16, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(17, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(18, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(19, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(20, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(21, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(22, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(23, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(24, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(25, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(26, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(27, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(28, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(29, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(30, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(31, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(32, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(33, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(34, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(35, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(36, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(37, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(38, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(39, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(40, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(41, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(42, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(43, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(44, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(45, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(46, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(47, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0),
(48, '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', 0, 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '0', '', 0, '0000-00-00 00:00:00', 0, '', 0, NULL, NULL, 1, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_form_layouts`
--

CREATE TABLE IF NOT EXISTS `jos_form_layouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `framework` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `filename` varchar(255) COLLATE utf8_bin NOT NULL,
  `appliesto` varchar(255) COLLATE utf8_bin NOT NULL,
  `desc` mediumtext COLLATE utf8_bin NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `checked_out` int(11) NOT NULL,
  `default` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jos_form_layouts`
--

INSERT INTO `jos_form_layouts` (`id`, `framework`, `title`, `filename`, `appliesto`, `desc`, `created`, `created_by`, `checked_out_time`, `checked_out`, `default`) VALUES
(1, 0, 'List of all forms', '', 'Global', 'This is displayed when the component is called from the front end without a form id', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'Form Submission Preview', '', 'Global', 'This is a smarty template that is used to display your form submission preview view in a two column table', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'Please Wait Layout', '', 'Global', 'This is displayed when the form submit button is pressed', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_form_submission_trackings`
--

CREATE TABLE IF NOT EXISTS `jos_form_submission_trackings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joomla_user_id` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `submission_id` int(11) DEFAULT NULL,
  `ipaddress` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `useragent` mediumtext CHARACTER SET latin1,
  `datetime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `submission_id_form_id` (`form_id`,`submission_id`),
  KEY `joomla_user_id` (`joomla_user_id`),
  KEY `form_id` (`form_id`),
  KEY `form_id_joomla_user_id` (`joomla_user_id`,`form_id`),
  KEY `form_id_ipaddress` (`form_id`,`ipaddress`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- Dumping data for table `jos_form_submission_trackings`
--

INSERT INTO `jos_form_submission_trackings` (`id`, `joomla_user_id`, `form_id`, `submission_id`, `ipaddress`, `useragent`, `datetime`) VALUES
(1, 0, 1, NULL, '196.210.229.211', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:2.0.1) Gecko/20100101 Firefox/4.0.1', '2011-06-02 08:00:00'),
(2, 0, 1, NULL, '196.37.52.228', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727)', '2011-11-14 12:00:00'),
(3, 0, 1, NULL, '41.9.135.203', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7) AppleWebKit/534.48.3 (KHTML, like Gecko) Version/5.1 Safari/534.48.3', '2012-03-30 10:00:00'),
(4, 0, 1, NULL, '95.132.221.2', 'Mozilla/5.0 (Windows NT 6.0; rv:20.0) Gecko/20100101 Firefox/20.0', '2013-05-27 16:00:00'),
(5, 0, 1, NULL, '197.78.143.81', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', '2013-07-24 12:00:00'),
(6, 0, 1, NULL, '197.87.175.252', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:22.0) Gecko/20100101 Firefox/22.0', '2013-08-14 10:00:00'),
(7, 0, 1, NULL, '91.207.7.238', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 2.0.50727 ; .NET CLR 4.0.30319)', '2014-01-14 12:00:00'),
(8, 0, 1, NULL, '112.196.35.195', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:32.0) Gecko/20100101 Firefox/32.0', '2014-10-09 07:00:00'),
(9, 0, 1, NULL, '91.200.12.112', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)', '2014-10-20 05:00:00'),
(10, 0, 1, NULL, '91.200.12.112', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.0.3705)', '2014-10-21 06:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jos_form_submitteddata_form1`
--

CREATE TABLE IF NOT EXISTS `jos_form_submitteddata_form1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bf_status` varchar(20) COLLATE utf8_bin NOT NULL,
  `bf_user_id` int(11) NOT NULL,
  `FIELD_1` varchar(255) COLLATE utf8_bin NOT NULL,
  `FIELD_2` varchar(255) COLLATE utf8_bin NOT NULL,
  `FIELD_3` varchar(255) COLLATE utf8_bin NOT NULL,
  `FIELD_4` varchar(255) COLLATE utf8_bin NOT NULL,
  `FIELD_5` varchar(255) COLLATE utf8_bin NOT NULL,
  `FIELD_6` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- Dumping data for table `jos_form_submitteddata_form1`
--

INSERT INTO `jos_form_submitteddata_form1` (`id`, `bf_status`, `bf_user_id`, `FIELD_1`, `FIELD_2`, `FIELD_3`, `FIELD_4`, `FIELD_5`, `FIELD_6`) VALUES
(1, 'Submitted', 0, 'test', 'test', 'test', 'test', 'test', 'test'),
(2, 'Submitted', 0, 'kerusha', 'moodley', '0760832255', 'kerusham@mcmotor.co.za', 'quotation for a sundeck', 'hello \r\n\r\ncan u kindly assist me with a quotation for a sundeck? \r\n\r\nkind regards\r\nkerusha'),
(3, 'Submitted', 0, 'Leon', 'de Lange', '0721233778', 'leeon007@yahoo.co.uk', '', 'Would like to get a quote on 100m2 supper wood'),
(4, 'Submitted', 0, 'Dyamar', 'Engineering', '1111111', 'dyamar.engineering@yahoo.com', 'Software Development Services', 'Dear recipient.\r\n\r\nWe offer professional and reliable software development services.\r\nWhether you are a start-up business or a large-based organization, our company is \r\nready to help you to grow professionally by delivering perfect products.\r\n\r\nMajor benefits are that we do not require upfront payment and deliver\r\nhigh-quality products in specified time frame.\r\n\r\nOur area of expertise includes development of Internet portals, e-Commerce solutions,\r\nsimple to complex database management, software testing, system integration, software\r\nconsultancy, application maintenance, web and client server deployment and other.\r\n\r\nWhy choose us:\r\n\r\n- We are highly passionate about technological innovations.\r\n- Our company is customer focused and we listen to out clients.\r\n- The quality of delivered products is the most important for us.\r\n\r\nEmail: dyamar.engineering@yahoo.com\r\nWeb: www.dyamar.com\r\n\r\nRegards,\r\nDYAMAR Engineering Team.'),
(5, 'Submitted', 0, 'grant', '', 'o730296675', 'timbermaster@polka.co.za', 'red river gum', 'are you interested in timber cut to size  \r\ncan do gum and cedar deodar and others'),
(6, 'Submitted', 0, 'Flip', 'Liebenberg', '0828884083', 'flieben@liebendies.co.za', 'Deck', 'Please can you quote me to varnish / deck seal my deck and replace 2 slats.\r\n1 Sylvia Lane, Seaward Estate.'),
(7, 'Submitted', 0, 'coach factory outlet online sale', 'http://coach.jcrsys.com/', 'coach factory outlet online sale', 'aiajumz@gmail.com', 'coach factory outlet online sale', 'this tornado has been blowing up Guangzhou'),
(8, 'Submitted', 0, '', '', '', '', '', ''),
(9, 'Submitted', 0, 'Coach factory sale', 'http://coachfactory.loveitornot.com', 'Coach factory sale', 'usjejs@gmail.com', 'Coach factory sale', ''),
(10, 'Submitted', 0, 'Coach factory sale', 'http://coachfactory.loveitornot.com', 'Coach factory sale', 'usjejs@gmail.com', 'Coach factory sale', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_groups`
--

CREATE TABLE IF NOT EXISTS `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_groups`
--

INSERT INTO `jos_groups` (`id`, `name`) VALUES
(0, 'Public'),
(1, 'Registered'),
(2, 'Special');

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu`
--

CREATE TABLE IF NOT EXISTS `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(225) DEFAULT NULL,
  `name` text,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(150) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=202 ;

--
-- Dumping data for table `jos_menu`
--

INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
(1, 'mainmenu', 'Joomla || Overrides', 'joomla', 'index.php?option=com_content&view=frontpage', 'component', -2, 0, 20, 0, 41, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'num_leading_articles=1\nnum_intro_articles=6\nnum_columns=1\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=1\nlink_section=\nshow_category=1\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=Welcome to the Frontpage\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(135, 'mainmenu', 'Category List', 'category-list', 'index.php?option=com_content&view=category&id=29', 'component', -2, 0, 20, 0, 40, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'display_num=10\nshow_headings=1\nshow_date=1\ndate_format=\nfilter=1\nfilter_type=title\norderby_sec=\nshow_pagination=1\nshow_pagination_limit=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(136, 'mainmenu', 'Section List', 'section-list', 'index.php?option=com_content&view=section&id=4', 'component', -2, 0, 20, 0, 39, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=1\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(11, 'othermenu', 'Joomla! Home', 'joomla-home', 'http://www.joomla.org', 'url', -2, 0, 0, 0, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(12, 'othermenu', 'Joomla! Forums', 'joomla-forums', 'http://forum.joomla.org', 'url', -2, 0, 0, 0, 29, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(13, 'othermenu', 'Joomla! Help', 'joomla-help', 'http://help.joomla.org', 'url', -2, 0, 0, 0, 30, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(77, 'mainmenu', 'Level 3', 'level-3', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 36, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(20, 'usermenu', 'Your Details', 'your-details', 'index.php?option=com_user&view=user&task=edit', 'component', 1, 0, 14, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(24, 'usermenu', 'Logout', 'logout', 'index.php?option=com_user&view=login', 'component', 1, 0, 14, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(90, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 31, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(134, 'mainmenu', 'Section Blog', 'section-blog', 'index.php?option=com_content&view=section&layout=blog&id=4', 'component', -2, 0, 20, 0, 32, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=1\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=order\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=1\nlink_section=\nshow_category=1\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(75, 'mainmenu', 'Drop Down Menu', 'drop-down-menu', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 30, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(76, 'mainmenu', 'Level 3', 'level-3', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 42, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(83, 'mainmenu', 'YOOstyleswitcher', 'yoostyleswitcher', 'index.php?option=com_content&view=article&id=77', 'component', -2, 0, 20, 0, 52, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=submenu_web20.png\nsecure=0\n\n', 0, 0, 0),
(85, 'mainmenu', 'PNG Fix for IE6', 'png-fix-for-ie6', 'index.php?option=com_content&view=article&id=78', 'component', -2, 0, 20, 0, 51, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=submenu_star.png\nsecure=0\n\n', 0, 0, 0),
(86, 'mainmenu', 'Separator || separator', 'separator', '', 'separator', -2, 0, 0, 0, 31, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(87, 'mainmenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 33, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(88, 'mainmenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 34, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(89, 'othermenu', 'Sample Levels', 'deeper-levels-examples', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 32, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(48, 'mainmenu', 'Web Links', 'web-links', 'index.php?option=com_weblinks&view=categories', 'component', -2, 0, 4, 0, 35, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'image=-1\nimage_align=right\nshow_feed_link=1\nshow_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\ntarget=\nlink_icons=\npage_title=Weblinks\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(49, 'mainmenu', 'News Feeds', 'news-feeds', 'index.php?option=com_newsfeeds&view=categories', 'component', -2, 0, 11, 0, 37, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_limit=1\nshow_comp_description=1\ncomp_description=\nimage=-1\nimage_align=right\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\npage_title=Newsfeeds\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(145, 'mainmenu', 'Category Blog', 'category-blog', 'index.php?option=com_content&view=category&layout=blog&id=29', 'component', -2, 0, 20, 0, 38, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=1\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=order\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=1\nlink_section=\nshow_category=1\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(133, 'mainmenu', 'Category Blog', 'category-blog', 'index.php?option=com_content&view=category&layout=blog&id=29', 'component', -2, 0, 20, 0, 49, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=1\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(51, 'usermenu', 'Submit an Article', 'submit-an-article', 'index.php?option=com_content&view=article&layout=form', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 1, 0, '', 0, 0, 0),
(52, 'usermenu', 'Submit a Web Link', 'submit-a-web-link', 'index.php?option=com_weblinks&view=weblink&layout=form', 'component', 1, 0, 4, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 1, 0, '', 0, 0, 0),
(53, 'mainmenu', 'Home', 'home', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=0\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=\nfeed_summary=\npage_title=Extending your world\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 1),
(54, 'mainmenu', 'Features || Template Effects', 'features', 'index.php?option=com_content&view=article&id=45', 'component', -2, 0, 20, 0, 29, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(55, 'mainmenu', 'Typography || HTML Styles', 'typography', 'index.php?option=com_content&view=article&id=46', 'component', -2, 0, 20, 0, 28, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(56, 'mainmenu', 'Layout || Module Positions', 'layout', 'index.php?option=com_content&view=article&id=47', 'component', -2, 0, 20, 0, 27, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(74, 'mainmenu', 'YOOmenu', 'yoomenu', 'index.php?option=com_content&view=article&id=68', 'component', -2, 0, 20, 0, 46, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=submenu_new.png\nsecure=0\n\n', 0, 0, 0),
(58, 'mainmenu', 'Module Variations', 'module-variations', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(80, 'mainmenu', 'Level 3', 'level-3', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 11, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(79, 'mainmenu', 'Level 5', 'level-5', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 13, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(78, 'mainmenu', 'Level 4', 'level-4', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 14, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(73, 'mainmenu', 'Green', 'green', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=green', 'url', -2, 0, 0, 0, 45, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_green.png\n\n', 0, 0, 0),
(91, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 33, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(92, 'othermenu', 'Level 3', 'level-3', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 34, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(93, 'othermenu', 'Level 4', 'level-4', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 28, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(94, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 27, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(95, 'othermenu', 'Accordion A', 'accordion-a', '', 'separator', -2, 0, 0, 0, 25, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(96, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 23, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(97, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 20, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(98, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 18, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(99, 'othermenu', 'Accordion B', 'accordion-b', '', 'separator', -2, 0, 0, 0, 16, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(100, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 15, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(101, 'othermenu', 'Level 2', 'level-2', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 13, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(107, 'mainmenu', 'Level 2', 'level-2', '', 'separator', -2, 0, 0, 0, 15, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(108, 'mainmenu', 'Level 3', 'level-3', 'index.php?option=com_content&view=article&id=48', 'component', -2, 0, 20, 0, 16, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(111, 'mainmenu', 'Dotted', 'dotted', 'index.php?option=com_content&view=frontpage&Itemid=53&yt_color=dotted', 'url', -2, 0, 0, 0, 17, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_dotted.png\n\n', 0, 0, 0),
(112, 'mainmenu', 'Lilac', 'lilac', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=lilac', 'url', -2, 0, 0, 0, 44, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_lilac.png\n\n', 0, 0, 0),
(114, 'mainmenu', 'Color', 'color', 'index.php?option=com_content&view=frontpage&Itemid=53&yt_color=color', 'url', -2, 0, 0, 0, 18, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_color.png\n\n', 0, 0, 0),
(118, 'mainmenu', 'Stripes Light', 'stripes-light', 'index.php?option=com_content&view=frontpage&Itemid=53&yt_color=stripeslight', 'url', -2, 0, 0, 0, 19, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_stripeslight.png\n\n', 0, 0, 0),
(127, 'mainmenu', 'Wood', 'wood', 'index.php?option=com_content&view=frontpage&Itemid=53&yt_color=wood', 'url', -2, 0, 0, 0, 20, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_wood.png\n\n', 0, 0, 0),
(128, 'mainmenu', 'Stripes Dark', 'stripes-dark', 'index.php?option=com_content&view=frontpage&Itemid=53&yt_color=stripesdark', 'url', -2, 0, 0, 0, 21, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_stripesdark.png\n\n', 0, 0, 0),
(121, 'mainmenu', 'Red', 'red', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=red', 'url', -2, 0, 0, 0, 48, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_red.png\n\n', 0, 0, 0),
(123, 'topmenu', 'News', 'news', 'index.php?option=com_content&view=frontpage&Itemid=1', 'url', 1, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(124, 'topmenu', 'Features', 'features', 'index.php?option=com_content&view=article&id=18:joomla-features&catid=29:the-cms&Itemid=145', 'url', 1, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(125, 'topmenu', 'About Joomla!', 'about-joomla', 'index.php?option=com_content&view=article&id=1:welcome-to-joomla&catid=29:the-cms&Itemid=145', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(126, 'mainmenu', 'Turquoise', 'turquoise', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=turquoise', 'url', -2, 0, 0, 0, 47, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_turquoise.png\n\n', 0, 0, 0),
(129, 'mainmenu', 'Wombats', 'wombats', 'index.php?option=com_content&view=article&id=44&Itemid=53&yt_color=wombats', 'url', -2, 0, 0, 0, 22, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_wombats.png\n\n', 0, 0, 0),
(130, 'mainmenu', 'White', 'white', 'index.php?option=com_content&view=frontpage&Itemid=53&yt_color=default', 'url', -2, 0, 0, 0, 23, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=submenu_white.png\n\n', 0, 0, 0),
(138, 'mainmenu', 'Poll', 'poll', 'index.php?option=com_poll&view=poll&id=14', 'component', -2, 0, 10, 0, 24, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(139, 'mainmenu', 'Newsfeed List', 'newsfeed-list', 'index.php?option=com_newsfeeds&view=category&id=5', 'component', -2, 0, 11, 0, 50, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_limit=1\nshow_headings=\nshow_name=\nshow_articles=\nshow_link=\nshow_cat_description=\nshow_cat_items=\nshow_feed_image=\nshow_feed_description=\nshow_item_description=\nfeed_word_count=0\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(140, 'mainmenu', 'Contact Category', 'contact-category', 'index.php?option=com_contact&view=category&catid=12', 'component', -2, 0, 7, 0, 25, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'display_num=20\nimage=clock.jpg\nimage_align=left\nshow_limit=1\nshow_feed_link=1\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(141, 'mainmenu', 'Contact Item', 'contact-item', 'index.php?option=com_contact&view=contact&id=1', 'component', -2, 0, 7, 0, 26, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_contact_list=1\nshow_category_crumb=1\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(142, 'mainmenu', 'Login', 'login', 'index.php?option=com_user&view=login', 'component', -2, 0, 14, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_login_title=1\nheader_login=\nlogin=\nlogin_message=1\ndescription_login=1\ndescription_login_text=\nimage_login=\nimage_login_align=right\nshow_logout_title=1\nheader_logout=\nlogout=\nlogout_message=1\ndescription_logout=1\ndescription_logout_text=\nimage_logout=articles.jpg\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(144, 'mainmenu', 'User', 'user', 'index.php?option=com_user&view=user&layout=form', 'component', -2, 0, 14, 0, 43, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(146, 'mainmenu', 'About Us', 'about-us', 'index.php?option=com_content&view=article&id=86', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(147, 'mainmenu', 'Products', 'products', 'index.php?option=com_content&view=article&id=57', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(166, 'mainmenu', 'Decks', 'deck-maintenance', 'index.php?option=com_content&view=article&id=77', 'component', 1, 152, 20, 1, 2, 62, '2014-10-18 05:16:36', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(148, 'mainmenu', 'Sundecks', 'sundecks', 'index.php?option=com_content&view=article&id=54', 'component', 0, 147, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(149, 'mainmenu', 'Balustrades', 'balustrades', 'index.php?option=com_content&view=article&id=55', 'component', 0, 147, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(150, 'mainmenu', 'Decks', 'decks', 'index.php?option=com_content&view=article&id=56', 'component', 0, 147, 20, 1, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(151, 'mainmenu', 'Other Services', 'other-services', 'index.php?option=com_content&view=article&id=57', 'component', 0, 147, 20, 1, 11, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(152, 'mainmenu', 'Gallery', 'gallery', '', 'separator', 1, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(153, 'mainmenu', 'Testimonials', 'testimonials', 'index.php?option=com_content&view=article&id=59', 'component', 1, 0, 20, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(154, 'mainmenu', 'Contact Us', 'contact-us', 'index.php?option=com_content&view=article&id=60', 'component', 1, 0, 20, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(155, 'othermenu', 'Sundecks', 'sundecks', 'index.php?option=com_content&view=article&id=54', 'component', 0, 0, 20, 0, 12, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(156, 'othermenu', 'Balustrades', 'balustrades', 'products#bal', 'url', 1, 0, 0, 0, 17, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(177, 'othermenu', 'Screens', 'screens', 'products#screen', 'url', 1, 0, 0, 0, 24, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(178, 'othermenu', 'Gates', 'gates', 'products#gate', 'url', 1, 0, 0, 0, 26, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(157, 'othermenu', 'Decks', 'deck', 'products#decks', 'url', 1, 0, 0, 0, 14, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(175, 'othermenu', 'Staircases', 'staircases', 'products#stair', 'url', 1, 0, 0, 0, 21, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(176, 'othermenu', 'Pergolas', 'pergolas', 'products#per', 'url', 1, 0, 0, 0, 22, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(158, 'othermenu', 'Other Services', 'other-services', 'index.php?option=com_content&view=article&id=57', 'component', 0, 0, 20, 0, 19, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(159, 'mainmenu', 'Staircase', 'staircase', 'index.php?option=com_content&view=article&id=70', 'component', 0, 147, 20, 1, 12, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=0\nshow_title=0\nlink_titles=0\nshow_intro=0\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(160, 'mainmenu', 'Pergolas', 'pergolas', 'index.php?option=com_content&view=article&id=71', 'component', 0, 147, 20, 1, 13, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(161, 'mainmenu', 'Cladding', 'cladding', 'index.php?option=com_content&view=article&id=72', 'component', 0, 147, 20, 1, 14, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=0\nshow_title=0\nlink_titles=0\nshow_intro=0\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(162, 'mainmenu', 'Screens', 'screens', 'index.php?option=com_content&view=article&id=73', 'component', 0, 147, 20, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(163, 'mainmenu', 'Gates', 'gates', 'index.php?option=com_content&view=article&id=74', 'component', 0, 147, 20, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(164, 'mainmenu', 'Indoor', 'indoor', 'index.php?option=com_content&view=article&id=75', 'component', 0, 147, 20, 1, 16, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(165, 'mainmenu', 'Mezzanine Floors', 'mezzanine-floors', 'index.php?option=com_content&view=article&id=76', 'component', 0, 147, 20, 1, 18, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(167, 'mainmenu', 'Gates', 'gates', 'index.php?option=com_content&view=article&id=78', 'component', 1, 152, 20, 1, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(168, 'mainmenu', 'Log Homes', 'log-homes', 'index.php?option=com_content&view=article&id=79', 'component', 1, 173, 20, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(169, 'mainmenu', 'Timber Frame', 'timber-frames', 'index.php?option=com_content&view=article&id=80', 'component', 1, 173, 20, 2, 2, 62, '2014-10-18 05:15:42', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(170, 'mainmenu', 'Pergolas', 'pergolas', 'index.php?option=com_content&view=article&id=81', 'component', 1, 152, 20, 1, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(171, 'mainmenu', 'Screens', 'screens', 'index.php?option=com_content&view=article&id=82', 'component', 1, 152, 20, 1, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(172, 'mainmenu', 'Staircases', 'staircase', 'index.php?option=com_content&view=article&id=83', 'component', 1, 152, 20, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(173, 'mainmenu', 'Housing', 'housing', '', 'separator', 1, 152, 0, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(174, 'mainmenu', 'Balustrades', 'balustrades', 'index.php?option=com_content&view=article&id=85', 'component', 1, 152, 20, 1, 3, 62, '2014-10-18 05:16:58', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(179, 'othermenu', 'Housing', 'housing', 'products#house', 'url', 1, 0, 0, 0, 11, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(180, 'othermenu', 'Sundecks', 'sundecks', 'index.php?option=com_content&view=article&id=54', 'component', -2, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(181, 'othermenu', 'Balustrades', 'balustrades', 'http://www.timbermaster.co.za/index.php?option=com_content&view=article&id=57&Itemid=147#bal', 'url', -2, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(182, 'othermenu', 'Decks', 'deck', 'http://www.timbermaster.co.za/index.php?option=com_content&view=article&id=57&Itemid=147#decks', 'url', -2, 0, 0, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(183, 'othermenu', 'Other Services', 'other-services', 'index.php?option=com_content&view=article&id=57', 'component', -2, 0, 20, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(184, 'othermenu', 'Staircases', 'staircases', 'http://www.timbermaster.co.za/index.php?option=com_content&view=article&id=57&Itemid=147#stair', 'url', -2, 0, 0, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(185, 'othermenu', 'Pergolas', 'pergolas', 'http://www.timbermaster.co.za/index.php?option=com_content&view=article&id=57&Itemid=147#per', 'url', -2, 0, 0, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(186, 'othermenu', 'Screens', 'screens', 'http://www.timbermaster.co.za/index.php?option=com_content&view=article&id=57&Itemid=147#screen', 'url', -2, 0, 0, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(187, 'othermenu', 'Gates', 'gates', 'http://www.timbermaster.co.za/index.php?option=com_content&view=article&id=57&Itemid=147#gate', 'url', -2, 0, 0, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(188, 'othermenu', 'Housing', 'housing', 'http://www.timbermaster.co.za/index.php?option=com_content&view=article&id=57&Itemid=147#hous', 'url', -2, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(189, 'mainmenu', 'Sundecks', 'sundecks', 'index.php?option=com_content&view=article&id=54', 'component', 0, 0, 20, 0, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(190, 'mainmenu', 'Balustrades', 'balustrades', 'products#bal', 'url', 1, 147, 0, 1, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(191, 'mainmenu', 'Decks', 'deck', 'products#decks', 'url', 1, 147, 0, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(192, 'mainmenu', 'Other Services', 'other-services', 'index.php?option=com_content&view=article&id=57', 'component', 0, 0, 20, 0, 12, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(193, 'mainmenu', 'Staircases', 'staircases', 'products#stair', 'url', 1, 147, 0, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(194, 'mainmenu', 'Pergolas', 'pergolas', 'products#per', 'url', 1, 147, 0, 1, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(195, 'mainmenu', 'Screens', 'screens', 'products#screen', 'url', 1, 147, 0, 1, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(196, 'mainmenu', 'Gates', 'gates', 'products#gate', 'url', 1, 147, 0, 1, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(197, 'mainmenu', 'Housing', 'housing', 'products#house', 'url', 1, 147, 0, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
(201, 'mainmenu', 'Housing', 'housing', 'index.php?Itemid=197', 'menulink', 0, 147, 0, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_item=197\n\n', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu_types`
--

CREATE TABLE IF NOT EXISTS `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(225) NOT NULL DEFAULT '',
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `jos_menu_types`
--

INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'usermenu', 'User Menu', 'A Menu for logged in Users'),
(3, 'topmenu', 'Top Menu', 'Top level navigation'),
(4, 'othermenu', 'Other Menu', 'Additional links'),
(5, 'extra-menu', 'extra menu', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_messages`
--

CREATE TABLE IF NOT EXISTS `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` text NOT NULL,
  `cfg_value` text NOT NULL,
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`(100))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_migration_backlinks`
--

CREATE TABLE IF NOT EXISTS `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_modules`
--

CREATE TABLE IF NOT EXISTS `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(150) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(150) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=170 ;

--
-- Dumping data for table `jos_modules`
--

INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES
(1, 'Main Menu', '', 0, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=5\nshowAllChildren=1\nwindow_open=\nshow_whitespace=0\ncache=0\ntag_id=\nclass_sfx=\nmoduleclass_sfx=menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, ''),
(3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, ''),
(4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, ''),
(5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, ''),
(6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, ''),
(7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, ''),
(8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, ''),
(9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, ''),
(10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, ''),
(11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, ''),
(12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, ''),
(13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, ''),
(14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, ''),
(15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, ''),
(16, 'Polls', '', 16, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_poll', 0, 0, 1, 'id=14\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(17, 'User Menu', '', 15, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 1, 1, 'menutype=usermenu\nmenu_style=list\nstartLevel=0\nendLevel=5\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=0\ntag_id=\nclass_sfx=\nmoduleclass_sfx=menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(18, 'Login Form', '', 17, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, 'greeting=1\nname=0', 1, 0, ''),
(19, 'Latest News', '', 1, 'main-top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_latestnews', 0, 0, 1, 'count=5\nordering=c_dsc\nuser_id=0\nshow_front=1\nsecid=\ncatid=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 1, 0, ''),
(20, 'Statistics', '', 21, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_stats', 0, 0, 0, 'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(21, 'Who''s Online', '', 14, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_whosonline', 0, 0, 1, 'cache=0\nshowmode=0\nmoduleclass_sfx=black\n\n', 0, 0, ''),
(22, 'Popular', '', 3, 'main-top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_mostread', 0, 0, 1, 'moduleclass_sfx=\nshow_front=1\ncount=5\ncatid=\nsecid=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(23, 'Archive', '', 22, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_archive', 0, 0, 1, 'count=10\nmoduleclass_sfx=\ncache=1\n\n', 1, 0, ''),
(24, 'Sections', '', 23, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_sections', 0, 0, 1, 'count=5\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 1, 0, ''),
(25, 'Newsflash', '', 0, 'content9', 0, '0000-00-00 00:00:00', 0, 'mod_newsflash', 0, 0, 0, 'catid=29\nlayout=default\nimage=0\nlink_titles=\nshowLastSeparator=0\nreadmore=0\nitem_title=1\nitems=4\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(26, 'Related Items', '', 24, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_related_items', 0, 0, 1, '', 0, 0, ''),
(27, 'Search', '', 1, 'search', 0, '0000-00-00 00:00:00', 0, 'mod_search', 0, 0, 0, 'moduleclass_sfx=\nwidth=20\ntext=\nbutton=1\nbutton_pos=right\nimagebutton=\nbutton_text=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(28, 'Random Image', '', 12, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_random_image', 0, 0, 1, 'type=jpg\nfolder=\nlink=\nwidth=\nheight=\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(29, 'Top Menu', '', 0, 'topmenu', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 0, 'menutype=topmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=0\ntag_id=\nclass_sfx=\nmoduleclass_sfx=menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=-1\nindent_image2=-1\nindent_image3=-1\nindent_image4=-1\nindent_image5=-1\nindent_image6=-1\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(30, 'Banners', '', 0, 'banner', 0, '0000-00-00 00:00:00', 0, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=1\ncatid=33\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 1, 0, ''),
(32, 'Wrapper', '', 25, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_wrapper', 0, 0, 1, '', 0, 0, ''),
(33, 'Footer', '', 2, 'footer', 0, '0000-00-00 00:00:00', 0, 'mod_footer', 0, 0, 0, 'cache=1\n\n', 1, 0, ''),
(34, 'Feed Display', '', 26, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_feed', 0, 0, 1, '', 1, 0, ''),
(164, 'Core Design Login module', '', 27, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_cd_login', 0, 0, 1, 'greeting=1\n', 0, 0, ''),
(36, 'Syndication', '', 11, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_syndicate', 0, 0, 0, 'cache=0\ntext=Feed Entries\nformat=rss\nmoduleclass_sfx=\n\n', 1, 0, ''),
(42, 'What we do', '', 0, 'left', 62, '2014-10-18 07:37:30', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=othermenu\nmenu_style=list\nstartLevel=0\nendLevel=10\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=0\ntag_id=\nclass_sfx=\nmoduleclass_sfx=menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(154, 'Module Variations', 'This template comes with a wide variety of module stylings in many different shapes and colours.\r\n<p>\r\nTake a look at all the <a href="index.php?option=com_content&view=article&id=48&Itemid=58">different module variations</a>.\r\n</p>', 5, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=color\n\n', 0, 0, ''),
(41, 'Welcome to Joomla!', '<div style="padding: 5px"><p>Congratulations on choosing Joomla! as your content management system. We hope you are able to create a successful Web site with our program and maybe you will be able to give something back to the community later.</p><p>To make your start with Joomla! as smooth as possible, we want to give you some pointers to documentation, common questions and help on securing your server. A good place to start is the &quot;<a href="http://forum.joomla.org/index.php/topic,47524.0.html" target="_blank">Absolute Beginners Guide to Joomla!</a>&quot;.</p><p>For your most common questions the best place to start looking for answers is the <a href="http://help.joomla.org/component/option,com_easyfaq/Itemid,268/" target="_blank">Frequently Asked Questions (FAQ)</a> area.  If you are stuck on a particular screen in the Administration area of Joomla! (which is where you are now), then try clicking on the Help toolbar button which you will find on almost all screens.  This will take you to a page about that screen on our <a href="http://help.joomla.org" target="_blank">Help Site</a>.  If you still have questions then take a look on our <a href="http://forum.joomla.org" target="_blank">forum</a> which is most likely the biggest resource on Joomla! there is and you will find almost every question answered at least once, so please try using the search function before asking your question.</p><p>Security is a big concern for us, which is why we would like you to subscribe to the <a href="http://forum.joomla.org/index.php/board,8.0.html" target="_blank">announcement forum</a> (by clicking on the Notify button) to always get the latest information on new releases for Joomla! You should also read the <a href="http://help.joomla.org/component/option,com_easyfaq/task,view/id,167/Itemid,268/" target="_blank">Joomla! Administrator''s Security Checklist</a> and regularly check the <a href="http://forum.joomla.org/index.php/board,267.0.html" target="_blank">security forum</a>.</p><p>We hope you have much fun and success with Joomla! and hope to see you in the forum among the hundreds and thousands of contributors.</p><p>Your Joomla! team.<img alt="Smile" border="0" src="../plugins/editors/tinymce/jscripts/tiny_mce/plugins/emotions/images/smiley-smile.gif" title="Smile" /></p><p>P.S.: To remove this message, delete the &quot;Welcome to Joomla!&quot; Module in the Administrator screen of the Module Manager (on the Extensions menu).  Here is a <a href="index.php?option=com_modules&amp;client=1">quick link</a> to this screen.</p></div>', 1, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 2, 1, 'moduleclass_sfx=\n\n', 1, 1, ''),
(46, 'YOOlogin (Default)', '', 0, 'content1', 0, '0000-00-00 00:00:00', 1, 'mod_yoo_login', 0, 0, 0, 'style=default\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\ntext_mode=input\nlogin_button=icon\nlogout_button=text\nauto_remember=1\nlost_password=1\nlost_username=1\nregistration=1\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(161, 'Left Module', 'Set Module Class Suffix of the Module properties to "postit" to show up like this.', 19, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=postit\n\n', 0, 0, ''),
(167, 'Call Us', '<img src="images/stories/icons/callusbanner.jpg" />', 0, 'bottom', 62, '2014-10-15 07:26:35', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=-blank\n\n', 0, 0, ''),
(168, 'Map', '<br /><small><a href="https://maps.google.co.za/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Umhlali+Country+Club,+Umhlali,+4420&amp;aq=&amp;sll=-29.511928,31.226835&amp;sspn=0.056021,0.100336&amp;ie=UTF8&amp;hq=Umhlali+Country+Club,+Umhlali,&amp;hnear=KwaZulu-Natal+4420&amp;t=m&amp;ll=-29.51262,31.19533&amp;spn=0.09696,0.129189" style="color: #0000ff; text-align: left;">View Larger Map</a></small>', 0, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=frame\n\n', 0, 0, ''),
(52, 'Content Top 1', 'Set Module Class Suffix of the Module properties to "tab" to show up like this.', 0, 'content-top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(53, 'Content Top 2', 'Set Module Class Suffix of the Module properties to "tab" to show up like this.', 0, 'content-top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(156, 'Validating Code', '<p>This template validates to XHTML and CSS web standards and is designed to be compatible with all modern browsers.</p>\r\n<p>\r\n  <img class="correct-png" style="margin-right: 10px" src="images/yootheme/browser_firefox.png" alt="Firefox 3.0+" title="Firefox 3.0+" width="20" height="20" />\r\n  <img class="correct-png" style="margin-right: 10px" src="images/yootheme/browser_ie6.png" alt="Internet Explorer 6" title="Internet Explorer 6" width="20" height="20" />\r\n  <img class="correct-png" style="margin-right: 10px" src="images/yootheme/browser_ie7.png" alt="Internet Explorer 7" title="Internet Explorer 7" width="20" height="20" />\r\n  <img class="correct-png" style="margin-right: 10px" src="images/yootheme/browser_safari.png" alt="Safari 3.1+" title="Safari 3.1+" width="20" height="20" />\r\n  <img class="correct-png" style="margin-right: 10px" src="images/yootheme/browser_opera.png" alt="Opera 9.5+" title="Opera 9.5+" width="20" height="20" />\r\n  <img class="correct-png" style="margin-right: 10px" src="images/yootheme/browser_camino.png" alt="Camino 1.0+" title="Camino 1.0+" width="20" height="20" />\r\n  <img class="correct-png" style="margin-right: 10px" src="images/yootheme/browser_konqueror.png" alt="Konqueror" title="Konqueror" width="20" height="20" />\r\n  <img class="correct-png" style="margin-right: 10px" src="images/yootheme/browser_chrome.png" alt="Chrome 1.0+" title="Chrome 1.0+" width="20" height="20" />\r\n</p>', 9, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=frame\n\n', 0, 0, ''),
(155, 'Javascript Library', 'All client side effects use the JavaScript framework <a href="http://www.mootools.net" target="_blank">MooTools</a> which offers most reliable functionality and compact size!\r\n<p>\r\nWhich Mootools version is used? Check out the <a target="_blank" href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=92&Itemid=2">MooTools version guide</a>.\r\n</p>', 8, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=frame sticker-new\n\n', 0, 0, ''),
(56, 'YOOlogin (Quick)', '', 0, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_yoo_login', 0, 0, 0, 'style=niftyquick\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\ntext_mode=input\nlogin_button=icon\nlogout_button=icon\nauto_remember=1\nlost_password=1\nlost_username=1\nregistration=1\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(57, 'Content Bottom 1', 'Set Module Class Suffix of the Module properties to "tab" to show up like this.', 0, 'content-bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(58, 'Skyscraper', '<img class="correct-png" src="images/yootheme/banner_skyscraper.png" title="Place your banner here!" alt="Place your banner here!" />', 2, 'banner', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(59, 'Content Bottom 2', 'Set Module Class Suffix of the Module properties to "tab" to show up like this.', 0, 'content-bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(60, 'Badge', '<img class="correct-png" src="images/yootheme/banner_badge.png" title="WEB 2.0 inside!" alt="WEB 2.0 inside!" style="position: absolute; top: -15px;" />', 3, 'banner', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(61, 'Bottom 1', 'Lorem ipsum dolor sit amet. Set Module Class Suffix of the Module properties to "coloredborder" to show up like this.', 0, 'bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=coloredborder\n\n', 0, 0, ''),
(132, 'YOOtorials', '<a href="http://tutorials.yootheme.com" target="_blank" style="display: block; text-align: center">\r\n  <img class="correct-png" width="100" height="125" title="Take a look at the YOOtheme video tutorials" alt="Take a look at the YOOtheme video tutorials" src="images/yootheme/yootorials.png"/>\r\n</a>', 6, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=border sticker-top\n\n', 0, 0, ''),
(115, 'YOOtools', '<div style="overflow: hidden">\r\n<img class="correct-png" style="margin-left: 10px;" width="55" height="42" align="right" title="Native version for Joomla 1.5" alt="Native version for Joomla 1.5" src="images/yootheme/top_yootools.png" />This template is fully compatible with all <a href="http://www.yootools.com" target="_blank">YOOtools</a>\r\n</div>', 2, 'top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=coloredborder\n\n', 0, 0, ''),
(62, 'Bottom  2', 'Lorem ipsum dolor sit amet. Set Module Class Suffix of the Module properties to "coloredborder" to show up like this.', 2, 'bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=coloredborder\n\n', 0, 0, ''),
(114, 'Native 1.5 Version', '<div style="overflow: hidden">\r\n<img class="correct-png" style="margin-left: 10px;" width="42" height="42" align="right" title="Native version for Joomla 1.5" alt="Native version for Joomla 1.5" src="images/yootheme/top_joomla.png" />This template is only available as native version for Joomla 1.5.\r\n</div>', 0, 'top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=coloredborder\n\n', 0, 0, ''),
(63, 'Bottom  3', 'Lorem ipsum dolor sit amet. Set Module Class Suffix of the Module properties to "coloredborder" to show up like this.', 3, 'bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=coloredborder\n\n', 0, 0, ''),
(64, 'Bottom  4', 'Lorem ipsum dolor sit amet. Set Module Class Suffix of the Module properties to "coloredborder" to show up like this.', 4, 'bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=coloredborder\n\n', 0, 0, ''),
(113, 'Sliced Fireworks Files', '<div style="overflow: hidden">\r\n<img class="correct-png" style="margin-left: 10px;" width="42" height="40" align="right" title="Fully sliced Fireworks .png files" alt="Fully sliced Fireworks .png files" src="images/yootheme/top_fireworks.png" />Fully sliced Fireworks PNGs for customizations.\r\n</div>', 0, 'top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=coloredborder\n\n', 0, 0, ''),
(68, 'Left Module', 'Set Module Class Suffix of the Module properties to "polaroid" to show up like this.', 20, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=polaroid\n\n', 0, 0, ''),
(70, 'Module Class Suffixes', 'Possible Module Class Suffixes are:\r\n<ul>\r\n<li>grey</li>\r\n<li>black</li>\r\n<li>color</li>\r\n<li>coloredborder</li>\r\n<li>border</li>\r\n<li>dottedborder</li>\r\n<li>frame</li>\r\n<li>hover</li>\r\n<li>tab</li>\r\n<li>postit</li>\r\n<li>polaroid</li>\r\n<li>blank</li>\r\n</ul>\r\nThese Module Class Suffixes can be combined with additional suffixes to get a badge. You find more information in the right column.', 18, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=frame\n\n', 0, 0, ''),
(89, 'Top', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Set Module Class Suffix of the Module properties to "frame new" to show up like this.', 0, 'top', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=frame new\n\n', 0, 0, ''),
(72, 'Logo', '<a title="Home" href="index.php"><img alt="banner_1_copy" src="images/stories/banners/banner_1_copy.jpg" height="199" width="870" /><br /></a>', 0, 'logo', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=_blank\n\n', 0, 0, ''),
(136, 'Sample Flags', '<img src="images/yootheme/toolbar_flags.png" class="correct-png" width="123" height="15" alt="Languages" style="margin-top: 7px; float: right" />', 0, 'toolbar', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(73, 'Right Module', 'Set Module Class Suffix of the Module properties to "hover" to show up like this.', 0, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(74, 'Badge Suffixes', 'Following additional Module Class Suffixes can be added:\r\n<ul>\r\n<li>new</li>\r\n<li>top</li>\r\n<li>pick</li>\r\n<li>sticker-new</li>\r\n<li>sticker-hot</li>\r\n<li>sticker-top</li>\r\n</ul>\r\nExample Module Class Suffix code: "border new"', 0, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(75, 'Top 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do. Set Module Class Suffix of the Module properties to "grey" to show up like this.', 3, 'top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(76, 'Top 2', 'Lorem ipsum dolor sit amet. Set Module Class Suffix of the Module properties to "grey" to show up like this.', 5, 'top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(77, 'Top 3', 'Lorem ipsum dolor sit amet. Set Module Class Suffix of the Module properties to "grey top" to show up like this.', 6, 'top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=grey top\n\n', 0, 0, ''),
(78, 'Top 4', 'Lorem ipsum dolor sit amet. Set Module Class Suffix of the Module properties to "grey pick" to show up like this.', 7, 'top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=grey pick\n\n', 0, 0, ''),
(121, 'Bottom (YOOtools)', '<center>\r\n<a href="http://tools.yootheme.com" target="_blank">\r\n  <img class="correct-png" style="margin-top: 15px;" src="images/yootheme/bottom_yootools.png" alt="Visit the YOOtools website!" title="Visit the YOOtools website!" width="127" height="33" />\r\n</a>\r\n</center>', 6, 'bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=dottedborder\n\n', 0, 0, ''),
(122, 'Our Project Portfolio', 'View our extensive portfolio of recent jobs..<br />\r\n<p class="readmore"><a class="readmore" href="index.php?option=com_content&amp;view=article&amp;id=58&amp;Itemid=152">Read more...</a></p>', 2, 'main-bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=frame sticker-new\n\n', 0, 0, ''),
(123, 'Get a Quote Today!', 'Looking to spruce up your surrounds, or build something entirely new. Call us today..<br />\r\n<p class="readmore"><a class="readmore" href="index.php?option=com_content&amp;view=article&amp;id=60&amp;Itemid=154">Read more...</a></p>', 3, 'main-bottom-equal', 62, '2014-10-20 05:58:07', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=frame\n\n', 0, 0, ''),
(82, 'Footer', '<div id="footer">\r\n<div align="center">Copyright © 2011 Timber Master | <a href="index.php?option=com_content&amp;view=article&amp;id=67">Legal Disclaimer</a> </div>\r\n</div>', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(83, 'Main Top 1', '<div style="overflow: hidden">\r\n<img style="margin: 5px 10px 0px 0px" class="correct-png" src="images/yootheme/module_monitor.png" alt="" align="left" />Lorem ipsum dolor sit amet. Set Module Class Suffix of the Module properties to "border" to show up like this.\r\n</div>', 4, 'main-top-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(158, 'Bottom (YOOtorials)', '<center>\r\n<a href="http://tutorials.yootheme.com" target="_blank">\r\n  <img class="correct-png" style="margin-top: 15px;" src="images/yootheme/bottom_yootorials.png" alt="Visit the YOOtorials website!" title="Visit the YOOtorials website!" width="145" height="33" />\r\n</a>\r\n</center>', 7, 'bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=dottedborder\n\n', 0, 0, ''),
(87, 'Other Menu', '', 13, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=othermenu\nmenu_style=list\nstartLevel=0\nendLevel=5\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=0\ntag_id=\nclass_sfx=\nmoduleclass_sfx=menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(84, 'Main Top 2', '<div style="overflow: hidden">\r\n<img style="margin: 5px 10px 0px 0px" class="correct-png" src="images/yootheme/module_trash.png" alt="" align="left" />Lorem ipsum dolor sit amet, consectetur adipisicing elit. Set Module Class Suffix of the Module properties to "dottedborder" to show up like this.\r\n</div>', 5, 'main-top-equal', 62, '2009-02-20 11:24:41', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=dottedborder\n\n', 0, 0, ''),
(85, 'Main Bottom 1', '<div style="overflow: hidden;"><img style="margin: 10px 10px 0px 0px" class="correct-png" src="images/yootheme/module_hi.png" alt=" " align="left" /> Lorem ipsum dolor sit amet, consectetur. Set Module Class Suffix of the Module properties to "black" to show up like this.</div>', 4, 'main-bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=black\n\n', 0, 0, ''),
(86, 'Main Bottom 2', '<div style="overflow: hidden;"><img style="margin: 10px 10px 0px 0px" class="correct-png" src="images/yootheme/module_paper.png" alt=" " align="left" />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod. Set Module Class Suffix of the Module properties to "color" to show up like this.</div>', 5, 'main-bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=color\n\n', 0, 0, ''),
(117, 'Banners', '', 0, 'top', 62, '2014-10-18 06:53:46', 1, 'mod_yoo_carousel', 0, 0, 0, 'catid=36\nstyle=slideshow\nmodule_width=870\nmodule_height=431\ntab_width=0\nautoplay=on\nslide_interval=5000\ntransition_duration=700\ntransition_effect=crossfade\ncontrol_panel=none\nrotate_action=mouseover\nrotate_duration=200\nrotate_effect=crossfade\nbuttons=0\norder=o_asc\nreadmore=0\nitems=5\nmoduleclass_sfx=blank\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(91, 'Bottom', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Set Module Class Suffix of the Module properties to "frame" to show up like this.', 0, 'bottom', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=frame\n\n', 0, 0, ''),
(157, 'PNG Fix for IE6', '<p>As only IE7 and higher versions support PNG transparency this template includes a PNG fix for IE up to version 6.x.</p>\r\n\r\n<p><a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=145&Itemid=2" target="_blank">Learn how to use the PNG fix on images in your content</a>.</p>\r\n<p><a href="http://tutorials.yootheme.com/index.php?option=com_mtree&task=viewlink&link_id=142&Itemid=2" target="_blank">Learn how to use the advanced IE6 PNG fix inside the template CSS.</a>.</p>', 10, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=black\n\n', 0, 0, ''),
(125, 'YOOsearch', '', 2, 'search', 62, '2014-10-20 07:58:10', 1, 'mod_yoo_search', 0, 0, 0, 'field_text=search...\nbox_width=400\nchar_limit=130\nres_limit=6\ncat_limit=6\ncategories={cat\\ntitle=[YOOtheme]\\nimage=[yootheme/yoosearch/yootheme.png]\\nurl=[http://www.yootheme.com]\\nkeywords=[yootheme, template, templates, themes, theme]\\n}The YOOtheme template club for Joomla 1.0 and 1.5 offers stylish templates with professional Web 2.0 features.{/cat}\\n\\n{cat\\ntitle=[YOOtools]\\nimage=[yootheme/yoosearch/yootools.png]\\nurl=[http://www.yootools.com]\\nkeywords=[yootheme, yootools, features, feature, yoospotlight, yooreflection, yoolightbox, yoocarousel, yooaccordion, yooslider, yoodrawer, yooscroller, yoomaps, yoosearch, yooeffects, yootoppanel, yoologin, yootooltip, yoosnapshots, spotlight, reflection, lightbox, carousel, accordion, slider, drawer, scroller, maps, search, effects, toppanel, login, tooltip, snapshots]}The YOOtools are new YOOtheme extensions for Joomla 1.0 and 1.5. Exclusive YOOtheme modules, compontent and plugins!{/cat}\\n\\n{cat\\ntitle=[Typography]\\nurl=[index.php?option=com_content&amp;view=article&amp;id=46&amp;Itemid=55]\\nimage=[yootheme/yoosearch/typography.png]\\nkeywords=[typography, joomla, style, stylings, HTML, tag]\\n}Take a look at the typography, the style guide and learn all about the possible HTML tag stylings of this YOOtheme templates.{/cat}\\n\\n{cat\\ntitle=[Layout]\\nimage=[yootheme/yoosearch/layout.png]\\nurl=[index.php?option=com_content&amp;view=article&amp;id=47&amp;Itemid=56]\\nkeywords=[layout, joomla, module, position, positions, variation, variations]\\n}Take a look at the layout options and all possible module positions and variations of this YOOtheme template.{/cat}\\n\\n{cat\\ntitle=[Joomla]\\nimage=[yootheme/yoosearch/joomla.png]\\nurl=[index.php?option=com_content&amp;view=frontpage&amp;Itemid=1]\\nkeywords=[joomla]\\n}Take a look at how this YOOtheme template styles the Joomla core articles, components and modules.{/cat}\n\n', 0, 0, ''),
(118, 'Bottom (YOOtheme)', '<center>\r\n<a href="http://www.yootheme.com" target="_blank">\r\n  <img class="correct-png" style="margin-top: 15px;" src="images/yootheme/bottom_yootheme.png" alt="Visit the YOOtheme website!" title="Visit the YOOtheme website!" width="150" height="33" />\r\n</a>\r\n</center>', 5, 'bottom-equal', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=dottedborder\n\n', 0, 0, ''),
(124, 'Additional Services', 'From residential wood decks to balustrades, we can do it all..\r\n<p class="readmore"><a class="readmore" href="index.php?option=com_content&amp;view=article&amp;id=61">Read more...</a></p>', 0, 'main-bottom-equal', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=frame\n\n', 0, 0, ''),
(134, 'YOOiecheck', '', 15, 'absolute', 0, '0000-00-00 00:00:00', 1, 'mod_yoo_iecheck', 0, 0, 0, 'message=You are using Internet Explorer 6. Please upgrade your browser to increase safety and your browsing experience. Choose one of the following links to download a modern browser:\nfirefox=1\nsafari=1\nopera=1\nie=1\nmoduleclass_sfx=-blank\n\n', 0, 0, ''),
(151, 'Fireworks Files', '<div style="overflow: hidden;">\r\n<img height="40" width="42" align="right" src="/YOOtheme/Templates/Next/Website/images/yootheme/top_fireworks.png" alt="Fully sliced Fireworks .png files" title="Fully sliced Fireworks .png files" style="margin-left: 10px;" class="correct-png"/>Fully sliced Fireworks PNGs for customizations.\r\n</div>', 6, 'main-top-equal', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(150, 'YOOtools', '<div style="overflow: hidden">\r\n<img class="correct-png" style="margin-left: 10px;" width="55" height="42" align="right" title="Native version for Joomla 1.5" alt="Native version for Joomla 1.5" src="images/yootheme/top_yootools.png" />This template is fully compatible with all <a href="http://www.yootools.com" target="_blank">YOOtools</a>\r\n</div>', 7, 'main-top-equal', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(162, 'Latest News', '', 0, 'header-right', 0, '0000-00-00 00:00:00', 1, 'mod_latestnews', 0, 0, 0, 'count=5\nordering=c_dsc\nuser_id=0\nshow_front=1\nsecid=\ncatid=29\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(165, 'mod_form (Provided by com_form)', '', 0, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_form', 0, 0, 1, '', 0, 0, ''),
(166, 'Logo Banner', '<img src="images/stories/logobanner/timbermasterlogobanner.jpg" />', 0, 'logo', 62, '2014-10-15 07:26:32', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(169, 'JCE File Browser', '', 100, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_jcefilebrowser', 0, 2, 1, '', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_modules_menu`
--

CREATE TABLE IF NOT EXISTS `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_modules_menu`
--

INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(19, 2),
(19, 27),
(19, 50),
(21, 53),
(22, 1),
(22, 2),
(22, 27),
(22, 50),
(25, 0),
(27, 0),
(29, 0),
(30, 0),
(32, 0),
(33, 0),
(34, 0),
(36, 0),
(39, 43),
(39, 44),
(39, 45),
(39, 46),
(39, 47),
(40, 0),
(42, 53),
(42, 146),
(42, 147),
(42, 153),
(42, 154),
(46, 0),
(52, 58),
(53, 58),
(56, 0),
(57, 58),
(58, 58),
(59, 58),
(60, 1),
(60, 20),
(60, 24),
(60, 48),
(60, 49),
(60, 51),
(60, 52),
(60, 53),
(60, 54),
(60, 55),
(60, 56),
(60, 75),
(60, 76),
(60, 77),
(60, 78),
(60, 79),
(60, 80),
(60, 95),
(60, 96),
(60, 97),
(60, 98),
(60, 99),
(60, 100),
(60, 101),
(61, 58),
(62, 58),
(63, 58),
(64, 58),
(68, 58),
(70, 56),
(70, 58),
(72, 0),
(73, 58),
(74, 58),
(75, 58),
(76, 58),
(77, 58),
(78, 58),
(82, 0),
(83, 58),
(84, 58),
(85, 58),
(86, 58),
(87, 54),
(89, 58),
(91, 58),
(113, 54),
(114, 54),
(115, 54),
(117, 0),
(118, 1),
(118, 20),
(118, 24),
(118, 48),
(118, 49),
(118, 51),
(118, 52),
(118, 54),
(118, 55),
(118, 56),
(118, 95),
(118, 96),
(118, 97),
(118, 98),
(118, 99),
(118, 100),
(118, 101),
(118, 134),
(118, 135),
(118, 136),
(118, 138),
(118, 140),
(118, 141),
(118, 142),
(118, 145),
(121, 1),
(121, 20),
(121, 24),
(121, 48),
(121, 49),
(121, 51),
(121, 52),
(121, 54),
(121, 55),
(121, 56),
(121, 95),
(121, 96),
(121, 97),
(121, 98),
(121, 99),
(121, 100),
(121, 101),
(121, 134),
(121, 135),
(121, 136),
(121, 138),
(121, 140),
(121, 141),
(121, 142),
(121, 145),
(122, 53),
(122, 154),
(123, 53),
(123, 154),
(124, 0),
(125, 0),
(132, 53),
(134, 0),
(136, 0),
(150, 53),
(151, 53),
(154, 54),
(155, 54),
(156, 54),
(157, 54),
(158, 1),
(158, 20),
(158, 24),
(158, 48),
(158, 49),
(158, 51),
(158, 52),
(158, 54),
(158, 55),
(158, 56),
(158, 95),
(158, 96),
(158, 97),
(158, 98),
(158, 99),
(158, 100),
(158, 101),
(158, 134),
(158, 135),
(158, 136),
(158, 138),
(158, 140),
(158, 141),
(158, 142),
(158, 145),
(161, 58),
(162, 0),
(164, 0),
(166, 0),
(167, 0),
(168, 0),
(169, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `jos_newsfeeds`
--

INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES
(4, 1, 'Joomla! - Official News', 'joomla-official-news', 'http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_frontpage&Itemid=1', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 8, 0),
(4, 2, 'Joomla! - Community News', 'joomla-community-news', 'http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_content&task=blogcategory&id=0&Itemid=33', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 9, 0),
(6, 3, 'Linux Today', 'linux-today', 'http://linuxtoday.com/backend/my-netscape.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(5, 4, 'Business News', 'business-news', 'http://headlines.internet.com/internetnews/bus-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(5, 5, 'Web Developer News', 'web-developer-news', 'http://headlines.internet.com/internetnews/wd-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(6, 6, 'Linux Central:New Products', 'linux-central-news-products', 'http://linuxcentral.com/backend/lcnew.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(6, 7, 'Linux Central:Best Selling', 'linux-central-best-selling', 'http://linuxcentral.com/backend/lcbestns.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(6, 8, 'Linux Central:Daily Specials', 'linux-central-daily-specials', 'http://linuxcentral.com/backend/lcspecialns.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_plugins`
--

CREATE TABLE IF NOT EXISTS `jos_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `element` text NOT NULL,
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `jos_plugins`
--

INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
(3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n'),
(6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
(7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
(13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n'),
(15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n'),
(17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n'),
(18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Editor - TinyMCE 2.0', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n'),
(20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n'),
(27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n'),
(29, 'System - Legacy', 'legacy', 'system', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n'),
(30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n'),
(31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(35, 'YOOeffects', 'yoo_effects', 'system', 0, 0, 1, 0, 0, 62, '2008-03-27 22:08:03', 'lightbox=1\nreflection=1\nspotlight=1\ngzip=1\n'),
(36, 'System - Core Design Login Confirmation plugin', 'cdloginconfirmation', 'system', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(37, 'System - Core Design Scriptegrator plugin', 'cdscriptegrator', 'system', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'jquery=3\nhighslide=3\ncompression=1\noutlineType=rounded-white\noutlineWhileAnimating=1\nshowCredits=1\nexpandDuration=250\nanchor=auto\nalign=auto\ntransitions=expand\ndimmingOpacity=0\n\n'),
(38, 'Editor - JCE 1.5.6', 'jce', 'editors', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(39, 'System - jSecure Authentication', 'jsecure', 'system', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'key=peace\noptions=0\ncustom_path=plugins/system/404.html\n\n'),
(40, 'Simple Image Gallery PRO (by JoomlaWorks)', 'jw_sigpro', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'galleries_rootfolder=images/stories\npopup_engine=jquery_slimbox\nthb_template=Default\nthb_width=180\nthb_height=150\nkeepratio=0\njpg_quality=75\nsinglethumbmode=0\nsortorder=0\nshowcaptions=0\nwordlimit=\nenabledownload=0\nloadmoduleposition=\ncache_expire_time=120\ndebugMode=0\n\n'),
(41, 'Blue Flame Framework inc. xAJAX', 'xajax', 'system', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(42, 'contentform (Used By com_form )', 'contentform', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(43, 'System - Mootools Upgrade', 'mtupgrade', 'system', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(44, 'Security - jHackGuard', 'jhackguard', 'system', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'log_file=jhackguard-log.php\nlogging=1\ncheck_post=1\ncheck_get=1\ncheck_cookies=1\ncheck_eval=1\ncheck_base64=1\ncheck_sql=1\ncheck_urlfopen=0\ncheck_urlinclude=0\nlink_sg_back=1\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `jos_polls`
--

CREATE TABLE IF NOT EXISTS `jos_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `jos_polls`
--

INSERT INTO `jos_polls` (`id`, `title`, `alias`, `voters`, `checked_out`, `checked_out_time`, `published`, `access`, `lag`) VALUES
(14, 'Joomla! is used for?', 'joomla-is-used-for', 11, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_data`
--

CREATE TABLE IF NOT EXISTS `jos_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `jos_poll_data`
--

INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES
(1, 14, 'Community Sites', 2),
(2, 14, 'Public Brand Sites', 3),
(3, 14, 'eCommerce', 1),
(4, 14, 'Blogs', 0),
(5, 14, 'Intranets', 0),
(6, 14, 'Photo and Media Sites', 2),
(7, 14, 'All of the Above!', 3),
(8, 14, '', 0),
(9, 14, '', 0),
(10, 14, '', 0),
(11, 14, '', 0),
(12, 14, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_date`
--

CREATE TABLE IF NOT EXISTS `jos_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `jos_poll_date`
--

INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES
(1, '2006-10-09 13:01:58', 1, 14),
(2, '2006-10-10 15:19:43', 7, 14),
(3, '2006-10-11 11:08:16', 7, 14),
(4, '2006-10-11 15:02:26', 2, 14),
(5, '2006-10-11 15:43:03', 7, 14),
(6, '2006-10-11 15:43:38', 7, 14),
(7, '2006-10-12 00:51:13', 2, 14),
(8, '2007-05-10 19:12:29', 3, 14),
(9, '2007-05-14 14:18:00', 6, 14),
(10, '2007-06-10 15:20:29', 6, 14),
(11, '2007-07-03 12:37:53', 2, 14);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_menu`
--

CREATE TABLE IF NOT EXISTS `jos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_sections`
--

CREATE TABLE IF NOT EXISTS `jos_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(90) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jos_sections`
--

INSERT INTO `jos_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES
(4, 'Joomla!', '', 'joomla', 'powered_by.png', 'content', 'right', 'As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.', 1, 0, '0000-00-00 00:00:00', 1, 0, 21, ''),
(5, 'YOOtheme', '', 'yootheme', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 2, 0, 21, ''),
(6, 'Banner', '', 'banner', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 3, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_session`
--

CREATE TABLE IF NOT EXISTS `jos_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(150) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_session`
--

INSERT INTO `jos_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES
('', '1413895405', '024bf254ec2f3976b591ecd3e68f56c4', 1, 0, '', 0, 0, NULL),
('', '1413895880', 'c5047dbbb062e0f82a578f99829da248', 1, 0, '', 0, 1, NULL),
('admin', '1413895927', '59b6fd2c9b50d3812cbd5f40be8f75ea', 0, 62, 'Super Administrator', 25, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jos_stats_agents`
--

CREATE TABLE IF NOT EXISTS `jos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_templates_menu`
--

CREATE TABLE IF NOT EXISTS `jos_templates_menu` (
  `template` text NOT NULL,
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`(255))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_templates_menu`
--

INSERT INTO `jos_templates_menu` (`template`, `menuid`, `client_id`) VALUES
('yoo_scoop', 0, 0),
('khepri', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_users`
--

CREATE TABLE IF NOT EXISTS `jos_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(75) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`(255)),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=154 ;

--
-- Dumping data for table `jos_users`
--

INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(62, 'Administrator', 'admin', 'nick@page-one.co.za', '9ccfff769a6db4d98f19cbe963b6d78a:49AXXxt446P9VXwPJYoqVGJhu7zFb8am', 'Super Administrator', 0, 1, 25, '2011-04-23 07:31:01', '2014-10-21 12:51:20', '', 'admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=2\n\n'),
(152, 'pierces5555', 'pierces5555', 'inciteur@outlook.com', '9cb4c3ba30306954af0c97c2409a111c:OBKyedWvDV8Mq9vagFmpLD9lv1k3becj', 'Registered', 0, 0, 18, '2014-09-25 16:18:10', '2014-09-29 15:53:57', '', '\n'),
(153, 'tanzimr4444', 'tanzimr4444', 'oasistheo@outlook.com', '598e648ca97b27f1c2361b695508d17a:x39USqCPumhei4KjmCdfaiUwbuZ4nKOn', 'Registered', 0, 0, 18, '2014-09-26 05:11:13', '2014-09-30 14:15:13', '', '\n');

-- --------------------------------------------------------

--
-- Table structure for table `jos_weblinks`
--

CREATE TABLE IF NOT EXISTS `jos_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jos_weblinks`
--

INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES
(1, 2, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', 'Home of Joomla!', '2005-02-14 15:19:02', 3, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=0'),
(2, 2, 0, 'php.net', 'php', 'http://www.php.net', 'The language that Joomla! is developed in', '2004-07-07 11:33:24', 6, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, ''),
(3, 2, 0, 'MySQL', 'mysql', 'http://www.mysql.com', 'The database that Joomla! uses', '2004-07-07 10:18:31', 1, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, ''),
(4, 2, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', 'Home of OSM', '2005-02-14 15:19:02', 11, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 'target=0'),
(5, 2, 0, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', 'Joomla! Forums', '2005-02-14 15:19:02', 4, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 'target=0'),
(6, 2, 0, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', 'Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.', '2007-07-19 09:28:31', 1, 1, 0, '0000-00-00 00:00:00', 6, 0, 1, 'target=0\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `jos_wf_profiles`
--

CREATE TABLE IF NOT EXISTS `jos_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jos_wf_profiles`
--

INSERT INTO `jos_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '19,20,21,23,24,25', '', 0, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect,fontselect,fontsizeselect,fontcolor', 1, 1, 0, '0000-00-00 00:00:00', ''),
(2, 'Front End', 'Sample Front-end Profile', '', '19,20,21', '', 1, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect', 0, 2, 0, '0000-00-00 00:00:00', ''),
(3, 'Blogger', 'Simple Blogging Profile', '', '19,20,21,23,24,25', '', 0, 'desktop,tablet,phone', 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,styleselect,underline,justifyfull,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists,formatselect,styleselect', 0, 3, 0, '0000-00-00 00:00:00', '{"editor":{"toggle":"0"}}'),
(4, 'Mobile', 'Sample Mobile Profile', '', '19,20,21,23,24,25', '', 0, 'tablet,phone', 'undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink', 'fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists,formatselect,styleselect', 0, 4, 0, '0000-00-00 00:00:00', '{"editor":{"toolbar_theme":"mobile","resizing":"0","resize_horizontal":"0","resizing_use_cookie":"0","toggle":"0","links":{"popups":{"default":"","jcemediabox":{"enable":"0"},"window":{"enable":"0"}}}}}'),
(5, 'Copy of Default', 'Default group for all users with edit access', '', '19,20,21,23,24,25', '', 0, '', 'help,newdocument,bold,italic,underline,fontselect,fontsizeselect,styleselect,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,formatselect;pasteword,pastetext,searchreplace,forecolor,backcolor,unlink,indent,outdent,undo,redo,lists,,clipboard,anchor,cleanup;directionality,emotions,fullscreen,preview,table,print,hr,sub,sup,visualaid,charmap,removeformat;style,nonbreaking,visualchars,xhtmlxtras,imgmanager,link,spellchecker,source,article', 'anchor,lists,charmap,contextmenu,browser,inlinepopups,media,safari,help,clipboard,searchreplace,directionality,emotions,fullscreen,preview,table,print,style,nonbreaking,visualchars,xhtmlxtras,imgmanager,link,spellchecker,source,article', 1, 1, 0, '0000-00-00 00:00:00', '{"lists":{"buttons":["numlist","bullist"]}}'),
(6, 'Copy of Front End', 'Sample Group for Authors, Editors, Publishers', '', '19,20,21', '', 1, '', 'help,newdocument,bold,italic,underline,styleselect,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,formatselect,undo,redo;pasteword,pastetext,searchreplace,indent,outdent,lists,,clipboard,cleanup,hr,sub,sup,charmap,removeformat,nonbreaking,visualchars;unlink,anchor,fullscreen,preview,print,visualaid,style,xhtmlxtras,imgmanager,link,spellchecker,source,article', 'anchor,lists,charmap,help,clipboard,searchreplace,nonbreaking,visualchars,contextmenu,inlinepopups,safari,fullscreen,preview,print,style,xhtmlxtras,imgmanager,link,spellchecker,source,article', 0, 2, 0, '0000-00-00 00:00:00', '{"lists":{"buttons":["numlist","bullist"]}}');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_admintools_acl`
--

CREATE TABLE IF NOT EXISTS `kqt1o_admintools_acl` (
  `user_id` bigint(20) unsigned NOT NULL,
  `permissions` mediumtext,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_admintools_adminiplist`
--

CREATE TABLE IF NOT EXISTS `kqt1o_admintools_adminiplist` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_admintools_badwords`
--

CREATE TABLE IF NOT EXISTS `kqt1o_admintools_badwords` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_admintools_cookies`
--

CREATE TABLE IF NOT EXISTS `kqt1o_admintools_cookies` (
  `series` varchar(255) NOT NULL,
  `client_hash` varchar(255) NOT NULL,
  `valid_to` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`series`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_admintools_customperms`
--

CREATE TABLE IF NOT EXISTS `kqt1o_admintools_customperms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `perms` varchar(4) DEFAULT '0644',
  UNIQUE KEY `id` (`id`),
  KEY `path` (`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_admintools_filescache`
--

CREATE TABLE IF NOT EXISTS `kqt1o_admintools_filescache` (
  `admintools_filescache_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` varchar(2048) NOT NULL,
  `filedate` int(11) NOT NULL DEFAULT '0',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `data` blob,
  `checksum` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`admintools_filescache_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_admintools_ipautoban`
--

CREATE TABLE IF NOT EXISTS `kqt1o_admintools_ipautoban` (
  `ip` varchar(255) NOT NULL,
  `reason` varchar(255) DEFAULT 'other',
  `until` datetime DEFAULT NULL,
  UNIQUE KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_admintools_ipautobanhistory`
--

CREATE TABLE IF NOT EXISTS `kqt1o_admintools_ipautobanhistory` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) NOT NULL,
  `reason` varchar(255) DEFAULT 'other',
  `until` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_admintools_ipblock`
--

CREATE TABLE IF NOT EXISTS `kqt1o_admintools_ipblock` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_admintools_log`
--

CREATE TABLE IF NOT EXISTS `kqt1o_admintools_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `logdate` datetime NOT NULL,
  `ip` varchar(40) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `reason` enum('other','adminpw','ipwl','ipbl','sqlishield','antispam','tpone','tmpl','template','muashield','csrfshield','badbehaviour','geoblocking','rfishield','dfishield','uploadshield','xssshield','httpbl','loginfailure','securitycode','external','awayschedule','admindir') DEFAULT NULL,
  `extradata` mediumtext,
  UNIQUE KEY `id` (`id`),
  KEY `idx_admintools_log_logdate_reason` (`logdate`,`reason`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_admintools_profiles`
--

CREATE TABLE IF NOT EXISTS `kqt1o_admintools_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `configuration` longtext,
  `filters` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kqt1o_admintools_profiles`
--

INSERT INTO `kqt1o_admintools_profiles` (`id`, `description`, `configuration`, `filters`) VALUES
(1, 'Default PHP Change Scanner Profile', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_admintools_redirects`
--

CREATE TABLE IF NOT EXISTS `kqt1o_admintools_redirects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `source` varchar(255) DEFAULT NULL,
  `dest` varchar(255) DEFAULT NULL,
  `ordering` bigint(20) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `keepurlparams` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_admintools_scanalerts`
--

CREATE TABLE IF NOT EXISTS `kqt1o_admintools_scanalerts` (
  `admintools_scanalert_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` varchar(2048) NOT NULL,
  `scan_id` bigint(20) NOT NULL DEFAULT '0',
  `diff` mediumtext,
  `threat_score` int(11) NOT NULL DEFAULT '0',
  `acknowledged` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`admintools_scanalert_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_admintools_scans`
--

CREATE TABLE IF NOT EXISTS `kqt1o_admintools_scans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `comment` longtext,
  `backupstart` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `backupend` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('run','fail','complete') NOT NULL DEFAULT 'run',
  `origin` varchar(30) NOT NULL DEFAULT 'backend',
  `type` varchar(30) NOT NULL DEFAULT 'full',
  `profile_id` bigint(20) NOT NULL DEFAULT '1',
  `archivename` longtext,
  `absolute_path` longtext,
  `multipart` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(255) DEFAULT NULL,
  `backupid` varchar(255) DEFAULT NULL,
  `filesexist` tinyint(3) NOT NULL DEFAULT '1',
  `remote_filename` varchar(1000) DEFAULT NULL,
  `total_size` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_fullstatus` (`filesexist`,`status`),
  KEY `idx_stale` (`status`,`origin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_admintools_storage`
--

CREATE TABLE IF NOT EXISTS `kqt1o_admintools_storage` (
  `key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kqt1o_admintools_storage`
--

INSERT INTO `kqt1o_admintools_storage` (`key`, `value`) VALUES
('cparams', '{"dirperms":"0755","fileperms":"0644"}'),
('fixperms_stack', '{"folders":[],"files":[],"total":0,"done":0}');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_admintools_wafexceptions`
--

CREATE TABLE IF NOT EXISTS `kqt1o_admintools_wafexceptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_admintools_waftemplates`
--

CREATE TABLE IF NOT EXISTS `kqt1o_admintools_waftemplates` (
  `admintools_waftemplate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reason` varchar(255) NOT NULL,
  `language` varchar(10) NOT NULL DEFAULT '*',
  `subject` varchar(255) NOT NULL,
  `template` text NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `email_num` tinyint(3) unsigned NOT NULL,
  `email_numfreq` tinyint(3) unsigned NOT NULL,
  `email_freq` enum('','second','minute','hour','day') NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`admintools_waftemplate_id`),
  UNIQUE KEY `admintools_waftemplate_keylang` (`reason`,`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `kqt1o_admintools_waftemplates`
--

INSERT INTO `kqt1o_admintools_waftemplates` (`admintools_waftemplate_id`, `reason`, `language`, `subject`, `template`, `enabled`, `email_num`, `email_numfreq`, `email_freq`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'all', '*', 'Security exception on [SITENAME]', '<div style="background-color: #e0e0e0; padding: 10px 20px;">\r\n<div style="background-color: #f9f9f9; border-radius: 10px; padding: 5px 10px;">\r\n<p>Hello,</p>\r\n<p>We would like to notify you that a security exception was detected on your site, [SITENAME], with the following details:</p>\r\n<p>IP Address: [IP] (IP Lookup: [LOOKUP])<br />Reason: [REASON]</p>\r\n<p>If this kind of security exception repeats itself, please log in to your site''s back-end and add this IP address to your Admin Tools''s Web Application Firewall feature in order to completely block the misbehaving user.</p>\r\n<p>Best regards,</p>\r\n<p>The [SITENAME] team</p>\r\n</div>\r\n<p style="font-size: x-small; color: #667;">You are receiving this automatic email message because you have a subscription in <em>[SITENAME]</em>. <span style="line-height: 1.3em;">Do not reply to this email, it''s sent from an unmonitored email address.</span></p>\r\n</div>\r\n<p style="text-align: right; font-size: 7pt; color: #ccc;">Powered by <a style="color: #ccf; text-decoration: none;" href="https://www.akeebabackup.com/products/admin-tools.html">Akeeba AdminTools</a></p>', 1, 5, 1, 'hour', '2014-04-14 14:36:34', 800, '2014-04-14 14:42:38', 800),
(2, 'user-reactivate', '*', 'User deactivated on [SITENAME]', '<div style="background-color: #e0e0e0; padding: 10px 20px;">\r\n<div style="background-color: #f9f9f9; border-radius: 10px; padding: 5px 10px;">\r\n<p>Hello,</p>\r\n<p>on [DATE] the user [USER] has been de-activated since he failed too many logins (recorded IP: [IP]).</p>\r\n<p>Please click on the following link to activate the user again:<br />[ACTIVATE]</p>\r\n<p>If this kind of security exception repeats itself, please log in to your site''s back-end and add this IP address to your Admin Tools''s Web Application Firewall feature in order to completely block the misbehaving user.</p>\r\n<p>Best regards,</p>\r\n<p>The [SITENAME] team</p>\r\n</div>\r\n<p style="font-size: x-small; color: #667;">You are receiving this automatic email message because you have a subscription in <em>[SITENAME]</em>. <span style="line-height: 1.3em;">Do not reply to this email, it''s sent from an unmonitored email address.</span></p>\r\n</div>\r\n<p style="text-align: right; font-size: 7pt; color: #ccc;">Powered by <a style="color: #ccf; text-decoration: none;" href="https://www.akeebabackup.com/products/admin-tools.html">Akeeba AdminTools</a></p>', 1, 0, 0, '', '2014-04-24 14:44:49', 800, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_akeeba_common`
--

CREATE TABLE IF NOT EXISTS `kqt1o_akeeba_common` (
  `key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kqt1o_akeeba_common`
--

INSERT INTO `kqt1o_akeeba_common` (`key`, `value`) VALUES
('stats_siteurl', '85da0d22aae8cb829a568fa804d2ecb0'),
('stats_siteid', '94b9ec55bd9041caf9e7be93612979f39d743a63'),
('stats_lastrun', '1416372285');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_assets`
--

CREATE TABLE IF NOT EXISTS `kqt1o_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- Dumping data for table `kqt1o_assets`
--

INSERT INTO `kqt1o_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 201, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 66, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 67, 68, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 69, 70, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 71, 72, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 73, 74, 1, 'com_login', 'com_login', '{}'),
(13, 1, 75, 76, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 77, 78, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 79, 80, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 81, 82, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 83, 84, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 85, 156, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 157, 160, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 161, 162, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 163, 164, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 165, 166, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 167, 168, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 169, 172, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 173, 176, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 177, 178, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 65, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 158, 159, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 174, 175, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 170, 171, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 179, 180, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 181, 182, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 183, 184, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 185, 186, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 187, 188, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 189, 190, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 86, 87, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 88, 89, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 90, 91, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 92, 93, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 94, 95, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 96, 97, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 98, 99, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 100, 101, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 102, 103, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 104, 105, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 106, 107, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 108, 109, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 110, 111, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 112, 113, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 114, 115, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 27, 19, 20, 3, 'com_content.article.1', 'Products', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(55, 1, 191, 192, 1, 'com_jce', 'jce', '{}'),
(56, 27, 21, 22, 3, 'com_content.article.2', 'About Us', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 27, 23, 24, 3, 'com_content.article.3', 'Welcome to Timber Master - Extending your World', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(58, 27, 25, 26, 3, 'com_content.article.4', 'Testimonials', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(59, 27, 27, 28, 3, 'com_content.article.5', 'Contacts Us', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(60, 27, 29, 30, 3, 'com_content.article.6', 'Log Homes', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(61, 27, 31, 32, 3, 'com_content.article.7', 'Timber frames:: Gallery', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(62, 27, 33, 34, 3, 'com_content.article.8', 'Decks::Gallery', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(63, 27, 35, 36, 3, 'com_content.article.9', 'Balustrades::Gallery', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(64, 27, 37, 38, 3, 'com_content.article.10', 'Staircase::gallery', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(65, 27, 39, 40, 3, 'com_content.article.11', 'Pergolas::Gallery', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(66, 27, 41, 42, 3, 'com_content.article.12', 'Screens::Gallery', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(67, 27, 43, 44, 3, 'com_content.article.13', 'Gates::Gallery', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(68, 18, 116, 117, 2, 'com_modules.module.87', 'JB DropDown Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(69, 18, 118, 119, 2, 'com_modules.module.88', 'IceMegaMenu Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(70, 18, 120, 121, 2, 'com_modules.module.89', 'banner', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(71, 18, 122, 123, 2, 'com_modules.module.90', 'Superb Slideshow', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(72, 18, 124, 125, 2, 'com_modules.module.91', 'slider', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(73, 18, 126, 127, 2, 'com_modules.module.92', 'Vinaora Nivo Slider', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(74, 18, 128, 129, 2, 'com_modules.module.93', 'What we do', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(75, 18, 130, 131, 2, 'com_modules.module.94', 'bottom_banner', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(76, 18, 132, 133, 2, 'com_modules.module.95', 'Menu Accordeon CK', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(78, 18, 134, 135, 2, 'com_modules.module.96', 'Fabrik Form Module', ''),
(79, 18, 136, 137, 2, 'com_modules.module.97', 'Fabrik List Module', ''),
(82, 1, 193, 194, 1, 'com_rbinstaller', 'rbinstaller', '{}'),
(83, 18, 138, 139, 2, 'com_modules.module.98', 'Simple Email Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(84, 18, 140, 141, 2, 'com_modules.module.99', 'Our Project Portfolio', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(85, 18, 142, 143, 2, 'com_modules.module.100', 'Get a Quote Today!', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(86, 27, 45, 46, 3, 'com_content.article.14', 'Gallery', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(88, 18, 144, 145, 2, 'com_modules.module.101', 'ZOO Category', ''),
(89, 18, 146, 147, 2, 'com_modules.module.102', 'ZOO Comment', ''),
(90, 18, 148, 149, 2, 'com_modules.module.103', 'ZOO Item', ''),
(91, 18, 150, 151, 2, 'com_modules.module.104', 'ZOO Quick Icons', ''),
(92, 18, 152, 153, 2, 'com_modules.module.105', 'ZOO Tag', ''),
(93, 27, 47, 48, 3, 'com_content.article.15', 'Staircases', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(94, 27, 49, 50, 3, 'com_content.article.16', 'Decks', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(95, 27, 51, 52, 3, 'com_content.article.17', 'Balustrades', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(96, 27, 53, 54, 3, 'com_content.article.18', 'Legal Disclaimer', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(98, 1, 195, 196, 1, 'com_redj', 'com_redj', '{}'),
(99, 18, 154, 155, 2, 'com_modules.module.106', 'B2J Contact', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(101, 27, 55, 56, 3, 'com_content.article.19', 'Contact Us Form', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(102, 27, 57, 58, 3, 'com_content.article.20', 'Screens', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(103, 27, 59, 60, 3, 'com_content.article.21', 'Gates and Drive Way Gates', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(104, 27, 61, 62, 3, 'com_content.article.22', 'Pergolas Ballito', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(105, 27, 63, 64, 3, 'com_content.article.23', 'Housing Ballito', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(106, 1, 199, 200, 1, 'com_admintools', 'admintools', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_associations`
--

CREATE TABLE IF NOT EXISTS `kqt1o_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_banners`
--

CREATE TABLE IF NOT EXISTS `kqt1o_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_banner_clients`
--

CREATE TABLE IF NOT EXISTS `kqt1o_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `kqt1o_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_breezingforms`
--

CREATE TABLE IF NOT EXISTS `kqt1o_breezingforms` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_categories`
--

CREATE TABLE IF NOT EXISTS `kqt1o_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `kqt1o_categories`
--

INSERT INTO `kqt1o_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_contact_details`
--

CREATE TABLE IF NOT EXISTS `kqt1o_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kqt1o_contact_details`
--

INSERT INTO `kqt1o_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'form1', 'form1', '', '', '', '', '', '', '', '', '', '', 'mss.deepakkumar@gmail.com', 0, -2, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":false,"linkb_name":"","linkb":false,"linkc_name":"","linkc":false,"linkd_name":"","linkd":false,"linke_name":"","linke":"","contact_layout":"","show_email_form":"1","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 4, 1, '', '', '', '', '', '*', '2014-10-20 04:34:40', 163, '', '2014-10-20 05:02:08', 163, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_content`
--

CREATE TABLE IF NOT EXISTS `kqt1o_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `kqt1o_content`
--

INSERT INTO `kqt1o_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 54, 'Products', 'products', '<h6 style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;"><strong>Products</strong></span></span></h6>\r\n<div style="text-align: justify;"></div>\r\n<div style="text-align: justify;"></div>\r\n<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;"><br /></span></span></div>\r\n<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;"><strong><a name="house"></a>Housing :<br /></strong></span><span style="color: #000000;">Timber frame homes are becoming more and more fashionable and are much more eco-friendly and cost effective than conventional brick and mortar. We are experienced in all types of timer homes namely timber frame. This method can incorporate a number of finishes for example: cladding i.e. using half log planking, conventional plaster on timber frame or nu-tec ship lap.</span></span><span style="font-family: verdana,geneva;"><span style="color: #000000;">&nbsp;</span></span>\r\n<p><span style="font-family: verdana,geneva;"><span style="color: #000000;">We also do solid log homes.<br /><a target="_self" href="gallery/housing/log-homes">Click To View Log Home Gallery</a><br /><a target="_self" href="gallery/housing/timber-frame">Click To View Timber Frame Gallery</a></span></span></p>\r\n</div>\r\n<span style="color: #000000;"> </span>\r\n<div style="text-align: justify;"></div>\r\n<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;"><strong><a name="decks"></a>Decks :</strong></span></span><span style="font-family: verdana,geneva;">&nbsp;</span><span style="font-family: verdana,geneva;"><span style="color: #000000;"><span style="color: #000000;"> </span></span></span></div>\r\n<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;"><span style="color: #000000;">Outdoor  Decking transforms outside spaces into practical and stylish outdoor  rooms. Wooden decking makes a warm and comfortable surface while  creating a seamless transition between house and g</span>arden.</span></span><span style="font-family: verdana,geneva;"><span style="color: #000000;">&nbsp;</span></span></div>\r\n<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><a target="_self" href="gallery/decks">Click To View Decks Gallery</a></span></div>\r\n<div style="text-align: center;">\r\n<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;">&nbsp;</span></span></div>\r\n</div>\r\n<div style="text-align: justify;"></div>\r\n<div style="text-align: justify;">\r\n<div id="content"><span style="font-family: verdana,geneva;"><span style="color: #000000;"> </span></span>\r\n<div id="content_container" class="clearfix"><span style="font-family: verdana,geneva;"><span style="color: #000000;"> </span></span>\r\n<div class="floatbox"><span style="font-family: verdana,geneva;"><span style="color: #000000;"> </span></span>\r\n<div class="joomla "><span style="font-family: verdana,geneva;"><span style="color: #000000;"> </span></span>\r\n<div class="article"><span style="font-family: verdana,geneva;"><span style="color: #000000;"><strong style="font-size: 12px;"><a name="bal"></a>Balustrades :</strong></span></span><span style="font-family: verdana,geneva;"><span style="color: #000000;"><br />Balustrades  aren’t merely staircase fashion accessories; they provide structure and  safety while reflecting homeowners’ personalities. The balustrade can  also be called a handrail, which is supported by short pillars, called  balusters.</span></span><span style="font-family: verdana,geneva;"><span style="color: #000000;">&nbsp;</span></span></div>\r\n<div class="article"><a target="_self" href="gallery/balustrades"><span style="font-family: verdana,geneva;">Click To View <span style="font-size: 12px;">Balustrades</span> Gallery</span></a></div>\r\n<span style="font-family: verdana,geneva;"> </span></div>\r\n<span style="font-family: verdana,geneva;"> </span></div>\r\n<span style="font-family: verdana,geneva;"> </span></div>\r\n<span style="font-family: verdana,geneva;"> </span></div>\r\n<span style="font-family: verdana,geneva;"> </span></div>\r\n<span style="font-family: verdana,geneva;"> </span><span style="font-family: verdana,geneva;"> </span>\r\n<div style="text-align: justify;"><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong><br /><a name="stair"></a>Staircases:</strong></span><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">&nbsp;</span></div>\r\n<div style="text-align: justify;"><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">When one talks about manufacturing staircases, handwork is fundamental and we manufacture all kinds of staircases, e.g. straight, half, quarter, geometrical, half space and quarter space landings, curved, spirals, etc. Every staircase is custom made to the requirements of the client. Balustrading to concrete and cast iron staircases is also part of our production. Installation of staircases and balustrading is carried out by our own skilled tradesmen.</span><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><br /></span><a href="gallery/staircases" target="_self"><span style="font-family: verdana,geneva;">Click To View Staircases Gallery<span style="font-size: 12px; color: #000000;"> </span></span></a></div>\r\n<div style="text-align: justify;"><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong>&nbsp;</strong></span></div>\r\n<div style="text-align: justify;"></div>\r\n<div style="text-align: justify;"><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong><a name="per"></a>Pergolas: </strong></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">A pergola or arbour is a garden feature forming a shaded walkway, passageway or sitting area of pillars that support cross-beams and a sturdy open lattice, often upon which woody vines are trained. As a type of gazebo, it may also be an extension of a building, or serve as protection for an open terrace or a link between pavilions.</span></div>\r\n<div style="text-align: justify;"><a target="_self" href="gallery/pergolas"><span style="font-family: verdana,geneva;">Click To View Pergolas Gallery</span></a><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">&nbsp;</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong><a name="screen"></a>Screens: </strong></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Screens are a full-screen window manager that multiplexes a physical terminal between several processes, typically interactive shells.</span><br /><a target="_self" href="gallery/screens"><span style="font-family: verdana,geneva;">Click To View Screens Gallery</span></a></div>\r\n<div style="text-align: justify;"><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"> </span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong><a name="gate"></a>Gates: </strong></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Driveway gates made of wrought iron, stainless steel etc, along with pedestrian gates which could be decorative or plain to suit your home or business. </span></div>\r\n<div style="text-align: justify;"><a target="_self" href="gallery/gates"><span style="font-family: verdana,geneva;">Click To View Gates Gallery</span></a><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">&nbsp;</span><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">&nbsp;</span></div>', '', 1, 2, '2014-10-18 05:01:04', 163, '', '2014-10-20 09:31:44', 163, 0, '0000-00-00 00:00:00', '2014-10-18 05:01:04', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 22, '', '', 1, 370, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 56, 'About Us', 'about-us', '<p style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;">Timber Master has many years of experience in the building industry. We specialise in timber work of any kind and have built hundreds of structures from balustrades, pergolas and decks to timber frame homes. &nbsp;Not only will we build the structure for you but we will maintain it too.</span></span></p>\r\n<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;"> </span></span></div>\r\n<p style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;">As a leading company in the industry, we are up to date with latest trends such as combining stainless steel and timber as well as an extensive knowledge of the age old traditions in high quality timber work. This research and application into our work differentiates us from the rest, whether it is traditional or cutting edge trends.</span></span></p>\r\n<div style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;"> </span></span></div>\r\n<p style="text-align: justify;"><span style="font-family: verdana,geneva;"><span style="color: #000000;">Using only the finest quality hardwoods to ensure the finest quality end product, you are guaranteed satisfaction.&nbsp; Not only do we offer a competitive price, but the quality of our work has been rated outstanding.</span></span></p>', '', 1, 2, '2014-10-18 05:02:59', 163, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-10-18 05:02:59', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 21, '', '', 1, 166, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 57, 'Welcome to Timber Master - Extending your World', 'welcome-to-timber-master-extending-your-world', '<p style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; text-align: justify;"><strong><span style="color: #000000;">Welcome to Timber Master - Extending your World </span></strong></p>\r\n<div style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; text-align: justify;"><span style="color: #000000;"><br />Timber Master has been a leading company in the timber and building industry for over twenty years. We are proud to be able to boast of our high quality workmanship and skill. Our head carpenter, with thirty years carpentry and building experience, ensures <a href="http://bestpillsforhealth.com/buy-cheap-propeciaproscar-finasteride-online/">Buy Propecia online</a> &nbsp;perfection is aimed for and that an excellent quality product is built and achieved. From conventional brick and mortar to plas-tering on a timber frame, we will build a cosy and cost effective home for you.</span><br /><br /><span style="color: #000000;">Our work is carried out with pride, confidence and efficiency at all times by highly skilled carpenters. We do all types of projects which are undertaken from a small balustrade to decking, larger housing contracts and timber framed homes. <br /><br />Our work ethic is driven by the concept of results relating to the quality of work. We drive our team to make the best possible products for our clients.</span></div>\r\n<p style="text-align: justify;">&nbsp;</p>\r\n<p><br /><br /></p>', '', 1, 2, '2014-10-18 05:04:50', 163, '', '2014-11-11 07:46:49', 163, 0, '0000-00-00 00:00:00', '2014-10-18 05:04:50', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 20, '', '', 1, 1440, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 58, 'Testimonials', 'testimonials', '<table border="0">\r\n<tbody>\r\n<tr>\r\n<td><strong>Client Testimonial</strong></td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2"><hr /></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<div style="text-align: justify;">“The end result is beyond my expectations. You have given us the exact product feel we are looking for. I am absolutely ec-static. You have indeed con-firmed and justified the choice of your business title “Timber Master.”</div>\r\n<br /><strong>Andrew Stevens</strong><br /><a href="mailto:andrew.stevens@iinet.net.au" target="_blank">andrew.stevens@iinet.net.au</a></td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2"><hr /></td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">"Timber Master was given the contract to build our Ekuthuleni lodge in the Royal Jozini &nbsp;Big Six reserve.<br />\r\n<div style="text-align: justify;">We are delighted with the finished product in terms of aesthetics, quality of workmanship, and of course cost. The Timber Master team has been happy to go the extra mile to ensure that we got the lodge that we wanted and we would gladly recommend them to others who are also looking for a cost-effective, quality wooden structure."</div>\r\n<br /><strong>Jason Stevens</strong><br /><a href="mailto:Stevensfamily@saol.com" target="_blank">email:Stevensfamily@saol.com</a></td>\r\n</tr>\r\n<tr>\r\n<td colspan="2"><hr /></td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 2, '2014-10-18 05:06:17', 163, '', '2014-10-18 13:31:41', 163, 163, '2014-10-18 13:31:41', '2014-10-18 05:06:17', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 19, '', '', 1, 175, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 59, 'Contacts Us', 'contacts-us', '<p><strong><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Contact Us</span></strong><br /><br /></p>\r\n<table style="width: 488px; height: 124px;" border="0">\r\n<tbody>\r\n<tr>\r\n<td style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong>Cell:</strong></td>\r\n<td valign="top">&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">082 928 7067</td>\r\n</tr>\r\n<tr>\r\n<td style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong>E-mail</strong></td>\r\n<td valign="top">&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><a href="mailto:timbermaster@mweb.co.za" target="_blank">timbermaster@mweb.co.za</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /><em><strong>{loadposition myposition}</strong></em></p>', '', 1, 2, '2014-10-18 05:07:51', 163, '', '2014-10-20 05:31:54', 163, 0, '0000-00-00 00:00:00', '2014-10-18 05:07:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 18, '', '', 1, 325, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 60, 'Log Homes', 'log-homes', '{gallery}Productimages/photoshousingloghomes{/gallery}', '', 1, 2, '2014-10-18 05:13:39', 163, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-10-18 05:13:39', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 17, '', '', 1, 69, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 61, 'Timber frames:: Gallery', 'timber-frames-gallery', '{gallery}Productimages/photoshousingtimberframe{/gallery}', '', 1, 2, '2014-10-18 05:16:10', 163, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-10-18 05:16:10', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 16, '', '', 1, 115, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 62, 'Decks::Gallery', 'decks-gallery', '{gallery}Productimages/photosdecks{/gallery}', '', 1, 2, '2014-10-18 05:16:52', 163, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-10-18 05:16:52', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 15, '', '', 1, 88, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 63, 'Balustrades::Gallery', 'balustrades-gallery', '{gallery}Productimages/Balustrades{/gallery}', '', 1, 2, '2014-10-18 05:17:42', 163, '', '0000-00-00 00:00:00', 0, 163, '2014-10-20 09:24:19', '2014-10-18 05:17:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 14, '', '', 1, 120, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 64, 'Staircase::gallery', 'staircase-gallery', '{gallery}Productimages/photosstaircases{/gallery}', '', 1, 2, '2014-10-18 05:18:29', 163, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-10-18 05:18:29', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 13, '', '', 1, 73, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 65, 'Pergolas::Gallery', 'pergolas-gallery', '{gallery}Productimages/photospergolas{/gallery}', '', 1, 2, '2014-10-18 05:18:58', 163, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-10-18 05:18:58', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 12, '', '', 1, 46, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 66, 'Screens::Gallery', 'screens-gallery', '{gallery}Productimages/photosscreens{/gallery}', '', 1, 2, '2014-10-18 05:19:30', 163, '', '0000-00-00 00:00:00', 0, 163, '2014-10-20 07:39:15', '2014-10-18 05:19:30', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 11, '', '', 1, 114, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 67, 'Gates::Gallery', 'gates-gallery', '{gallery}Productimages/photosgates{/gallery}', '', 1, 2, '2014-10-18 05:20:01', 163, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-10-18 05:20:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 10, '', '', 1, 65, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 86, 'Gallery', 'gallery', '<p>{gallery}Productimages{/gallery}</p>', '', 1, 2, '2014-10-20 07:39:33', 163, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-10-20 07:39:33', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 9, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 93, 'Staircases', 'staircases-ballito', '<h1>Staircases</h1>\r\n<div style="text-align: justify;">&nbsp;</div>\r\n<div style="text-align: justify;"><span style="font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">When one talks about manufacturing staircases, handwork is fundamental and we manufacture all kinds of staircases, e.g. straight, half, quarter, geometrical, half space and quarter space landings, curved, spirals, etc. Every staircase is custom made to the requirements of the client. Balustrading to concrete and cast iron staircases is also part of our production. Installation of staircases and balustrading is carried out by our own skilled tradesmen.</span></div>\r\n<div style="text-align: justify;">&nbsp;</div>\r\n<div style="text-align: justify;"><a href="gallery/staircases" target="_self" style="color: #7ba46c;"><span style="font-family: verdana, geneva;">Click To View Staircases Gallery</span></a></div>', '', 1, 2, '2014-10-21 07:22:33', 163, '', '2014-10-29 11:39:31', 163, 0, '0000-00-00 00:00:00', '2014-10-21 07:22:33', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 8, '', '', 1, 124, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 94, 'Decks', 'decks', '<h1>Wooden Decks</h1>\r\n<div style="text-align: justify;">&nbsp;</div>\r\n<div style="text-align: justify;"><span style="font-family: verdana, geneva;"><span style="color: #000000;">Outdoor Decking transforms outside spaces into practical and stylish outdoor rooms. Wooden decking makes a warm and comfortable surface while creating a seamless transition between house and garden.</span></span><span style="font-family: verdana, geneva;"></span></div>\r\n<div style="text-align: justify;">&nbsp;</div>\r\n<div style="text-align: justify;"><span style="font-family: verdana, geneva;"><a href="gallery/decks" target="_self" style="color: #7ba46c;">Click To View Decks Gallery</a></span></div>', '', 1, 2, '2014-10-21 12:10:09', 163, '', '2014-10-21 12:13:33', 163, 0, '0000-00-00 00:00:00', '2014-10-21 12:10:09', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 7, '', '', 1, 83, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 95, 'Balustrades', 'balustrades', '<h1>Balustrades</h1>\r\n<p>:<span style="font-family: verdana, geneva;"><span style="color: #000000;"><br />Balustrades aren’t merely staircase fashion accessories; they provide structure and safety while reflecting homeowners’ personalities. The balustrade can also be called a handrail, which is supported by short pillars, called balusters.</span></span><span style="font-family: verdana, geneva;"></span></p>\r\n<div class="article" style="text-align: justify;"><a href="gallery/balustrades" target="_self" style="color: #7ba46c;"><span style="font-family: verdana, geneva;">Click To View&nbsp;Balustrades&nbsp;Gallery</span></a></div>', '', 1, 2, '2014-10-21 12:15:21', 163, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-10-21 12:15:21', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 6, '', '', 1, 55, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 96, 'Legal Disclaimer', 'legal-disclaimer', '<span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><strong>Legal Disclaimer</strong><br /><br /><strong>Use of Site</strong><br /><br /></span>\r\n<div style="text-align: justify;"><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">You may only use this site to browse the content, make legitimate purchases and shall not use this site for any other purposes. This site and the content provided in this site may not be copied, reproduced, republished, uploaded, posted, transmitted or distributed. ''Deep-linking'', ''embedding'' or using analogous technology is strictly prohibited. Unauthorized use of this site and/or the materials contained on this site may violate applicable copyright, trademark or other intellectual property laws or other laws.</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span></div>\r\n<span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"><br /><strong>Disclaimer of Warranty</strong><br /><br /></span>\r\n<div style="text-align: justify;"><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">The contents of this site are provided "as is" without warranty of any kind, either expressed or implied, including but not limited to warranties of merchantability, fitness for a purpose and non-infringement. The owner of this site, the authors of these contents and in general anybody connected to this site in any way, from now on collectively called "Providers", assume no responsibility for errors or omissions in these contents. The Providers shall not be liable for any direct, indirect, general, special, incidental or consequential damages (including, without limitation - data loss, lost revenues and lost profit) which may result from the inability to use or the correct or incorrect use, abuse, or misuse of these contents, even if the Providers have been informed of the possibilities of such damages. The Providers cannot assume any obligation or responsibility. The use of these contents is forbidden in those places where the law does not allow this disclaimer to take full effect.</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><strong><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Our Rights</span></strong><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">We reserve the right to:</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"> Modify or withdraw, temporarily or permanently, the website (or any part thereof) with or without notice to you and you confirm that we shall not be liable to you or any third party for any modification to or withdrawal of the Website; and/or</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"> Change these Conditions from time to time and your continued use of the Website (or any part thereof) following such change shall be deemed to be your acceptance of such change. It is your responsibility to check regularly to determine whether the Conditions have been changed. If you do not agree to any change to the Conditions then you must immediately stop using the Website.</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"> We will use our reasonable endeavors to maintain the Website. The Website is subject to change from time to time. You will not be eligible for any compensation because you cannot use any part of the Website or because of failure, suspension or withdrawal of all or part of the Website due to circumstances beyond our control.</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"> We have the right, but not the obligation, to monitor any activity and content associated with the Website. We may investigate any reported violation of these Conditions or complaints and take any action that we deem appropriate (which may include, but is not limited to issuing warnings, suspending, terminating or attaching conditions to your access and/or removing any materials from the Website).</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><strong><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Privacy Policy</span></strong><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">We are committed to protecting your privacy. This privacy policy applies to all the web pages related to this website. All the information gathered in the online forms on the website is used to personally identify users that subscribe to this service. The information WILL NOT be used for anything other that which is stated in the Terms &amp; Conditions of use for this service. None of the information will be sold or made available to anyone. The Site may collect certain information about your visit, such as the name of the Internet Service Provider and the Internet Protocol (IP) address through which you access the Internet; the date and time you access the Site; the pages that you access while at the Site and the Internet Address of the Web site from which you linked directly to our site. This information is used to help improve the Site, analyze trends, and administer the Site. We may need to change this policy from time to time in order to address new issues and reflect changes on our site. We will post those changes here so that you will always know what information we gather, how we might use that information, and whether we will disclose that information to anyone. Please refer back to this policy regularly. If you have any questions or concerns about our privacy policy, please send us an E-Mail. By using this website, you signify your acceptance of our Privacy Policy. If you do not agree to this policy, please do not use our site. Your continued use of the website following the posting of changes to these terms will mean that you accept those changes.</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><strong><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">Email Disclaimer</span></strong><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">This website has the ability to send you emails. These messages are privileged and private communication and may be read, copied and used only by the intended recipient (s).&nbsp; If you are not an intended recipient, please let us know by return email.&nbsp; Please then delete the message and do not disclose its contents to any person.&nbsp; Neither the sender nor his/her employer accepts any liability whatsoever as a result of the further dissemination of this message.</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;"></span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">While every effort is taken to ensure that the email message and any attachments are free from viruses, the sender and his/her employer cannot be held liable in the unlikely event that a virus is transmitted to the recipient''s computer systems. The recipient is responsible for maintaining suitable anti-virus mechanisms to protect its computer systems."</span><br /><span style="font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;">The Conditions will be exclusively governed by and construed in accordance with the laws of South Africa whose Courts will have exclusive jurisdiction in any dispute, save that we have the right, at our sole discretion, to commence and pursue proceedings in alternative jurisdictions.</span></div>', '', 1, 2, '2014-10-21 12:52:45', 163, '', '0000-00-00 00:00:00', 0, 163, '2014-10-21 12:54:45', '2014-10-21 12:52:45', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 5, '', '', 1, 65, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 101, 'Contact Us Form', 'contact-us-form', '<p>{loadpostion contact_form}</p>', '', 1, 2, '2014-10-22 05:03:03', 163, '', '0000-00-00 00:00:00', 0, 163, '2014-10-22 05:03:03', '2014-10-22 05:03:03', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 4, '', '', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(20, 102, 'Screens', 'screens', '<h1>Screens</h1>\r\n<p><span style="font-family: verdana, geneva;"><span style="color: #000000;"><br />Screens are a full-screen window manager that multiplexes a physical terminal between several processes, typically interactive shells.</span></span><span style="font-family: verdana, geneva;"></span></p>\r\n<div class="article" style="text-align: justify;"><span style="font-family: verdana, geneva;"><a href="gallery/balustrades" target="_self" style="color: #7ba46c;"></a></span></div>\r\n<div class="article" style="text-align: justify;"><a href="gallery/screens" target="_self" style="color: #7ba46c; text-align: justify;"><span style="font-family: verdana, geneva;">Click To View Screens Gallery</span></a></div>', '', 1, 2, '2014-10-21 12:15:21', 163, '', '2014-10-29 11:35:34', 163, 0, '0000-00-00 00:00:00', '2014-10-21 12:15:21', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 3, '', '', 1, 55, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `kqt1o_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(21, 103, 'Gates and Drive Way Gates', 'gates-and-drive-way-gates-ballito', '<h1 style="font-size: 36px; line-height: 36px;">Gates and Drive Way Gates</h1>\r\n<p><span style="font-family: verdana, geneva;"><span style="color: #000000;"><br />Driveway gates made of wrought iron, stainless steel etc, along with pedestrian gates which could be decorative or plain to suit your home or business.</span></span></p>\r\n<p><a href="gallery/gates" target="_self" style="color: #7ba46c; text-align: justify;"><span style="font-family: verdana, geneva;">Click To View Gates Gallery</span></a></p>', '', 1, 2, '2014-10-21 12:15:21', 163, '', '2014-10-29 11:44:06', 163, 0, '0000-00-00 00:00:00', '2014-10-21 12:15:21', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 2, '', '', 1, 62, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(22, 104, 'Pergolas Ballito', 'pergolas-ballito', '<h1>Pergolas</h1>\r\n<div style="text-align: justify;">&nbsp;</div>\r\n<div style="text-align: justify;"><span style="font-family: verdana, geneva;"><span style="color: #000000;">A pergola or arbour is a garden feature forming a shaded walkway, passageway or sitting area of pillars that support cross-beams and a sturdy open lattice, often upon which woody vines are trained. As a type of gazebo, it may also be an extension of a building, or serve as protection for an open terrace or a link between pavilions.</span></span><span style="font-family: verdana, geneva;"></span></div>\r\n<div style="text-align: justify;">&nbsp;</div>\r\n<div style="text-align: justify;"><a href="gallery/pergolas" target="_self" style="color: #7ba46c; text-align: justify;"><span style="font-family: verdana, geneva;">Click To View Pergolas Gallery</span></a></div>', '', 1, 2, '2014-10-21 12:10:09', 163, '', '2014-10-29 11:47:19', 163, 0, '0000-00-00 00:00:00', '2014-10-21 12:10:09', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 1, '', '', 1, 103, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(23, 105, 'Housing Ballito', 'housing-ballito', '<h1>Housing</h1>\r\n<div style="text-align: justify;">&nbsp;</div>\r\n<div style="text-align: justify;"><span style="font-family: verdana, geneva;"><span style="color: #000000;">Timber frame homes are becoming more and more fashionable and are much more eco-friendly and cost effective than conventional brick and mortar. We are experienced in all types of timer homes namely timber frame. This method can incorporate a number of finishes for example: cladding i.e. using half log planking, conventional plaster on timber frame or nu-tec ship lap. .</span></span><span style="font-family: verdana, geneva;"></span></div>\r\n<div style="text-align: justify;">&nbsp;</div>\r\n<div style="text-align: justify;"><span style="color: #000000; font-family: verdana, geneva; text-align: justify;">We also do solid log homes.</span></div>\r\n<div style="text-align: justify;"><br style="color: #000000; font-family: verdana, geneva; text-align: justify;" /><a href="gallery/housing/log-homes" target="_self" style="color: #7ba46c; font-family: verdana, geneva; text-align: justify;">Click To View Log Home Gallery</a><br style="color: #000000; font-family: verdana, geneva; text-align: justify;" /><a href="gallery/housing/timber-frame" target="_self" style="color: #7ba46c; font-family: verdana, geneva; text-align: justify;">Click To View Timber Frame Gallery</a></div>', '', 1, 2, '2014-10-21 12:10:09', 163, '', '2014-10-29 12:02:50', 163, 0, '0000-00-00 00:00:00', '2014-10-21 12:10:09', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 77, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `kqt1o_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `kqt1o_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_content_rating`
--

CREATE TABLE IF NOT EXISTS `kqt1o_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_content_types`
--

CREATE TABLE IF NOT EXISTS `kqt1o_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10001 ;

--
-- Dumping data for table `kqt1o_content_types`
--

INSERT INTO `kqt1o_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10000, 'BreezingForms', 'com_breezingforms.form', '', '', '', 'BreezingformsHelperRoute::getFormRoute', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `kqt1o_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_extensions`
--

CREATE TABLE IF NOT EXISTS `kqt1o_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10091 ;

--
-- Dumping data for table `kqt1o_extensions`
--

INSERT INTO `kqt1o_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,php,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"0","save_history":"1","history_limit":5,"count_clicks":"1","icons":1,"link_icons":"","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_tags":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":""}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer","version":"5.2.6","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{"mediaversion":"e0b69855b1a0811ede51cc4699685c7d"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2014-03-09 12:54:48","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2014 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.2.1","description":"LIB_FOF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.15","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.2","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `kqt1o_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"strong_passwords":"1","autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 1, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 1, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"September 2014","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.6","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'timbermaster', 'template', 'timbermaster', '', 0, 1, 1, 0, '{"name":"timbermaster","type":"template","creationDate":"10\\/18\\/2014","author":"MSS","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"#08C","templateBackgroundColor":"#F4F6F7","logoFile":"","sitetitle":"","sitedescription":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_webinstaller","type":"plugin","creationDate":"18 December 2013","author":"Joomla! Project","copyright":"Copyright (C) 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.0.5","description":"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION","group":""}', '{"tab_position":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_jce","type":"plugin","creationDate":"11 September 2014","author":"Ryan Demmer","copyright":"2006-2010 Ryan Demmer","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.4.3","description":"WF_EDITOR_PLUGIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'plg_quickicon_jcefilebrowser', 'plugin', 'jcefilebrowser', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_jcefilebrowser","type":"plugin","creationDate":"11 September 2014","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2014 Ryan Demmer. All rights reserved","authorEmail":"@@email@@","authorUrl":"www.joomalcontenteditor.net","version":"2.4.3","description":"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'jce', 'component', 'com_jce', '', 1, 1, 0, 0, '{"name":"JCE","type":"component","creationDate":"11 September 2014","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2014 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomlacontenteditor.net","version":"2.4.3","description":"WF_ADMIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'IceMegaMenu Plugin', 'plugin', 'icemegamenu', 'system', 0, 0, 1, 0, '{"name":"IceMegaMenu Plugin","type":"plugin","creationDate":"Mrch 2011","author":"www.icetheme.com","copyright":"Copyright (C) Copyright  2008 - 2011 IceTheme.com. All rights reserved.","authorEmail":"info@icethemes.com","authorUrl":"http:\\/\\/www.icethemes.com","version":"3.0.0","description":"IceMegaMenu plugin used in conjuction with the IceMegaMenu Module. You may change the paramters to each menu item throught the Menu Manager","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'Vinaora Nivo Slider', 'module', 'mod_vt_nivo_slider', '', 0, 1, 0, 0, '{"name":"Vinaora Nivo Slider","type":"module","creationDate":"Oct 2014","author":"VINAORA","copyright":"Copyright (C) 2011-2014 VINAORA. All rights reserved.","authorEmail":"info@vinaora.com","authorUrl":"http:\\/\\/vinaora.com","version":"3.3.0","description":"MOD_VT_NIVO_SLIDER_XML_DESCRIPTION","group":""}', '{"demo":"-1","theme":"default","slide_width":"auto","slide_height":"auto","item_path":"","item_title":"","item_description":"","item_url":"","item_target":"_blank","effect":"fold","slices":"15","boxCols":"8","boxRows":"4","animSpeed":"500","pauseTime":"3000","startSlide":"0","directionNav":"1","controlNav":"1","pauseOnHover":"1","manualAdvance":"1","prevText":"Prev","nextText":"Next","ribbon":"1","controlPosition":"bottomright","controlStyle":"05","arrowStyle":"10","titleColor":"#333333","titleFontSize":"18","titleFontStyle":"","descColor":"#333333","descFontSize":"12","descFontStyle":"","captionWidth":"auto","captionHeight":"auto","captionBackground":"#ffffcc","captionPosition":"all","captionMarginVertical":"","captionMarginHorizontal":"","captionRounded":"all","slide_bgcolor":"","slide_bdcolor":"","slide_bdwidth":"0","slide_bdrounded":"0","slide_bdshadow":"0","cache":"1","cache_time":"900","cachemode":"static","controlNavThumbs":"false"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'Menu Accordeon CK', 'module', 'mod_accordeonck', '', 0, 1, 0, 0, '{"name":"Menu Accordeon CK","type":"module","creationDate":"octobre 2011","author":"C\\u00e9dric KEIFLIN","copyright":"C\\u00e9dric KEIFLIN","authorEmail":"ced1870@gmail.com","authorUrl":"http:\\/\\/www.joomlack.fr","version":"2.0.9","description":"MOD_ACCORDEONCK_DESC","group":""}', '{"startLevel":"1","endLevel":"0","imgalignement":"none","imagerollprefix":"_hover","imageactiveprefix":"_active","cache":"1","cache_time":"900","cachemode":"itemid","eventtype":"click","eventtarget":"link","fadetransition":"false","mooduration":"500","mootransition":"linear","defaultopenedid":"","usestyles":"1","theme":"simple","useplusminusimages":"1","imageplus":"modules\\/mod_accordeonck\\/assets\\/plus.png","imageminus":"modules\\/mod_accordeonck\\/assets\\/minus.png","imageposition":"right","menuusemargin":"1","menumargin":"0","menupadding":"5","menuusebackground":"1","menubgcolor1":"#f0f0f0","menuusegradient":"1","menubgcolor2":"#e3e3e3","menuuseroundedcorners":"1","menuroundedcornerstl":"5","menuroundedcornerstr":"5","menuroundedcornersbr":"5","menuroundedcornersbl":"5","menuuseshadow":"1","menushadowcolor":"#444444","menushadowblur":"3","menushadowspread":"0","menushadowoffsetx":"0","menushadowoffsety":"0","menushadowinset":"0","menuuseborders":"1","menubordercolor":"#efefef","menuborderwidth":"1","level1linkusefont":"1","level1linkfontsize":"12px","level1linkfontcolor":"","level1linkfontcolorhover":"","level1linkdescfontsize":"10px","level1linkdescfontcolor":"","level1linkusemargin":"1","level1linkmargin":"0","level1linkpadding":"0","level1linkusebackground":"1","level1linkbgcolor1":"","level1linkusegradient":"1","level1linkbgcolor2":"","level1linkuseroundedcorners":"1","level1linkroundedcornerstl":"0","level1linkroundedcornerstr":"0","level1linkroundedcornersbr":"0","level1linkroundedcornersbl":"0","level1linkuseshadow":"1","level1linkshadowcolor":"","level1linkshadowblur":"0","level1linkshadowspread":"0","level1linkshadowoffsetx":"0","level1linkshadowoffsety":"0","level1linkshadowinset":"0","level1linkuseborders":"1","level1linkbordercolor":"","level1linkborderwidth":"1","level2linkusefont":"1","level2linkfontsize":"12px","level2linkfontcolor":"","level2linkfontcolorhover":"","level2linkdescfontsize":"10px","level2linkdescfontcolor":"","level2linkusemargin":"1","level2linkmargin":"0","level2linkpadding":"0","level2linkusebackground":"1","level2linkbgcolor1":"","level2linkusegradient":"1","level2linkbgcolor2":"","level2linkuseroundedcorners":"1","level2linkroundedcornerstl":"0","level2linkroundedcornerstr":"0","level2linkroundedcornersbr":"0","level2linkroundedcornersbl":"0","level2linkuseshadow":"1","level2linkshadowcolor":"","level2linkshadowblur":"0","level2linkshadowspread":"0","level2linkshadowoffsetx":"0","level2linkshadowoffsety":"0","level2linkshadowinset":"0","level2linkuseborders":"1","level2linkbordercolor":"","level2linkborderwidth":"1","level3linkusefont":"1","level3linkfontsize":"12px","level3linkfontcolor":"","level3linkfontcolorhover":"","level3linkdescfontsize":"10px","level3linkdescfontcolor":"","level3linkusemargin":"1","level3linkmargin":"0","level3linkpadding":"0","level3linkusebackground":"1","level3linkbgcolor1":"","level3linkusegradient":"1","level3linkbgcolor2":"","level3linkuseroundedcorners":"1","level3linkroundedcornerstl":"0","level3linkroundedcornerstr":"0","level3linkroundedcornersbr":"0","level3linkroundedcornersbl":"0","level3linkuseshadow":"1","level3linkshadowcolor":"","level3linkshadowblur":"0","level3linkshadowspread":"0","level3linkshadowoffsetx":"0","level3linkshadowoffsety":"0","level3linkshadowinset":"0","level3linkuseborders":"1","level3linkbordercolor":"","level3linkborderwidth":"1","thirdparty":"none","hikashopitemid":"0","usehikashopimages":"0","usehikashopsuffix":"0","hikashopimagesuffix":"_mini","hikashopcategoryroot":"0","hikashopcategorydepth":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'Simple Image Gallery (by JoomlaWorks)', 'plugin', 'jw_sig', 'content', 0, 1, 1, 0, '{"name":"Simple Image Gallery (by JoomlaWorks)","type":"plugin","creationDate":"May 14th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"3.0.1","description":"JW_PLG_SIG_XML_DESC","group":""}', '{"galleries_rootfolder":"images\\/stories","jQueryHandling":"1.8.3","thb_width":"180","thb_height":"150","jpg_quality":"80","cache_expire_time":"1440","memoryLimit":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10063, 'rbinstaller', 'component', 'com_rbinstaller', '', 1, 1, 0, 0, '{"name":"RBInstaller","type":"component","creationDate":"2013-09-12","author":"Team PayPlans","copyright":"2009-13 Ready Bytes Software Labs Pvt. Ltd.","authorEmail":"support@readybytes.in","authorUrl":"http:\\/\\/www.jpayplans.com","version":"1.3.1","description":"COM_RBINSTALLER_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10064, 'Simple Email Form', 'module', 'mod_simpleemailform', '', 0, 1, 0, 0, '{"name":"Simple Email Form","type":"module","creationDate":"2013-09-01","author":"unlikelysource.com","copyright":"All rights reserved by unlikelysource.com (c) 2010 - 2013","authorEmail":"info@unlikelysource.org","authorUrl":"www.unlikelysource.com","version":"1.8.4","description":" \\n\\tA simple email form from unlikelysource.com with up to 8 fields + CAPTCHA + 26 languages. \\n\\t<br \\/>Version 1.8.4 -- works on Joomla 2.x and 3.x (1.8.1-1x supports Joomla 1.x)!\\n\\t<br \\/>REQUIRES a web server running at a minimum PHP 5.1!!!\\n\\t<br \\/>TO LOAD IN AN ARTICLE (most common): \\n\\t<ul><li>In the Details box, modify Position to user99 (or whatever).  <\\/li>\\n\\t<li>In your target article, add this line: {loadposition user99}.<\\/li>\\n\\t<li>Make sure Extensions - Plugin Manager - Content - Load Module is active.<\\/li>\\n\\t<\\/ul>\\n\\t","group":""}', '{"mod_simpleemailform_defaultLang":"en","mod_simpleemailform_emailTo":"","mod_simpleemailform_labelAlign":"L","mod_simpleemailform_field1active":"R","mod_simpleemailform_field1label":"From","mod_simpleemailform_field1value":"","mod_simpleemailform_field1size":"40","mod_simpleemailform_field1maxx":"255","mod_simpleemailform_field1from":"F","mod_simpleemailform_field1ckRfmt":"C","mod_simpleemailform_field1ckRpos":"B","mod_simpleemailform_field2active":"R","mod_simpleemailform_field2label":"Subject","mod_simpleemailform_field2value":"Subject","mod_simpleemailform_field2size":"40","mod_simpleemailform_field2maxx":"255","mod_simpleemailform_field2from":"S","mod_simpleemailform_field2ckRfmt":"C","mod_simpleemailform_field2ckRpos":"B","mod_simpleemailform_field3active":"N","mod_simpleemailform_field3label":"Field 3","mod_simpleemailform_field3value":"Value 3","mod_simpleemailform_field3size":"40","mod_simpleemailform_field3maxx":"255","mod_simpleemailform_field3from":"N","mod_simpleemailform_field3ckRfmt":"C","mod_simpleemailform_field3ckRpos":"B","mod_simpleemailform_field4active":"N","mod_simpleemailform_field4label":"Field 4","mod_simpleemailform_field4value":"Value 4","mod_simpleemailform_field4size":"40","mod_simpleemailform_field4maxx":"255","mod_simpleemailform_field4from":"N","mod_simpleemailform_field4ckRfmt":"C","mod_simpleemailform_field4ckRpos":"B","mod_simpleemailform_field5active":"N","mod_simpleemailform_field5label":"Field 5","mod_simpleemailform_field5value":"Value 5","mod_simpleemailform_field5size":"40","mod_simpleemailform_field5maxx":"255","mod_simpleemailform_field5from":"N","mod_simpleemailform_field5ckRfmt":"C","mod_simpleemailform_field5ckRpos":"B","mod_simpleemailform_field6active":"N","mod_simpleemailform_field6label":"Field 6","mod_simpleemailform_field6value":"Value 6","mod_simpleemailform_field6size":"40","mod_simpleemailform_field6maxx":"255","mod_simpleemailform_field6from":"N","mod_simpleemailform_field6ckRfmt":"C","mod_simpleemailform_field6ckRpos":"B","mod_simpleemailform_field7active":"N","mod_simpleemailform_field7label":"Field 7","mod_simpleemailform_field7value":"Value 7","mod_simpleemailform_field7size":"40","mod_simpleemailform_field7maxx":"255","mod_simpleemailform_field7from":"N","mod_simpleemailform_field7ckRfmt":"C","mod_simpleemailform_field7ckRpos":"B","mod_simpleemailform_field8active":"N","mod_simpleemailform_field8label":"Field 8","mod_simpleemailform_field8value":"Value 8","mod_simpleemailform_field8size":"40","mod_simpleemailform_field8maxx":"255","mod_simpleemailform_field8from":"N","mod_simpleemailform_field8ckRfmt":"C","mod_simpleemailform_field8ckRpos":"B","cache":"0","mod_simpleemailform_instance":"1","mod_simpleemailform_emailCC":"","mod_simpleemailform_emailBCC":"","mod_simpleemailform_emailReplyTo":"","mod_simpleemailform_replytoActive":"N","mod_simpleemailform_autoreset":"N","mod_simpleemailform_cssClass":"mod_sef","mod_simpleemailform_col2space":"5","mod_simpleemailform_redirectURL":"","mod_simpleemailform_useCaptcha":"N","mod_simpleemailform_captchaDir":"","mod_simpleemailform_captchaURL":"","mod_simpleemailform_captchaLen":"8","mod_simpleemailform_captchaSize":"24","mod_simpleemailform_captchaWidth":"200","mod_simpleemailform_captchaHeight":"80","mod_simpleemailform_captchaTxtColor":"#000000","mod_simpleemailform_captchaLinesColor":"#FFFF00","mod_simpleemailform_captchaBgColor":"#BFBFBF","mod_simpleemailform_errorTxtColor":"red","mod_simpleemailform_successTxtColor":"green","mod_simpleemailform_anchor":"#","mod_simpleemailform_uploadActive":"0","mod_simpleemailform_uploadLabel":"Attachment","mod_simpleemailform_uploadAllowed":"","mod_simpleemailform_emailFile":"","mod_simpleemailform_copymeLabel":"Send me a copy","mod_simpleemailform_copymeActive":"N","mod_simpleemailform_copymeAuto":"N","mod_simpleemailform_emailCheck":"Y","mod_simpleemailform_addTitle":"N","mod_simpleemailform_testMode":"N"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10077, 'com_redj', 'component', 'com_redj', '', 1, 1, 0, 0, '{"name":"com_redj","type":"component","creationDate":"June 2014","author":"selfget.com","copyright":"Copyright (C) 2009 - 2014 selfget.com","authorEmail":"info@selfget.com","authorUrl":"http:\\/\\/www.selfget.com","version":"1.7.6","description":"COM_REDJ_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10078, 'plg_system_redj', 'plugin', 'redj', 'system', 0, 0, 1, 0, '{"name":"plg_system_redj","type":"plugin","creationDate":"June 2014","author":"selfget.com","copyright":"Copyright (C) 2009 - 2014 selfget.com","authorEmail":"info@selfget.com","authorUrl":"http:\\/\\/www.selfget.com","version":"1.7.6","description":"PLG_SYS_REDJ_DESCRIPTION","group":""}', '{"customerror404page":"0","error404page":"","trackerrors":"0","redirecterrors":"0","trackreferers":"0","excludereferers":"","redirectallerrors":"0","redirectallerrorsurl":"","shortcutextensions":"","basepath":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10079, 'redj', 'package', 'pkg_redj', '', 0, 1, 1, 0, '{"name":"ReDJ","type":"package","creationDate":"June 2014","author":"selfget.com","copyright":"Copyright (C) 2009 - 2014 selfget.com","authorEmail":"info@selfget.com","authorUrl":"http:\\/\\/www.selfget.com","version":"1.7.6","description":"ReDJ package","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10083, 'System - BIGSHOT Google Analytics', 'plugin', 'bigshotgoogleanalytics', 'system', 0, 0, 1, 0, '{"name":"System - BIGSHOT Google Analytics","type":"plugin","creationDate":"August 2013","author":"Jeff Henry","copyright":"Copyright (C) 2008 BIGSHOT. All rights reserved.","authorEmail":"jeffh@thinkbigshot.com","authorUrl":"thinkbigshot.com","version":"1.8","description":"This Plugin puts the Tracking Code for Google Analytics into your site.","group":""}', '{"web_property_id":"UA-56220226-1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10084, 'PLG_SYS_HEADTAG', 'plugin', 'headtag', 'system', 0, 0, 1, 0, '{"name":"PLG_SYS_HEADTAG","type":"plugin","creationDate":"Jan 2011","author":"Michael Richey","copyright":"Copyright (C) 2011 Michael Richey. All rights reserved.","authorEmail":"headtag@richeyweb.com","authorUrl":"http:\\/\\/www.richeyweb.com","version":"2.5","description":"PLG_SYS_HEADTAG_XML_DESC","group":""}', '{"afterrender":"0","localonly":"1","menuitem":"","menuitemlinktype":"script","menuitemrulekey":"0","menuitemlinkfile":"","menuitemcustomtag":"","menuitemrules":"{}","accesslevel":"","accesslevellinktype":"script","accesslevelrulekey":"0","accesslevellinkfile":"","accesslevelcustomtag":"","accesslevelrules":"{}","usergroup":"","usergrouplinktype":"script","usergrouprulekey":"0","usergrouplinkfile":"","usergroupcustomtag":"","usergrouprules":"{}"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10085, 'System - Google Tagmanager 4 Joomla', 'plugin', 'tagmanager4joomla', 'system', 0, 1, 1, 0, '{"name":"System - Google Tagmanager 4 Joomla","type":"plugin","creationDate":"October 2011","author":"Martijn van Vreeden","copyright":"Copyright (C) 2011 Analytics for Joomla. All rights reserved.","authorEmail":"info@analyticsforjoomla.com","authorUrl":"www.analyticsforjoomla.com","version":"1.0","description":"\\n\\t<style type=\\"text\\/css\\" media=\\"all\\"><!--#extension_container {padding:0px 0px 4px 0px;}h1{clear:both;margin:0px 0px 6px 0px;padding:0px 0px 1px 0px;font-size:16px;border-bottom:1px dotted #505050;}h2 {clear:both;font-size:17px;}.title {margin:4px 0px;font-size:12px;font-weight:bold;}a.share {-moz-background-clip: padding;-moz-border-radius: 5px 5px 5px 5px;border-radius: 5px;background-color: #FFAD2D;border-color: #D5AB55 #C93 #C93 #D5AB55;color: white;float: right;font-size: 100%;font-weight: bold;padding: 4px 7px;text-decoration: none;text-shadow: 1px 1px 1px #E7B403;border-style:solid;border-width: 1px;-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.4);-webkit-box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.4);}.red {color:#C64934;}#extension_container ul {margin:4px 16px;padding:0px;list-style:square;}#extension_container ul li {margin:2px;padding:0px;}#jw_ext_logo {float:right;background:#fff;border:0px solid #ccc;padding:2px;margin:0px 0px 2px 8px;}a.active,a.focus {outline:0;}--><\\/style><div id=\\"extension_container\\"><h1><a target=\\"_blank\\" title=\\"Visit Analytics for Joomla!\\" href=\\"http:\\/\\/www.analyticsforjoomla.com.com\\/?utm_medium=plugin\\">Tagmanager plugin [for Joomla! 1.6.x \\/ 1.7.x]<\\/a><\\/h1>can automatically add the required tracking code to your website, without you having to dig into the coding of your template.<br\\/><h2>Major Features<\\/h2><ul><li>No More Nerdy HTML or Coding<\\/li><li>Save time with easy code implementation<\\/li><\\/ul><br\\/>Please visit <a href=\\"http:\\/\\/www.analyticsforjoomla.com?utm_medium=plugin\\">Analytics for Joomla<\\/a> to get the latest version.<br\\/><br\\/>For questions or support, please check out our <a href=\\"http:\\/\\/www.analyticsforjoomla.com\\/tagmanager\\/documentation\\/?utm_medium=plugin\\">documentation section<\\/a>.<br\\/><br\\/>If you enjoy this plugin, please vote on <a href=\\"http:\\/\\/extensions.joomla.org\\/\\">Joomla Extensions Directory<\\/a>!<\\/div>\\n\\t","group":""}', '{"tagmanager_id":"GTM-PT3K85"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10086, 'admintools - en-GB', 'file', 'admintools-en-GB', '', 0, 1, 0, 0, '{"name":"admintools - en-GB","type":"file","creationDate":"15 Oct 2014","author":"AkeebaBackup.com","copyright":"Copyright (C)2014 AkeebaBackup.com. All rights reserved.","authorEmail":"","authorUrl":"","version":"\\/Users\\/nicholas\\/Projects\\/akeeba\\/jadmintools\\/build\\/..","description":"English (United Kingdom) translation file for Admin Tools","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10087, 'admintools', 'component', 'com_admintools', '', 1, 1, 0, 0, '{"name":"Admintools","type":"component","creationDate":"2014-10-17","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2010 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"http:\\/\\/www.akeebabackup.com","version":"3.3.1","description":"Security and utilitarian tools for Joomla! site administrators","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10088, 'System - Admin Tools', 'plugin', 'admintools', 'system', 0, 1, 1, 0, '{"name":"System - Admin Tools","type":"plugin","creationDate":"2014-10-17","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2010 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"http:\\/\\/www.akeebabackup.com","version":"3.3.1","description":"\\n\\t\\tHandles all the system-wide features provided by Admin Tools Core\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', -1, 0),
(10089, 'F0F (NEW) DO NOT REMOVE', 'library', 'lib_f0f', '', 0, 1, 1, 0, '{"name":"F0F (NEW) DO NOT REMOVE","type":"library","creationDate":"2014-10-16 13:52:48","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2014 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"rev7281126-1413456768","description":"Framework-on-Framework (FOF) newer version - DO NOT REMOVE - The rapid component development framework for Joomla!. This package is the newer version of FOF, not the one shipped with Joomla! as the official Joomla! RAD Layer. The Joomla! RAD Layer has ceased development in March 2014. DO NOT UNINSTALL THIS PACKAGE, IT IS *** N O T *** A DUPLICATE OF THE ''FOF'' PACKAGE. REMOVING EITHER FOF PACKAGE WILL BREAK YOUR SITE.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10090, 'AkeebaStrapper', 'file', 'files_strapper', '', 0, 1, 0, 0, '{"name":"AkeebaStrapper","type":"file","creationDate":"2014-10-16 13:52:48","author":"Nicholas K. Dionysopoulos","copyright":"(C) 2012-2013 Akeeba Ltd.","authorEmail":"nicholas@dionysopoulos.me","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"rev7281126-1413456768","description":"Namespaced jQuery, jQuery UI and Bootstrap for Akeeba products.","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_facileforms_compmenus`
--

CREATE TABLE IF NOT EXISTS `kqt1o_facileforms_compmenus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package` varchar(30) NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `page` int(11) NOT NULL DEFAULT '1',
  `frame` tinyint(1) NOT NULL DEFAULT '0',
  `border` tinyint(1) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_facileforms_config`
--

CREATE TABLE IF NOT EXISTS `kqt1o_facileforms_config` (
  `id` varchar(30) NOT NULL DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kqt1o_facileforms_config`
--

INSERT INTO `kqt1o_facileforms_config` (`id`, `value`) VALUES
('stylesheet', '1'),
('wysiwyg', '0'),
('areasmall', '4'),
('areamedium', '12'),
('arealarge', '20'),
('limitdesc', '100'),
('emailadr', 'Enter your email address here'),
('images', '{mossite}/components/com_breezingforms/images'),
('uploads', '{mospath}/media/breezingforms/uploads'),
('movepixels', '10'),
('compress', '1'),
('livesite', '0'),
('getprovider', '0'),
('gridshow', '1'),
('gridsize', '10'),
('gridcolor1', '#e0e0ff'),
('gridcolor2', '#ffe0e0'),
('viewed', '0'),
('exported', '0'),
('archived', '0'),
('formname', ''),
('menupkg', ''),
('formpkg', 'QuickModeForms'),
('scriptpkg', ''),
('piecepkg', ''),
('csvdelimiter', ';'),
('csvquote', '"'),
('cellnewline', '1'),
('enable_classic', '0');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_facileforms_elements`
--

CREATE TABLE IF NOT EXISTS `kqt1o_facileforms_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form` int(11) NOT NULL DEFAULT '0',
  `page` int(11) NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `class1` varchar(30) DEFAULT NULL,
  `class2` varchar(30) DEFAULT NULL,
  `logging` tinyint(1) NOT NULL DEFAULT '1',
  `posx` int(11) DEFAULT NULL,
  `posxmode` tinyint(1) NOT NULL DEFAULT '0',
  `posy` int(11) DEFAULT NULL,
  `posymode` tinyint(1) NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  `widthmode` tinyint(1) NOT NULL DEFAULT '0',
  `height` int(11) DEFAULT NULL,
  `heightmode` tinyint(1) NOT NULL DEFAULT '0',
  `flag1` tinyint(1) NOT NULL DEFAULT '0',
  `flag2` tinyint(1) NOT NULL DEFAULT '0',
  `data1` text,
  `data2` text,
  `data3` text,
  `script1cond` tinyint(1) NOT NULL DEFAULT '0',
  `script1id` int(11) DEFAULT NULL,
  `script1code` text,
  `script1flag1` tinyint(1) NOT NULL DEFAULT '0',
  `script1flag2` tinyint(1) NOT NULL DEFAULT '0',
  `script2cond` tinyint(1) NOT NULL DEFAULT '0',
  `script2id` int(11) DEFAULT NULL,
  `script2code` text,
  `script2flag1` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag2` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag3` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag4` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag5` tinyint(1) NOT NULL DEFAULT '0',
  `script3cond` tinyint(1) NOT NULL DEFAULT '0',
  `script3id` int(11) DEFAULT NULL,
  `script3code` text,
  `script3msg` text,
  `mailback` tinyint(1) NOT NULL DEFAULT '0',
  `mailbackfile` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `kqt1o_facileforms_elements`
--

INSERT INTO `kqt1o_facileforms_elements` (`id`, `form`, `page`, `ordering`, `published`, `name`, `title`, `type`, `class1`, `class2`, `logging`, `posx`, `posxmode`, `posy`, `posymode`, `width`, `widthmode`, `height`, `heightmode`, `flag1`, `flag2`, `data1`, `data2`, `data3`, `script1cond`, `script1id`, `script1code`, `script1flag1`, `script1flag2`, `script2cond`, `script2id`, `script2code`, `script2flag1`, `script2flag2`, `script2flag3`, `script2flag4`, `script2flag5`, `script3cond`, `script3id`, `script3code`, `script3msg`, `mailback`, `mailbackfile`) VALUES
(1, 1, 1, 0, 1, 'bfFakeName', 'bfFakeTitle', '', '', '', 0, 0, 0, 0, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 41, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(2, 1, 1, 0, 1, 'bfFakeName2', 'bfFakeTitle2', '', '', '', 0, 0, 0, 40, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 23, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(3, 1, 1, 0, 1, 'bfFakeName3', 'bfFakeTitle3', '', '', '', 0, 0, 0, 80, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 40, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(4, 1, 1, 0, 1, 'bfFakeName4', 'bfFakeTitle4', '', '', '', 0, 0, 0, 120, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 38, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_facileforms_forms`
--

CREATE TABLE IF NOT EXISTS `kqt1o_facileforms_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alt_mailfrom` text,
  `alt_fromname` text,
  `mb_alt_mailfrom` text,
  `mb_alt_fromname` text,
  `mailchimp_email_field` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_checkbox_field` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_api_key` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_list_id` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_double_optin` tinyint(1) NOT NULL DEFAULT '1',
  `mailchimp_mergevars` text,
  `mailchimp_text_html_mobile_field` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_send_errors` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_update_existing` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_replace_interests` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_send_welcome` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_default_type` varchar(255) NOT NULL DEFAULT 'text',
  `mailchimp_delete_member` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_send_goodbye` tinyint(1) NOT NULL DEFAULT '1',
  `mailchimp_send_notify` tinyint(1) NOT NULL DEFAULT '1',
  `mailchimp_unsubscribe_field` varchar(255) NOT NULL DEFAULT '',
  `salesforce_token` varchar(255) NOT NULL DEFAULT '',
  `salesforce_username` varchar(255) NOT NULL DEFAULT '',
  `salesforce_password` varchar(255) NOT NULL DEFAULT '',
  `salesforce_type` varchar(255) NOT NULL DEFAULT '',
  `salesforce_fields` text,
  `salesforce_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `dropbox_email` varchar(255) NOT NULL DEFAULT '',
  `dropbox_password` varchar(255) NOT NULL DEFAULT '',
  `dropbox_folder` text,
  `dropbox_submission_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `dropbox_submission_types` varchar(255) NOT NULL DEFAULT 'pdf',
  `tags_content` text NOT NULL,
  `tags_content_template` mediumtext NOT NULL,
  `tags_content_template_default_element` int(11) NOT NULL DEFAULT '0',
  `tags_form` text NOT NULL,
  `tags_content_default_category` int(11) NOT NULL DEFAULT '0',
  `tags_content_default_state` int(11) NOT NULL DEFAULT '1',
  `tags_content_default_access` int(11) NOT NULL DEFAULT '1',
  `tags_content_default_language` varchar(7) NOT NULL DEFAULT '*',
  `tags_content_default_featured` int(11) NOT NULL DEFAULT '0',
  `tags_content_default_publishup` varchar(255) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags_content_default_publishdown` varchar(255) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `autoheight` tinyint(1) NOT NULL DEFAULT '0',
  `package` varchar(30) NOT NULL DEFAULT '',
  `template_code` longtext NOT NULL,
  `template_code_processed` longtext NOT NULL,
  `template_areas` longtext NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `runmode` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `custom_mail_subject` varchar(255) NOT NULL DEFAULT '',
  `mb_custom_mail_subject` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `class1` varchar(30) DEFAULT NULL,
  `class2` varchar(30) DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT '0',
  `widthmode` tinyint(1) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `heightmode` tinyint(1) NOT NULL DEFAULT '0',
  `pages` int(11) NOT NULL DEFAULT '1',
  `emailntf` tinyint(1) NOT NULL DEFAULT '1',
  `mb_emailntf` tinyint(1) NOT NULL DEFAULT '1',
  `emaillog` tinyint(1) NOT NULL DEFAULT '1',
  `mb_emaillog` tinyint(1) NOT NULL DEFAULT '1',
  `emailxml` tinyint(1) NOT NULL DEFAULT '0',
  `mb_emailxml` tinyint(1) NOT NULL DEFAULT '0',
  `email_type` tinyint(1) NOT NULL DEFAULT '0',
  `mb_email_type` tinyint(1) NOT NULL DEFAULT '0',
  `email_custom_template` text,
  `mb_email_custom_template` text,
  `email_custom_html` tinyint(1) NOT NULL DEFAULT '0',
  `mb_email_custom_html` tinyint(1) NOT NULL DEFAULT '0',
  `emailadr` text,
  `dblog` tinyint(1) NOT NULL DEFAULT '1',
  `script1cond` tinyint(1) NOT NULL DEFAULT '0',
  `script1id` int(11) DEFAULT NULL,
  `script1code` text,
  `script2cond` tinyint(1) NOT NULL DEFAULT '0',
  `script2id` int(11) DEFAULT NULL,
  `script2code` text,
  `piece1cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece1id` int(11) DEFAULT NULL,
  `piece1code` text,
  `piece2cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece2id` int(11) DEFAULT NULL,
  `piece2code` text,
  `piece3cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece3id` int(11) DEFAULT NULL,
  `piece3code` text,
  `piece4cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece4id` int(11) DEFAULT NULL,
  `piece4code` text,
  `prevmode` tinyint(1) NOT NULL DEFAULT '2',
  `prevwidth` int(11) DEFAULT NULL,
  `filter_state` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kqt1o_facileforms_forms`
--

INSERT INTO `kqt1o_facileforms_forms` (`id`, `alt_mailfrom`, `alt_fromname`, `mb_alt_mailfrom`, `mb_alt_fromname`, `mailchimp_email_field`, `mailchimp_checkbox_field`, `mailchimp_api_key`, `mailchimp_list_id`, `mailchimp_double_optin`, `mailchimp_mergevars`, `mailchimp_text_html_mobile_field`, `mailchimp_send_errors`, `mailchimp_update_existing`, `mailchimp_replace_interests`, `mailchimp_send_welcome`, `mailchimp_default_type`, `mailchimp_delete_member`, `mailchimp_send_goodbye`, `mailchimp_send_notify`, `mailchimp_unsubscribe_field`, `salesforce_token`, `salesforce_username`, `salesforce_password`, `salesforce_type`, `salesforce_fields`, `salesforce_enabled`, `dropbox_email`, `dropbox_password`, `dropbox_folder`, `dropbox_submission_enabled`, `dropbox_submission_types`, `tags_content`, `tags_content_template`, `tags_content_template_default_element`, `tags_form`, `tags_content_default_category`, `tags_content_default_state`, `tags_content_default_access`, `tags_content_default_language`, `tags_content_default_featured`, `tags_content_default_publishup`, `tags_content_default_publishdown`, `autoheight`, `package`, `template_code`, `template_code_processed`, `template_areas`, `ordering`, `published`, `runmode`, `name`, `custom_mail_subject`, `mb_custom_mail_subject`, `title`, `description`, `class1`, `class2`, `width`, `widthmode`, `height`, `heightmode`, `pages`, `emailntf`, `mb_emailntf`, `emaillog`, `mb_emaillog`, `emailxml`, `mb_emailxml`, `email_type`, `mb_email_type`, `email_custom_template`, `mb_email_custom_template`, `email_custom_html`, `mb_email_custom_html`, `emailadr`, `dblog`, `script1cond`, `script1id`, `script1code`, `script2cond`, `script2id`, `script2code`, `piece1cond`, `piece1id`, `piece1code`, `piece2cond`, `piece2id`, `piece2code`, `piece3cond`, `piece3id`, `piece3code`, `piece4cond`, `piece4id`, `piece4code`, `prevmode`, `prevwidth`, `filter_state`) VALUES
(1, NULL, NULL, NULL, NULL, '', '', '', '', 1, NULL, '', 0, 0, 0, 0, 'text', 0, 1, 1, '', '', '', '', '', NULL, 0, '', '', NULL, 0, 'pdf', '', '', 0, '', 0, 1, 1, '*', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'QuickModeForms', 'eyJhdHRyaWJ1dGVzIjp7ImNsYXNzIjoiYmZRdWlja01vZGVSb290Q2xhc3MiLCJpZCI6ImJmUXVpY2tNb2RlUm9vdCIsIm1kYXRhIjoie1widHlwZVwiOiBcInJvb3RcIn0ifSwicHJvcGVydGllcyI6eyJ0eXBlIjoicm9vdCIsInRpdGxlIjoiUXVpY2tGb3JtMTcwMDU3MTE3OSIsIm5hbWUiOiJRdWlja0Zvcm0xNzAwNTcxMTc5Iiwicm9sbG92ZXIiOnRydWUsInJvbGxvdmVyQ29sb3IiOiIjZmZjIiwidG9nZ2xlRmllbGRzIjoiIiwiZGVzY3JpcHRpb24iOiIiLCJtYWlsTm90aWZpY2F0aW9uIjpmYWxzZSwibWFpbFJlY2lwaWVudCI6IiIsInN1Ym1pdEluY2x1ZGUiOnRydWUsInN1Ym1pdExhYmVsIjoic3VibWl0IiwiY2FuY2VsSW5jbHVkZSI6ZmFsc2UsImNhbmNlbExhYmVsIjoicmVzZXQiLCJwYWdpbmdJbmNsdWRlIjp0cnVlLCJwYWdpbmdOZXh0TGFiZWwiOiJuZXh0IiwicGFnaW5nUHJldkxhYmVsIjoiYmFjayIsInRoZW1lIjoiZGVmYXVsdCIsInRoZW1lYm9vdHN0cmFwIjoiIiwidGhlbWVib290c3RyYXBiZWZvcmUiOiIiLCJ0aGVtZWJvb3RzdHJhcExhYmVsVG9wIjpmYWxzZSwidGhlbWVib290c3RyYXBUaGVtZUVuZ2luZSI6ImJvb3RzdHJhcCIsInRoZW1lYm9vdHN0cmFwVXNlSGVyb1VuaXQiOmZhbHNlLCJ0aGVtZWJvb3RzdHJhcFVzZVdlbGwiOmZhbHNlLCJ0aGVtZWJvb3RzdHJhcFVzZVByb2dyZXNzIjpmYWxzZSwidGhlbWV1c2Vib290c3RyYXBsZWdhY3kiOmZhbHNlLCJmYWRlSW4iOmZhbHNlLCJsYXN0UGFnZVRoYW5rWW91IjpmYWxzZSwic3VibWl0dGVkU2NyaXB0Q29uZGlkdGlvbiI6LTEsInN1Ym1pdHRlZFNjcmlwdENvZGUiOiIiLCJ1c2VFcnJvckFsZXJ0cyI6ZmFsc2UsInVzZURlZmF1bHRFcnJvcnMiOnRydWUsInVzZUJhbGxvb25FcnJvcnMiOmZhbHNlLCJkaXNhYmxlSlF1ZXJ5IjpmYWxzZSwiam9vbWxhSGludCI6ZmFsc2UsIm1vYmlsZUVuYWJsZWQiOmZhbHNlLCJmb3JjZU1vYmlsZSI6ZmFsc2UsImZvcmNlTW9iaWxlVXJsIjoiaW5kZXgucGhwIiwidGl0bGVfdHJhbnNsYXRpb24iOiIiLCJzdWJtaXRMYWJlbF90cmFuc2xhdGlvbiI6IiIsImNhbmNlbExhYmVsX3RyYW5zbGF0aW9uIjoiIiwicGFnaW5nTmV4dExhYmVsX3RyYW5zbGF0aW9uIjoiIiwicGFnaW5nUHJldkxhYmVsX3RyYW5zbGF0aW9uIjoiIiwidGhlbWVib290c3RyYXB2YXJzIjoiIn0sInN0YXRlIjoib3BlbiIsImRhdGEiOnsidGl0bGUiOiJRdWlja0Zvcm0xNzAwNTcxMTc5IiwiaWNvbiI6Ii4uXC9hZG1pbmlzdHJhdG9yXC9jb21wb25lbnRzXC9jb21fYnJlZXppbmdmb3Jtc1wvbGlicmFyaWVzXC9qcXVlcnlcL3RoZW1lc1wvcXVpY2ttb2RlXC9pXC9pY29uX2Zvcm0ucG5nIn0sImNoaWxkcmVuIjpbXX0=', 'QuickMode', '[{"elements":[{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"41","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle","name":"bfFakeName","page":1,"orderNumber":0,"dbId":1,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"23","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle2","name":"bfFakeName2","page":1,"orderNumber":0,"dbId":2,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"40","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle3","name":"bfFakeName3","page":1,"orderNumber":0,"dbId":3,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"38","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle4","name":"bfFakeName4","page":1,"orderNumber":0,"dbId":4,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""}],"elementCount":0}]', 0, 1, 0, 'QuickForm1700571179', '', '', 'QuickForm1700571179', '', '', NULL, 400, 0, 500, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, '', 1, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 2, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_facileforms_integrator_criteria_fixed`
--

CREATE TABLE IF NOT EXISTS `kqt1o_facileforms_integrator_criteria_fixed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `reference_column` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `fixed_value` text NOT NULL,
  `andor` varchar(3) NOT NULL DEFAULT 'AND',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_facileforms_integrator_criteria_form`
--

CREATE TABLE IF NOT EXISTS `kqt1o_facileforms_integrator_criteria_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `reference_column` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `element_id` varchar(255) NOT NULL,
  `andor` varchar(3) NOT NULL DEFAULT 'AND',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_facileforms_integrator_criteria_joomla`
--

CREATE TABLE IF NOT EXISTS `kqt1o_facileforms_integrator_criteria_joomla` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `reference_column` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `joomla_object` varchar(255) NOT NULL,
  `andor` varchar(3) NOT NULL DEFAULT 'AND',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_facileforms_integrator_items`
--

CREATE TABLE IF NOT EXISTS `kqt1o_facileforms_integrator_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `element_id` int(11) NOT NULL,
  `reference_column` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_facileforms_integrator_rules`
--

CREATE TABLE IF NOT EXISTS `kqt1o_facileforms_integrator_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `form_id` int(11) NOT NULL,
  `reference_table` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'insert',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `finalize_code` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_facileforms_packages`
--

CREATE TABLE IF NOT EXISTS `kqt1o_facileforms_packages` (
  `id` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(30) NOT NULL DEFAULT '',
  `created` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `author` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `copyright` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kqt1o_facileforms_packages`
--

INSERT INTO `kqt1o_facileforms_packages` (`id`, `name`, `version`, `created`, `title`, `author`, `email`, `url`, `description`, `copyright`) VALUES
('', 'mypck_001', '0.0.1', '2005-07-31 22:21:23', 'My First Package', 'My Name', 'my.name@my.domain', 'http://www.my.domain', 'This is the first package that I created', 'This FacileForms package is released under the GNU/GPL license'),
('FF', 'stdlib.english', '1.8', '2012-09-21 11:50:15', 'BreezingForms-Standard Piece and Script Libraries', 'Markus Bopp', 'markus.bopp@crosstec.de', 'http://www.crosstec.de', 'These are the standard BreezingForms script and piece libraries.', 'This BreezingForms package is released under the GNU/GPL license');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_facileforms_pieces`
--

CREATE TABLE IF NOT EXISTS `kqt1o_facileforms_pieces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `package` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT '',
  `code` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `kqt1o_facileforms_pieces`
--

INSERT INTO `kqt1o_facileforms_pieces` (`id`, `published`, `package`, `name`, `title`, `description`, `type`, `code`) VALUES
(1, 1, 'FF', 'ff_addCustomCSSFile', 'Add custom CSS File', 'Adds a custom css file to the form. To choose a css file, execute this piece and call the function ff_addCustomCSSFile(''path/to/css/file'') with the RELATIVE (not full!) path to your joomla installation.\r\nDo not forget to call $this->execPieceByName(''ff_InitLib'') before!\r\n\r\nExample:\r\n\r\nglobal $mainframe;\r\n\r\n$this->execPieceByName(''ff_InitLib'');\r\n$this->execPieceByName(''ff_addCustomCSSFile'');\r\n\r\nff_addCustomCSSFile(''templates/'' . $mainframe->getTemplate() . ''/css/template.css'');', 'Before Form', 'function ff_addCustomCSSFile($path){\r\n	if(file_exists(JPATH_SITE . ''/'' . $path)){\r\n		JFactory::getDocument()->addStyleSheet(JURI::root() . $path);\r\n	}\r\n}'),
(2, 1, 'FF', 'ff_Constants', 'Constansts definitions', 'Library constants definitions', 'Before Form', 'define(''FF_DIE'',       ''_ff_die_on_errors_'');\r\ndefine(''FF_DONTDIE'',   ''_ff_stay_alive_'');\r\ndefine(''FF_IGNOREDIE'', ''_ff_ignore_if_dying_'');\r\n\r\ndefine(''FF_ARRAY'',     ''_ff_return_as_array_'');\r\ndefine(''FF_LIST'',      ''_ff_return_as_list_'');\r\ndefine(''FF_SLIST'',     ''_ff_return_as_slist_'');\r\ndefine(''FF_DLIST'',     ''_ff_return_as_dlist_'');\r\n\r\ndefine(''FF_NOTRIM'',    1);\r\ndefine(''FF_ALLOWHTML'', 2);\r\ndefine(''FF_ALLOWRAW'',  4);'),
(3, 1, 'FF', 'ff_die', 'Terminate form gracefully', 'Gracefully terminates the form and shows a message plus opionally a \r\nCONTINUE button for further redirection.\r\n\r\nCall:\r\n\r\n    ff_die($message=null, $action=''stop'', $target='''', $params='''', $label=''Continue'');\r\n    return;\r\n\r\n    $message = A message to display. If no message is provided, it will\r\n               display:\r\n\r\n                    Fatal error in $formname, processing stopped.\r\n\r\n    $action  = ''stop'' : Dont show a CONTINUE button (default)\r\n               ''self'' : Redirect to the same form\r\n               ''form'' : Redirect to another form \r\n               ''page'' : Redirect to another page of this site\r\n               ''home'' : Redirect to homepage of the site\r\n               ''url''  : Redirect to a url\r\n\r\n    $target  = Target name/url for ''form'', ''page'' and ''url''\r\n\r\n    $params  = Additional parameters for ''self'' and ''form''\r\n\r\n    $label   = Text for the continue button\r\n\r\nExamples:\r\n\r\n    // Display standard message without continue button\r\n    ff_die(); \r\n\r\n    // Display message without continue button\r\n    ff_die(''Sorry, cannot continue for some reason.'');\r\n\r\n    // Display standard message and return to same form with a parameter\r\n    ff_die(null, ''self'', ''&ff_param_foo=bar'');\r\n\r\n    // Redirect to another form\r\n    ff_die(''Guess you are hungry now...'', ''form'', ''SamplePizzaShop'', null, ''Order'');\r\n\r\n    // Redirect to another site page\r\n    ff_die(\r\n        ''Something strange has happened!'', \r\n        ''page'', \r\n        ''index.php?option=com_content&task=section&id=1&Itemid=2''\r\n    );', 'Untyped', 'function ff_die($message='''', $action=''stop'', $target='''', $params='''', $label=''Continue'')\r\n{\r\n    global $ff_processor;\r\n    if ($ff_processor->dying) return;\r\n\r\n    ob_end_clean();\r\n    $form =& $ff_processor->formrow;\r\n    if (!$message) \r\n        $message = \r\n            "<strong>Fatal error in $form->name, form processing halted.</strong>";\r\n    switch ($action) {\r\n        case ''self'': $url = ff_makeSelfUrl($params); break;\r\n        case ''form'': $url = ff_makeFormUrl($target, $params); break;\r\n        case ''page'': $url = ff_makePageUrl($target); break;\r\n        case ''home'': $url = "{mossite}"; break;\r\n        case ''url'' : $url = $target; break;\r\n        default    : $url = '''';\r\n    } // switch\r\n    if ($form->class1 != '''') echo ''<div class="''.$form->class1.''">''.nl();\r\n    echo($message.''<br/><br/><br/>''.nl());\r\n    if ($url) {\r\n        if (!$ff_processor->inline) echo ''<form action="#redirect">''.nl();\r\n        if ($ff_processor->inframe) $t = ''parent''; else $t = ''document'';\r\n        echo ''<input type="button" class="button" value="''.$label.''"''.\r\n             '' onClick="''.$t.''.location.href=\\''''.htmlentities($url,ENT_QUOTES).''\\'';"''.\r\n             ''/>''.nl();\r\n        if (!$ff_processor->inline) echo ''</form>''.nl();\r\n    } // if\r\n    if ($form->class1 != '''') echo ''</div>''.nl();\r\n    unset($form);\r\n    ob_start();\r\n    $ff_processor->suicide();\r\n} // ff_die'),
(4, 1, 'FF', 'ff_DisableFormTrace', 'Disable tracing at view time', 'Disables tracing for use as before form piece', 'Before Form', '//+trace dis'),
(5, 1, 'FF', 'ff_DisableSubmitTrace', 'Disable tracing at submit time', 'Disables tracing for use as begin submit piece', 'Begin Submit', '//+trace dis'),
(6, 1, 'FF', 'ff_dying', 'Query live status', 'Query if form is dying', 'Untyped', '//+trace max none\r\nfunction ff_dying()\r\n{\r\n    global $ff_processor; \r\n    return $ff_processor->dying;\r\n} // ff_dying'),
(7, 1, 'FF', 'ff_expString', 'String export', 'Export string function: escapes special characters in c-codes', 'Untyped', 'function ff_expString($text)\r\n{\r\n    return expstring($text);\r\n} // ff_expString'),
(8, 1, 'FF', 'ff_getPageByNameX', 'Get page # by element name', 'Gets the page number by the name of an element. \r\nTypically used to redirect to a certain page in a before form piece \r\nas \r\n\r\n    $this->page = ff_getPageByName(''elementname'');', 'Untyped', 'function ff_getPageByName($name)\r\n{\r\n    global $ff_processor;\r\n    foreach($ff_processor->rows as $row)\r\n        if ($row->name==$name)\r\n            return $row->page;\r\n    return null;\r\n} // ff_getPageByName'),
(9, 1, 'FF', 'ff_getParam', 'Get GET/POST parameter', 'Direct replacement for mosGetParam. ff_getParam will attempt to filter \r\nout parameters that are targeted to another form on the same page.', 'Untyped', 'function ff_getParam($name, $default=null, $mask=0)\r\n{\r\n    global $ff_request;\r\n    if (substr($name,0,9)==''ff_param_'') {\r\n        if (!isset($ff_request[$name])) return $default;\r\n        $val = $ff_request[$name];\r\n    } else {\r\n        if (!isset($_REQUEST[$name])) return $default;\r\n        $val = $_REQUEST[$name];\r\n    } // if\r\n    $dotrim = ($mask & FF_NOTRIM)==0;\r\n    $dostrp = ($mask & FF_ALLOWHTML)==0;\r\n    $addsla = ($mask & FF_ALLOWRAW)==0 && !get_magic_quotes_gpc();\r\n    $remsla = ($mask & FF_ALLOWRAW)!=0 && get_magic_quotes_gpc();\r\n    if (is_array($val)) {\r\n        $cnt = count($val);\r\n        for ($v = 0; $v < $cnt; $v++)\r\n            if (is_string($val[$v])) {\r\n                if ($dotrim) $val[$v] = trim($val[$v]);\r\n                if ($dostrp) $val[$v] = strip_tags($val[$v]);\r\n                if ($addsla) $val[$v] = addslashes($val[$v]);\r\n                if ($remsla) $val[$v] = stripslashes($val[$v]);\r\n            } // if\r\n    } else {\r\n        if (is_string($val)) {\r\n            if ($dotrim) $val = trim($val);\r\n            if ($dostrp) $val = strip_tags($val);\r\n            if ($addsla) $val = addslashes($val);\r\n            if ($remsla) $val = stripslashes($val);\r\n        } // if\r\n    } // if\r\n    return $val;\r\n} // ff_getParam'),
(10, 1, 'FF', 'ff_getSubmit', 'Get submited data', 'Returns submitdata either as scalar, array or list. In case of list the values\r\nare returned as a string with the values concatenated by comma.\r\n\r\nExamples:\r\n\r\n// Get as scalar: Optionally pass a default value as second parameter.\r\n// If no default is provided, it will return NULL if no value was submitted\r\n\r\n    $myval = ff_getSubmit(''myvar'');        // return NULL if not submitted\r\n\r\n    $myval = ff_getSubmit(''myvar'',1);      // return 1 if not submitted\r\n\r\n    $myval = ff_getSubmit(''myvar'',''foo'');  // return ''foo'' if not submitted\r\n\r\n    ff_query(\r\n        "insert into #__mytable(id, name) ".\r\n        "values (''".\r\n            ff_getSubmit(''id'').", ".\r\n            ff_getSubmit(''name'',''unknown'').\r\n        "'')"\r\n    );\r\n\r\n// Get as array: Pass FF_ARRAY as second Parameter\r\n\r\n    $myarr = $ff_getSubmit(''myarr'', FF_ARRAY);\r\n\r\n    foreach ($myarr as $myval) ...\r\n\r\n// Get as list: Pass either FF_LIST, FF_SLIST or FF_DLIST as 2nd parameter.\r\n\r\n    // FF_LIST will return numeric data unquoted and strings in single quotes:\r\n    //    1,2,''a'',4\r\n\r\n    // FF_SLIST will return all data single quoted:\r\n    //    ''1'',''2'',''a'',''4''\r\n\r\n    // FF_DLIST will return all data double quoted:\r\n    //    "1","2","a","4"\r\n\r\n    ff_query(\r\n        "delete from #__mytable ".\r\n        "where id in (".ff_getSubmit(''itemlist'',FF_LIST).")"\r\n    );', 'Untyped', 'function ff_getSubmit($name, $default=null)\r\n{\r\n    global $ff_processor;\r\n\r\n    switch ((string)$default) {\r\n        case FF_ARRAY: $value = array(); break;\r\n        case FF_LIST : \r\n        case FF_SLIST:\r\n        case FF_DLIST: $value = ''''; break;\r\n        default      : $value = $default;\r\n    } // switch\r\n    foreach ($ff_processor->submitdata as $data)\r\n        if ($data[_FF_DATA_NAME]==$name) {\r\n            $q = '''';\r\n            switch ((string)$default) {\r\n                case FF_ARRAY:\r\n                    $value[] = $data[_FF_DATA_VALUE];\r\n                    break;\r\n                case FF_SLIST:\r\n                    $q = "''";\r\n                case FF_DLIST:\r\n                    if ($q=='''') $q = ''"'';\r\n                case FF_LIST:\r\n                    if ($q=='''' && !is_numeric($data[_FF_DATA_VALUE])) $q = "''";\r\n                    if ($value!='''') $value.='','';\r\n                    $value .= $q.$data[_FF_DATA_VALUE].$q;\r\n                    break;\r\n                default:\r\n                    return $data[_FF_DATA_VALUE];\r\n            } // switch\r\n         } // if\r\n    return $value;\r\n} // ff_getSubmit'),
(11, 1, 'FF', 'ff_impString', 'String import', 'Import string function: unescapes c-coded characters of a string', 'Untyped', 'function ff_impString($text)\r\n{\r\n    return impstring($text);\r\n} // ff_impString'),
(12, 1, 'FF', 'ff_InitLib', 'Init Library', 'A collection of useful functions for use in form pieces. \r\n\r\nInclude by: \r\n\r\n    $this->execPieceByName(''ff_InitLib'');', 'Before Form', '//+trace high none\r\nif (!defined(''FF_DIE''))                    $this->execPieceByName(''ff_Constants'');\r\nif (!function_exists(''ff_expstring''))      $this->execPieceByName(''ff_expstring'');\r\nif (!function_exists(''ff_makePageUrl''))    $this->execPieceByName(''ff_makePageUrl'');\r\nif (!function_exists(''ff_makeFormUrl''))    $this->execPieceByName(''ff_makeFormUrl'');\r\nif (!function_exists(''ff_makeSelfUrl''))    $this->execPieceByName(''ff_makeSelfUrl'');\r\nif (!function_exists(''ff_die''))            $this->execPieceByName(''ff_die'');\r\nif (!function_exists(''ff_dying''))          $this->execPieceByName(''ff_dying'');\r\nif (!function_exists(''ff_redirect''))       $this->execPieceByName(''ff_redirect'');\r\nif (!function_exists(''ff_redirectParent'')) $this->execPieceByName(''ff_redirectParentX'');\r\nif (!function_exists(''ff_redirectPage''))   $this->execPieceByName(''ff_redirectPage'');\r\nif (!function_exists(''ff_redirectForm''))   $this->execPieceByName(''ff_redirectForm'');\r\nif (!function_exists(''ff_redirectSelf''))   $this->execPieceByName(''ff_redirectSelf'');\r\nif (!function_exists(''ff_setChecked''))     $this->execPieceByName(''ff_setCheckedX'');\r\nif (!function_exists(''ff_setSelected''))    $this->execPieceByName(''ff_setSelectedX'');\r\nif (!function_exists(''ff_setValue''))       $this->execPieceByName(''ff_setValueX'');\r\nif (!function_exists(''ff_getPageByName''))  $this->execPieceByName(''ff_getPageByNameX'');\r\nif (!function_exists(''ff_getParam''))       $this->execPieceByName(''ff_getParam'');\r\nif (!function_exists(''ff_getSubmit''))      $this->execPieceByName(''ff_getSubmit'');\r\nif (!function_exists(''ff_impString''))      $this->execPieceByName(''ff_impString'');\r\nif (!function_exists(''ff_expString''))      $this->execPieceByName(''ff_expString'');\r\nif (!function_exists(''ff_securityImage''))  $this->execPieceByName(''ff_securityImage'');\r\nif (!function_exists(''ff_select''))         $this->execPieceByName(''ff_select'');\r\nif (!function_exists(''ff_selectValue''))    $this->execPieceByName(''ff_selectValue'');\r\nif (!function_exists(''ff_query''))          $this->execPieceByName(''ff_query'');\r\nif (!function_exists(''ff_markdown''))       $this->execPieceByName(''ff_markdown'');'),
(13, 1, 'FF', 'ff_makeFormUrl', 'Make URL to other form', 'Redirects to another facile form. \r\n\r\nCall: \r\n\r\n    $url = ff_makeFormUrl($name, $params = '''');\r\n\r\nExample:\r\n\r\n    $url = ff_makeFormUrl(\r\n       ''OtherForm'', \r\n       ''&ff_param_email=''.urlencode($email)\r\n    );', 'Untyped', 'function ff_makeFormUrl($name, $params='''')\r\n{\r\n    global $ff_processor, $ff_otherparams;\r\n    $url = '''';\r\n    switch ($ff_processor->runmode) {\r\n        case 2: // preview\r\n        case 1: // backend\r\n            $url .= ''administrator/index2.php?option=com_breezingforms&act=run''.\r\n                    ''&ff_name=''.urlencode($name);\r\n            if ($ff_processor->inframe) $url .= ''&ff_frame=1'';\r\n            if ($ff_processor->border) $url .= ''&ff_border=1'';\r\n            break;\r\n        default: // frontend\r\n            $url .= ''index.php?ff_name=''.urlencode($name);\r\n            if ($ff_otherparams[''option''] == ''com_breezingforms'') {\r\n                reset($ff_otherparams);\r\n                while (list($prop, $val) = each($ff_otherparams))\r\n                    $url .= ''&''.urlencode($prop).''=''.urlencode($val);\r\n            } else\r\n                $url .= ''&option=com_breezingforms'';\r\n            if ($ff_processor->target > 1) $url .= ''&ff_target=''.$ff_processor->target;\r\n            if ($ff_processor->inframe) $url .= ''&ff_frame=1'';\r\n            if ($ff_processor->border) $url .= ''&ff_border=1'';\r\n            if ($ff_processor->align !=1) $url .= ''&ff_align=''.$ff_processor->align;\r\n            if ($ff_processor->top>0) $url .= ''&ff_top=''.$ff_processor->top;\r\n    } // switch\r\n    return ff_makePageUrl($url. $params);\r\n} // ff_makeFormUrl'),
(14, 1, 'FF', 'ff_makePageUrl', 'Make URL to other page', 'Builds an URL to another mambo page\r\n\r\nCall: \r\n\r\n    $url = ff_makePageUrl($params = '''');\r\n\r\nExample:\r\n\r\n    $url = ff_makePageUrl(\r\n        ''index.php?option=com_content&task=blogsection&id=0&Itemid=39''\r\n    );', 'Untyped', 'function ff_makePageUrl($params='''')\r\n{\r\n    $url = ''{mossite}'';\r\n    if ($params != '''') {\r\n        $len = strlen($url);\r\n        if ($len > 0 && $url{$len-1} != ''/'') $url .= ''/'';\r\n        $url .= $params;\r\n    } // if\r\n    return $url;\r\n} // ff_makePageUrl'),
(15, 1, 'FF', 'ff_makeSelfUrl', 'Make URL to same form', 'Make an URL to the same form. \r\n\r\nCall: \r\n\r\n    $url = ff_makeSelfUrl($params = '''');\r\n\r\nExample:\r\n\r\n    $url = ff_makeSelfUrl(''&ff_param_email=''.urlencode($email));', 'Untyped', 'function ff_makeSelfUrl($params='''')\r\n{\r\n    global $ff_processor;\r\n    return ff_makeFormUrl($ff_processor->formrow->name, $params);\r\n} // ff_makeSelfUrl'),
(16, 1, 'FF', 'ff_query', 'Non-select queries against db', 'Execute a simple db query.\r\n\r\nInclude by one of:\r\n\r\n    $this->execPieceByName(''ff_InitUtilities'');\r\n    $this->execPieceByName(''ff_SubmitUtilities'');\r\n    if (!function_exists(''ff_query'')) $this->execPieceByName(''ff_query'');\r\n\r\nCall syntax:\r\n\r\n    [$newid = ] ff_query($sql [, $insert = 0]);\r\n\r\n    $sql:    Sql statement to call\r\n    $insert: 1 = return key of auto column when inserting rows\r\n    $newid:  The key of the new row.', 'Untyped', 'function ff_query($sql, $insert=false, $error=FF_DIE)\r\n{\r\n    global $ff_processor;\r\n    $database = JFactory::getDBO();\r\n    if ($ff_processor->dying && $error!=FF_IGNOREDIE) return -1;\r\n    $database->setQuery($sql);\r\n    $database->query();\r\n    if ($database->getErrorNum()) {\r\n        $dienow = $error==FF_DIE;\r\n        $error = $database->stderr();\r\n        if ($dienow) ff_die($error);\r\n    } else {\r\n        $error = null;\r\n        if ($insert) return $database->insertid();\r\n    } // if\r\n    return 0;\r\n} // ff_query'),
(17, 1, 'FF', 'ff_redirect', 'Basic redirection', 'Basic redirection routine supporting multiple targets and methods.\r\n\r\nCall:\r\n \r\nff_redirect($url [, $target=''self'' , $method=''post''])\r\n\r\n    $url    = The url to redirect to including the parameters appended.\r\n\r\n    $target = ''top'', ''parent'', ''self'' or ''blank''\r\n\r\n              ''top''    = redirect to the top browser window\r\n              ''parent'' = redirect to the parent frame\r\n              ''self''   = redirect in the same frame (the default)\r\n              ''blank''  = redirect to a new browser window \r\n                         (blank works with post method only)\r\n\r\n    $method = ''post'' or ''get''. The default is ''post''.\r\n\r\n    Example:\r\n\r\n       ff_redirect(\r\n          ''http://mysite.net/index.php?option=xxx&Itemid=33'',\r\n          ''top''\r\n       );', 'Untyped', 'function ff_redirect($url, $target=''self'', $method=''post'')\r\n{\r\n    global $ff_processor, $ff_request;\r\n    if ($ff_processor->dying) return;\r\n\r\n    ob_end_clean();\r\n    switch (strtolower($method)) {\r\n        case ''get'': {\r\n            switch (strtolower($target)) {\r\n                case ''top''   :\r\n                case ''parent'': break;\r\n                default      : $target = ''document'';\r\n            } // switch\r\n            echo ''<script type="text/javascript">''.nl().\r\n                 ''<!--''.nl().\r\n                 "onload=function() { ".$target.".location.href=''".$url."''; }".nl().\r\n                 ''-->''.nl().\r\n                 ''</script>''.nl().\r\n                 ''</body>''.nl();\r\n            break;\r\n        } // url\r\n        default: { // post\r\n            $pos = strpos($url,''?'');\r\n            $ff_request = array();\r\n            if ($pos === false)\r\n                $action = $url;\r\n            else {\r\n                $action = substr($url,0,$pos);\r\n                addRequestParams(substr($url, $pos+1));\r\n            } // if\r\n            switch (strtolower($target)) {\r\n                case ''blank'' : $target = '' target="_blank"'';  break;\r\n                case ''top''   : $target = '' target="_top"'';    break;\r\n                case ''parent'': $target = '' target="_parent"''; break;\r\n                default      : $target = '' target="_self"'';\r\n            } // switch\r\n            echo ''<script language="javascript" type="text/javascript">''.nl().\r\n                 ''<!--''.nl().\r\n                 ''onload = function() { document.ff_redirect.submit(); }''.nl().\r\n                 ''-->''.nl().\r\n                 ''</script>''.nl().\r\n                 ''<form action="''.$action.''" ''.\r\n                  ''method="post" ''.\r\n                  ''name="ff_redirect" id="ff_redirect" ''.\r\n                  ''enctype="multipart/form-data"''.\r\n                  $target.\r\n                 ''>''.nl();\r\n            while (list($prop, $val) = each($ff_request))\r\n                echo ''<input type="hidden" name="''.$prop.''" ''.\r\n                            ''value="''.htmlentities(urldecode($val)).''"/>''.nl();\r\n            echo ''</form>''.nl().\r\n                 ''</body>''.nl();\r\n        } // post\r\n    } // switch\r\n    exit;\r\n} // ff_redirect'),
(18, 1, 'FF', 'ff_redirectForm', 'Redirect to other form', 'Redirects to another facile form. \r\n\r\nCall: \r\n\r\n    ff_redirectForm($name, $params = '''');\r\n\r\nExample:\r\n\r\n    ff_redirectForm(\r\n        $this, \r\n       ''SecondForm'', \r\n       ''&ff_param_email=''.urlencode($email)\r\n    );', 'Untyped', 'function ff_redirectForm($name, $params='''', $method=''post'')\r\n{\r\n    ff_redirectParent(ff_makeFormUrl($name, $params), $method);\r\n} // ff_redirectForm'),
(19, 1, 'FF', 'ff_redirectPage', 'Redirect to other page', 'Redirects to another mambo page. \r\n\r\nCall: \r\n\r\n    ff_redirectPage($params = '''');\r\n\r\nExample:\r\n\r\n    ff_redirectPage(\r\n        ''index.php?option=com_content&task=blogsection&id=0&Itemid=39''\r\n    );', 'Untyped', 'function ff_redirectPage($params='''', $method=''post'')\r\n{\r\n    ff_redirectParent(ff_makePageUrl($params), $method);\r\n} // ff_redirectPage'),
(20, 1, 'FF', 'ff_redirectParentX', 'Redirect to parent window', 'Redirects to the parent window when runing in iframe, otherwise to self. \r\n\r\nff_redirectParent($url [, $method=''post''])\r\n\r\n    $url    = The url to redirect to including the parameters appended.\r\n\r\n    $method = ''post'' or ''url''. The default is ''post''.\r\n\r\n    Example:\r\n\r\n       ff_redirectParent(\r\n          ''http://mysite.net/index.php?option=xxx&Itemid=33'',\r\n          ''url''\r\n       );', 'Untyped', 'function ff_redirectParent($url, $method = ''post'')\r\n{\r\n    global $ff_processor;\r\n    if ($ff_processor->inframe) $target = ''parent''; else $target = ''self''; \r\n    ff_redirect($url, $target, $method);\r\n} // ff_redirectParent'),
(21, 1, 'FF', 'ff_redirectSelf', 'Redirect to same form', 'Redirects to the same form. \r\n\r\nCall: \r\n\r\n    ff_redirectSelf($params = '''');\r\n\r\nExample:\r\n\r\n    ff_redirectSelf(''&ff_param_email=''.urlencode($email));', 'Untyped', 'function ff_redirectSelf($params='''', $method=''post'')\r\n{\r\n    ff_redirectParent(ff_makeSelfUrl($params), $method);\r\n} // ff_redirectSelf'),
(22, 1, 'FF', 'ff_securityImage', 'Security Image', 'Create code to display the security image', 'Untyped', 'global $ff_seccode;\r\n\r\nif (!isset($this->record_id)) { $ff_seccode = null; }\r\n\r\nfunction ff_securityImage()\r\n{\r\n    global $ff_comsite, $ff_seccode;\r\n    if (!isset($ff_seccode)) { \r\n        mt_srand((double)microtime()*1000000);\r\n        $ff_seccode = mt_rand(10000, 99999);\r\n        JFactory::getSession()->set(''ff_seccode'', $ff_seccode);\r\n    } // if\r\n\r\n    return ''<img src="''.JURI::root().''ff_secimage.php?option=com_breezingforms&showSecImage=true" title="" alt="" />'';\r\n} // ff_securityImage'),
(23, 1, 'FF', 'ff_select', 'Select rows from db', 'Execute a select query\r\n\r\nInclude by one of:\r\n\r\n    $this->execPieceByName(''ff_InitUtilities'');\r\n    $this->execPieceByName(''ff_SubmitUtilities'');\r\n    if (!function_exists(''ff_select'')) $this->execPieceByName(''ff_select'');\r\n\r\nCall syntax:\r\n\r\n    $rows = ff_select($sql);\r\n\r\n    $sql:    Sql SELECT-statement to call\r\n    $rows:   List of row objects', 'Untyped', 'function ff_select($sql, $error=FF_DIE)\r\n{\r\n    $database = JFactory::getDBO();\r\n    $database->setQuery($sql);\r\n    $rows = $database->loadObjectList();\r\n    if ($database->getErrorNum()) {\r\n        $dienow = $error==FF_DIE;\r\n        $error = $database->stderr();\r\n        $rows = array();\r\n        if ($dienow) ff_die($error);\r\n    } else\r\n        $error = null;\r\n    return $rows;\r\n} // ff_select'),
(24, 1, 'FF', 'ff_selectValue', 'Select single value from db', 'Execute query to read a single value\r\n\r\nInclude by one of:\r\n\r\n    $this->execPieceByName(''ff_InitUtilities'');\r\n    $this->execPieceByName(''ff_SubmitUtilities'');\r\n    if (!function_exists(''ff_selectValue'')) $this->execPieceByName(''ff_selectValue'');\r\n\r\nCall syntax:\r\n\r\n    $value = ff_selectValue($sql);\r\n\r\n    $sql:    Sql SELECT-statement to call\r\n    $value:  The value returned by the database', 'Untyped', 'function ff_selectValue($sql, $def=null, $error=FF_DIE)\r\n{\r\n    $database = JFactory::getDBO();\r\n    $database->setQuery($sql);\r\n    $value = $database->loadResult();\r\n    if ($database->getErrorNum()) {\r\n        $dienow = $error==FF_DIE;\r\n        $error = $database->stderr();\r\n        if ($dienow) ff_die($error);\r\n    } else {\r\n        $error = null;\r\n        if ($value) return $value;\r\n    } // if\r\n    return $def;\r\n} // ff_selectValue'),
(25, 1, 'FF', 'ff_setCheckedX', 'Set checkbox/radiobutton checked', 'Set a radio button or checkbox checked. \r\n\r\nCall: \r\n\r\n    ff_setChecked(''name'', ''value'');', 'Untyped', 'function ff_setChecked($name, $value)\r\n{\r\n    global $ff_processor;\r\n    for ($r = 0; $r < $ff_processor->rowcount; $r++) {\r\n        $row =& $ff_processor->rows[$r];\r\n        if ($row->name==$name && $row->data1==$value)\r\n            $row->flag1 = 1;\r\n        unset($row);\r\n    } // for\r\n} // ff_setChecked'),
(26, 1, 'FF', 'ff_setSelectedX', 'Set a select list option to *selected*', 'Sets a select list option to selected. \r\n\r\nCall: \r\n\r\n    ff_setSelected(''name'', ''value'');', 'Untyped', 'function ff_setSelected($name, $value)\r\n{\r\n    global $ff_processor;\r\n    for ($r = 0; $r < $ff_processor->rowcount; $r++) {\r\n        $row =& $ff_processor->rows[$r];\r\n        if ($row->name==$name)\r\n            $row->data2 =\r\n                preg_replace(\r\n                    ''/(^|\\r\\n|\\n)(0|1);([^;]*);(''.$value.'')($|\\r\\n|\\n)/'',\r\n                    ''${1}1;${3};${4}${5}'',\r\n                    $row->data2\r\n                );\r\n        unset($row);\r\n    } // for\r\n} // ff_setSelected'),
(27, 1, 'FF', 'ff_setValueX', 'Set text, textarea, hidden value', 'Set value of a Static Text, Text, Textarea or Hidden Input. \r\n\r\nCall: \r\n\r\n    ff_setValue(''name'', ''value'');', 'Untyped', 'function ff_setValue($name, $value)\r\n{\r\n    global $ff_processor;\r\n    for ($r = 0; $r < $ff_processor->rowcount; $r++) {\r\n        $row =& $ff_processor->rows[$r];\r\n        if ($row->name==$name)\r\n            $row->data1 = $value;\r\n        unset($row);\r\n    } // for\r\n} // ff_setValue');
INSERT INTO `kqt1o_facileforms_pieces` (`id`, `published`, `package`, `name`, `title`, `description`, `type`, `code`) VALUES
(28, 1, 'FF', 'Markdown', 'Original Markdown Processor', 'Converts text marked up by ''Markdown'' into HTML.\r\n\r\nPlease use ff_markdown() in forms instead of Markdown()', 'Untyped', '#\r\n# Markdown  -  A text-to-HTML conversion tool for web writers\r\n#\r\n# Copyright (c) 2004-2005 John Gruber\r\n# <http://daringfireball.net/projects/markdown/>\r\n#\r\n# Copyright (c) 2004-2005 Michel Fortin - PHP Port\r\n# <http://www.michelf.com/projects/php-markdown/>\r\n#\r\n\r\nglobal	$MarkdownPHPVersion, $MarkdownSyntaxVersion,\r\n		$md_empty_element_suffix, $md_tab_width,\r\n		$md_nested_brackets_depth, $md_nested_brackets,\r\n		$md_escape_table, $md_backslash_escape_table,\r\n		$md_list_level;\r\n\r\n$MarkdownPHPVersion    = ''1.0.1b''; # Mon 6 Jun 2005\r\n$MarkdownSyntaxVersion = ''1.0.1'';  # Sun 12 Dec 2004\r\n\r\n\r\n#\r\n# Global default settings:\r\n#\r\n$md_empty_element_suffix = " />";     # Change to ">" for HTML output\r\n$md_tab_width = 4;\r\n\r\n#\r\n# WordPress settings:\r\n#\r\n$md_wp_posts    = true;  # Set to false to remove Markdown from posts.\r\n$md_wp_comments = true;  # Set to false to remove Markdown from comments.\r\n\r\n\r\n# -- WordPress Plugin Interface -----------------------------------------------\r\n/*\r\nPlugin Name: Markdown\r\nPlugin URI: http://www.michelf.com/projects/php-markdown/\r\nDescription: <a href="http://daringfireball.net/projects/markdown/syntax">Markdown syntax</a> allows you to write using an easy-to-read, easy-to-write plain text format. Based on the original Perl version by <a href="http://daringfireball.net/">John Gruber</a>. <a href="http://www.michelf.com/projects/php-markdown/">More...</a>\r\nVersion: 1.0.1b\r\nAuthor: Michel Fortin\r\nAuthor URI: http://www.michelf.com/\r\n*/\r\nif (isset($wp_version)) {\r\n	# More details about how it works here:\r\n	# <http://www.michelf.com/weblog/2005/wordpress-text-flow-vs-markdown/>\r\n\r\n	# Post content and excerpts\r\n	if ($md_wp_posts) {\r\n		remove_filter(''the_content'',  ''wpautop'');\r\n		remove_filter(''the_excerpt'',  ''wpautop'');\r\n		add_filter(''the_content'',     ''Markdown'', 6);\r\n		add_filter(''get_the_excerpt'', ''Markdown'', 6);\r\n		add_filter(''get_the_excerpt'', ''trim'', 7);\r\n		add_filter(''the_excerpt'',     ''md_add_p'');\r\n		add_filter(''the_excerpt_rss'', ''md_strip_p'');\r\n\r\n		remove_filter(''content_save_pre'',  ''balanceTags'', 50);\r\n		remove_filter(''excerpt_save_pre'',  ''balanceTags'', 50);\r\n		add_filter(''the_content'',  	  ''balanceTags'', 50);\r\n		add_filter(''get_the_excerpt'', ''balanceTags'', 9);\r\n\r\n		function md_add_p($text) {\r\n			if (strlen($text) == 0) return;\r\n			if (strcasecmp(substr($text, -3), ''<p>'') == 0) return $text;\r\n			return ''<p>''.$text.''</p>'';\r\n		}\r\n		function md_strip_p($t) { return preg_replace(''{</?[pP]>}'', '''', $t); }\r\n	}\r\n\r\n	# Comments\r\n	if ($md_wp_comments) {\r\n		remove_filter(''comment_text'', ''wpautop'');\r\n		remove_filter(''comment_text'', ''make_clickable'');\r\n		add_filter(''pre_comment_content'', ''Markdown'', 6);\r\n		add_filter(''pre_comment_content'', ''md_hide_tags'', 8);\r\n		add_filter(''pre_comment_content'', ''md_show_tags'', 12);\r\n		add_filter(''get_comment_text'',    ''Markdown'', 6);\r\n		add_filter(''get_comment_excerpt'', ''Markdown'', 6);\r\n		add_filter(''get_comment_excerpt'', ''md_strip_p'', 7);\r\n\r\n		global $md_hidden_tags;\r\n		$md_hidden_tags = array(\r\n			''<p>''	=> md5(''<p>''),		''</p>''	=> md5(''</p>''),\r\n			''<pre>''	=> md5(''<pre>''),	''</pre>''=> md5(''</pre>''),\r\n			''<ol>''	=> md5(''<ol>''),		''</ol>''	=> md5(''</ol>''),\r\n			''<ul>''	=> md5(''<ul>''),		''</ul>''	=> md5(''</ul>''),\r\n			''<li>''	=> md5(''<li>''),		''</li>''	=> md5(''</li>''),\r\n			);\r\n\r\n		function md_hide_tags($text) {\r\n			global $md_hidden_tags;\r\n			return str_replace(array_keys($md_hidden_tags),\r\n								array_values($md_hidden_tags), $text);\r\n		}\r\n		function md_show_tags($text) {\r\n			global $md_hidden_tags;\r\n			return str_replace(array_values($md_hidden_tags),\r\n								array_keys($md_hidden_tags), $text);\r\n		}\r\n	}\r\n}\r\n\r\n\r\n# -- bBlog Plugin Info --------------------------------------------------------\r\nfunction identify_modifier_markdown() {\r\n	global $MarkdownPHPVersion;\r\n	return array(\r\n		''name''			=> ''markdown'',\r\n		''type''			=> ''modifier'',\r\n		''nicename''		=> ''Markdown'',\r\n		''description''	=> ''A text-to-HTML conversion tool for web writers'',\r\n		''authors''		=> ''Michel Fortin and John Gruber'',\r\n		''licence''		=> ''GPL'',\r\n		''version''		=> $MarkdownPHPVersion,\r\n		''help''			=> ''<a href="http://daringfireball.net/projects/markdown/syntax">Markdown syntax</a> allows you to write using an easy-to-read, easy-to-write plain text format. Based on the original Perl version by <a href="http://daringfireball.net/">John Gruber</a>. <a href="http://www.michelf.com/projects/php-markdown/">More...</a>''\r\n	);\r\n}\r\n\r\n# -- Smarty Modifier Interface ------------------------------------------------\r\nfunction smarty_modifier_markdown($text) {\r\n	return Markdown($text);\r\n}\r\n\r\n# -- Textile Compatibility Mode -----------------------------------------------\r\n# Rename this file to "classTextile.php" and it can replace Textile anywhere.\r\nif (strcasecmp(substr(__FILE__, -16), "classTextile.php") == 0) {\r\n	# Try to include PHP SmartyPants. Should be in the same directory.\r\n	@include_once ''smartypants.php'';\r\n	# Fake Textile class. It calls Markdown instead.\r\n	class Textile {\r\n		function TextileThis($text, $lite='''', $encode='''', $noimage='''', $strict='''') {\r\n			if ($lite == '''' && $encode == '''')   $text = Markdown($text);\r\n			if (function_exists(''SmartyPants'')) $text = SmartyPants($text);\r\n			return $text;\r\n		}\r\n	}\r\n}\r\n\r\n\r\n\r\n#\r\n# Globals:\r\n#\r\n\r\n# Regex to match balanced [brackets].\r\n# Needed to insert a maximum bracked depth while converting to PHP.\r\n$md_nested_brackets_depth = 6;\r\n$md_nested_brackets =\r\n	str_repeat(''(?>[^\\[\\]]+|\\['', $md_nested_brackets_depth).\r\n	str_repeat(''\\])*'', $md_nested_brackets_depth);\r\n\r\n# Table of hash values for escaped characters:\r\n$md_escape_table = array(\r\n	"\\\\" => md5("\\\\"),\r\n	"`" => md5("`"),\r\n	"*" => md5("*"),\r\n	"_" => md5("_"),\r\n	"{" => md5("{"),\r\n	"}" => md5("}"),\r\n	"[" => md5("["),\r\n	"]" => md5("]"),\r\n	"(" => md5("("),\r\n	")" => md5(")"),\r\n	">" => md5(">"),\r\n	"#" => md5("#"),\r\n	"+" => md5("+"),\r\n	"-" => md5("-"),\r\n	"." => md5("."),\r\n	"!" => md5("!")\r\n);\r\n# Create an identical table but for escaped characters.\r\n$md_backslash_escape_table;\r\nforeach ($md_escape_table as $key => $char)\r\n	$md_backslash_escape_table["\\\\$key"] = $char;\r\n\r\n\r\nfunction Markdown($text) {\r\n#\r\n# Main function. The order in which other subs are called here is\r\n# essential. Link and image substitutions need to happen before\r\n# _EscapeSpecialCharsWithinTagAttributes(), so that any *''s or _''s in the <a>\r\n# and <img> tags get encoded.\r\n#\r\n	# Clear the global hashes. If we don''t clear these, you get conflicts\r\n	# from other articles when generating a page which contains more than\r\n	# one article (e.g. an index page that shows the N most recent\r\n	# articles):\r\n	global $md_urls, $md_titles, $md_html_blocks;\r\n	$md_urls = array();\r\n	$md_titles = array();\r\n	$md_html_blocks = array();\r\n\r\n	# Standardize line endings:\r\n	#   DOS to Unix and Mac to Unix\r\n	$text = str_replace(array("\\r\\n", "\\r"), "\\n", $text);\r\n\r\n	# Make sure $text ends with a couple of newlines:\r\n	$text .= "\\n\\n";\r\n\r\n	# Convert all tabs to spaces.\r\n	$text = _Detab($text);\r\n\r\n	# Strip any lines consisting only of spaces and tabs.\r\n	# This makes subsequent regexen easier to write, because we can\r\n	# match consecutive blank lines with /\\n+/ instead of something\r\n	# contorted like /[ \\t]*\\n+/ .\r\n	$text = preg_replace(''/^[ \\t]+$/m'', '''', $text);\r\n\r\n	# Turn block-level HTML blocks into hash entries\r\n	$text = _HashHTMLBlocks($text);\r\n\r\n	# Strip link definitions, store in hashes.\r\n	$text = _StripLinkDefinitions($text);\r\n\r\n	$text = _RunBlockGamut($text);\r\n\r\n	$text = _UnescapeSpecialChars($text);\r\n\r\n	return $text . "\\n";\r\n}\r\n\r\n\r\nfunction _StripLinkDefinitions($text) {\r\n#\r\n# Strips link definitions from text, stores the URLs and titles in\r\n# hash references.\r\n#\r\n	global $md_tab_width;\r\n	$less_than_tab = $md_tab_width - 1;\r\n\r\n	# Link defs are in the form: ^[id]: url "optional title"\r\n	$text = preg_replace_callback(''{\r\n						^[ ]{0,''.$less_than_tab.''}\\[(.+)\\]:	# id = $1\r\n						  [ \\t]*\r\n						  \\n?				# maybe *one* newline\r\n						  [ \\t]*\r\n						<?(\\S+?)>?			# url = $2\r\n						  [ \\t]*\r\n						  \\n?				# maybe one newline\r\n						  [ \\t]*\r\n						(?:\r\n							(?<=\\s)			# lookbehind for whitespace\r\n							["(]\r\n							(.+?)			# title = $3\r\n							[")]\r\n							[ \\t]*\r\n						)?	# title is optional\r\n						(?:\\n+|\\Z)\r\n		}xm'',\r\n		''_StripLinkDefinitions_callback'',\r\n		$text);\r\n	return $text;\r\n}\r\nfunction _StripLinkDefinitions_callback($matches) {\r\n	global $md_urls, $md_titles;\r\n	$link_id = strtolower($matches[1]);\r\n	$md_urls[$link_id] = _EncodeAmpsAndAngles($matches[2]);\r\n	if (isset($matches[3]))\r\n		$md_titles[$link_id] = str_replace(''"'', ''&quot;'', $matches[3]);\r\n	return ''''; # String that will replace the block\r\n}\r\n\r\n\r\nfunction _HashHTMLBlocks($text) {\r\n	global $md_tab_width;\r\n	$less_than_tab = $md_tab_width - 1;\r\n\r\n	# Hashify HTML blocks:\r\n	# We only want to do this for block-level HTML tags, such as headers,\r\n	# lists, and tables. That''s because we still want to wrap <p>s around\r\n	# "paragraphs" that are wrapped in non-block-level tags, such as anchors,\r\n	# phrase emphasis, and spans. The list of tags we''re looking for is\r\n	# hard-coded:\r\n	$block_tags_a = ''p|div|h[1-6]|blockquote|pre|table|dl|ol|ul|''.\r\n					''script|noscript|form|fieldset|iframe|math|ins|del'';\r\n	$block_tags_b = ''p|div|h[1-6]|blockquote|pre|table|dl|ol|ul|''.\r\n					''script|noscript|form|fieldset|iframe|math'';\r\n\r\n	# First, look for nested blocks, e.g.:\r\n	# 	<div>\r\n	# 		<div>\r\n	# 		tags for inner block must be indented.\r\n	# 		</div>\r\n	# 	</div>\r\n	#\r\n	# The outermost tags must start at the left margin for this to match, and\r\n	# the inner nested divs must be indented.\r\n	# We need to do this before the next, more liberal match, because the next\r\n	# match will start at the first `<div>` and stop at the first `</div>`.\r\n	$text = preg_replace_callback("{\r\n				(						# save in $1\r\n					^					# start of line  (with /m)\r\n					<($block_tags_a)	# start tag = $2\r\n					\\\\b					# word break\r\n					(.*\\\\n)*?			# any number of lines, minimally matching\r\n					</\\\\2>				# the matching end tag\r\n					[ \\\\t]*				# trailing spaces/tabs\r\n					(?=\\\\n+|\\\\Z)	# followed by a newline or end of document\r\n				)\r\n		}xm",\r\n		''_HashHTMLBlocks_callback'',\r\n		$text);\r\n\r\n	#\r\n	# Now match more liberally, simply from `\\n<tag>` to `</tag>\\n`\r\n	#\r\n	$text = preg_replace_callback("{\r\n				(						# save in $1\r\n					^					# start of line  (with /m)\r\n					<($block_tags_b)	# start tag = $2\r\n					\\\\b					# word break\r\n					(.*\\\\n)*?			# any number of lines, minimally matching\r\n					.*</\\\\2>				# the matching end tag\r\n					[ \\\\t]*				# trailing spaces/tabs\r\n					(?=\\\\n+|\\\\Z)	# followed by a newline or end of document\r\n				)\r\n		}xm",\r\n		''_HashHTMLBlocks_callback'',\r\n		$text);\r\n\r\n	# Special case just for <hr />. It was easier to make a special case than\r\n	# to make the other regex more complicated.\r\n	$text = preg_replace_callback(''{\r\n				(?:\r\n					(?<=\\n\\n)		# Starting after a blank line\r\n					|				# or\r\n					\\A\\n?			# the beginning of the doc\r\n				)\r\n				(						# save in $1\r\n					[ ]{0,''.$less_than_tab.''}\r\n					<(hr)				# start tag = $2\r\n					\\b					# word break\r\n					([^<>])*?			#\r\n					/?>					# the matching end tag\r\n					[ \\t]*\r\n					(?=\\n{2,}|\\Z)		# followed by a blank line or end of document\r\n				)\r\n		}x'',\r\n		''_HashHTMLBlocks_callback'',\r\n		$text);\r\n\r\n	# Special case for standalone HTML comments:\r\n	$text = preg_replace_callback(''{\r\n				(?:\r\n					(?<=\\n\\n)		# Starting after a blank line\r\n					|				# or\r\n					\\A\\n?			# the beginning of the doc\r\n				)\r\n				(						# save in $1\r\n					[ ]{0,''.$less_than_tab.''}\r\n					(?s:\r\n						<!\r\n						(--.*?--\\s*)+\r\n						>\r\n					)\r\n					[ \\t]*\r\n					(?=\\n{2,}|\\Z)		# followed by a blank line or end of document\r\n				)\r\n			}x'',\r\n			''_HashHTMLBlocks_callback'',\r\n			$text);\r\n\r\n	return $text;\r\n}\r\nfunction _HashHTMLBlocks_callback($matches) {\r\n	global $md_html_blocks;\r\n	$text = $matches[1];\r\n	$key = md5($text);\r\n	$md_html_blocks[$key] = $text;\r\n	return "\\n\\n$key\\n\\n"; # String that will replace the block\r\n}\r\n\r\n\r\nfunction _RunBlockGamut($text) {\r\n#\r\n# These are all the transformations that form block-level\r\n# tags like paragraphs, headers, and list items.\r\n#\r\n	global $md_empty_element_suffix;\r\n\r\n	$text = _DoHeaders($text);\r\n\r\n	# Do Horizontal Rules:\r\n	$text = preg_replace(\r\n		array(''{^[ ]{0,2}([ ]?\\*[ ]?){3,}[ \\t]*$}mx'',\r\n			  ''{^[ ]{0,2}([ ]? -[ ]?){3,}[ \\t]*$}mx'',\r\n			  ''{^[ ]{0,2}([ ]? _[ ]?){3,}[ \\t]*$}mx''),\r\n		"\\n<hr$md_empty_element_suffix\\n",\r\n		$text);\r\n\r\n	$text = _DoLists($text);\r\n	$text = _DoCodeBlocks($text);\r\n	$text = _DoBlockQuotes($text);\r\n\r\n	# We already ran _HashHTMLBlocks() before, in Markdown(), but that\r\n	# was to escape raw HTML in the original Markdown source. This time,\r\n	# we''re escaping the markup we''ve just created, so that we don''t wrap\r\n	# <p> tags around block-level tags.\r\n	$text = _HashHTMLBlocks($text);\r\n	$text = _FormParagraphs($text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _RunSpanGamut($text) {\r\n#\r\n# These are all the transformations that occur *within* block-level\r\n# tags like paragraphs, headers, and list items.\r\n#\r\n	global $md_empty_element_suffix;\r\n\r\n	$text = _DoCodeSpans($text);\r\n\r\n	$text = _EscapeSpecialChars($text);\r\n\r\n	# Process anchor and image tags. Images must come first,\r\n	# because ![foo][f] looks like an anchor.\r\n	$text = _DoImages($text);\r\n	$text = _DoAnchors($text);\r\n\r\n	# Make links out of things like `<http://example.com/>`\r\n	# Must come after _DoAnchors(), because you can use < and >\r\n	# delimiters in inline links like [this](<url>).\r\n	$text = _DoAutoLinks($text);\r\n	$text = _EncodeAmpsAndAngles($text);\r\n	$text = _DoItalicsAndBold($text);\r\n\r\n	# Do hard breaks:\r\n	$text = preg_replace(''/ {2,}\\n/'', "<br$md_empty_element_suffix\\n", $text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _EscapeSpecialChars($text) {\r\n	global $md_escape_table;\r\n	$tokens = _TokenizeHTML($text);\r\n\r\n	$text = '''';   # rebuild $text from the tokens\r\n#	$in_pre = 0;  # Keep track of when we''re inside <pre> or <code> tags.\r\n#	$tags_to_skip = "!<(/?)(?:pre|code|kbd|script|math)[\\s>]!";\r\n\r\n	foreach ($tokens as $cur_token) {\r\n		if ($cur_token[0] == ''tag'') {\r\n			# Within tags, encode * and _ so they don''t conflict\r\n			# with their use in Markdown for italics and strong.\r\n			# We''re replacing each such character with its\r\n			# corresponding MD5 checksum value; this is likely\r\n			# overkill, but it should prevent us from colliding\r\n			# with the escape values by accident.\r\n			$cur_token[1] = str_replace(array(''*'', ''_''),\r\n				array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n				$cur_token[1]);\r\n			$text .= $cur_token[1];\r\n		} else {\r\n			$t = $cur_token[1];\r\n			$t = _EncodeBackslashEscapes($t);\r\n			$text .= $t;\r\n		}\r\n	}\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _DoAnchors($text) {\r\n#\r\n# Turn Markdown link shortcuts into XHTML <a> tags.\r\n#\r\n	global $md_nested_brackets;\r\n	#\r\n	# First, handle reference-style links: [link text] [id]\r\n	#\r\n	$text = preg_replace_callback("{\r\n		(					# wrap whole match in $1\r\n		  \\\\[\r\n			($md_nested_brackets)	# link text = $2\r\n		  \\\\]\r\n\r\n		  [ ]?				# one optional space\r\n		  (?:\\\\n[ ]*)?		# one optional newline followed by spaces\r\n\r\n		  \\\\[\r\n			(.*?)		# id = $3\r\n		  \\\\]\r\n		)\r\n		}xs",\r\n		''_DoAnchors_reference_callback'', $text);\r\n\r\n	#\r\n	# Next, inline-style links: [link text](url "optional title")\r\n	#\r\n	$text = preg_replace_callback("{\r\n		(				# wrap whole match in $1\r\n		  \\\\[\r\n			($md_nested_brackets)	# link text = $2\r\n		  \\\\]\r\n		  \\\\(			# literal paren\r\n			[ \\\\t]*\r\n			<?(.*?)>?	# href = $3\r\n			[ \\\\t]*\r\n			(			# $4\r\n			  ([''\\"])	# quote char = $5\r\n			  (.*?)		# Title = $6\r\n			  \\\\5		# matching quote\r\n			)?			# title is optional\r\n		  \\\\)\r\n		)\r\n		}xs",\r\n		''_DoAnchors_inline_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoAnchors_reference_callback($matches) {\r\n	global $md_urls, $md_titles, $md_escape_table;\r\n	$whole_match = $matches[1];\r\n	$link_text   = $matches[2];\r\n	$link_id     = strtolower($matches[3]);\r\n\r\n	if ($link_id == "") {\r\n		$link_id = strtolower($link_text); # for shortcut links like [this][].\r\n	}\r\n\r\n	if (isset($md_urls[$link_id])) {\r\n		$url = $md_urls[$link_id];\r\n		# We''ve got to encode these to avoid conflicting with italics/bold.\r\n		$url = str_replace(array(''*'', ''_''),\r\n						   array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n						   $url);\r\n		$result = "<a href=\\"$url\\"";\r\n		if ( isset( $md_titles[$link_id] ) ) {\r\n			$title = $md_titles[$link_id];\r\n			$title = str_replace(array(''*'',     ''_''),\r\n								 array($md_escape_table[''*''],\r\n									   $md_escape_table[''_'']), $title);\r\n			$result .=  " title=\\"$title\\"";\r\n		}\r\n		$result .= ">$link_text</a>";\r\n	}\r\n	else {\r\n		$result = $whole_match;\r\n	}\r\n	return $result;\r\n}\r\nfunction _DoAnchors_inline_callback($matches) {\r\n	global $md_escape_table;\r\n	$whole_match	= $matches[1];\r\n	$link_text		= $matches[2];\r\n	$url			= $matches[3];\r\n	$title			=& $matches[6];\r\n\r\n	# We''ve got to encode these to avoid conflicting with italics/bold.\r\n	$url = str_replace(array(''*'', ''_''),\r\n					   array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n					   $url);\r\n	$result = "<a href=\\"$url\\"";\r\n	if (isset($title)) {\r\n		$title = str_replace(''"'', ''&quot;'', $title);\r\n		$title = str_replace(array(''*'', ''_''),\r\n							 array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n							 $title);\r\n		$result .=  " title=\\"$title\\"";\r\n	}\r\n\r\n	$result .= ">$link_text</a>";\r\n\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _DoImages($text) {\r\n#\r\n# Turn Markdown image shortcuts into <img> tags.\r\n#\r\n	global $md_nested_brackets;\r\n\r\n	#\r\n	# First, handle reference-style labeled images: ![alt text][id]\r\n	#\r\n	$text = preg_replace_callback(''{\r\n		(				# wrap whole match in $1\r\n		  !\\[\r\n			(''.$md_nested_brackets.'')		# alt text = $2\r\n		  \\]\r\n\r\n		  [ ]?				# one optional space\r\n		  (?:\\n[ ]*)?		# one optional newline followed by spaces\r\n\r\n		  \\[\r\n			(.*?)		# id = $3\r\n		  \\]\r\n\r\n		)\r\n		}xs'',\r\n		''_DoImages_reference_callback'', $text);\r\n\r\n	#\r\n	# Next, handle inline images:  ![alt text](url "optional title")\r\n	# Don''t forget: encode * and _\r\n\r\n	$text = preg_replace_callback(''{\r\n		(				# wrap whole match in $1\r\n		  !\\[\r\n			(''.$md_nested_brackets.'')		# alt text = $2\r\n		  \\]\r\n		  \\(			# literal paren\r\n			[ \\t]*\r\n			<?(\\S+?)>?	# src url = $3\r\n			[ \\t]*\r\n			(			# $4\r\n			  ([\\''"])	# quote char = $5\r\n			  (.*?)		# title = $6\r\n			  \\5		# matching quote\r\n			  [ \\t]*\r\n			)?			# title is optional\r\n		  \\)\r\n		)\r\n		}xs'',\r\n		''_DoImages_inline_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoImages_reference_callback($matches) {\r\n	global $md_urls, $md_titles, $md_empty_element_suffix, $md_escape_table;\r\n	$whole_match = $matches[1];\r\n	$alt_text    = $matches[2];\r\n	$link_id     = strtolower($matches[3]);\r\n\r\n	if ($link_id == "") {\r\n		$link_id = strtolower($alt_text); # for shortcut links like ![this][].\r\n	}\r\n\r\n	$alt_text = str_replace(''"'', ''&quot;'', $alt_text);\r\n	if (isset($md_urls[$link_id])) {\r\n		$url = $md_urls[$link_id];\r\n		# We''ve got to encode these to avoid conflicting with italics/bold.\r\n		$url = str_replace(array(''*'', ''_''),\r\n						   array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n						   $url);\r\n		$result = "<img src=\\"$url\\" alt=\\"$alt_text\\"";\r\n		if (isset($md_titles[$link_id])) {\r\n			$title = $md_titles[$link_id];\r\n			$title = str_replace(array(''*'', ''_''),\r\n								 array($md_escape_table[''*''],\r\n									   $md_escape_table[''_'']), $title);\r\n			$result .=  " title=\\"$title\\"";\r\n		}\r\n		$result .= $md_empty_element_suffix;\r\n	}\r\n	else {\r\n		# If there''s no such link ID, leave intact:\r\n		$result = $whole_match;\r\n	}\r\n\r\n	return $result;\r\n}\r\nfunction _DoImages_inline_callback($matches) {\r\n	global $md_empty_element_suffix, $md_escape_table;\r\n	$whole_match	= $matches[1];\r\n	$alt_text		= $matches[2];\r\n	$url			= $matches[3];\r\n	$title			= '''';\r\n	if (isset($matches[6])) {\r\n		$title		= $matches[6];\r\n	}\r\n\r\n	$alt_text = str_replace(''"'', ''&quot;'', $alt_text);\r\n	$title    = str_replace(''"'', ''&quot;'', $title);\r\n	# We''ve got to encode these to avoid conflicting with italics/bold.\r\n	$url = str_replace(array(''*'', ''_''),\r\n					   array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n					   $url);\r\n	$result = "<img src=\\"$url\\" alt=\\"$alt_text\\"";\r\n	if (isset($title)) {\r\n		$title = str_replace(array(''*'', ''_''),\r\n							 array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n							 $title);\r\n		$result .=  " title=\\"$title\\""; # $title already quoted\r\n	}\r\n	$result .= $md_empty_element_suffix;\r\n\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _DoHeaders($text) {\r\n	# Setext-style headers:\r\n	#	  Header 1\r\n	#	  ========\r\n	#\r\n	#	  Header 2\r\n	#	  --------\r\n	#\r\n	$text = preg_replace(\r\n		array(''{ ^(.+)[ \\t]*\\n=+[ \\t]*\\n+ }emx'',\r\n			  ''{ ^(.+)[ \\t]*\\n-+[ \\t]*\\n+ }emx''),\r\n		array("''<h1>''._RunSpanGamut(_UnslashQuotes(''\\\\1'')).''</h1>\\n\\n''",\r\n			  "''<h2>''._RunSpanGamut(_UnslashQuotes(''\\\\1'')).''</h2>\\n\\n''"),\r\n		$text);\r\n\r\n	# atx-style headers:\r\n	#	# Header 1\r\n	#	## Header 2\r\n	#	## Header 2 with closing hashes ##\r\n	#	...\r\n	#	###### Header 6\r\n	#\r\n	$text = preg_replace("{\r\n			^(\\\\#{1,6})	# $1 = string of #''s\r\n			[ \\\\t]*\r\n			(.+?)		# $2 = Header text\r\n			[ \\\\t]*\r\n			\\\\#*			# optional closing #''s (not counted)\r\n			\\\\n+\r\n		}xme",\r\n		"''<h''.strlen(''\\\\1'').''>''._RunSpanGamut(_UnslashQuotes(''\\\\2'')).''</h''.strlen(''\\\\1'').''>\\n\\n''",\r\n		$text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _DoLists($text) {\r\n#\r\n# Form HTML ordered (numbered) and unordered (bulleted) lists.\r\n#\r\n	global $md_tab_width, $md_list_level;\r\n	$less_than_tab = $md_tab_width - 1;\r\n\r\n	# Re-usable patterns to match list item bullets and number markers:\r\n	$marker_ul  = ''[*+-]'';\r\n	$marker_ol  = ''\\d+[.]'';\r\n	$marker_any = "(?:$marker_ul|$marker_ol)";\r\n\r\n	$markers = array($marker_ul, $marker_ol);\r\n\r\n	foreach ($markers as $marker) {\r\n		# Re-usable pattern to match any entirel ul or ol list:\r\n		$whole_list = ''\r\n			(								# $1 = whole list\r\n			  (								# $2\r\n				[ ]{0,''.$less_than_tab.''}\r\n				(''.$marker.'')				# $3 = first list item marker\r\n				[ \\t]+\r\n			  )\r\n			  (?s:.+?)\r\n			  (								# $4\r\n				  \\z\r\n				|\r\n				  \\n{2,}\r\n				  (?=\\S)\r\n				  (?!						# Negative lookahead for another list item marker\r\n					[ \\t]*\r\n					''.$marker.''[ \\t]+\r\n				  )\r\n			  )\r\n			)\r\n		''; // mx\r\n\r\n		# We use a different prefix before nested lists than top-level lists.\r\n		# See extended comment in _ProcessListItems().\r\n\r\n		if ($md_list_level) {\r\n			$text = preg_replace_callback(''{\r\n					^\r\n					''.$whole_list.''\r\n				}mx'',\r\n				''_DoLists_callback_top'', $text);\r\n		}\r\n		else {\r\n			$text = preg_replace_callback(''{\r\n					(?:(?<=\\n\\n)|\\A\\n?)\r\n					''.$whole_list.''\r\n				}mx'',\r\n				''_DoLists_callback_nested'', $text);\r\n		}\r\n	}\r\n\r\n	return $text;\r\n}\r\nfunction _DoLists_callback_top($matches) {\r\n	# Re-usable patterns to match list item bullets and number markers:\r\n	$marker_ul  = ''[*+-]'';\r\n	$marker_ol  = ''\\d+[.]'';\r\n	$marker_any = "(?:$marker_ul|$marker_ol)";\r\n\r\n	$list = $matches[1];\r\n	$list_type = preg_match("/$marker_ul/", $matches[3]) ? "ul" : "ol";\r\n\r\n	$marker_any = ( $list_type == "ul" ? $marker_ul : $marker_ol );\r\n\r\n	# Turn double returns into triple returns, so that we can make a\r\n	# paragraph for the last item in a list, if necessary:\r\n	$list = preg_replace("/\\n{2,}/", "\\n\\n\\n", $list);\r\n	$result = _ProcessListItems($list, $marker_any);\r\n\r\n	# Trim any trailing whitespace, to put the closing `</$list_type>`\r\n	# up on the preceding line, to get it past the current stupid\r\n	# HTML block parser. This is a hack to work around the terrible\r\n	# hack that is the HTML block parser.\r\n	$result = rtrim($result);\r\n	$result = "<$list_type>" . $result . "</$list_type>\\n";\r\n	return $result;\r\n}\r\nfunction _DoLists_callback_nested($matches) {\r\n	# Re-usable patterns to match list item bullets and number markers:\r\n	$marker_ul  = ''[*+-]'';\r\n	$marker_ol  = ''\\d+[.]'';\r\n	$marker_any = "(?:$marker_ul|$marker_ol)";\r\n\r\n	$list = $matches[1];\r\n	$list_type = preg_match("/$marker_ul/", $matches[3]) ? "ul" : "ol";\r\n\r\n	$marker_any = ( $list_type == "ul" ? $marker_ul : $marker_ol );\r\n\r\n	# Turn double returns into triple returns, so that we can make a\r\n	# paragraph for the last item in a list, if necessary:\r\n	$list = preg_replace("/\\n{2,}/", "\\n\\n\\n", $list);\r\n	$result = _ProcessListItems($list, $marker_any);\r\n	$result = "<$list_type>\\n" . $result . "</$list_type>\\n";\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _ProcessListItems($list_str, $marker_any) {\r\n#\r\n#	Process the contents of a single ordered or unordered list, splitting it\r\n#	into individual list items.\r\n#\r\n	global $md_list_level;\r\n\r\n	# The $md_list_level global keeps track of when we''re inside a list.\r\n	# Each time we enter a list, we increment it; when we leave a list,\r\n	# we decrement. If it''s zero, we''re not in a list anymore.\r\n	#\r\n	# We do this because when we''re not inside a list, we want to treat\r\n	# something like this:\r\n	#\r\n	#		I recommend upgrading to version\r\n	#		8. Oops, now this line is treated\r\n	#		as a sub-list.\r\n	#\r\n	# As a single paragraph, despite the fact that the second line starts\r\n	# with a digit-period-space sequence.\r\n	#\r\n	# Whereas when we''re inside a list (or sub-list), that line will be\r\n	# treated as the start of a sub-list. What a kludge, huh? This is\r\n	# an aspect of Markdown''s syntax that''s hard to parse perfectly\r\n	# without resorting to mind-reading. Perhaps the solution is to\r\n	# change the syntax rules such that sub-lists must start with a\r\n	# starting cardinal number; e.g. "1." or "a.".\r\n\r\n	$md_list_level++;\r\n\r\n	# trim trailing blank lines:\r\n	$list_str = preg_replace("/\\n{2,}\\\\z/", "\\n", $list_str);\r\n\r\n	$list_str = preg_replace_callback(''{\r\n		(\\n)?							# leading line = $1\r\n		(^[ \\t]*)						# leading whitespace = $2\r\n		(''.$marker_any.'') [ \\t]+		# list marker = $3\r\n		((?s:.+?)						# list item text   = $4\r\n		(\\n{1,2}))\r\n		(?= \\n* (\\z | \\2 (''.$marker_any.'') [ \\t]+))\r\n		}xm'',\r\n		''_ProcessListItems_callback'', $list_str);\r\n\r\n	$md_list_level--;\r\n	return $list_str;\r\n}\r\nfunction _ProcessListItems_callback($matches) {\r\n	$item = $matches[4];\r\n	$leading_line =& $matches[1];\r\n	$leading_space =& $matches[2];\r\n\r\n	if ($leading_line || preg_match(''/\\n{2,}/'', $item)) {\r\n		$item = _RunBlockGamut(_Outdent($item));\r\n	}\r\n	else {\r\n		# Recursion for sub-lists:\r\n		$item = _DoLists(_Outdent($item));\r\n		$item = preg_replace(''/\\n+$/'', '''', $item);\r\n		$item = _RunSpanGamut($item);\r\n	}\r\n\r\n	return "<li>" . $item . "</li>\\n";\r\n}\r\n\r\n\r\nfunction _DoCodeBlocks($text) {\r\n#\r\n#	Process Markdown `<pre><code>` blocks.\r\n#\r\n	global $md_tab_width;\r\n	$text = preg_replace_callback("{\r\n			(?:\\\\n\\\\n|\\\\A)\r\n			(	            # $1 = the code block -- one or more lines, starting with a space/tab\r\n			  (?:\r\n				(?:[ ]\\{$md_tab_width} | \\\\t)  # Lines must start with a tab or a tab-width of spaces\r\n				.*\\\\n+\r\n			  )+\r\n			)\r\n			((?=^[ ]{0,$md_tab_width}\\\\S)|\\\\Z)	# Lookahead for non-space at line-start, or end of doc\r\n		}xm",\r\n		''_DoCodeBlocks_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoCodeBlocks_callback($matches) {\r\n	$codeblock = $matches[1];\r\n\r\n	$codeblock = _EncodeCode(_Outdent($codeblock));\r\n//	$codeblock = _Detab($codeblock);\r\n	# trim leading newlines and trailing whitespace\r\n	$codeblock = preg_replace(array(''/\\A\\n+/'', ''/\\s+\\z/''), '''', $codeblock);\r\n\r\n	$result = "\\n\\n<pre><code>" . $codeblock . "\\n</code></pre>\\n\\n";\r\n\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _DoCodeSpans($text) {\r\n#\r\n# 	*	Backtick quotes are used for <code></code> spans.\r\n#\r\n# 	*	You can use multiple backticks as the delimiters if you want to\r\n# 		include literal backticks in the code span. So, this input:\r\n#\r\n#		  Just type ``foo `bar` baz`` at the prompt.\r\n#\r\n#	  	Will translate to:\r\n#\r\n#		  <p>Just type <code>foo `bar` baz</code> at the prompt.</p>\r\n#\r\n#		There''s no arbitrary limit to the number of backticks you\r\n#		can use as delimters. If you need three consecutive backticks\r\n#		in your code, use four for delimiters, etc.\r\n#\r\n#	*	You can use spaces to get literal backticks at the edges:\r\n#\r\n#		  ... type `` `bar` `` ...\r\n#\r\n#	  	Turns to:\r\n#\r\n#		  ... type <code>`bar`</code> ...\r\n#\r\n	$text = preg_replace_callback(''@\r\n			(?<!\\\\\\)	# Character before opening ` can\\''t be a backslash\r\n			(`+)		# $1 = Opening run of `\r\n			(.+?)		# $2 = The code block\r\n			(?<!`)\r\n			\\1			# Matching closer\r\n			(?!`)\r\n		@xs'',\r\n		''_DoCodeSpans_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoCodeSpans_callback($matches) {\r\n	$c = $matches[2];\r\n	$c = preg_replace(''/^[ \\t]*/'', '''', $c); # leading whitespace\r\n	$c = preg_replace(''/[ \\t]*$/'', '''', $c); # trailing whitespace\r\n	$c = _EncodeCode($c);\r\n	return "<code>$c</code>";\r\n}\r\n\r\n\r\nfunction _EncodeCode($_) {\r\n#\r\n# Encode/escape certain characters inside Markdown code runs.\r\n# The point is that in code, these characters are literals,\r\n# and lose their special Markdown meanings.\r\n#\r\n	global $md_escape_table;\r\n\r\n	# Encode all ampersands; HTML entities are not\r\n	# entities within a Markdown code span.\r\n	$_ = str_replace(''&'', ''&amp;'', $_);\r\n\r\n	# Do the angle bracket song and dance:\r\n	$_ = str_replace(array(''<'',    ''>''),\r\n					 array(''&lt;'', ''&gt;''), $_);\r\n\r\n	# Now, escape characters that are magic in Markdown:\r\n	$_ = str_replace(array_keys($md_escape_table),\r\n					 array_values($md_escape_table), $_);\r\n\r\n	return $_;\r\n}\r\n\r\n\r\nfunction _DoItalicsAndBold($text) {\r\n	# <strong> must go first:\r\n	$text = preg_replace(''{\r\n			(						# $1: Marker\r\n				(?<!\\*\\*) \\*\\* |	#     (not preceded by two chars of\r\n				(?<!__)   __		#      the same marker)\r\n			)\r\n			(?=\\S) 					# Not followed by whitespace\r\n			(?!\\1)					#   or two others marker chars.\r\n			(						# $2: Content\r\n				(?:\r\n					[^*_]+?			# Anthing not em markers.\r\n				|\r\n									# Balence any regular emphasis inside.\r\n					([*_]) (?=\\S) .+? (?<=\\S) \\3	# $3: em char (* or _)\r\n				|\r\n					(?! \\1 ) .		# Allow unbalenced * and _.\r\n				)+?\r\n			)\r\n			(?<=\\S) \\1				# End mark not preceded by whitespace.\r\n		}sx'',\r\n		''<strong>\\2</strong>'', $text);\r\n	# Then <em>:\r\n	$text = preg_replace(\r\n		''{ ( (?<!\\*)\\* | (?<!_)_ ) (?=\\S) (?! \\1) (.+?) (?<=\\S) \\1 }sx'',\r\n		''<em>\\2</em>'', $text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _DoBlockQuotes($text) {\r\n	$text = preg_replace_callback(''/\r\n		  (								# Wrap whole match in $1\r\n			(\r\n			  ^[ \\t]*>[ \\t]?			# ">" at the start of a line\r\n				.+\\n					# rest of the first line\r\n			  (.+\\n)*					# subsequent consecutive lines\r\n			  \\n*						# blanks\r\n			)+\r\n		  )\r\n		/xm'',\r\n		''_DoBlockQuotes_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoBlockQuotes_callback($matches) {\r\n	$bq = $matches[1];\r\n	# trim one level of quoting - trim whitespace-only lines\r\n	$bq = preg_replace(array(''/^[ \\t]*>[ \\t]?/m'', ''/^[ \\t]+$/m''), '''', $bq);\r\n	$bq = _RunBlockGamut($bq);		# recurse\r\n\r\n	$bq = preg_replace(''/^/m'', "  ", $bq);\r\n	# These leading spaces screw with <pre> content, so we need to fix that:\r\n	$bq = preg_replace_callback(''{(\\s*<pre>.+?</pre>)}sx'',\r\n								''_DoBlockQuotes_callback2'', $bq);\r\n\r\n	return "<blockquote>\\n$bq\\n</blockquote>\\n\\n";\r\n}\r\nfunction _DoBlockQuotes_callback2($matches) {\r\n	$pre = $matches[1];\r\n	$pre = preg_replace(''/^  /m'', '''', $pre);\r\n	return $pre;\r\n}\r\n\r\n\r\nfunction _FormParagraphs($text) {\r\n#\r\n#	Params:\r\n#		$text - string to process with html <p> tags\r\n#\r\n	global $md_html_blocks;\r\n\r\n	# Strip leading and trailing lines:\r\n	$text = preg_replace(array(''/\\A\\n+/'', ''/\\n+\\z/''), '''', $text);\r\n\r\n	$grafs = preg_split(''/\\n{2,}/'', $text, -1, PREG_SPLIT_NO_EMPTY);\r\n\r\n	#\r\n	# Wrap <p> tags.\r\n	#\r\n	foreach ($grafs as $key => $value) {\r\n		if (!isset( $md_html_blocks[$value] )) {\r\n			$value = _RunSpanGamut($value);\r\n			$value = preg_replace(''/^([ \\t]*)/'', ''<p>'', $value);\r\n			$value .= "</p>";\r\n			$grafs[$key] = $value;\r\n		}\r\n	}\r\n\r\n	#\r\n	# Unhashify HTML blocks\r\n	#\r\n	foreach ($grafs as $key => $value) {\r\n		if (isset( $md_html_blocks[$value] )) {\r\n			$grafs[$key] = $md_html_blocks[$value];\r\n		}\r\n	}\r\n\r\n	return implode("\\n\\n", $grafs);\r\n}\r\n\r\n\r\nfunction _EncodeAmpsAndAngles($text) {\r\n# Smart processing for ampersands and angle brackets that need to be encoded.\r\n\r\n	# Ampersand-encoding based entirely on Nat Irons''s Amputator MT plugin:\r\n	#   http://bumppo.net/projects/amputator/\r\n	$text = preg_replace(''/&(?!#?[xX]?(?:[0-9a-fA-F]+|\\w+);)/'',\r\n						 ''&amp;'', $text);;\r\n\r\n	# Encode naked <''s\r\n	$text = preg_replace(''{<(?![a-z/?\\$!])}i'', ''&lt;'', $text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _EncodeBackslashEscapes($text) {\r\n#\r\n#	Parameter:  String.\r\n#	Returns:    The string, with after processing the following backslash\r\n#				escape sequences.\r\n#\r\n	global $md_escape_table, $md_backslash_escape_table;\r\n	# Must process escaped backslashes first.\r\n	return str_replace(array_keys($md_backslash_escape_table),\r\n					   array_values($md_backslash_escape_table), $text);\r\n}\r\n\r\n\r\nfunction _DoAutoLinks($text) {\r\n	$text = preg_replace("!<((https?|ftp):[^''\\">\\\\s]+)>!",\r\n						 ''<a href="\\1">\\1</a>'', $text);\r\n\r\n	# Email addresses: <address@domain.foo>\r\n	$text = preg_replace(''{\r\n		<\r\n        (?:mailto:)?\r\n		(\r\n			[-.\\w]+\r\n			\\@\r\n			[-a-z0-9]+(\\.[-a-z0-9]+)*\\.[a-z]+\r\n		)\r\n		>\r\n		}exi'',\r\n		"_EncodeEmailAddress(_UnescapeSpecialChars(_UnslashQuotes(''\\\\1'')))",\r\n		$text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _EncodeEmailAddress($addr) {\r\n#\r\n#	Input: an email address, e.g. "foo@example.com"\r\n#\r\n#	Output: the email address as a mailto link, with each character\r\n#		of the address encoded as either a decimal or hex entity, in\r\n#		the hopes of foiling most address harvesting spam bots. E.g.:\r\n#\r\n#	  <a href="&#x6D;&#97;&#105;&#108;&#x74;&#111;:&#102;&#111;&#111;&#64;&#101;\r\n#		x&#x61;&#109;&#x70;&#108;&#x65;&#x2E;&#99;&#111;&#109;">&#102;&#111;&#111;\r\n#		&#64;&#101;x&#x61;&#109;&#x70;&#108;&#x65;&#x2E;&#99;&#111;&#109;</a>\r\n#\r\n#	Based by a filter by Matthew Wickline, posted to the BBEdit-Talk\r\n#	mailing list: <http://tinyurl.com/yu7ue>\r\n#\r\n	$addr = "mailto:" . $addr;\r\n	$length = strlen($addr);\r\n\r\n	# leave '':'' alone (to spot mailto: later)\r\n	$addr = preg_replace_callback(''/([^\\:])/'',\r\n								  ''_EncodeEmailAddress_callback'', $addr);\r\n\r\n	$addr = "<a href=\\"$addr\\">$addr</a>";\r\n	# strip the mailto: from the visible part\r\n	$addr = preg_replace(''/">.+?:/'', ''">'', $addr);\r\n\r\n	return $addr;\r\n}\r\nfunction _EncodeEmailAddress_callback($matches) {\r\n	$char = $matches[1];\r\n	$r = rand(0, 100);\r\n	# roughly 10% raw, 45% hex, 45% dec\r\n	# ''@'' *must* be encoded. I insist.\r\n	if ($r > 90 && $char != ''@'') return $char;\r\n	if ($r < 45) return ''&#x''.dechex(ord($char)).'';'';\r\n	return ''&#''.ord($char).'';'';\r\n}\r\n\r\n\r\nfunction _UnescapeSpecialChars($text) {\r\n#\r\n# Swap back in all the special characters we''ve hidden.\r\n#\r\n	global $md_escape_table;\r\n	return str_replace(array_values($md_escape_table),\r\n					   array_keys($md_escape_table), $text);\r\n}\r\n\r\n\r\n# _TokenizeHTML is shared between PHP Markdown and PHP SmartyPants.\r\n# We only define it if it is not already defined.\r\nif (!function_exists(''_TokenizeHTML'')) :\r\nfunction _TokenizeHTML($str) {\r\n#\r\n#   Parameter:  String containing HTML markup.\r\n#   Returns:    An array of the tokens comprising the input\r\n#               string. Each token is either a tag (possibly with nested,\r\n#               tags contained therein, such as <a href="<MTFoo>">, or a\r\n#               run of text between tags. Each element of the array is a\r\n#               two-element array; the first is either ''tag'' or ''text'';\r\n#               the second is the actual value.\r\n#\r\n#\r\n#   Regular expression derived from the _tokenize() subroutine in\r\n#   Brad Choate''s MTRegex plugin.\r\n#   <http://www.bradchoate.com/past/mtregex.php>\r\n#\r\n	$index = 0;\r\n	$tokens = array();\r\n\r\n	$match = ''(?s:<!(?:--.*?--\\s*)+>)|''.	# comment\r\n			 ''(?s:<\\?.*?\\?>)|''.				# processing instruction\r\n			 								# regular tags\r\n			 ''(?:<[/!$]?[-a-zA-Z0-9:]+\\b(?>[^"\\''>]+|"[^"]*"|\\''[^\\'']*\\'')*>)'';\r\n\r\n	$parts = preg_split("{($match)}", $str, -1, PREG_SPLIT_DELIM_CAPTURE);\r\n\r\n	foreach ($parts as $part) {\r\n		if (++$index % 2 && $part != '''')\r\n			$tokens[] = array(''text'', $part);\r\n		else\r\n			$tokens[] = array(''tag'', $part);\r\n	}\r\n\r\n	return $tokens;\r\n}\r\nendif;\r\n\r\n\r\nfunction _Outdent($text) {\r\n#\r\n# Remove one level of line-leading tabs or spaces\r\n#\r\n	global $md_tab_width;\r\n	return preg_replace("/^(\\\\t|[ ]{1,$md_tab_width})/m", "", $text);\r\n}\r\n\r\n\r\nfunction _Detab($text) {\r\n#\r\n# Replace tabs with the appropriate amount of space.\r\n#\r\n	global $md_tab_width;\r\n\r\n	# For each line we separate the line in blocks delemited by\r\n	# tab characters. Then we reconstruct every line by adding the\r\n	# appropriate number of space between each blocks.\r\n\r\n	$lines = explode("\\n", $text);\r\n	$text = "";\r\n\r\n	foreach ($lines as $line) {\r\n		# Split in blocks.\r\n		$blocks = explode("\\t", $line);\r\n		# Add each blocks to the line.\r\n		$line = $blocks[0];\r\n		unset($blocks[0]); # Do not add first block twice.\r\n		foreach ($blocks as $block) {\r\n			# Calculate amount of space, insert spaces, insert block.\r\n			$amount = $md_tab_width - strlen($line) % $md_tab_width;\r\n			$line .= str_repeat(" ", $amount) . $block;\r\n		}\r\n		$text .= "$line\\n";\r\n	}\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _UnslashQuotes($text) {\r\n#\r\n#	This function is useful to remove automaticaly slashed double quotes\r\n#	when using preg_replace and evaluating an expression.\r\n#	Parameter:  String.\r\n#	Returns:    The string with any slash-double-quote (\\") sequence replaced\r\n#				by a single double quote.\r\n#\r\n	return str_replace(''\\"'', ''"'', $text);\r\n}\r\n\r\n\r\n/*\r\n\r\nPHP Markdown\r\n============\r\n\r\nDescription\r\n-----------\r\n\r\nThis is a PHP translation of the original Markdown formatter written in\r\nPerl by John Gruber.\r\n\r\nMarkdown is a text-to-HTML filter; it translates an easy-to-read /\r\neasy-to-write structured text format into HTML. Markdown''s text format\r\nis most similar to that of plain text email, and supports features such\r\nas headers, *emphasis*, code blocks, blockquotes, and links.\r\n\r\nMarkdown''s syntax is designed not as a generic markup language, but\r\nspecifically to serve as a front-end to (X)HTML. You can use span-level\r\nHTML tags anywhere in a Markdown document, and you can use block level\r\nHTML tags (like <div> and <table> as well).\r\n\r\nFor more information about Markdown''s syntax, see:\r\n\r\n<http://daringfireball.net/projects/markdown/>\r\n\r\n\r\nBugs\r\n----\r\n\r\nTo file bug reports please send email to:\r\n\r\n<michel.fortin@michelf.com>\r\n\r\nPlease include with your report: (1) the example input; (2) the output you\r\nexpected; (3) the output Markdown actually produced.\r\n\r\n\r\nVersion History\r\n---------------\r\n\r\nSee the readme file for detailed release notes for this version.\r\n\r\n1.0.1b - 6 Jun 2005\r\n\r\n1.0.1a - 15 Apr 2005\r\n\r\n1.0.1 - 16 Dec 2004\r\n\r\n1.0 - 21 Aug 2004\r\n\r\n\r\nAuthor & Contributors\r\n---------------------\r\n\r\nOriginal Perl version by John Gruber\r\n<http://daringfireball.net/>\r\n\r\nPHP port and other contributions by Michel Fortin\r\n<http://www.michelf.com/>\r\n\r\n\r\nCopyright and License\r\n---------------------\r\n\r\nCopyright (c) 2004-2005 Michel Fortin\r\n<http://www.michelf.com/>\r\nAll rights reserved.\r\n\r\nCopyright (c) 2003-2004 John Gruber\r\n<http://daringfireball.net/>\r\nAll rights reserved.\r\n\r\nRedistribution and use in source and binary forms, with or without\r\nmodification, are permitted provided that the following conditions are\r\nmet:\r\n\r\n*	Redistributions of source code must retain the above copyright notice,\r\n	this list of conditions and the following disclaimer.\r\n\r\n*	Redistributions in binary form must reproduce the above copyright\r\n	notice, this list of conditions and the following disclaimer in the\r\n	documentation and/or other materials provided with the distribution.\r\n\r\n*	Neither the name "Markdown" nor the names of its contributors may\r\n	be used to endorse or promote products derived from this software\r\n	without specific prior written permission.\r\n\r\nThis software is provided by the copyright holders and contributors "as\r\nis" and any express or implied warranties, including, but not limited\r\nto, the implied warranties of merchantability and fitness for a\r\nparticular purpose are disclaimed. In no event shall the copyright owner\r\nor contributors be liable for any direct, indirect, incidental, special,\r\nexemplary, or consequential damages (including, but not limited to,\r\nprocurement of substitute goods or services; loss of use, data, or\r\nprofits; or business interruption) however caused and on any theory of\r\nliability, whether in contract, strict liability, or tort (including\r\nnegligence or otherwise) arising in any way out of the use of this\r\nsoftware, even if advised of the possibility of such damage.\r\n\r\n*/');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_facileforms_records`
--

CREATE TABLE IF NOT EXISTS `kqt1o_facileforms_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submitted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `form` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(30) NOT NULL DEFAULT '',
  `browser` varchar(255) NOT NULL DEFAULT '',
  `opsys` varchar(255) NOT NULL DEFAULT '',
  `provider` varchar(255) NOT NULL DEFAULT '',
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `exported` tinyint(1) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `user_full_name` varchar(255) NOT NULL DEFAULT '',
  `paypal_tx_id` varchar(255) NOT NULL DEFAULT '',
  `paypal_payment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paypal_testaccount` tinyint(1) NOT NULL DEFAULT '0',
  `paypal_download_tries` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_facileforms_scripts`
--

CREATE TABLE IF NOT EXISTS `kqt1o_facileforms_scripts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `package` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT '',
  `code` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `kqt1o_facileforms_scripts`
--

INSERT INTO `kqt1o_facileforms_scripts` (`id`, `published`, `package`, `name`, `title`, `description`, `type`, `code`) VALUES
(1, 1, 'FF', 'ff_anychecked', 'Any Checked', 'Validate that any radio button or checkbox of a group is checked.', 'Element Validation', 'function ff_anychecked(element, message)\r\n{\r\n    // get plain name\r\n   // alert(document.ff_form52[''ff_nm_bfQuickMode6303958[]'']);\r\n   // alert(document.getElementById(element.id).id);\r\n    var name = '''';\r\n    if(!element.name){\r\n    	if(element.length && element.length != 0){\r\n           name = element[0].name;\r\n           var cnt = 0;\r\n           for (var i = 0; i < element.length; i++)\r\n             if (element[i].name==name) \r\n              if (element[i].checked) cnt++;                      \r\n           if (cnt==0) {\r\n            ff_validationFocus(element[0].name);\r\n            if (message=='''') message = "Please check or select "+name+".\\n";\r\n            return message;\r\n           } // if \r\n\r\n        } else {\r\n           return '''';\r\n        }\r\n    } else {\r\n      name = element.name;\r\n      if (name.substr(0,6) == ''ff_nm_'') name = name.substring(6,name.length-2);\r\n\r\n      // loop through elements and count selections\r\n      var cnt = 0;\r\n      for (var i = 0; i < ff_elements.length; i++)\r\n        if (ff_elements[i][2]==name) \r\n            if (ff_getElementByIndex(i).checked) cnt++;\r\n\r\n      // if none selected, emitt error\r\n      if (cnt==0) {\r\n        ff_validationFocus(element.name);\r\n        if (message=='''') message = "Please check or select "+name+".\\n";\r\n        return message;\r\n      } // if\r\n    }\r\n    \r\n    return '''';\r\n} // ff_anychecked'),
(2, 1, 'FF', 'ff_checked', 'Checked', 'Validate that radio button or checkbox is checked.', 'Element Validation', 'function ff_checked(element, message)\r\n{\r\n    if (element.checked) \r\n        return ''''; \r\n    else {\r\n        if (message=='''') message = element.name+" is not checked.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } \r\n}'),
(3, 1, 'FF', 'ff_checkedValue', 'Get checked value', 'Get value of the currently checked radiobutton.', 'Untyped', 'function ff_checkedValue(name)\r\n{\r\n    // loop through elements and find checked\r\n    for (i = 0; i < ff_elements.length; i++)\r\n        if (ff_elements[i][2]==name) {\r\n            e = ff_getElementByIndex(i);\r\n            if (e.checked) return e.value;\r\n        } // if \r\n    return '''';\r\n} // ff_checkedValue'),
(4, 1, 'FF', 'ff_countQuerySelections', 'Count Query Selections', 'Counts how many checkboxes/radiobuttons are checked/selected in a query list element', 'Untyped', 'function ff_countQuerySelections(name)\r\n{\r\n    var id = ff_getIdByName(name);\r\n    var cnt = ff_queryRows[id].length;\r\n    var pagesize = ff_queryPageSize[id];\r\n    if (pagesize>0) {\r\n        var currpage = ff_queryCurrPage[id];\r\n        var p;\r\n        for (p = 1; p < currpage; p++) cnt -= pagesize;\r\n        if (cnt > pagesize) cnt = pagesize;\r\n    } // if\r\n    var curr;\r\n    var sels = 0;\r\n    for (curr = 0; curr < cnt; curr++)\r\n        if (document.getElementById(''ff_cb''+id+''_''+curr).checked) sels++;\r\n    return sels;\r\n} // ff_countQuerySelections'),
(5, 1, 'FF', 'ff_dollaramount2dp', 'Dollar Amount with 2 Decimal Places', 'Validate that a dollar amount with two decimal places is entered.', 'Element Validation', 'function ff_dollaramount2dp(element, message)\r\n{\r\n    var ex  = /^\\d+$|^\\d+\\.\\d{2}$/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be a number with two decimal places.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_dollaramount2dp'),
(6, 1, 'FF', 'ff_expString', 'String export', 'Export string function: escapes special characters of a string', 'Untyped', 'function ff_expString(text)\r\n{\r\n    text = trim(text);\r\n    var i;\r\n    var o = '''';\r\n    for(i = 0; i < text.length; i++) {\r\n        c = text.charAt(i);\r\n        switch(c) {\r\n            case '';'' : o += ''\\\\x3B''; break;\r\n            case '','' : o += ''\\\\x2C''; break;\r\n            case ''&'' : o += ''\\\\x26''; break;\r\n            case ''<'' : o += ''\\\\x3C''; break;\r\n            case ''>'' : o += ''\\\\x3E''; break;\r\n            case ''\\'''': o += ''\\\\x27''; break;\r\n            case ''\\\\'': o += ''\\\\x5C''; break;\r\n            case ''"'' : o += ''\\\\x22''; break;\r\n            case ''\\n'': o += ''\\\\n''; break;\r\n            case ''\\r'': o += ''\\\\r''; break;\r\n            default: o += c;\r\n        } // switch\r\n    } // for\r\n    return o;\r\n} // expString'),
(7, 1, 'FF', 'ff_flashupload_not_empty', 'Flash Upload Not Empty (QuickMode only!)', 'Validates if a flash upload is empty or not.', 'Element Validation', 'function ff_flashupload_not_empty(element, message)\r\n{\r\n    if(typeof bfSummarizers == "undefined") { alert("Flash upload validation only available in QuickMode!"); return ''''}\r\n    if(JQuery(''#bfFlashFileQueue''+element.id.split(''ff_elem'')[1]).html() != '''') return '''';\r\n    if (message=='''') message = "Please enter "+element.name+".\\n";\r\n    ff_validationFocus(element.name);\r\n    return message;\r\n} // ff_valuenotempty'),
(8, 1, 'FF', 'ff_getfocus', 'Get focus', 'Get the focus. Usually this is for the first element of the form/page.', 'Element Init', 'function ff_getfocus(element,condition)\r\n{\r\n    if(!element.name){\r\n    	if(element.length && element.length != 0){\r\n    		element[0].focus();\r\n    	}\r\n    }else{\r\n    	element.focus();\r\n    }\r\n}'),
(9, 1, 'FF', 'ff_getQuerySelectedRows', 'Get Query Selected Rows', 'Returns the selected rows in a 2-dimensional array', 'Untyped', 'function ff_getQuerySelectedRows(name)\r\n{\r\n    var id = ff_getIdByName(name);\r\n    var rcnt = ff_queryRows[id].length;\r\n    var cnt = rcnt;\r\n    var pagesize = ff_queryPageSize[id];\r\n    if (pagesize>0) {\r\n        var currpage = ff_queryCurrPage[id];\r\n        var p;\r\n        for (p = 1; p < currpage; p++) cnt -= pagesize;\r\n        if (cnt > pagesize) cnt = pagesize;\r\n    } // if\r\n    var curr, r;\r\n    var selcnt = 0;\r\n    var sels = new Array;\r\n    for (curr = 0; curr < cnt; curr++) {\r\n        var elem = document.getElementById(''ff_cb''+id+''_''+curr);\r\n        if (elem.checked) {\r\n            var ident = elem.value;\r\n            for (r = 0; r < rcnt; r++)\r\n                if (ff_queryRows[id][r][0] == ident) {\r\n                    sels[selcnt++] = ff_queryRows[id][r];\r\n                    break;\r\n                } // if\r\n        } // if\r\n    } // for\r\n    return sels;\r\n} // ff_getQuerySelectedRows'),
(10, 1, 'FF', 'ff_getQuerySelections', 'Get Query Selected ID''s', 'Returns the column values of the checked/selected checkboxes/radiobuttons in an array', 'Untyped', 'function ff_getQuerySelections(name)\r\n{\r\n    var id = ff_getIdByName(name);\r\n    var cnt = ff_queryRows[id].length;\r\n    var pagesize = ff_queryPageSize[id];\r\n    if (pagesize>0) {\r\n        var currpage = ff_queryCurrPage[id];\r\n        var p;\r\n        for (p = 1; p < currpage; p++) cnt -= pagesize;\r\n        if (cnt > pagesize) cnt = pagesize;\r\n    } // if\r\n    var curr;\r\n    var selcnt = 0;\r\n    var sels = new Array;\r\n    for (curr = 0; curr < cnt; curr++) {\r\n        var elem = document.getElementById(''ff_cb''+id+''_''+curr);\r\n        if (elem.checked) \r\n            sels[selcnt++] = elem.value;\r\n    } // for\r\n    return sels;\r\n} // ff_getQuerySelections'),
(11, 1, 'FF', 'ff_htmlvaluenotempty', 'HTML Texteditor Not Empty', 'Checks if an HTML editor element is empty or not', 'Element Validation', 'function ff_htmlvaluenotempty( element, message ){\r\n    \r\n    if( typeof bf_htmltextareanames == "undefined" ) return '''';\r\n\r\n    var content = "";\r\n\r\n    for(var i = 0; i < bf_htmltextareanames.length; i++){\r\n      if( element.name == bf_htmltextareanames[i] ) {\r\n          eval("content = " + bf_htmltextareas[i]);\r\n          break;\r\n      }\r\n    }\r\n    if (JQuery.trim(content) == "") {\r\n        if (message=='''') message = element.name+" must not be empty.\\n";\r\n        return message;\r\n    } // if\r\n    return '''';\r\n}'),
(12, 1, 'FF', 'ff_impString', 'String import', 'Import string function: unescapes c-coded characters of a string', 'Untyped', 'function ff_impString(text)\r\n{\r\n    var str = '''';\r\n    var ss = 0;\r\n    var s;\r\n    var tl = text.length;\r\n    var hexdigs = "0123456789abcdefABCDEF";\r\n    while (ss < tl) {\r\n        s = text.charAt(ss++);\r\n        if (s == ''\\\\'') {\r\n            if (ss < tl) s = text.charAt(ss++); else s = 0;\r\n            switch (s) {\r\n                case 0   : break;\r\n                case ''e'' : str += ''\\33''; break;\r\n                case ''t'' : str += ''\\t''; break;\r\n                case ''r'' : str += ''\\r''; break;\r\n                case ''n'' : str += ''\\n''; break;\r\n                case ''f'' : str += ''\\f''; break;\r\n                case ''x'' : {\r\n                    if (ss < tl) s = text.charAt(ss++); else s = 0;\r\n                    var ch = '''';\r\n                    while (hexdigs.indexOf(s)>=0 && ch.length < 2) {\r\n                        ch += s;\r\n                        if (ss < tl) s = text.charAt(ss++); else s = 0;\r\n                    } // while\r\n                    while (ch.length < 2) ch = ''0''+ch;\r\n                    str += unescape(''%''+ch);\r\n                    if (s) ss--;\r\n                    break;\r\n                }\r\n                default:\r\n                    str += s;\r\n            } // switch\r\n        } else\r\n            str += s;\r\n    } // while\r\n    return str;\r\n} // impString'),
(13, 1, 'FF', 'ff_integer', 'Integer Number', 'Validate that an integer value is entered.', 'Element Validation', 'function ff_integer(element, message)\r\n{\r\n    var ex  = /(^-?\\d\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be integer.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_integer'),
(14, 1, 'FF', 'ff_integeramount', 'Positive Integer', 'Validate that an positive integer value is entered.', 'Element Validation', 'function ff_integeramount(element, message)\r\n{\r\n    var ex  = /(^-?\\d\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be integer.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_integeramount'),
(15, 1, 'FF', 'ff_integer_or_empty', 'Integer or empty', 'Validate that either an integer value or nothing is entered.', 'Element Validation', 'function ff_integer_or_empty(element, message)\r\n{\r\n    if (element.value != '''') {\r\n        var ex  = /(^-?\\d\\d*$)/;\r\n        if (!ex.test(element.value)) {\r\n            if (message=='''') message = element.name+" must be integer.\\n";\r\n            ff_validationFocus(element.name);\r\n            return message;\r\n        } // if\r\n    } // if\r\n    return '''';\r\n} // ff_integer_or_empty'),
(16, 1, 'FF', 'ff_nextpage', 'Next page', 'Switchs to the next page.', 'Element Action', 'function ff_nextpage(element, action)\r\n{\r\n    if (ff_currentpage < ff_lastpage) {\r\n        ff_switchpage(ff_currentpage+1);\r\n        self.scrollTo(0,0);\r\n    }\r\n} // ff_nextpage'),
(17, 1, 'FF', 'ff_page1', 'Page 1', 'Switches to the first page.', 'Element Action', 'function ff_page1(element, action)\r\n{\r\n    ff_switchpage(1);\r\n} // ff_page1'),
(18, 1, 'FF', 'ff_page2', 'Page 2', 'Switches to the second page.', 'Element Action', 'function ff_page2(element, action)\r\n{\r\n    if (ff_lastpage >= 2) ff_switchpage(2);\r\n} // ff_page2'),
(19, 1, 'FF', 'ff_page3', 'Page 3', 'Switches to the third page.', 'Element Action', 'function ff_page3(element, action)\r\n{\r\n    if (ff_lastpage >= 3) ff_switchpage(3);\r\n} // ff_page3'),
(20, 1, 'FF', 'ff_previouspage', 'Previous page', 'Switches to the previous page.', 'Element Action', 'function ff_previouspage(element, action)\r\n{\r\n    if (ff_currentpage > 1){\r\n        ff_switchpage(ff_currentpage-1);\r\n        self.scrollTo(0,0);\r\n    }\r\n} // ff_previouspage'),
(21, 1, 'FF', 'ff_real', 'Real Number', 'Validate that a real number is entered.', 'Element Validation', 'function ff_real(element, message)\r\n{\r\n    var ex  = /(^-?\\d\\d*\\.?\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be a number.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_real'),
(22, 1, 'FF', 'ff_realamount', 'Positive Real Number', 'Validate that a positive real number is entered.', 'Element Validation', 'function ff_realamount(element, message)\r\n{\r\n    var ex  = /(^\\d\\d*\\.?\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be a number.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_realamount'),
(23, 1, 'FF', 'ff_resetForm', 'Reset form', 'Reset all form inputs to the initial values.', 'Element Action', 'function ff_resetForm(element, action)\r\n{\r\n    eval(''document.''+ff_processor.form_id).reset();\r\n} // ff_resetForm'),
(24, 1, 'FF', 'ff_securitycode_entered', 'Security code entered', 'Check that a security code was entered.', 'Element Validation', 'function ff_securitycode_entered(element, message)\r\n{\r\n    var ex  = /(^\\d{5}$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = "Security code must be entered as five digits.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_securitycode_entered'),
(25, 1, 'FF', 'ff_securitycode_ok', 'Security code ok', 'Check that a valid security code was entered.', 'Element Validation', 'function ff_securitycode_ok(element, message)\r\n{\r\n<?php\r\n    global $ff_seccode;\r\n    if (!isset($ff_seccode)) { \r\n        mt_srand((double)microtime()*1000000);\r\n        $ff_seccode = mt_rand(10000, 99999);\r\n        JFactory::getSession()->set(''ff_seccode'', $ff_seccode);\r\n    } // if\r\n    $enc = array();\r\n    mt_srand((double)microtime()*1000000);\r\n    for ($i = 0; $i < 256; $i++) $enc[] = mt_rand(0, 255);\r\n    $seccode = (string)$ff_seccode;\r\n    $hash = '''';\r\n    $ini = $ff_seccode % 240;\r\n    for ($i = 0; $i < 5; $i++) {\r\n        $d = $ini+intval($seccode{$i});\r\n        for ($j = 0; $j < 7; $j++) $d = $enc[$d];\r\n        $hash .= $d;\r\n        $ini = ($ini+$d) % 240;\r\n    } // for\r\n    return\r\n        "var enc = ".$this->expJsValue($enc).";\\n".\r\n        "var seccode = new String(element.value);\\n".\r\n        "if (seccode.length==5) {\\n".\r\n        "    var hash = '''';\\n".\r\n        "    var ini = parseInt(element.value) % 240;\\n".\r\n        "    var i, j;\\n".\r\n        "    for (i = 0; i < 5; i++) {\\n".\r\n        "        var d = ini+parseInt(seccode.charAt(i));\\n".\r\n        "        for (j = 0; j < 7; j++) d = enc[d];\\n".\r\n        "        hash += d;\\n".\r\n        "        ini = (ini+d) % 240;\\n".\r\n        "    } // for\\n".\r\n        "    if (hash == ''$hash'') return '''';\\n". \r\n        "} // if\\n".\r\n        "if (message=='''') message = \\"Security code is missing or wrong.\\\\n\\";\\n".\r\n        "ff_validationFocus(element.name);\\n".\r\n        "return message;\\n";\r\n?>\r\n} // ff_securitycode_ok'),
(26, 1, 'FF', 'ff_selectedValues', 'Get selected values as list', 'Get values of selected options of a select list as list:\r\n\r\nx = ff_selectedValues(''myselectlist'');\r\n// x = green,red', 'Untyped', 'function ff_selectedValues(name)\r\n{\r\n    vals = '''';\r\n    opts = ff_getElementByName(name).options;\r\n    for (o = 0; o < opts.length; o++)\r\n        if (opts[o].selected) {\r\n            if (vals != '''') vals += '','';\r\n            vals += opts[o].value;\r\n        } // if\r\n    return vals;\r\n} // ff_selectedValues'),
(27, 1, 'FF', 'ff_setChecked', 'Set radiobutton checked', 'Set a radiobutton checked/unchecked', 'Untyped', 'function ff_setChecked(name, value, checked)\r\n{\r\n    if (arguments.length<3) checked = true;\r\n    for (var i = 0; i < ff_elements.length; i++)\r\n        if (ff_elements[i][2]==name) {\r\n            var e = ff_getElementByIndex(i);\r\n            if (e.value == value) {\r\n                e.checked = checked;\r\n                break;\r\n            } // if\r\n        } // if\r\n} // ff_setChecked'),
(28, 1, 'FF', 'ff_setSelected', 'Select options of  select list', 'Select options in a Select List element.\r\n\r\nff_setSelected(''mylist'', ''green''); // select green in single or multi mode, unselect all other options\r\nff_setSelected(''mylist'', ''red,green''); // select red and green in multi mode, unselect all other options', 'Untyped', 'function ff_setSelected(name, list)\r\n{\r\n    ids = list.split('','')\r\n    opts = ff_getElementByName(name).options;\r\n    for (o = 0; o < opts.length; o++) {\r\n        state = false;\r\n        for (i = 0; i < ids.length; i++) \r\n            if (ids[i]==opts[o].value) {\r\n                state = true;\r\n                break;\r\n            } // if\r\n        opts[o].selected = state;\r\n    } // for\r\n} // ff_setSelected'),
(29, 1, 'FF', 'ff_showaction', 'Show action', 'Displays the element action.', 'Element Action', 'function ff_showaction(element, action)\r\n{\r\n   alert(''Action ''+action+'' performed by element ''+element.id);\r\n}'),
(30, 1, 'FF', 'ff_showelementinit', 'Show element initialization', 'Display the element initialization (mainly for debugging)', 'Element Init', 'function ff_showelementinit(element,condition)\r\n{\r\n    if(!element.name)\r\n    	if(element.length && element.length != 0)\r\n    		alert(''Initialization of ''+element[0].name+'' at ''+condition);\r\n    else\r\n    	alert(''Initialization of ''+element.name+'' at ''+condition);\r\n}'),
(31, 1, 'FF', 'ff_showforminit', 'Show form initialization', 'Show when form initialization is run (for debugging)', 'Form Init', 'function ff_showforminit()\r\n{\r\n    alert(''Form initialization'');\r\n}'),
(32, 1, 'FF', 'ff_showsubmitted', 'Show submitted status', 'Display submit status as user feedback.', 'Form Submitted', 'function ff_showsubmitted(status, message)\r\n{\r\n    alert(message);\r\n} // ff_showsubmitted'),
(33, 1, 'FF', 'ff_showvalidation', 'Show element validation', 'Display element validation (for debugging)', 'Element Validation', 'function ff_showvalidation(element, message)\r\n{\r\n    alert(''Validation of ''+element.name+" with message: \\n"+message);\r\n    return '''';\r\n}'),
(34, 1, 'FF', 'ff_submittedhome', 'Return to homepage', 'Display submit status and then return to the home page of the site.', 'Form Submitted', 'function ff_submittedhome(status, message)\r\n{\r\n    alert(message+"\\nYou will be redirected to the home page now.");\r\n    ff_returnHome();\r\n} // ff_submittedhome'),
(35, 1, 'FF', 'ff_unchecked', 'Unchecked', 'Validate that radio button or checkbox is unchecked.', 'Element Validation', 'function ff_unchecked(element, message)\r\n{\r\n    if (!element.checked) \r\n        return ''''; \r\n    else {\r\n        if (message=='''') message = element.name+" is checked.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n} // ff_unchecked'),
(36, 1, 'FF', 'ff_validate_date_DDMMYYYY', 'Validate Date DD/MM/YYYY format', 'Validates that the date in a textfield is correctly formatted in DD/MM/YYYY format.\r\nCan be used with a textfield element and/or the Calendar element.', 'Element Validation', 'function ff_validate_date_DDMMYYYY(element, message)\r\n{\r\n   // Regular expression used to check if date is in correct format\r\n   var pattern = /[0-3][0-9]\\/(0|1)[0-9]\\/(19|20)[0-9]{2}/;\r\n   if(pattern.test(element.value))\r\n   {\r\n      var date_array = element.value.split(''/'');\r\n      var day = date_array[0];\r\n\r\n      // Attention! Javascript consider months in the range 0 - 11\r\n      var month = date_array[1] - 1;\r\n      var year = date_array[2];\r\n\r\n      // This instruction will create a date object\r\n      source_date = new Date(year,month,day);\r\n\r\n      if(year != source_date.getFullYear())\r\n      {\r\n         return message == '''' ? ''Element '' + element.name + '' failed my test'' : message;\r\n      }\r\n\r\n      if(month != source_date.getMonth())\r\n      {\r\n         return message == '''' ? ''Element '' + element.name + '' failed my test'' : message;\r\n      }\r\n\r\n      if(day != source_date.getDate())\r\n      {\r\n         return message == '''' ? ''Element '' + element.name + '' failed my test'' : message;\r\n      }\r\n   }\r\n   else\r\n   {\r\n      return message == '''' ? ''Element '' + element.name + '' failed my test'' : message;\r\n   }\r\n\r\n   return '''';\r\n}'),
(37, 1, 'FF', 'ff_validate_form', 'Validate form', 'Validates the form and displays the result.', 'Element Action', 'function ff_validate_form(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != ''undefined''){\r\n     JQuery(".bfErrorMessage").html('''');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n    error = ff_validation(0);\r\n    if (error != '''') {\r\n        if(typeof bfUseErrorAlerts == ''undefined''){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus('''');\r\n    } else\r\n        alert(''All inputs are valid.'');\r\n} // ff_validate_form'),
(38, 1, 'FF', 'ff_validate_nextpage', 'Validate and next page', 'Validates the current page, and if everything is ok is switches to the next page.', 'Element Action', 'function ff_validate_nextpage(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != ''undefined''){\r\n     JQuery(".bfErrorMessage").html('''');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n\r\n    error = ff_validation(ff_currentpage);\r\n    if (error != '''') {\r\n       if(typeof bfUseErrorAlerts == ''undefined''){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus('''');\r\n    } else {\r\n        ff_switchpage(ff_currentpage+1);\r\n        self.scrollTo(0,0);   \r\n    }\r\n} // ff_validate_nextpage'),
(39, 1, 'FF', 'ff_validate_page', 'Validate page', 'Validates the current page and displays the result.', 'Element Action', 'function ff_validate_page(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != ''undefined''){\r\n     JQuery(".bfErrorMessage").html('''');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n    error = ff_validation(ff_currentpage);\r\n    if (error != '''') {\r\n        if(typeof bfUseErrorAlerts == ''undefined''){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus('''');\r\n    } else\r\n        alert(''All inputs are valid.'');\r\n} // ff_validate_page'),
(40, 1, 'FF', 'ff_validate_prevpage', 'Validate previous page', 'Validates the current page and switches to the previous page if all is ok', 'Element Action', 'function ff_validate_prevpage(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != ''undefined''){\r\n     JQuery(".bfErrorMessage").html('''');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n\r\n    error = ff_validation(ff_currentpage);\r\n    if (error != '''') {\r\n       if(typeof bfUseErrorAlerts == ''undefined''){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus('''');\r\n    } else{\r\n    	if(ff_currentpage > 1){\r\n	 ff_switchpage(ff_currentpage-1);\r\n	 self.scrollTo(0,0);\r\n        }\r\n    }\r\n} // ff_validate_prevpage'),
(41, 1, 'FF', 'ff_validate_submit', 'Validate and submit form', 'Validates the whole form, and if everything is ok it submits the form.', 'Element Action', 'function ff_validate_submit(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != ''undefined''){\r\n     JQuery(".bfErrorMessage").html('''');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n    error = ff_validation(0);\r\n    if (error != '''') {\r\n\r\n        if(typeof bfUseErrorAlerts == ''undefined''){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus();\r\n    } else\r\n        ff_submitForm();\r\n} // ff_validate_submit'),
(42, 1, 'FF', 'ff_validemail', 'Valid email', 'Validate entry of a valid email (syntax check only)', 'Element Validation', 'function ff_validemail(element, message)\r\n{\r\n    var check =\r\n    /^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$/;\r\n    if (!check.test(element.value)){\r\n        if (message=='''') message = element.name+" is no valid email address.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_validemail'),
(43, 1, 'FF', 'ff_validemail_repeat', 'Validate Email repeat', 'Checks if the field value is a valid email address and has a second counterpart that has an equal value.\r\nThe 2nd email field must be named "FIELDNAME_repeat"!', 'Element Validation', 'function ff_validemail_repeat(element, message)\r\n{\r\n    var check =\r\n    /^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$/;\r\n    if (!check.test(element.value)){\r\n        if (message=='''') message = element.name+" is no valid email address.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n	\r\n    try{\r\n	    var repeat = element.name.split("ff_nm_")[1].split("[]")[0];\r\n	\r\n	    if(!ff_getElementByName(repeat + ''_repeat'')){\r\n	     	if (message=='''') message = repeat+" has no repeat email field.\\n";\r\n	        ff_validationFocus(element.name);\r\n	        return message;\r\n	    } else {\r\n	        if(ff_getElementByName(repeat + ''_repeat'').value != element.value){\r\n	           if (message=='''') message = element.name+" and " + repeat + "_repeat do not match.\\n";\r\n	           ff_validationFocus(repeat + ''_repeat'');\r\n	           return message;\r\n	        }\r\n	    }\r\n    }catch(e){\r\n        return e.description;\r\n    }\r\n\r\n    return '''';\r\n} // ff_validemail'),
(44, 1, 'FF', 'ff_valuenotempty', 'Value not empty', 'Validate that value is not empty.', 'Element Validation', 'function ff_valuenotempty(element, message)\r\n{\r\n    if (element.value!='''') return ''''; \r\n    if (message=='''') message = "Please enter "+element.name+".\\n";\r\n    ff_validationFocus(element.name);\r\n    return message;\r\n} // ff_valuenotempty');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_facileforms_subrecords`
--

CREATE TABLE IF NOT EXISTS `kqt1o_facileforms_subrecords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `record` int(11) NOT NULL DEFAULT '0',
  `element` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_filters`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_links`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kqt1o_finder_taxonomy`
--

INSERT INTO `kqt1o_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_terms`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kqt1o_finder_terms_common`
--

INSERT INTO `kqt1o_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_finder_types`
--

CREATE TABLE IF NOT EXISTS `kqt1o_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_jxiforms_action`
--

CREATE TABLE IF NOT EXISTS `kqt1o_jxiforms_action` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `description` text,
  `core_params` text,
  `action_params` text,
  `for_all_inputs` tinyint(1) DEFAULT '0',
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`action_id`),
  KEY `idx_type` (`type`),
  KEY `idx_for_all_inputs` (`for_all_inputs`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_jxiforms_config`
--

CREATE TABLE IF NOT EXISTS `kqt1o_jxiforms_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `value` text,
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `idx_key` (`key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kqt1o_jxiforms_config`
--

INSERT INTO `kqt1o_jxiforms_config` (`config_id`, `key`, `value`) VALUES
(1, 'cron_access_time', '1413780587');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_jxiforms_input`
--

CREATE TABLE IF NOT EXISTS `kqt1o_jxiforms_input` (
  `input_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `post_url` varchar(255) NOT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `params` text,
  `html` text,
  PRIMARY KEY (`input_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kqt1o_jxiforms_input`
--

INSERT INTO `kqt1o_jxiforms_input` (`input_id`, `title`, `description`, `post_url`, `redirect_url`, `published`, `params`, `html`) VALUES
(1, 'formteam', '', 'http://mastersoftwaretechnologies.com/timber_live/index.php?option=com_jxiforms&view=input&task=submit&input_id=1', 'index.php', 1, '{}', '');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_jxiforms_inputaction`
--

CREATE TABLE IF NOT EXISTS `kqt1o_jxiforms_inputaction` (
  `inputaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `input_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  PRIMARY KEY (`inputaction_id`),
  KEY `idx_input_id` (`input_id`),
  KEY `idx_action_id` (`action_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_jxiforms_log`
--

CREATE TABLE IF NOT EXISTS `kqt1o_jxiforms_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `message` text,
  `user_ip` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `idx_level` (`level`),
  KEY `idx_class` (`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_jxiforms_queue`
--

CREATE TABLE IF NOT EXISTS `kqt1o_jxiforms_queue` (
  `queue_id` int(11) NOT NULL AUTO_INCREMENT,
  `input_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `approval_key` varchar(255) DEFAULT NULL,
  `status` int(4) DEFAULT '0',
  `created_date` datetime NOT NULL,
  `token` text,
  `params` text,
  PRIMARY KEY (`queue_id`),
  KEY `idx_input_id` (`input_id`),
  KEY `idx_action_id` (`action_id`),
  KEY `idx_approved` (`approved`),
  KEY `idx_status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_languages`
--

CREATE TABLE IF NOT EXISTS `kqt1o_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kqt1o_languages`
--

INSERT INTO `kqt1o_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_menu`
--

CREATE TABLE IF NOT EXISTS `kqt1o_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=180 ;

--
-- Dumping data for table `kqt1o_menu`
--

INSERT INTO `kqt1o_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 151, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 33, 38, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 34, 35, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 36, 37, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 39, 40, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 43, 44, 0, '', 1),
(24, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 45, 46, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 1, '*', 0),
(102, 'main', 'JCE', 'jce', '', 'jce', 'index.php?option=com_jce', 'component', 0, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '', 49, 58, 0, '', 1),
(103, 'main', 'WF_MENU_CPANEL', 'wf-menu-cpanel', '', 'jce/wf-menu-cpanel', 'index.php?option=com_jce', 'component', 0, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-cpanel.png', 0, '', 50, 51, 0, '', 1),
(104, 'main', 'WF_MENU_CONFIG', 'wf-menu-config', '', 'jce/wf-menu-config', 'index.php?option=com_jce&view=config', 'component', 0, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-config.png', 0, '', 52, 53, 0, '', 1),
(105, 'main', 'WF_MENU_PROFILES', 'wf-menu-profiles', '', 'jce/wf-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 0, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-profiles.png', 0, '', 54, 55, 0, '', 1),
(106, 'main', 'WF_MENU_INSTALL', 'wf-menu-install', '', 'jce/wf-menu-install', 'index.php?option=com_jce&view=installer', 'component', 0, 102, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-install.png', 0, '', 56, 57, 0, '', 1),
(107, 'mainmenu', 'About Us', 'about-us', '', 'about-us', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 59, 60, 0, '*', 0),
(108, 'mainmenu', 'Products', 'products', '', 'products', '#', 'url', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 61, 76, 0, '*', 0),
(109, 'mainmenu', 'Staircases', 'staircases-ballito', '', 'products/staircases-ballito', 'index.php?option=com_content&view=article&id=15', 'component', 1, 108, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Staircases | Wooden Staircases | Ballito","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"Every staircase is custom made to the requirements of the client, Contact our Ballito Office Today!","menu-meta_keywords":"","robots":"","secure":0}', 62, 63, 0, '*', 0),
(110, 'mainmenu', 'Wooden Decks', 'wooden-decking-ballito', '', 'products/wooden-decking-ballito', 'index.php?option=com_content&view=article&id=16', 'component', 1, 108, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Wooden Decks | Ballito","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"Outdoor Decking transforms outside spaces into practical and stylish outdoor rooms. Contact the Timber Master Ballito Office Today!","menu-meta_keywords":"","robots":"","secure":0}', 64, 65, 0, '*', 0),
(111, 'mainmenu', 'Balustrades', 'balustrades-ballito', '', 'products/balustrades-ballito', 'index.php?option=com_content&view=article&id=17', 'component', 1, 108, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"Balustrades provide structure and safety while reflecting homeowners\\u2019 personalities.","menu-meta_keywords":"","robots":"","secure":0}', 66, 67, 0, '*', 0),
(112, 'mainmenu', 'Screens', 'screens-ballito', '', 'products/screens-ballito', 'index.php?option=com_content&view=article&id=20', 'component', 1, 108, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Screens | Ballito","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"Screens are a full-screen window manager that multiplexes a physical terminal between several processes, typically interactive shells.","menu-meta_keywords":"","robots":"","secure":0}', 68, 69, 0, '*', 0),
(113, 'mainmenu', 'Gates', 'gates-and-drive-way-gates-ballito', '', 'products/gates-and-drive-way-gates-ballito', 'index.php?option=com_content&view=article&id=21', 'component', 1, 108, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Gates and Drive Way Gates | Ballito","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"Driveway gates made of wrought iron, stainless steel etc, along with pedestrian gates which could be decorative or plain to suit your home or business.","menu-meta_keywords":"","robots":"","secure":0}', 70, 71, 0, '*', 0),
(114, 'mainmenu', 'Housing', 'housing-ballito', '', 'products/housing-ballito', 'index.php?option=com_content&view=article&id=23', 'component', 1, 108, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Housing Ballito","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"Timber frame homes are becoming more and more fashionable and are much more eco-friendly and cost effective than conventional brick and mortar. ","menu-meta_keywords":"","robots":"","secure":0}', 72, 73, 0, '*', 0),
(115, 'mainmenu', 'Pergolas', 'pergolas-ballito', '', 'products/pergolas-ballito', 'index.php?option=com_content&view=article&id=22', 'component', 1, 108, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Pergolas | Ballito","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"A pergola or arbour is a garden feature forming a shaded walkway, passageway or sitting area of pillars that support cross-beams and a sturdy open lattice","menu-meta_keywords":"","robots":"","secure":0}', 74, 75, 0, '*', 0),
(116, 'mainmenu', 'Gallery', 'gallery', '', 'gallery', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 77, 96, 0, '*', 0),
(117, 'mainmenu', 'Housing', 'housing', '', 'gallery/housing', '#', 'url', 1, 116, 2, 0, 163, '2014-10-20 02:10:08', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 78, 83, 0, '*', 0),
(118, 'mainmenu', 'Log Homes', 'log-homes', '', 'gallery/housing/log-homes', 'index.php?option=com_content&view=article&id=6', 'component', 1, 117, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 79, 80, 0, '*', 0),
(119, 'mainmenu', 'Timber Frame', 'timber-frame', '', 'gallery/housing/timber-frame', 'index.php?option=com_content&view=article&id=7', 'component', 1, 117, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 81, 82, 0, '*', 0),
(120, 'mainmenu', 'Decks', 'decks', '', 'gallery/decks', 'index.php?option=com_content&view=article&id=8', 'component', 1, 116, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 84, 85, 0, '*', 0),
(121, 'mainmenu', 'Balustrades', 'balustrades', '', 'gallery/balustrades', 'index.php?option=com_content&view=article&id=9', 'component', 1, 116, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 86, 87, 0, '*', 0),
(122, 'mainmenu', 'Staircases', 'staircases', '', 'gallery/staircases', 'index.php?option=com_content&view=article&id=10', 'component', 1, 116, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 88, 89, 0, '*', 0),
(123, 'mainmenu', 'Pergolas', 'pergolas-ballito', '', 'gallery/pergolas-ballito', 'index.php?option=com_content&view=article&id=22', 'component', 1, 116, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Pergolas | Ballito","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"A pergola or arbour is a garden feature forming a shaded walkway, passageway or sitting area of pillars that support cross-beams and a sturdy open lattice","menu-meta_keywords":"","robots":"","secure":0}', 90, 91, 0, '*', 0),
(124, 'mainmenu', 'Screens', 'screens', '', 'gallery/screens', 'index.php?option=com_content&view=article&id=12', 'component', 1, 116, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 92, 93, 0, '*', 0),
(125, 'mainmenu', 'Gates', 'gates', '', 'gallery/gates', 'index.php?option=com_content&view=article&id=13', 'component', 1, 116, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 94, 95, 0, '*', 0),
(126, 'mainmenu', 'Testimonials', 'testimonials', '', 'testimonials', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 97, 98, 0, '*', 0),
(127, 'mainmenu', 'Contact Us', 'contact-us', '', 'contact-us', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 99, 100, 0, '*', 0),
(128, 'menu-module', 'Housing', '2014-10-18-07-23-53', '', '2014-10-18-07-23-53', 'index.php?Itemid=', 'alias', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"114","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 101, 102, 0, '*', 0),
(129, 'menu-module', 'Decks', '2014-10-18-07-24-31', '', '2014-10-18-07-24-31', 'index.php?Itemid=', 'alias', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"110","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 103, 104, 0, '*', 0),
(130, 'menu-module', 'Balustrades', '2014-10-18-07-24-32', '', '2014-10-18-07-24-32', 'index.php?Itemid=', 'alias', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"111","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 105, 106, 0, '*', 0),
(131, 'menu-module', 'Staircases', '2014-10-18-07-24-33', '', '2014-10-18-07-24-33', 'index.php?Itemid=', 'alias', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"109","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 107, 108, 0, '*', 0),
(132, 'menu-module', 'Pergolas', '2014-10-18-07-24-34', '', '2014-10-18-07-24-34', 'index.php?Itemid=', 'alias', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"115","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 109, 110, 0, '*', 0),
(133, 'menu-module', 'Screens', '2014-10-18-07-24-35', '', '2014-10-18-07-24-35', 'index.php?Itemid=', 'alias', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"112","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 111, 112, 0, '*', 0),
(134, 'menu-module', 'Gates', '2014-10-18-07-24-36', '', '2014-10-18-07-24-36', 'index.php?Itemid=', 'alias', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"113","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 113, 114, 0, '*', 0),
(135, 'menu-module', 'test', '2014-10-18-07-43-34', '', '2014-10-18-07-43-34', 'index.php/products#per', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 115, 116, 0, '*', 0),
(136, 'menu-module', 'Housing', '2014-10-18-07-43-35', '', '2014-10-18-07-43-35', 'http://timbermaster.co.za/products/housing-ballito', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 117, 118, 0, '*', 0),
(137, 'menu-module', 'Decks', '2014-10-18-07-43-36', '', '2014-10-18-07-43-36', 'http://timbermaster.co.za/products/wooden-decking-ballito', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 119, 120, 0, '*', 0),
(138, 'menu-module', 'Balustrades', '2014-10-18-07-43-37', '', '2014-10-18-07-43-37', 'http://timbermaster.co.za/products/balustrades-ballito', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 121, 122, 0, '*', 0),
(139, 'menu-module', 'Staircases', '2014-10-18-07-43-38', '', '2014-10-18-07-43-38', 'http://timbermaster.co.za/products/staircases-ballito', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 123, 124, 0, '*', 0),
(140, 'menu-module', 'Pergolas', '2014-10-18-07-43-39', '', '2014-10-18-07-43-39', 'http://timbermaster.co.za/products/pergolas-ballito', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 125, 126, 0, '*', 0),
(141, 'menu-module', 'Screens', '2014-10-18-07-43-40', '', '2014-10-18-07-43-40', 'http://timbermaster.co.za/products/screens-ballito', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 127, 128, 0, '*', 0),
(142, 'menu-module', 'Gates', '2014-10-18-07-43-41', '', '2014-10-18-07-43-41', 'http://timbermaster.co.za/products/gates-and-drive-way-gates-ballito', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 129, 130, 0, '*', 0),
(159, 'main', 'COM_RBINSTALLER', 'com-rbinstaller', '', 'com-rbinstaller', 'index.php?option=com_rbinstaller', 'component', 0, 1, 1, 10063, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 131, 132, 0, '', 1),
(160, 'mainmenu', 'thank you', 'thank-you', '', 'thank-you', 'index.php?option=com_contact&view=contact&id=1', 'component', -2, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 133, 134, 0, '*', 0),
(162, 'others', 'Legal Disclaimer', 'legal-disclaimer', '', 'legal-disclaimer', 'index.php?option=com_content&view=article&id=18', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 135, 136, 0, '*', 0),
(171, 'main', 'COM_REDJ_MENU_REDJ', 'com-redj-menu-redj', '', 'com-redj-menu-redj', 'index.php?option=com_redj', 'component', 0, 1, 1, 10077, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_redj/images/redj.png', 0, '', 137, 148, 0, '', 1),
(172, 'main', 'COM_REDJ_MENU_REDIRECTS', 'com-redj-menu-redirects', '', 'com-redj-menu-redj/com-redj-menu-redirects', 'index.php?option=com_redj&view=redirects', 'component', 0, 171, 2, 10077, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 138, 139, 0, '', 1),
(173, 'main', 'COM_REDJ_MENU_PAGES404', 'com-redj-menu-pages404', '', 'com-redj-menu-redj/com-redj-menu-pages404', 'index.php?option=com_redj&view=pages404', 'component', 0, 171, 2, 10077, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 140, 141, 0, '', 1),
(174, 'main', 'COM_REDJ_MENU_ERRORS', 'com-redj-menu-errors', '', 'com-redj-menu-redj/com-redj-menu-errors', 'index.php?option=com_redj&view=errors', 'component', 0, 171, 2, 10077, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 142, 143, 0, '', 1),
(175, 'main', 'COM_REDJ_MENU_REFERERS', 'com-redj-menu-referers', '', 'com-redj-menu-redj/com-redj-menu-referers', 'index.php?option=com_redj&view=referers', 'component', 0, 171, 2, 10077, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 144, 145, 0, '', 1),
(176, 'main', 'COM_REDJ_MENU_ABOUT', 'com-redj-menu-about', '', 'com-redj-menu-redj/com-redj-menu-about', 'index.php?option=com_redj&view=about', 'component', 0, 171, 2, 10077, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 146, 147, 0, '', 1),
(179, 'main', 'COM_ADMINTOOLS', 'com-admintools', '', 'com-admintools', 'index.php?option=com_admintools', 'component', 1, 1, 1, 10087, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_admintools/images/admintools-16.png', 0, '', 149, 150, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_menu_types`
--

CREATE TABLE IF NOT EXISTS `kqt1o_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `kqt1o_menu_types`
--

INSERT INTO `kqt1o_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'menu-module', 'Menu Module', ''),
(3, 'others', 'Others', '');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_messages`
--

CREATE TABLE IF NOT EXISTS `kqt1o_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `kqt1o_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_modules`
--

CREATE TABLE IF NOT EXISTS `kqt1o_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- Dumping data for table `kqt1o_modules`
--

INSERT INTO `kqt1o_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"_menus","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(89, 70, 'banner', '', '<img src="images/stories/logobanner/timbermasterlogobanner.jpg" alt="timbermasterlogobanner" />', 1, 'banner', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 72, 'slider', '', '{besps}images/stories/banners{/besps}', 0, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 73, 'Vinaora Nivo Slider', '', '', 1, 'position-0', 163, '2014-10-21 07:49:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_vt_nivo_slider', 1, 0, '{"demo":"-1","theme":"amazing","slide_width":"auto","slide_height":"auto","item_dir":"images\\/stories\\/banners","item_path":"","item_title":"","item_description":"","item_url":"","item_target":"_blank","effect":"fade","slices":"15","boxCols":"8","boxRows":"4","animSpeed":"500","pauseTime":"3000","startSlide":"0","directionNav":"0","controlNav":"0","pauseOnHover":"0","manualAdvance":"1","prevText":"Prev","nextText":"Next","ribbon":"0","controlPosition":"bottomright","controlStyle":"05","arrowStyle":"10","titleColor":"#333333","titleFontSize":"18","titleFontStyle":"","descColor":"#333333","descFontSize":"12","descFontStyle":"","captionWidth":"100%","captionHeight":"100%","captionBackground":"#ffffcc","captionPosition":"topleft","captionMarginVertical":"","captionMarginHorizontal":"","captionRounded":"all","slide_bgcolor":"","slide_bdcolor":"","slide_bdwidth":"0","slide_bdrounded":"0","slide_bdshadow":"0","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","controlNavThumbs":"false","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 74, 'What we do', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"menu-module","base":"108","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 75, 'bottom_banner', '', '<p><img src="images/stories/icons/callusbanner.jpg" alt="callusbanner" /></p>', 0, 'position-8', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 76, 'Menu Accordeon CK', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_accordeonck', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","imgalignement":"none","imagerollprefix":"_hover","imageactiveprefix":"_active","tag_id":"","class_sfx":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","eventtype":"mouseover","eventtarget":"link","fadetransition":"true","mooduration":"100","mootransition":"linear","defaultopenedid":"","usestyles":"0","theme":"simple","useplusminusimages":"0","imageplus":"modules\\/mod_accordeonck\\/assets\\/plus.png","imageminus":"modules\\/mod_accordeonck\\/assets\\/minus.png","imageposition":"left","menuusemargin":"1","menumargin":"10","menupadding":"5","menuusebackground":"0","menubgcolor1":"#f0f0f0","menuusegradient":"0","menubgcolor2":"#e3e3e3","menuuseroundedcorners":"0","menuroundedcornerstl":"5","menuroundedcornerstr":"5","menuroundedcornersbr":"5","menuroundedcornersbl":"5","menuuseshadow":"0","menushadowcolor":"#444444","menushadowblur":"3","menushadowspread":"0","menushadowoffsetx":"0","menushadowoffsety":"0","menushadowinset":"0","menuuseborders":"0","menubordercolor":"#efefef","menuborderwidth":"1","level1linkusefont":"0","level1linkfontsize":"12px","level1linkfontcolor":"","level1linkfontcolorhover":"","level1linkdescfontsize":"10px","level1linkdescfontcolor":"","level1linkusemargin":"0","level1linkmargin":"0","level1linkpadding":"0","level1linkusebackground":"0","level1linkbgcolor1":"","level1linkusegradient":"0","level1linkbgcolor2":"","level1linkuseroundedcorners":"0","level1linkroundedcornerstl":"0","level1linkroundedcornerstr":"0","level1linkroundedcornersbr":"0","level1linkroundedcornersbl":"0","level1linkuseshadow":"0","level1linkshadowcolor":"","level1linkshadowblur":"0","level1linkshadowspread":"0","level1linkshadowoffsetx":"0","level1linkshadowoffsety":"0","level1linkshadowinset":"0","level1linkuseborders":"0","level1linkbordercolor":"","level1linkborderwidth":"1","level2linkusefont":"0","level2linkfontsize":"12px","level2linkfontcolor":"","level2linkfontcolorhover":"","level2linkdescfontsize":"10px","level2linkdescfontcolor":"","level2linkusemargin":"0","level2linkmargin":"0","level2linkpadding":"0","level2linkusebackground":"0","level2linkbgcolor1":"","level2linkusegradient":"0","level2linkbgcolor2":"","level2linkuseroundedcorners":"0","level2linkroundedcornerstl":"0","level2linkroundedcornerstr":"0","level2linkroundedcornersbr":"0","level2linkroundedcornersbl":"0","level2linkuseshadow":"0","level2linkshadowcolor":"","level2linkshadowblur":"0","level2linkshadowspread":"0","level2linkshadowoffsetx":"0","level2linkshadowoffsety":"0","level2linkshadowinset":"0","level2linkuseborders":"0","level2linkbordercolor":"","level2linkborderwidth":"1","level3linkusefont":"0","level3linkfontsize":"12px","level3linkfontcolor":"","level3linkfontcolorhover":"","level3linkdescfontsize":"10px","level3linkdescfontcolor":"","level3linkusemargin":"0","level3linkmargin":"0","level3linkpadding":"0","level3linkusebackground":"0","level3linkbgcolor1":"","level3linkusegradient":"0","level3linkbgcolor2":"","level3linkuseroundedcorners":"0","level3linkroundedcornerstl":"0","level3linkroundedcornerstr":"0","level3linkroundedcornersbr":"0","level3linkroundedcornersbl":"0","level3linkuseshadow":"0","level3linkshadowcolor":"","level3linkshadowblur":"0","level3linkshadowspread":"0","level3linkshadowoffsetx":"0","level3linkshadowoffsety":"0","level3linkshadowinset":"0","level3linkuseborders":"0","level3linkbordercolor":"","level3linkborderwidth":"1","thirdparty":"none","usehikashopimages":"0","usehikashopsuffix":"0","hikashopimagesuffix":"_mini","hikashopcategoryroot":"0","hikashopcategorydepth":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 83, 'Simple Email Form', '', '', 1, 'myposition', 163, '2014-10-22 05:15:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_simpleemailform', 1, 0, '{"mod_simpleemailform_defaultLang":"en-GB","mod_simpleemailform_emailTo":"mss.deepakkumar@gmail.com","mod_simpleemailform_labelAlign":"L","mod_simpleemailform_field1active":"R","mod_simpleemailform_field1label":"First Name","mod_simpleemailform_field1value":"","mod_simpleemailform_field1size":"40","mod_simpleemailform_field1maxx":"255","mod_simpleemailform_field1from":"S","mod_simpleemailform_field1ckRfmt":"H","mod_simpleemailform_field1ckRpos":"B","mod_simpleemailform_field2active":"R","mod_simpleemailform_field2label":"Last Name","mod_simpleemailform_field2value":"Subject","mod_simpleemailform_field2size":"40","mod_simpleemailform_field2maxx":"255","mod_simpleemailform_field2from":"N","mod_simpleemailform_field2ckRfmt":"C","mod_simpleemailform_field2ckRpos":"B","mod_simpleemailform_field3active":"R","mod_simpleemailform_field3label":"Contact Number","mod_simpleemailform_field3value":"Value 3","mod_simpleemailform_field3size":"40","mod_simpleemailform_field3maxx":"255","mod_simpleemailform_field3from":"N","mod_simpleemailform_field3ckRfmt":"C","mod_simpleemailform_field3ckRpos":"B","mod_simpleemailform_field4active":"R","mod_simpleemailform_field4label":"E-Mail Address","mod_simpleemailform_field4value":"Value 4","mod_simpleemailform_field4size":"40","mod_simpleemailform_field4maxx":"255","mod_simpleemailform_field4from":"F","mod_simpleemailform_field4ckRfmt":"C","mod_simpleemailform_field4ckRpos":"B","mod_simpleemailform_field5active":"R","mod_simpleemailform_field5label":"Message Subject","mod_simpleemailform_field5value":"Value 5","mod_simpleemailform_field5size":"40","mod_simpleemailform_field5maxx":"255","mod_simpleemailform_field5from":"N","mod_simpleemailform_field5ckRfmt":"V","mod_simpleemailform_field5ckRpos":"B","mod_simpleemailform_field6active":"N","mod_simpleemailform_field6label":"Message Subject","mod_simpleemailform_field6value":"Value 6","mod_simpleemailform_field6size":"40","mod_simpleemailform_field6maxx":"255","mod_simpleemailform_field6from":"N","mod_simpleemailform_field6ckRfmt":"V","mod_simpleemailform_field6ckRpos":"B","mod_simpleemailform_field7active":"Y","mod_simpleemailform_field7label":"Message","mod_simpleemailform_field7value":"Value 7","mod_simpleemailform_field7size":"40","mod_simpleemailform_field7maxx":"410","mod_simpleemailform_field7from":"A","mod_simpleemailform_field7ckRfmt":"C","mod_simpleemailform_field7ckRpos":"B","mod_simpleemailform_field8active":"N","mod_simpleemailform_field8label":"Field 8","mod_simpleemailform_field8value":"Value 8","mod_simpleemailform_field8size":"40","mod_simpleemailform_field8maxx":"255","mod_simpleemailform_field8from":"N","mod_simpleemailform_field8ckRfmt":"C","mod_simpleemailform_field8ckRpos":"B","cache":"0","mod_simpleemailform_instance":"1","mod_simpleemailform_emailCC":"","mod_simpleemailform_emailBCC":"","mod_simpleemailform_emailReplyTo":"","mod_simpleemailform_replytoActive":"N","mod_simpleemailform_autoreset":"N","mod_simpleemailform_cssClass":"mod_sef","mod_simpleemailform_col2space":"5","mod_simpleemailform_redirectURL":"","mod_simpleemailform_useCaptcha":"N","mod_simpleemailform_captchaDir":"","mod_simpleemailform_captchaURL":"","mod_simpleemailform_captchaLen":"8","mod_simpleemailform_captchaSize":"24","mod_simpleemailform_captchaWidth":"200","mod_simpleemailform_captchaHeight":"80","mod_simpleemailform_captchaTxtColor":"#000000","mod_simpleemailform_captchaLinesColor":"#FFFF00","mod_simpleemailform_captchaBgColor":"#BFBFBF","mod_simpleemailform_errorTxtColor":"red","mod_simpleemailform_successTxtColor":"green","mod_simpleemailform_anchor":"#","mod_simpleemailform_uploadActive":"0","mod_simpleemailform_uploadLabel":"Attachment","mod_simpleemailform_uploadAllowed":"","mod_simpleemailform_emailFile":"","mod_simpleemailform_copymeLabel":"Send me a copy","mod_simpleemailform_copymeActive":"N","mod_simpleemailform_copymeAuto":"N","mod_simpleemailform_emailCheck":"Y","mod_simpleemailform_addTitle":"N","mod_simpleemailform_testMode":"N","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 84, 'Our Project Portfolio', '', '<div class="badge-sticker-new"></div>\r\n<div class="box-1">\r\n<div class="box-2 deepest" style="min-height: 88px;">\r\n<h3 class="header">\r\n<span class="header-2">\r\n<span class="header-3">\r\nOur\r\n<span class="color"> Project Portfolio</span>\r\n</span>\r\n</span>\r\n</h3>\r\nView our extensive portfolio of recent jobs..\r\n<br>\r\n<p class="readmore">\r\n<a class="readmore" href="gallery/decks">Read more...</a>\r\n</p>\r\n</div>\r\n</div>', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" frame sticker-new","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 85, 'Get a Quote Today!', '', '<div class="box-1">\r\n<div class="box-2 deepest" style="min-height: 88px;">\r\n<h3 class="header">\r\n<span class="header-2">\r\n<span class="header-3">\r\nGet\r\n<span class="color"> a Quote Today!</span>\r\n</span>\r\n</span>\r\n</h3>\r\nLooking to spruce up your surrounds, or build something entirely new. Call us today..\r\n<br>\r\n<p class="readmore">\r\n<a class="readmore" href="contact-us">Read more...</a>\r\n</p>\r\n</div>\r\n</div>', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" frame","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_modules_menu`
--

CREATE TABLE IF NOT EXISTS `kqt1o_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kqt1o_modules_menu`
--

INSERT INTO `kqt1o_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(89, 0),
(91, 0),
(92, 101),
(93, 101),
(93, 107),
(93, 108),
(93, 116),
(93, 126),
(93, 127),
(93, 128),
(93, 129),
(93, 130),
(93, 131),
(93, 132),
(93, 133),
(93, 134),
(94, 0),
(95, 0),
(98, 0),
(99, 101),
(99, 127),
(100, 101),
(100, 127);

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `kqt1o_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_overrider`
--

CREATE TABLE IF NOT EXISTS `kqt1o_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `kqt1o_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `kqt1o_postinstall_messages`
--

INSERT INTO `kqt1o_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(4, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1),
(5, 10087, 'COM_ADMINTOOLS_POSTSETUP_LBL_ACCEPTLICENSE', 'COM_ADMINTOOLS_POSTSETUP_DESC_ACCEPTLICENSE', 'COM_ADMINTOOLS_POSTSETUP_BTN_I_CONFIRM_THIS', 'com_admintools', 1, 'message', '', '', '', '', '3.1.2', 1),
(6, 10087, 'COM_ADMINTOOLS_POSTSETUP_LBL_ACCEPTSUPPORT', 'COM_ADMINTOOLS_POSTSETUP_DESC_ACCEPTSUPPORT', 'COM_ADMINTOOLS_POSTSETUP_BTN_I_CONFIRM_THIS', 'com_admintools', 1, 'message', '', '', '', '', '3.1.2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_rbinstaller_config`
--

CREATE TABLE IF NOT EXISTS `kqt1o_rbinstaller_config` (
  `key` varchar(255) NOT NULL,
  `value` text,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kqt1o_rbinstaller_config`
--

INSERT INTO `kqt1o_rbinstaller_config` (`key`, `value`) VALUES
('data_fetch_time', '1413780660');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_rb_ecommerce_country`
--

CREATE TABLE IF NOT EXISTS `kqt1o_rb_ecommerce_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `isocode2` char(2) DEFAULT NULL,
  `isocode3` char(3) DEFAULT NULL,
  `isocode3n` int(3) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=246 ;

--
-- Dumping data for table `kqt1o_rb_ecommerce_country`
--

INSERT INTO `kqt1o_rb_ecommerce_country` (`country_id`, `title`, `isocode2`, `isocode3`, `isocode3n`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', NULL),
(2, 'Albania', 'AL', 'ALB', NULL),
(3, 'Algeria', 'DZ', 'DZA', NULL),
(4, 'American Samoa', 'AS', 'ASM', NULL),
(5, 'Andorra', 'AD', 'AND', NULL),
(6, 'Angola', 'AO', 'AGO', NULL),
(7, 'Anguilla', 'AI', 'AIA', NULL),
(8, 'Antarctica', 'AQ', 'ATA', NULL),
(9, 'Antigua and Barbuda', 'AG', 'ATG', NULL),
(10, 'Argentina', 'AR', 'ARG', NULL),
(11, 'Armenia', 'AM', 'ARM', NULL),
(12, 'Aruba', 'AW', 'ABW', NULL),
(13, 'Australia', 'AU', 'AUS', NULL),
(14, 'Austria', 'AT', 'AUT', NULL),
(15, 'Azerbaijan', 'AZ', 'AZE', NULL),
(16, 'Bahamas', 'BS', 'BHS', NULL),
(17, 'Bahrain', 'BH', 'BHR', NULL),
(18, 'Bangladesh', 'BD', 'BGD', NULL),
(19, 'Barbados', 'BB', 'BRB', NULL),
(20, 'Belarus', 'BY', 'BLR', NULL),
(21, 'Belgium', 'BE', 'BEL', NULL),
(22, 'Belize', 'BZ', 'BLZ', NULL),
(23, 'Benin', 'BJ', 'BEN', NULL),
(24, 'Bermuda', 'BM', 'BMU', NULL),
(25, 'Bhutan', 'BT', 'BTN', NULL),
(26, 'Bolivia', 'BO', 'BOL', NULL),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', NULL),
(28, 'Botswana', 'BW', 'BWA', NULL),
(29, 'Bouvet Island', 'BV', 'BVT', NULL),
(30, 'Brazil', 'BR', 'BRA', NULL),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', NULL),
(32, 'Brunei Darussalam', 'BN', 'BRN', NULL),
(33, 'Bulgaria', 'BG', 'BGR', NULL),
(34, 'Burkina Faso', 'BF', 'BFA', NULL),
(35, 'Burundi', 'BI', 'BDI', NULL),
(36, 'Cambodia', 'KH', 'KHM', NULL),
(37, 'Cameroon', 'CM', 'CMR', NULL),
(38, 'Canada', 'CA', 'CAN', NULL),
(39, 'Cape Verde', 'CV', 'CPV', NULL),
(40, 'Cayman Islands', 'KY', 'CYM', NULL),
(41, 'Central African Republic', 'CF', 'CAF', NULL),
(42, 'Chad', 'TD', 'TCD', NULL),
(43, 'Chile', 'CL', 'CHL', NULL),
(44, 'China', 'CN', 'CHN', NULL),
(45, 'Christmas Island', 'CX', 'CXR', NULL),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', NULL),
(47, 'Colombia', 'CO', 'COL', NULL),
(48, 'Comoros', 'KM', 'COM', NULL),
(49, 'Congo', 'CG', 'COG', NULL),
(50, 'Cook Islands', 'CK', 'COK', NULL),
(51, 'Costa Rica', 'CR', 'CRI', NULL),
(52, 'Cote D''Ivoire', 'CI', 'CIV', NULL),
(53, 'Croatia', 'HR', 'HRV', NULL),
(54, 'Cuba', 'CU', 'CUB', NULL),
(55, 'Cyprus', 'CY', 'CYP', NULL),
(56, 'Czech Republic', 'CZ', 'CZE', NULL),
(57, 'Denmark', 'DK', 'DNK', NULL),
(58, 'Djibouti', 'DJ', 'DJI', NULL),
(59, 'Dominica', 'DM', 'DMA', NULL),
(60, 'Dominican Republic', 'DO', 'DOM', NULL),
(61, 'East Timor', 'TP', 'TMP', NULL),
(62, 'Ecuador', 'EC', 'ECU', NULL),
(63, 'Egypt', 'EG', 'EGY', NULL),
(64, 'El Salvador', 'SV', 'SLV', NULL),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', NULL),
(66, 'Eritrea', 'ER', 'ERI', NULL),
(67, 'Estonia', 'EE', 'EST', NULL),
(68, 'Ethiopia', 'ET', 'ETH', NULL),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', NULL),
(70, 'Faroe Islands', 'FO', 'FRO', NULL),
(71, 'Fiji', 'FJ', 'FJI', NULL),
(72, 'Finland', 'FI', 'FIN', NULL),
(73, 'France', 'FR', 'FRA', NULL),
(74, 'France, Metropolitan', 'FX', 'FXX', NULL),
(75, 'French Guiana', 'GF', 'GUF', NULL),
(76, 'French Polynesia', 'PF', 'PYF', NULL),
(77, 'French Southern Territories', 'TF', 'ATF', NULL),
(78, 'Gabon', 'GA', 'GAB', NULL),
(79, 'Gambia', 'GM', 'GMB', NULL),
(80, 'Georgia', 'GE', 'GEO', NULL),
(81, 'Germany', 'DE', 'DEU', NULL),
(82, 'Ghana', 'GH', 'GHA', NULL),
(83, 'Gibraltar', 'GI', 'GIB', NULL),
(84, 'Greece', 'GR', 'GRC', NULL),
(85, 'Greenland', 'GL', 'GRL', NULL),
(86, 'Grenada', 'GD', 'GRD', NULL),
(87, 'Guadeloupe', 'GP', 'GLP', NULL),
(88, 'Guam', 'GU', 'GUM', NULL),
(89, 'Guatemala', 'GT', 'GTM', NULL),
(90, 'Guinea', 'GN', 'GIN', NULL),
(91, 'Guinea-bissau', 'GW', 'GNB', NULL),
(92, 'Guyana', 'GY', 'GUY', NULL),
(93, 'Haiti', 'HT', 'HTI', NULL),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', NULL),
(95, 'Honduras', 'HN', 'HND', NULL),
(96, 'Hong Kong', 'HK', 'HKG', NULL),
(97, 'Hungary', 'HU', 'HUN', NULL),
(98, 'Iceland', 'IS', 'ISL', NULL),
(99, 'India', 'IN', 'IND', NULL),
(100, 'Indonesia', 'ID', 'IDN', NULL),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', NULL),
(102, 'Iraq', 'IQ', 'IRQ', NULL),
(103, 'Ireland', 'IE', 'IRL', NULL),
(104, 'Israel', 'IL', 'ISR', NULL),
(105, 'Italy', 'IT', 'ITA', NULL),
(106, 'Jamaica', 'JM', 'JAM', NULL),
(107, 'Japan', 'JP', 'JPN', NULL),
(108, 'Jordan', 'JO', 'JOR', NULL),
(109, 'Kazakhstan', 'KZ', 'KAZ', NULL),
(110, 'Kenya', 'KE', 'KEN', NULL),
(111, 'Kiribati', 'KI', 'KIR', NULL),
(112, 'Korea, Democratic People''s Republic of', 'KP', 'PRK', NULL),
(113, 'Korea, Republic of', 'KR', 'KOR', NULL),
(114, 'Kuwait', 'KW', 'KWT', NULL),
(115, 'Kyrgyzstan', 'KG', 'KGZ', NULL),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', NULL),
(117, 'Latvia', 'LV', 'LVA', NULL),
(118, 'Lebanon', 'LB', 'LBN', NULL),
(119, 'Lesotho', 'LS', 'LSO', NULL),
(120, 'Liberia', 'LR', 'LBR', NULL),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', NULL),
(122, 'Liechtenstein', 'LI', 'LIE', NULL),
(123, 'Lithuania', 'LT', 'LTU', NULL),
(124, 'Luxembourg', 'LU', 'LUX', NULL),
(125, 'Macau', 'MO', 'MAC', NULL),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', NULL),
(127, 'Madagascar', 'MG', 'MDG', NULL),
(128, 'Malawi', 'MW', 'MWI', NULL),
(129, 'Malaysia', 'MY', 'MYS', NULL),
(130, 'Maldives', 'MV', 'MDV', NULL),
(131, 'Mali', 'ML', 'MLI', NULL),
(132, 'Malta', 'MT', 'MLT', NULL),
(133, 'Marshall Islands', 'MH', 'MHL', NULL),
(134, 'Martinique', 'MQ', 'MTQ', NULL),
(135, 'Mauritania', 'MR', 'MRT', NULL),
(136, 'Mauritius', 'MU', 'MUS', NULL),
(137, 'Mayotte', 'YT', 'MYT', NULL),
(138, 'Mexico', 'MX', 'MEX', NULL),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', NULL),
(140, 'Moldova, Republic of', 'MD', 'MDA', NULL),
(141, 'Monaco', 'MC', 'MCO', NULL),
(142, 'Mongolia', 'MN', 'MNG', NULL),
(143, 'Montserrat', 'MS', 'MSR', NULL),
(144, 'Morocco', 'MA', 'MAR', NULL),
(145, 'Mozambique', 'MZ', 'MOZ', NULL),
(146, 'Myanmar', 'MM', 'MMR', NULL),
(147, 'Namibia', 'NA', 'NAM', NULL),
(148, 'Nauru', 'NR', 'NRU', NULL),
(149, 'Nepal', 'NP', 'NPL', NULL),
(150, 'Netherlands', 'NL', 'NLD', NULL),
(151, 'Netherlands Antilles', 'AN', 'ANT', NULL),
(152, 'New Caledonia', 'NC', 'NCL', NULL),
(153, 'New Zealand', 'NZ', 'NZL', NULL),
(154, 'Nicaragua', 'NI', 'NIC', NULL),
(155, 'Niger', 'NE', 'NER', NULL),
(156, 'Nigeria', 'NG', 'NGA', NULL),
(157, 'Niue', 'NU', 'NIU', NULL),
(158, 'Norfolk Island', 'NF', 'NFK', NULL),
(159, 'Northern Mariana Islands', 'MP', 'MNP', NULL),
(160, 'Norway', 'NO', 'NOR', NULL),
(161, 'Oman', 'OM', 'OMN', NULL),
(162, 'Pakistan', 'PK', 'PAK', NULL),
(163, 'Palau', 'PW', 'PLW', NULL),
(164, 'Panama', 'PA', 'PAN', NULL),
(165, 'Papua New Guinea', 'PG', 'PNG', NULL),
(166, 'Paraguay', 'PY', 'PRY', NULL),
(167, 'Peru', 'PE', 'PER', NULL),
(168, 'Philippines', 'PH', 'PHL', NULL),
(169, 'Pitcairn', 'PN', 'PCN', NULL),
(170, 'Poland', 'PL', 'POL', NULL),
(171, 'Portugal', 'PT', 'PRT', NULL),
(172, 'Puerto Rico', 'PR', 'PRI', NULL),
(173, 'Qatar', 'QA', 'QAT', NULL),
(174, 'Reunion', 'RE', 'REU', NULL),
(175, 'Romania', 'RO', 'ROM', NULL),
(176, 'Russian Federation', 'RU', 'RUS', NULL),
(177, 'Rwanda', 'RW', 'RWA', NULL),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', NULL),
(179, 'Saint Lucia', 'LC', 'LCA', NULL),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', NULL),
(181, 'Samoa', 'WS', 'WSM', NULL),
(182, 'San Marino', 'SM', 'SMR', NULL),
(183, 'Sao Tome and Principe', 'ST', 'STP', NULL),
(184, 'Saudi Arabia', 'SA', 'SAU', NULL),
(185, 'Senegal', 'SN', 'SEN', NULL),
(186, 'Seychelles', 'SC', 'SYC', NULL),
(187, 'Sierra Leone', 'SL', 'SLE', NULL),
(188, 'Singapore', 'SG', 'SGP', NULL),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', NULL),
(190, 'Slovenia', 'SI', 'SVN', NULL),
(191, 'Solomon Islands', 'SB', 'SLB', NULL),
(192, 'Somalia', 'SO', 'SOM', NULL),
(193, 'South Africa', 'ZA', 'ZAF', NULL),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', NULL),
(195, 'Spain', 'ES', 'ESP', NULL),
(196, 'Sri Lanka', 'LK', 'LKA', NULL),
(197, 'St. Helena', 'SH', 'SHN', NULL),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', NULL),
(199, 'Sudan', 'SD', 'SDN', NULL),
(200, 'Suriname', 'SR', 'SUR', NULL),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', NULL),
(202, 'Swaziland', 'SZ', 'SWZ', NULL),
(203, 'Sweden', 'SE', 'SWE', NULL),
(204, 'Switzerland', 'CH', 'CHE', NULL),
(205, 'Syrian Arab Republic', 'SY', 'SYR', NULL),
(206, 'Taiwan', 'TW', 'TWN', NULL),
(207, 'Tajikistan', 'TJ', 'TJK', NULL),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', NULL),
(209, 'Thailand', 'TH', 'THA', NULL),
(210, 'Togo', 'TG', 'TGO', NULL),
(211, 'Tokelau', 'TK', 'TKL', NULL),
(212, 'Tonga', 'TO', 'TON', NULL),
(213, 'Trinidad and Tobago', 'TT', 'TTO', NULL),
(214, 'Tunisia', 'TN', 'TUN', NULL),
(215, 'Turkey', 'TR', 'TUR', NULL),
(216, 'Turkmenistan', 'TM', 'TKM', NULL),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', NULL),
(218, 'Tuvalu', 'TV', 'TUV', NULL),
(219, 'Uganda', 'UG', 'UGA', NULL),
(220, 'Ukraine', 'UA', 'UKR', NULL),
(221, 'United Arab Emirates', 'AE', 'ARE', NULL),
(222, 'United Kingdom', 'GB', 'GBR', NULL),
(223, 'United States', 'US', 'USA', NULL),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', NULL),
(225, 'Uruguay', 'UY', 'URY', NULL),
(226, 'Uzbekistan', 'UZ', 'UZB', NULL),
(227, 'Vanuatu', 'VU', 'VUT', NULL),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', NULL),
(229, 'Venezuela', 'VE', 'VEN', NULL),
(230, 'Viet Nam', 'VN', 'VNM', NULL),
(231, 'Virgin Islands (British)', 'VG', 'VGB', NULL),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', NULL),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', NULL),
(234, 'Western Sahara', 'EH', 'ESH', NULL),
(235, 'Yemen', 'YE', 'YEM', NULL),
(236, 'Serbia', 'RS', 'SRB', NULL),
(237, 'The Democratic Republic of Congo', 'DC', 'DRC', NULL),
(238, 'Zambia', 'ZM', 'ZMB', NULL),
(239, 'Zimbabwe', 'ZW', 'ZWE', NULL),
(240, 'East Timor', 'XE', 'XET', NULL),
(241, 'Jersey', 'XJ', 'XJE', NULL),
(242, 'St. Barthelemy', 'XB', 'XSB', NULL),
(243, 'St. Eustatius', 'XU', 'XSE', NULL),
(244, 'Canary Islands', 'XC', 'XCA', NULL),
(245, 'Montenegro', 'ME', 'MNE', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_rb_ecommerce_currency`
--

CREATE TABLE IF NOT EXISTS `kqt1o_rb_ecommerce_currency` (
  `currency_id` char(3) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `params` text,
  `symbol` char(5) DEFAULT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kqt1o_rb_ecommerce_currency`
--

INSERT INTO `kqt1o_rb_ecommerce_currency` (`currency_id`, `title`, `published`, `params`, `symbol`) VALUES
('ADP', 'Andorran Peseta', 1, NULL, NULL),
('AED', 'United Arab Emirates Dirham', 1, NULL, 'د.إ'),
('AFA', 'Afghanistan Afghani', 1, NULL, NULL),
('ALL', 'Albanian Lek', 1, NULL, 'L'),
('ANG', 'Netherlands Antillian Guilder', 1, NULL, 'ƒ'),
('AOK', 'Angolan Kwanza', 1, NULL, NULL),
('ARS', 'Argentine Peso', 1, NULL, '$'),
('AUD', 'Australian Dollar', 1, NULL, '$'),
('AWG', 'Aruban Florin', 1, NULL, 'ƒ'),
('BBD', 'Barbados Dollar', 1, NULL, '$'),
('BDT', 'Bangladeshi Taka', 1, NULL, '৳'),
('BGL', 'Bulgarian Lev', 1, NULL, NULL),
('BHD', 'Bahraini Dinar', 1, NULL, 'ب.د'),
('BIF', 'Burundi Franc', 1, NULL, 'Fr'),
('BMD', 'Bermudian Dollar', 1, NULL, '$'),
('BND', 'Brunei Dollar', 1, NULL, '$'),
('BOB', 'Bolivian Boliviano', 1, NULL, 'Bs.'),
('BRL', 'Brazilian Real', 1, NULL, 'R$'),
('BSD', 'Bahamian Dollar', 1, NULL, '$'),
('BTN', 'Bhutan Ngultrum', 1, NULL, 'Nu'),
('BUK', 'Burma Kyat', 1, NULL, NULL),
('BWP', 'Botswanian Pula', 1, NULL, 'P'),
('BZD', 'Belize Dollar', 1, NULL, '$'),
('CAD', 'Canadian Dollar', 1, NULL, '$'),
('CHF', 'Swiss Franc', 1, NULL, 'Fr'),
('CLF', 'Chilean Unidades de Fomento', 1, NULL, NULL),
('CLP', 'Chilean Peso', 1, NULL, '$'),
('CNY', 'Yuan (Chinese) Renminbi', 1, NULL, '¥'),
('COP', 'Colombian Peso', 1, NULL, '$'),
('CRC', 'Costa Rican Colon', 1, NULL, '₡'),
('CZK', 'Czech Koruna', 1, NULL, 'Kč'),
('CUP', 'Cuban Peso', 1, NULL, '$'),
('CVE', 'Cape Verde Escudo', 1, NULL, '$, Es'),
('CYP', 'Cyprus Pound', 1, NULL, NULL),
('DKK', 'Danish Krone', 1, NULL, 'kr'),
('DOP', 'Dominican Peso', 1, NULL, '$'),
('DZD', 'Algerian Dinar', 1, NULL, 'د.ج'),
('ECS', 'Ecuador Sucre', 1, NULL, NULL),
('EGP', 'Egyptian Pound', 1, NULL, '£,ج.م'),
('ETB', 'Ethiopian Birr', 1, NULL, 'Br'),
('EUR', 'Euro', 1, NULL, '€'),
('FJD', 'Fiji Dollar', 1, NULL, '$'),
('FKP', 'Falkland Islands Pound', 1, NULL, '£'),
('GBP', 'British Pound', 1, NULL, '£'),
('GHC', 'Ghanaian Cedi', 1, NULL, NULL),
('GIP', 'Gibraltar Pound', 1, NULL, '£'),
('GMD', 'Gambian Dalasi', 1, NULL, 'D'),
('GNF', 'Guinea Franc', 1, NULL, 'Fr'),
('GTQ', 'Guatemalan Quetzal', 1, NULL, 'Q'),
('GWP', 'Guinea-Bissau Peso', 1, NULL, NULL),
('GYD', 'Guyanan Dollar', 1, NULL, '$'),
('HKD', 'Hong Kong Dollar', 1, NULL, '$'),
('HNL', 'Honduran Lempira', 1, NULL, 'L'),
('HTG', 'Haitian Gourde', 1, NULL, 'G'),
('HUF', 'Hungarian Forint', 1, NULL, 'Ft'),
('IDR', 'Indonesian Rupiah', 1, NULL, 'Rp'),
('IEP', 'Irish Punt', 1, NULL, NULL),
('ILS', 'Israeli Shekel', 1, NULL, '₪'),
('INR', 'Indian Rupee', 1, NULL, '₨'),
('IQD', 'Iraqi Dinar', 1, NULL, 'ع.د'),
('IRR', 'Iranian Rial', 1, NULL, '﷼'),
('JMD', 'Jamaican Dollar', 1, NULL, '$'),
('JOD', 'Jordanian Dinar', 1, NULL, 'د.ا'),
('JPY', 'Japanese Yen', 1, NULL, '¥'),
('KES', 'Kenyan Shilling', 1, NULL, 'Sh'),
('KHR', 'Kampuchean (Cambodian) Riel', 1, NULL, '៛'),
('KMF', 'Comoros Franc', 1, NULL, 'Fr'),
('KPW', 'North Korean Won', 1, NULL, '₩'),
('KRW', 'South Korean Won', 1, NULL, '₩'),
('KWD', 'Kuwaiti Dinar', 1, NULL, 'د.ك'),
('KYD', 'Cayman Islands Dollar', 1, NULL, '$'),
('LAK', 'Lao Kip', 1, NULL, '₭'),
('LBP', 'Lebanese Pound', 1, NULL, 'ل.ل'),
('LKR', 'Sri Lanka Rupee', 1, NULL, 'ரூ'),
('LRD', 'Liberian Dollar', 1, NULL, '$'),
('LSL', 'Lesotho Loti', 1, NULL, 'L'),
('LYD', 'Libyan Dinar', 1, NULL, 'ل.د'),
('MAD', 'Moroccan Dirham', 1, NULL, 'د.م.'),
('MGF', 'Malagasy Franc', 1, NULL, NULL),
('MNT', 'Mongolian Tugrik', 1, NULL, '₮'),
('MOP', 'Macau Pataca', 1, NULL, 'P'),
('MRO', 'Mauritanian Ouguiya', 1, NULL, 'UM'),
('MTL', 'Maltese Lira', 1, NULL, NULL),
('MUR', 'Mauritius Rupee', 1, NULL, '₨'),
('MVR', 'Maldive Rufiyaa', 1, NULL, 'ރ.'),
('MWK', 'Malawi Kwacha', 1, NULL, 'MK'),
('MXN', 'Mexican Peso', 1, NULL, NULL),
('MYR', 'Malaysian Ringgit', 1, NULL, 'RM'),
('MZM', 'Mozambique Metical', 1, NULL, NULL),
('NGN', 'Nigerian Naira', 1, NULL, '₦'),
('NIC', 'Nicaraguan Cordoba', 1, NULL, NULL),
('NOK', 'Norwegian Kroner', 1, NULL, 'kr'),
('NPR', 'Nepalese Rupee', 1, NULL, '₨'),
('NZD', 'New Zealand Dollar', 1, NULL, '$'),
('OMR', 'Omani Rial', 1, NULL, 'ر.ع.'),
('PAB', 'Panamanian Balboa', 1, NULL, 'B/.'),
('PEN', 'Peruvian Nuevo Sol', 1, NULL, 'S/.'),
('PGK', 'Papua New Guinea Kina', 1, NULL, 'K'),
('PHP', 'Philippine Peso', 1, NULL, '₱'),
('PKR', 'Pakistan Rupee', 1, NULL, '₨'),
('PLN', 'Polish Złoty', 1, NULL, 'zł'),
('PYG', 'Paraguay Guarani', 1, NULL, '₲'),
('QAR', 'Qatari Rial', 1, NULL, 'ر.ق'),
('RON', 'Romanian Leu', 1, NULL, 'RON'),
('RWF', 'Rwanda Franc', 1, NULL, 'Fr'),
('SAR', 'Saudi Arabian Riyal', 1, NULL, 'ر.س'),
('SBD', 'Solomon Islands Dollar', 1, NULL, '$'),
('SCR', 'Seychelles Rupee', 1, NULL, '₨'),
('SDP', 'Sudanese Pound', 1, NULL, NULL),
('SEK', 'Swedish Krona', 1, NULL, 'kr'),
('SGD', 'Singapore Dollar', 1, NULL, '$'),
('SHP', 'St. Helena Pound', 1, NULL, '£'),
('SLL', 'Sierra Leone Leone', 1, NULL, 'Le'),
('SOS', 'Somali Shilling', 1, NULL, 'Sh'),
('SRG', 'Suriname Guilder', 1, NULL, NULL),
('STD', 'Sao Tome and Principe Dobra', 1, NULL, 'Db'),
('RUB', 'Russian Ruble', 1, NULL, 'р.'),
('SVC', 'El Salvador Colon', 1, NULL, NULL),
('SYP', 'Syrian Potmd', 1, NULL, '£, ل.'),
('SZL', 'Swaziland Lilangeni', 1, NULL, 'L'),
('THB', 'Thai Bath', 1, NULL, '฿'),
('TND', 'Tunisian Dinar', 1, NULL, 'د.ت'),
('TOP', 'Tongan Pa''anga', 1, NULL, 'T$'),
('TPE', 'East Timor Escudo', 1, NULL, NULL),
('TRY', 'Turkish Lira', 1, NULL, '₤'),
('TTD', 'Trinidad and Tobago Dollar', 1, NULL, '$'),
('TWD', 'Taiwan Dollar', 1, NULL, '$'),
('TZS', 'Tanzanian Shilling', 1, NULL, 'Sh'),
('UGS', 'Uganda Shilling', 1, NULL, NULL),
('USD', 'US Dollar', 1, NULL, '$'),
('UYP', 'Uruguayan Peso', 1, NULL, NULL),
('VEB', 'Venezualan Bolivar', 1, NULL, NULL),
('VND', 'Vietnamese Dong', 1, NULL, '₫'),
('VUV', 'Vanuatu Vatu', 1, NULL, 'Vt'),
('WST', 'Samoan Tala', 1, NULL, 'T'),
('YDD', 'Democratic Yemeni Dinar', 1, NULL, NULL),
('YER', 'Yemeni Rial', 1, NULL, '﷼'),
('RSD', 'Dinar', 1, NULL, 'RSD'),
('ZAR', 'South African Rand', 1, NULL, 'R'),
('ZMK', 'Zambian Kwacha', 1, NULL, 'ZK'),
('ZRZ', 'Zaire Zaire', 1, NULL, NULL),
('ZWD', 'Zimbabwe Dollar', 1, NULL, NULL),
('HRK', 'Croatian kuna', 1, NULL, 'Kn'),
('LTL', 'Lithuanian litas', 1, NULL, 'Lt'),
('LVL', 'Latvian lats', 1, NULL, 'Ls'),
('SKK', 'Slovak Koruna', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_rb_ecommerce_invoice`
--

CREATE TABLE IF NOT EXISTS `kqt1o_rb_ecommerce_invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL DEFAULT '0',
  `object_type` varchar(255) DEFAULT NULL,
  `buyer_id` int(11) NOT NULL,
  `master_invoice_id` int(11) NOT NULL DEFAULT '0',
  `currency` char(3) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `serial` varchar(255) NOT NULL COMMENT 'Fo custom invoice numbering',
  `status` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `expiration_type` varchar(255) NOT NULL,
  `time_price` text NOT NULL,
  `recurrence_count` int(11) NOT NULL DEFAULT '0',
  `subtotal` decimal(15,5) DEFAULT '0.00000',
  `total` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `notes` text,
  `params` text,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `paid_date` datetime DEFAULT NULL,
  `refund_date` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `issue_date` datetime DEFAULT NULL,
  `processor_type` varchar(255) DEFAULT NULL,
  `processor_config` text,
  `processor_data` text,
  PRIMARY KEY (`invoice_id`),
  KEY `idx_buyer_id` (`buyer_id`),
  KEY `idx_object_id` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_rb_ecommerce_modifier`
--

CREATE TABLE IF NOT EXISTS `kqt1o_rb_ecommerce_modifier` (
  `modifier_id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer_id` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `amount` decimal(15,5) DEFAULT '0.00000',
  `value` decimal(15,5) DEFAULT NULL,
  `object_type` varchar(255) DEFAULT NULL,
  `object_id` varchar(255) DEFAULT NULL,
  `message` text,
  `percentage` tinyint(1) NOT NULL DEFAULT '1',
  `serial` int(11) NOT NULL DEFAULT '0',
  `frequency` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `consumed_date` datetime DEFAULT NULL,
  PRIMARY KEY (`modifier_id`),
  KEY `idx_invoice_id` (`invoice_id`),
  KEY `idx_buyer_id` (`buyer_id`),
  KEY `idx_object_type` (`object_type`),
  KEY `idx_object_id` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_rb_ecommerce_transaction`
--

CREATE TABLE IF NOT EXISTS `kqt1o_rb_ecommerce_transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer_id` int(11) DEFAULT '0',
  `invoice_id` int(11) DEFAULT '0',
  `processor_type` varchar(255) DEFAULT NULL,
  `gateway_txn_id` varchar(255) DEFAULT NULL,
  `gateway_parent_txn` varchar(255) DEFAULT NULL,
  `gateway_subscr_id` varchar(255) DEFAULT NULL,
  `amount` decimal(15,5) DEFAULT '0.00000',
  `payment_status` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `params` text,
  `signature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `idx_user_id` (`buyer_id`),
  KEY `idx_invoice_id` (`invoice_id`),
  KEY `idx_signature` (`signature`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_redirect_links`
--

CREATE TABLE IF NOT EXISTS `kqt1o_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_redj_errors`
--

CREATE TABLE IF NOT EXISTS `kqt1o_redj_errors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visited_url` varchar(255) NOT NULL DEFAULT '',
  `error_code` int(3) NOT NULL DEFAULT '0',
  `redirect_url` varchar(255) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `last_visit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_referer` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_visited_url_error_code` (`visited_url`,`error_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_redj_pages404`
--

CREATE TABLE IF NOT EXISTS `kqt1o_redj_pages404` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(5) NOT NULL DEFAULT '',
  `page` mediumtext NOT NULL,
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `last_visit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `kqt1o_redj_pages404`
--

INSERT INTO `kqt1o_redj_pages404` (`id`, `title`, `language`, `page`, `hits`, `last_visit`, `checked_out`, `checked_out_time`) VALUES
(1, 'Italiano', 'it-IT', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="it-it" lang="it-it" dir="ltr">\n<head>\n  <base href="http://{siteurl}">\n  <title>{sitename} - Errore 404: {errormessage}</title>\n  <link rel="stylesheet" href="http://{siteurl}/templates/system/css/error.css" type="text/css" />\n</head>\n<body>\n  <div align="center">\n    <div id="outline">\n    <div id="errorboxoutline">\n      <div id="errorboxheader">Errore 404 - {errormessage}</div>\n\n      <div id="errorboxbody">\n      <p><strong>Non &egrave; possibile visualizzare questa pagina a causa di:</strong></p>\n        <ol>\n          <li>un <strong>bookmark/preferiti scaduto</strong></li>\n          <li>una ricerca attraverso il motore di ricerca che ha <strong>una lista scaduta per questo sito</strong></li>\n          <li>un <strong>indirizzo compilato male</strong></li>\n\n          <li><strong>Non hai accesso</strong> a questa pagina</li>\n          <li>La risorsa richiesta <strong>non esiste</strong></li>\n          <li>Si &egrave; verificato un errore durante l''esecuzione della tua richiesta.</li>\n        </ol>\n      <p><strong>Prova una delle seguenti pagine:</strong></p>\n\n      <p>\n        <ul>\n          <li><a href="http://{siteurl}/index.php" title="Vai alla Home Page">Home</a></li>\n        </ul>\n      </p>\n\n      <p>Se persistono delle difficolt&agrave;, <a href="mailto:{sitemail}">contatta</a> l''Amministratore di questo sito.</p>\n\n      <div id="techinfo">\n      <p>{errormessage}</p>\n      </div>\n\n      </div>\n    </div>\n    </div>\n  </div>\n</body>\n</html>', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 'English', 'en-GB', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-gb" lang="en-gb" dir="ltr">\n<head>\n  <base href="http://{siteurl}">\n  <title>{sitename} - Error 404: {errormessage}</title>\n  <link rel="stylesheet" href="http://{siteurl}/templates/system/css/error.css" type="text/css" />\n</head>\n<body>\n  <div align="center">\n    <div id="outline">\n    <div id="errorboxoutline">\n      <div id="errorboxheader">Error 404 - {errormessage}</div>\n\n      <div id="errorboxbody">\n      <p><strong>You may not be able to visit this page because of:</strong></p>\n        <ol>\n          <li>an <strong>out-of-date bookmark/favourite</strong></li>\n          <li>a search engine that has an <strong>out-of-date listing for this site</strong></li>\n          <li>a <strong>mistyped address</strong></li>\n\n          <li>you have <strong>no access</strong> to this page</li>\n          <li>The requested resource was not found.</li>\n          <li>An error has occurred while processing your request.</li>\n        </ol>\n      <p><strong>Please try one of the following pages:</strong></p>\n\n      <p>\n        <ul>\n          <li><a href="http://{siteurl}/index.php" title="Go to the Home Page">Home</a></li>\n        </ul>\n      </p>\n\n      <p>If difficulties persist, please <a href="mailto:{sitemail}">contact</a> the System Administrator of this site.</p>\n\n      <div id="techinfo">\n      <p>{errormessage}</p>\n      </div>\n\n      </div>\n    </div>\n    </div>\n  </div>\n</body>\n</html>', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_redj_redirects`
--

CREATE TABLE IF NOT EXISTS `kqt1o_redj_redirects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromurl` varchar(255) NOT NULL DEFAULT '',
  `tourl` varchar(255) DEFAULT NULL,
  `skip` varchar(255) NOT NULL DEFAULT '',
  `skip_usergroups` text NOT NULL,
  `redirect` int(3) unsigned NOT NULL DEFAULT '301' COMMENT 'HTTP STATUS CODE: 301, 307, 200',
  `case_sensitive` tinyint(1) NOT NULL DEFAULT '1',
  `request_only` tinyint(1) NOT NULL DEFAULT '1',
  `decode_url` tinyint(1) NOT NULL DEFAULT '1',
  `placeholders` text NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `last_visit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'publish = 1, unpublish = 0, archive = 2, trash = -2, report = -3',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idxfromurl` (`fromurl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_redj_referers`
--

CREATE TABLE IF NOT EXISTS `kqt1o_redj_referers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visited_url` int(11) NOT NULL,
  `referer_url` int(11) NOT NULL,
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `last_visit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_visited_url_referer_url` (`visited_url`,`referer_url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_redj_referer_urls`
--

CREATE TABLE IF NOT EXISTS `kqt1o_redj_referer_urls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `referer_url` varchar(255) DEFAULT '',
  `domain` varchar(255) NOT NULL DEFAULT '' COMMENT 'The "host" part of the referer url',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_referer_url` (`referer_url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_redj_visited_urls`
--

CREATE TABLE IF NOT EXISTS `kqt1o_redj_visited_urls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visited_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_visited_url` (`visited_url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_schemas`
--

CREATE TABLE IF NOT EXISTS `kqt1o_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kqt1o_schemas`
--

INSERT INTO `kqt1o_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.3.6-2014-09-30'),
(10077, '1.7.6');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_session`
--

CREATE TABLE IF NOT EXISTS `kqt1o_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kqt1o_session`
--

INSERT INTO `kqt1o_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('39e3cb5feb6963d610c5f0ea2d14185f', 0, 1, '1419411510', '__default|a:7:{s:15:"session.counter";i:8;s:19:"session.timer.start";i:1419405918;s:18:"session.timer.last";i:1419411509;s:17:"session.timer.now";i:1419411510;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, ''),
('4cfce10cdb6d9117b242e8b072d2a53c', 1, 1, '1419411542', '__default|a:8:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1419411541;s:18:"session.timer.last";i:1419411541;s:17:"session.timer.now";i:1419411541;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";N;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";N;s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"db1630dc0100684150036ceaa082f787";}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_tags`
--

CREATE TABLE IF NOT EXISTS `kqt1o_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kqt1o_tags`
--

INSERT INTO `kqt1o_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_template_styles`
--

CREATE TABLE IF NOT EXISTS `kqt1o_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `kqt1o_template_styles`
--

INSERT INTO `kqt1o_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'timbermaster', 0, '1', 'timbermaster - Default', '{"templateColor":"#08C","templateBackgroundColor":"#F4F6F7","logoFile":"","sitetitle":"","sitedescription":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_ucm_base`
--

CREATE TABLE IF NOT EXISTS `kqt1o_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_ucm_content`
--

CREATE TABLE IF NOT EXISTS `kqt1o_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_ucm_history`
--

CREATE TABLE IF NOT EXISTS `kqt1o_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `kqt1o_ucm_history`
--

INSERT INTO `kqt1o_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 1, '', '2014-10-18 05:01:04', 163, 12476, '465826439858dddff023fb541c28e2568b4d21a7', '{"id":1,"asset_id":54,"title":"Products","alias":"products","introtext":"<p>&lt;h6 style=\\"text-align: justify;\\"&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;&lt;span style=\\"color: #000000;\\"&gt;&lt;strong&gt;Products&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/span&gt;&lt;\\/h6&gt;<br \\/>&lt;div style=\\"text-align: justify;\\"&gt;&lt;\\/div&gt;<br \\/>&lt;div style=\\"text-align: justify;\\"&gt;&lt;\\/div&gt;<br \\/>&lt;div style=\\"text-align: justify;\\"&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;&lt;span style=\\"color: #000000;\\"&gt;&lt;br \\/&gt;&lt;\\/span&gt;&lt;\\/span&gt;&lt;\\/div&gt;<br \\/>&lt;div style=\\"text-align: justify;\\"&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;&lt;span style=\\"color: #000000;\\"&gt;&lt;strong&gt;&lt;a name=\\"house\\"&gt;&lt;\\/a&gt;Housing :&lt;br \\/&gt;&lt;\\/strong&gt;&lt;\\/span&gt;&lt;span style=\\"color: #000000;\\"&gt;Timber frame homes are becoming more and more fashionable and are much more eco-friendly and cost effective than conventional brick and mortar. We are experienced in all types of timer homes namely timber frame. This method can incorporate a number of finishes for example: cladding i.e. using half log planking, conventional plaster on timber frame or nu-tec ship lap.&lt;\\/span&gt;&lt;\\/span&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;&lt;span style=\\"color: #000000;\\"&gt;&amp;nbsp;&lt;\\/span&gt;&lt;\\/span&gt;<br \\/>&lt;p&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;&lt;span style=\\"color: #000000;\\"&gt;We also do solid log homes.&lt;br \\/&gt;&lt;a target=\\"_self\\" href=\\"index.php?option=com_content&amp;amp;view=article&amp;amp;id=79&amp;amp;Itemid=168\\"&gt;Click To View Log Home Gallery&lt;\\/a&gt;&lt;br \\/&gt;&lt;a target=\\"_self\\" href=\\"index.php?option=com_content&amp;amp;view=article&amp;amp;id=80&amp;amp;Itemid=169\\"&gt;Click To View Timber Frame Gallery&lt;\\/a&gt;&lt;\\/span&gt;&lt;\\/span&gt;&lt;\\/p&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;span style=\\"color: #000000;\\"&gt; &lt;\\/span&gt;<br \\/>&lt;div style=\\"text-align: justify;\\"&gt;&lt;\\/div&gt;<br \\/>&lt;div style=\\"text-align: justify;\\"&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;&lt;span style=\\"color: #000000;\\"&gt;&lt;strong&gt;&lt;a name=\\"decks\\"&gt;&lt;\\/a&gt;Decks :&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/span&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;&amp;nbsp;&lt;\\/span&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;&lt;span style=\\"color: #000000;\\"&gt;&lt;span style=\\"color: #000000;\\"&gt; &lt;\\/span&gt;&lt;\\/span&gt;&lt;\\/span&gt;&lt;\\/div&gt;<br \\/>&lt;div style=\\"text-align: justify;\\"&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;&lt;span style=\\"color: #000000;\\"&gt;&lt;span style=\\"color: #000000;\\"&gt;Outdoor\\u00a0 Decking transforms outside spaces into practical and stylish outdoor\\u00a0 rooms. Wooden decking makes a warm and comfortable surface while\\u00a0 creating a seamless transition between house and g&lt;\\/span&gt;arden.&lt;\\/span&gt;&lt;\\/span&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;&lt;span style=\\"color: #000000;\\"&gt;&amp;nbsp;&lt;\\/span&gt;&lt;\\/span&gt;&lt;\\/div&gt;<br \\/>&lt;div style=\\"text-align: justify;\\"&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;&lt;a target=\\"_self\\" href=\\"index.php?option=com_content&amp;amp;view=article&amp;amp;id=77&amp;amp;Itemid=166\\"&gt;Click To View Decks Gallery&lt;\\/a&gt;&lt;\\/span&gt;&lt;\\/div&gt;<br \\/>&lt;div style=\\"text-align: center;\\"&gt;<br \\/>&lt;div style=\\"text-align: justify;\\"&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;&lt;span style=\\"color: #000000;\\"&gt;&amp;nbsp;&lt;\\/span&gt;&lt;\\/span&gt;&lt;\\/div&gt;<br \\/>&lt;\\/div&gt;<br \\/>&lt;div style=\\"text-align: justify;\\"&gt;&lt;\\/div&gt;<br \\/>&lt;div style=\\"text-align: justify;\\"&gt;<br \\/>&lt;div id=\\"content\\"&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;&lt;span style=\\"color: #000000;\\"&gt; &lt;\\/span&gt;&lt;\\/span&gt;<br \\/>&lt;div id=\\"content_container\\" class=\\"clearfix\\"&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;&lt;span style=\\"color: #000000;\\"&gt; &lt;\\/span&gt;&lt;\\/span&gt;<br \\/>&lt;div class=\\"floatbox\\"&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;&lt;span style=\\"color: #000000;\\"&gt; &lt;\\/span&gt;&lt;\\/span&gt;<br \\/>&lt;div class=\\"joomla \\"&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;&lt;span style=\\"color: #000000;\\"&gt; &lt;\\/span&gt;&lt;\\/span&gt;<br \\/>&lt;div class=\\"article\\"&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;&lt;span style=\\"color: #000000;\\"&gt;&lt;strong style=\\"font-size: 12px;\\"&gt;&lt;a name=\\"bal\\"&gt;&lt;\\/a&gt;Balustrades :&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/span&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;&lt;span style=\\"color: #000000;\\"&gt;&lt;br \\/&gt;Balustrades\\u00a0 aren\\u2019t merely staircase fashion accessories; they provide structure and\\u00a0 safety while reflecting homeowners\\u2019 personalities. The balustrade can\\u00a0 also be called a handrail, which is supported by short pillars, called\\u00a0 balusters.&lt;\\/span&gt;&lt;\\/span&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;&lt;span style=\\"color: #000000;\\"&gt;&amp;nbsp;&lt;\\/span&gt;&lt;\\/span&gt;&lt;\\/div&gt;<br \\/>&lt;div class=\\"article\\"&gt;&lt;a target=\\"_self\\" href=\\"index.php?option=com_content&amp;amp;view=article&amp;amp;id=85\\"&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;Click To View &lt;span style=\\"font-size: 12px;\\"&gt;Balustrades&lt;\\/span&gt; Gallery&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/div&gt;<br \\/>&lt;span style=\\"font-family: verdana,geneva;\\"&gt; &lt;\\/span&gt;&lt;\\/div&gt;<br \\/>&lt;span style=\\"font-family: verdana,geneva;\\"&gt; &lt;\\/span&gt;&lt;\\/div&gt;<br \\/>&lt;span style=\\"font-family: verdana,geneva;\\"&gt; &lt;\\/span&gt;&lt;\\/div&gt;<br \\/>&lt;span style=\\"font-family: verdana,geneva;\\"&gt; &lt;\\/span&gt;&lt;\\/div&gt;<br \\/>&lt;span style=\\"font-family: verdana,geneva;\\"&gt; &lt;\\/span&gt;&lt;\\/div&gt;<br \\/>&lt;span style=\\"font-family: verdana,geneva;\\"&gt; &lt;\\/span&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt; &lt;\\/span&gt;<br \\/>&lt;div style=\\"text-align: justify;\\"&gt;&lt;span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"&gt;&lt;strong&gt;&lt;br \\/&gt;&lt;a name=\\"stair\\"&gt;&lt;\\/a&gt;Staircases:&lt;\\/strong&gt;&lt;\\/span&gt;&lt;span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"&gt;&amp;nbsp;&lt;\\/span&gt;&lt;\\/div&gt;<br \\/>&lt;div style=\\"text-align: justify;\\"&gt;&lt;span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"&gt;When one talks about manufacturing staircases, handwork is fundamental and we manufacture all kinds of staircases, e.g. straight, half, quarter, geometrical, half space and quarter space landings, curved, spirals, etc. Every staircase is custom made to the requirements of the client. Balustrading to concrete and cast iron staircases is also part of our production. Installation of staircases and balustrading is carried out by our own skilled tradesmen.&lt;\\/span&gt;&lt;span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"&gt;&lt;br \\/&gt;&lt;\\/span&gt;&lt;a href=\\"index.php?option=com_content&amp;amp;view=article&amp;amp;id=83&amp;amp;Itemid=172\\" target=\\"_self\\"&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;Click To View Staircases Gallery&lt;span style=\\"font-size: 12px; color: #000000;\\"&gt; &lt;\\/span&gt;&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/div&gt;<br \\/>&lt;div style=\\"text-align: justify;\\"&gt;&lt;span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"&gt;&lt;strong&gt;&amp;nbsp;&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/div&gt;<br \\/>&lt;div style=\\"text-align: justify;\\"&gt;&lt;\\/div&gt;<br \\/>&lt;div style=\\"text-align: justify;\\"&gt;&lt;span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"&gt;&lt;strong&gt;&lt;a name=\\"per\\"&gt;&lt;\\/a&gt;Pergolas: &lt;\\/strong&gt;&lt;\\/span&gt;&lt;br \\/&gt;&lt;span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"&gt;A pergola or arbour is a garden feature forming a shaded walkway, passageway or sitting area of pillars that support cross-beams and a sturdy open lattice, often upon which woody vines are trained. As a type of gazebo, it may also be an extension of a building, or serve as protection for an open terrace or a link between pavilions.&lt;\\/span&gt;&lt;\\/div&gt;<br \\/>&lt;div style=\\"text-align: justify;\\"&gt;&lt;a target=\\"_self\\" href=\\"index.php?option=com_content&amp;amp;view=article&amp;amp;id=81&amp;amp;Itemid=170\\"&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;Click To View Pergolas Gallery&lt;\\/span&gt;&lt;\\/a&gt;&lt;br \\/&gt;&lt;span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"&gt;&amp;nbsp;&lt;\\/span&gt;&lt;br \\/&gt;&lt;span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"&gt;&lt;strong&gt;&lt;a name=\\"screen\\"&gt;&lt;\\/a&gt;Screens: &lt;\\/strong&gt;&lt;\\/span&gt;&lt;br \\/&gt;&lt;span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"&gt;Screens are a full-screen window manager that multiplexes a physical terminal between several processes, typically interactive shells.&lt;\\/span&gt;&lt;br \\/&gt;&lt;a target=\\"_self\\" href=\\"index.php?option=com_content&amp;amp;view=article&amp;amp;id=82&amp;amp;Itemid=171\\"&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;Click To View Screens Gallery&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/div&gt;<br \\/>&lt;div style=\\"text-align: justify;\\"&gt;&lt;span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"&gt; &lt;\\/span&gt;&lt;br \\/&gt;&lt;span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"&gt;&lt;strong&gt;&lt;a name=\\"gate\\"&gt;&lt;\\/a&gt;Gates: &lt;\\/strong&gt;&lt;\\/span&gt;&lt;br \\/&gt;&lt;span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"&gt;Driveway gates made of wrought iron, stainless steel etc, along with pedestrian gates which could be decorative or plain to suit your home or business. &lt;\\/span&gt;&lt;\\/div&gt;<br \\/>&lt;div style=\\"text-align: justify;\\"&gt;&lt;a target=\\"_self\\" href=\\"index.php?option=com_content&amp;amp;view=article&amp;amp;id=78&amp;amp;Itemid=167\\"&gt;&lt;span style=\\"font-family: verdana,geneva;\\"&gt;Click To View Gates Gallery&lt;\\/span&gt;&lt;\\/a&gt;&lt;br \\/&gt;&lt;span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"&gt;&amp;nbsp;&lt;\\/span&gt;&lt;span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"&gt;&amp;nbsp;&lt;\\/span&gt;&lt;\\/div&gt;<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:01:04","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-18 05:01:04","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(2, 2, 1, '', '2014-10-18 05:02:59', 163, 3163, 'a1e3e189ad3e694bc875476baf6dd3f3591d05e6', '{"id":2,"asset_id":56,"title":"About Us","alias":"about-us","introtext":"<p style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">Timber Master has many years of experience in the building industry. We specialise in timber work of any kind and have built hundreds of structures from balustrades, pergolas and decks to timber frame homes. &nbsp;Not only will we build the structure for you but we will maintain it too.<\\/span><\\/span><\\/p>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span><\\/div>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">As a leading company in the industry, we are up to date with latest trends such as combining stainless steel and timber as well as an extensive knowledge of the age old traditions in high quality timber work. This research and application into our work differentiates us from the rest, whether it is traditional or cutting edge trends.<\\/span><\\/span><\\/p>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span><\\/div>\\r\\n<p style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">Using only the finest quality hardwoods to ensure the finest quality end product, you are guaranteed satisfaction.&nbsp; Not only do we offer a competitive price, but the quality of our work has been rated outstanding.<\\/span><\\/span><\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:02:59","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-18 05:02:59","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(3, 1, 1, '', '2014-10-18 05:03:53', 163, 10689, '871692f451b7cdaff117ea6c6a96ec1939a128ec', '{"id":1,"asset_id":"54","title":"Products","alias":"products","introtext":"<h6 style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong>Products<\\/strong><\\/span><\\/span><\\/h6>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><br \\/><\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong><a name=\\"house\\"><\\/a>Housing :<br \\/><\\/strong><\\/span><span style=\\"color: #000000;\\">Timber frame homes are becoming more and more fashionable and are much more eco-friendly and cost effective than conventional brick and mortar. We are experienced in all types of timer homes namely timber frame. This method can incorporate a number of finishes for example: cladding i.e. using half log planking, conventional plaster on timber frame or nu-tec ship lap.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span>\\r\\n<p><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">We also do solid log homes.<br \\/><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=79&amp;Itemid=168\\">Click To View Log Home Gallery<\\/a><br \\/><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=80&amp;Itemid=169\\">Click To View Timber Frame Gallery<\\/a><\\/span><\\/span><\\/p>\\r\\n<\\/div>\\r\\n<span style=\\"color: #000000;\\"> <\\/span>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong><a name=\\"decks\\"><\\/a>Decks :<\\/strong><\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\">&nbsp;<\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><span style=\\"color: #000000;\\">Outdoor  Decking transforms outside spaces into practical and stylish outdoor  rooms. Wooden decking makes a warm and comfortable surface while  creating a seamless transition between house and g<\\/span>arden.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=77&amp;Itemid=166\\">Click To View Decks Gallery<\\/a><\\/span><\\/div>\\r\\n<div style=\\"text-align: center;\\">\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\">\\r\\n<div id=\\"content\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div id=\\"content_container\\" class=\\"clearfix\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"floatbox\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"joomla \\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"article\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong style=\\"font-size: 12px;\\"><a name=\\"bal\\"><\\/a>Balustrades :<\\/strong><\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><br \\/>Balustrades  aren\\u2019t merely staircase fashion accessories; they provide structure and  safety while reflecting homeowners\\u2019 personalities. The balustrade can  also be called a handrail, which is supported by short pillars, called  balusters.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<div class=\\"article\\"><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=85\\"><span style=\\"font-family: verdana,geneva;\\">Click To View <span style=\\"font-size: 12px;\\">Balustrades<\\/span> Gallery<\\/span><\\/a><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><span style=\\"font-family: verdana,geneva;\\"> <\\/span>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><br \\/><a name=\\"stair\\"><\\/a>Staircases:<\\/strong><\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">When one talks about manufacturing staircases, handwork is fundamental and we manufacture all kinds of staircases, e.g. straight, half, quarter, geometrical, half space and quarter space landings, curved, spirals, etc. Every staircase is custom made to the requirements of the client. Balustrading to concrete and cast iron staircases is also part of our production. Installation of staircases and balustrading is carried out by our own skilled tradesmen.<\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><br \\/><\\/span><a href=\\"index.php?option=com_content&amp;view=article&amp;id=83&amp;Itemid=172\\" target=\\"_self\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Staircases Gallery<span style=\\"font-size: 12px; color: #000000;\\"> <\\/span><\\/span><\\/a><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong>&nbsp;<\\/strong><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"per\\"><\\/a>Pergolas: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">A pergola or arbour is a garden feature forming a shaded walkway, passageway or sitting area of pillars that support cross-beams and a sturdy open lattice, often upon which woody vines are trained. As a type of gazebo, it may also be an extension of a building, or serve as protection for an open terrace or a link between pavilions.<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=81&amp;Itemid=170\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Pergolas Gallery<\\/span><\\/a><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"screen\\"><\\/a>Screens: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">Screens are a full-screen window manager that multiplexes a physical terminal between several processes, typically interactive shells.<\\/span><br \\/><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=82&amp;Itemid=171\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Screens Gallery<\\/span><\\/a><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"> <\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"gate\\"><\\/a>Gates: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">Driveway gates made of wrought iron, stainless steel etc, along with pedestrian gates which could be decorative or plain to suit your home or business. <\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=78&amp;Itemid=167\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Gates Gallery<\\/span><\\/a><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:01:04","created_by":"163","created_by_alias":"","modified":"2014-10-18 05:03:53","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-18 05:03:28","publish_up":"2014-10-18 05:01:04","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(4, 3, 1, '', '2014-10-18 05:04:50', 163, 3076, 'f579b16624e8e66ab7c6ad55716ee547b263f8fd', '{"id":3,"asset_id":57,"title":"Welcome to Timber Master - Extending your World","alias":"welcome-to-timber-master-extending-your-world","introtext":"<p style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; text-align: justify;\\"><strong><span style=\\"color: #000000;\\">Welcome to Timber Master - Extending your World <\\/span><\\/strong><\\/p>\\r\\n<div style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; text-align: justify;\\"><span style=\\"color: #000000;\\"><br \\/>Timber Master has been a leading company in the timber and building industry for over twenty years. We are proud to be able to boast of our high quality workmanship and skill. Our head carpenter, with thirty years carpentry and building experience, ensures perfection is aimed for and that an excellent quality product is built and achieved. From conventional brick and mortar to plas-tering on a timber frame, we will build a cosy and cost effective home for you.<\\/span><br \\/><br \\/><span style=\\"color: #000000;\\">Our  work is carried out with pride, confidence and efficiency at all times  by highly skilled carpenters. We do all types of projects which are  undertaken from a small balustrade to decking, larger housing contracts and timber framed homes. <br \\/><br \\/>Our work ethic is  driven by the concept of results relating to the quality of work. We  drive our team to make the best possible products for our clients.<\\/span><\\/div>\\r\\n<p style=\\"text-align: justify;\\"> <\\/p>\\r\\n<br \\/><br \\/>","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:04:50","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-18 05:04:50","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(5, 4, 1, '', '2014-10-18 05:06:17', 163, 3256, 'e52c2929d095124275682623301ff79a4076f5df', '{"id":4,"asset_id":58,"title":"Testimonials","alias":"testimonials","introtext":"<table border=\\"0\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><strong>Client Testimonial<\\/strong><\\/td>\\r\\n<td><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><\\/td>\\r\\n<td><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"2\\">\\r\\n<hr \\/>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\r\\n<div style=\\"text-align: justify;\\">\\u201cThe end result is beyond my expectations. You have given us the exact product feel we are looking for. I am absolutely ec-static. You have indeed con-firmed and justified the choice of your business title \\u201cTimber Master.\\u201d<\\/div>\\r\\n<br \\/><strong>Andrew Stevens<\\/strong><br \\/><a target=\\"_blank\\" href=\\"mailto:andrew.stevens@iinet.net.au\\">andrew.stevens@iinet.net.au<\\/a><br \\/><\\/td>\\r\\n<td><br \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"2\\">\\r\\n<hr \\/>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"2\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"2\\">\\"Timber Master was given the contract to build our Ekuthuleni lodge in the Royal Jozini &nbsp;Big Six reserve.<br \\/>\\r\\n<div style=\\"text-align: justify;\\">We are delighted with the finished product in terms of aesthetics, quality of workmanship, and of course cost. The Timber Master team has been happy to go the extra mile to ensure  that we got the lodge that we wanted and we would gladly recommend them  to others who are also looking for a cost-effective, quality wooden  structure.\\"<\\/div>\\r\\n<br \\/><strong>Jason Stevens<\\/strong><br \\/><a target=\\"_blank\\" href=\\"http:\\/\\/mce_host\\/email:Stevensfamily@saol.com\\">email:Stevensfamily@saol.com<\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"2\\">\\r\\n<hr \\/>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:06:17","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-18 05:06:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(6, 5, 1, '', '2014-10-18 05:07:51', 163, 2724, '6879fae253efe2f36ecfa7f8b62981b15be15382', '{"id":5,"asset_id":59,"title":"Contacts Us","alias":"contacts-us","introtext":"<strong><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">Contact Us<\\/span><\\/strong><br \\/><br \\/> \\r\\n<table style=\\"width: 488px; height: 124px;\\" border=\\"0\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong>Cell:<\\/strong><\\/td>\\r\\n<td valign=\\"top\\"><\\/td>\\r\\n<td><\\/td>\\r\\n<td style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">082 928 7067<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong>E-mail<\\/strong><\\/td>\\r\\n<td valign=\\"top\\"><\\/td>\\r\\n<td><\\/td>\\r\\n<td style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><a target=\\"_blank\\" href=\\"mailto:timbermaster@mweb.co.za\\">timbermaster@mweb.co.za<\\/a><br \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">{form1}<\\/span><br \\/>","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:07:51","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-18 05:07:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(7, 6, 1, '', '2014-10-18 05:13:39', 163, 1695, '369fbf07a5fb18bbe70932f48a67476c7044b214', '{"id":6,"asset_id":60,"title":"Log Homes","alias":"log-homes","introtext":"{gallery}Productimages\\/photoshousingloghomes{\\/gallery}","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:13:39","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-18 05:13:39","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(8, 7, 1, '', '2014-10-18 05:16:10', 163, 1724, 'fa7d46e222725df2d0dac272f9777399a0d82c61', '{"id":7,"asset_id":61,"title":"Timber frames:: Gallery","alias":"timber-frames-gallery","introtext":"{gallery}Productimages\\/photoshousingtimberframe{\\/gallery}","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:16:10","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-18 05:16:10","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(9, 8, 1, '', '2014-10-18 05:16:52', 163, 1694, '913348f8ba77182a4423e1b720a879b043c41c63', '{"id":8,"asset_id":62,"title":"Decks::Gallery","alias":"decks-gallery","introtext":"{gallery}Productimages\\/photosdecks{\\/gallery}","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:16:52","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-18 05:16:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(10, 9, 1, '', '2014-10-18 05:17:42', 163, 1706, '8d9e0a9c86bfb867d4c358104b2cb800f84a4193', '{"id":9,"asset_id":63,"title":"Balustrades::Gallery","alias":"balustrades-gallery","introtext":"{gallery}Productimages\\/Balustrades{\\/gallery}","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:17:42","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-18 05:17:42","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(11, 10, 1, '', '2014-10-18 05:18:29', 163, 1708, '227dea3965c76b3f9c9a9a3c733084e68b3e6c14', '{"id":10,"asset_id":64,"title":"Staircase::gallery","alias":"staircase-gallery","introtext":"{gallery}Productimages\\/photosstaircases{\\/gallery}","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:18:29","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-18 05:18:29","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `kqt1o_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(12, 11, 1, '', '2014-10-18 05:18:58', 163, 1704, 'a20872a18cefbc00231b001416c1886e7b5ba04a', '{"id":11,"asset_id":65,"title":"Pergolas::Gallery","alias":"pergolas-gallery","introtext":"{gallery}Productimages\\/photospergolas{\\/gallery}","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:18:58","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-18 05:18:58","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(13, 12, 1, '', '2014-10-18 05:19:30', 163, 1701, '8e1f817a08e19969b818a2cd0fae9737f74ac86f', '{"id":12,"asset_id":66,"title":"Screens::Gallery","alias":"screens-gallery","introtext":"{gallery}Productimages\\/photosscreens{\\/gallery}","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:19:30","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-18 05:19:30","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(14, 13, 1, '', '2014-10-18 05:20:01', 163, 1695, 'c63785a3146b6805ebf905922738243c39ebffb5', '{"id":13,"asset_id":67,"title":"Gates::Gallery","alias":"gates-gallery","introtext":"{gallery}Productimages\\/photosgates{\\/gallery}","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:20:01","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-18 05:20:01","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(15, 4, 1, '', '2014-10-18 13:31:41', 163, 3266, 'e7a82ad2d6f525ee03ec65e4516e1e16ffc4c47a', '{"id":4,"asset_id":"58","title":"Testimonials","alias":"testimonials","introtext":"<table border=\\"0\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><strong>Client Testimonial<\\/strong><\\/td>\\r\\n<td>&nbsp;<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>&nbsp;<\\/td>\\r\\n<td>&nbsp;<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"2\\"><hr \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\r\\n<div style=\\"text-align: justify;\\">\\u201cThe end result is beyond my expectations. You have given us the exact product feel we are looking for. I am absolutely ec-static. You have indeed con-firmed and justified the choice of your business title \\u201cTimber Master.\\u201d<\\/div>\\r\\n<br \\/><strong>Andrew Stevens<\\/strong><br \\/><a href=\\"mailto:andrew.stevens@iinet.net.au\\" target=\\"_blank\\">andrew.stevens@iinet.net.au<\\/a><\\/td>\\r\\n<td>&nbsp;<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"2\\"><hr \\/><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"2\\">&nbsp;<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"2\\">\\"Timber Master was given the contract to build our Ekuthuleni lodge in the Royal Jozini &nbsp;Big Six reserve.<br \\/>\\r\\n<div style=\\"text-align: justify;\\">We are delighted with the finished product in terms of aesthetics, quality of workmanship, and of course cost. The Timber Master team has been happy to go the extra mile to ensure that we got the lodge that we wanted and we would gladly recommend them to others who are also looking for a cost-effective, quality wooden structure.\\"<\\/div>\\r\\n<br \\/><strong>Jason Stevens<\\/strong><br \\/><a href=\\"mailto:Stevensfamily@saol.com\\" target=\\"_blank\\">email:Stevensfamily@saol.com<\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td colspan=\\"2\\"><hr \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:06:17","created_by":"163","created_by_alias":"","modified":"2014-10-18 13:31:41","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-18 13:29:46","publish_up":"2014-10-18 05:06:17","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"9","metakey":"","metadesc":"","access":"1","hits":"33","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(16, 1, 3, '', '2014-10-20 04:34:40', 163, 1588, '667d38f7d839f1a52ad3bb5e765a2c868c353045', '{"id":1,"name":"form1","alias":"form1","con_position":"","address":"","suburb":"","state":"","country":"","postcode":"","telephone":"","fax":"","misc":"","image":"","email_to":"","default_con":0,"published":"1","checked_out":null,"checked_out_time":null,"ordering":1,"params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":\\"\\",\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"","catid":"4","access":"1","mobile":"","webpage":"","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2014-10-20 04:34:40","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":1,"hits":null}', 0),
(17, 1, 3, '', '2014-10-20 05:02:08', 163, 1654, '1734e870e1e3049e1dad693336e1d6962afbaf72', '{"id":1,"name":"form1","alias":"form1","con_position":"","address":"","suburb":"","state":"","country":"","postcode":"","telephone":"","fax":"","misc":"","image":"","email_to":"mss.deepakkumar@gmail.com","default_con":0,"published":"1","checked_out":"163","checked_out_time":"2014-10-20 05:01:11","ordering":"1","params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":\\"\\",\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"1\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"0","catid":"4","access":"1","mobile":"","webpage":"","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2014-10-20 04:34:40","created_by":"163","created_by_alias":"","modified":"2014-10-20 05:02:08","modified_by":"163","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":2,"hits":"0"}', 0),
(18, 5, 1, '', '2014-10-20 05:10:17', 163, 2782, '430a17505bda8c7854cb038bf1bca7116a7632db', '{"id":5,"asset_id":"59","title":"Contacts Us","alias":"contacts-us","introtext":"<strong><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">Contact Us<\\/span><\\/strong><br \\/><br \\/> \\r\\n<table style=\\"width: 488px; height: 124px;\\" border=\\"0\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong>Cell:<\\/strong><\\/td>\\r\\n<td valign=\\"top\\"><\\/td>\\r\\n<td><\\/td>\\r\\n<td style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">082 928 7067<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong>E-mail<\\/strong><\\/td>\\r\\n<td valign=\\"top\\"><\\/td>\\r\\n<td><\\/td>\\r\\n<td style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><a target=\\"_blank\\" href=\\"mailto:timbermaster@mweb.co.za\\">timbermaster@mweb.co.za<\\/a><br \\/><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">{loadposition new_position}<\\/span><br \\/>","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:07:51","created_by":"163","created_by_alias":"","modified":"2014-10-20 05:10:17","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-20 05:09:54","publish_up":"2014-10-18 05:07:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"8","metakey":"","metadesc":"","access":"1","hits":"6","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(19, 5, 1, '', '2014-10-20 05:31:54', 163, 2727, '4b0e0abba0596bbcd4dca64537c1a9451a9091af', '{"id":5,"asset_id":"59","title":"Contacts Us","alias":"contacts-us","introtext":"<p><strong><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">Contact Us<\\/span><\\/strong><br \\/><br \\/><\\/p>\\r\\n<table style=\\"width: 488px; height: 124px;\\" border=\\"0\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong>Cell:<\\/strong><\\/td>\\r\\n<td valign=\\"top\\">&nbsp;<\\/td>\\r\\n<td>&nbsp;<\\/td>\\r\\n<td style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">082 928 7067<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong>E-mail<\\/strong><\\/td>\\r\\n<td valign=\\"top\\">&nbsp;<\\/td>\\r\\n<td>&nbsp;<\\/td>\\r\\n<td style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><a href=\\"mailto:timbermaster@mweb.co.za\\" target=\\"_blank\\">timbermaster@mweb.co.za<\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p><br \\/><em><strong>{loadposition myposition}<\\/strong><\\/em><\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:07:51","created_by":"163","created_by_alias":"","modified":"2014-10-20 05:31:54","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-20 05:31:42","publish_up":"2014-10-18 05:07:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"8","metakey":"","metadesc":"","access":"1","hits":"8","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(20, 14, 1, '', '2014-10-20 07:39:33', 163, 1677, '16252772000da27ef64d48bce585ec2b3833b635', '{"id":14,"asset_id":86,"title":"Gallery","alias":"gallery","introtext":"<p>{gallery}Productimages{\\/gallery}<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-10-20 07:39:33","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-20 07:39:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(21, 1, 1, '', '2014-10-20 09:21:12', 163, 10608, 'e358bacd852eee7afca2a26e40c01e6c11667e2e', '{"id":1,"asset_id":"54","title":"Products","alias":"products","introtext":"<h6 style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong>Products<\\/strong><\\/span><\\/span><\\/h6>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><br \\/><\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong><a name=\\"house\\"><\\/a>Housing :<br \\/><\\/strong><\\/span><span style=\\"color: #000000;\\">Timber frame homes are becoming more and more fashionable and are much more eco-friendly and cost effective than conventional brick and mortar. We are experienced in all types of timer homes namely timber frame. This method can incorporate a number of finishes for example: cladding i.e. using half log planking, conventional plaster on timber frame or nu-tec ship lap.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span>\\r\\n<p><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">We also do solid log homes.<br \\/><a target=\\"_self\\" href=\\"gallery\\/housing\\/log-homes\\">Click To View Log Home Gallery<\\/a><br \\/><a target=\\"_self\\" href=\\"gallery\\/housing\\/timber-frame\\">Click To View Timber Frame Gallery<\\/a><\\/span><\\/span><\\/p>\\r\\n<\\/div>\\r\\n<span style=\\"color: #000000;\\"> <\\/span>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong><a name=\\"decks\\"><\\/a>Decks :<\\/strong><\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\">&nbsp;<\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><span style=\\"color: #000000;\\">Outdoor  Decking transforms outside spaces into practical and stylish outdoor  rooms. Wooden decking makes a warm and comfortable surface while  creating a seamless transition between house and g<\\/span>arden.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=77&amp;Itemid=166\\">Click To View Decks Gallery<\\/a><\\/span><\\/div>\\r\\n<div style=\\"text-align: center;\\">\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\">\\r\\n<div id=\\"content\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div id=\\"content_container\\" class=\\"clearfix\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"floatbox\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"joomla \\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"article\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong style=\\"font-size: 12px;\\"><a name=\\"bal\\"><\\/a>Balustrades :<\\/strong><\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><br \\/>Balustrades  aren\\u2019t merely staircase fashion accessories; they provide structure and  safety while reflecting homeowners\\u2019 personalities. The balustrade can  also be called a handrail, which is supported by short pillars, called  balusters.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<div class=\\"article\\"><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=85\\"><span style=\\"font-family: verdana,geneva;\\">Click To View <span style=\\"font-size: 12px;\\">Balustrades<\\/span> Gallery<\\/span><\\/a><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><span style=\\"font-family: verdana,geneva;\\"> <\\/span>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><br \\/><a name=\\"stair\\"><\\/a>Staircases:<\\/strong><\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">When one talks about manufacturing staircases, handwork is fundamental and we manufacture all kinds of staircases, e.g. straight, half, quarter, geometrical, half space and quarter space landings, curved, spirals, etc. Every staircase is custom made to the requirements of the client. Balustrading to concrete and cast iron staircases is also part of our production. Installation of staircases and balustrading is carried out by our own skilled tradesmen.<\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><br \\/><\\/span><a href=\\"index.php?option=com_content&amp;view=article&amp;id=83&amp;Itemid=172\\" target=\\"_self\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Staircases Gallery<span style=\\"font-size: 12px; color: #000000;\\"> <\\/span><\\/span><\\/a><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong>&nbsp;<\\/strong><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"per\\"><\\/a>Pergolas: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">A pergola or arbour is a garden feature forming a shaded walkway, passageway or sitting area of pillars that support cross-beams and a sturdy open lattice, often upon which woody vines are trained. As a type of gazebo, it may also be an extension of a building, or serve as protection for an open terrace or a link between pavilions.<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=81&amp;Itemid=170\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Pergolas Gallery<\\/span><\\/a><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"screen\\"><\\/a>Screens: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">Screens are a full-screen window manager that multiplexes a physical terminal between several processes, typically interactive shells.<\\/span><br \\/><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=82&amp;Itemid=171\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Screens Gallery<\\/span><\\/a><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"> <\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"gate\\"><\\/a>Gates: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">Driveway gates made of wrought iron, stainless steel etc, along with pedestrian gates which could be decorative or plain to suit your home or business. <\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=78&amp;Itemid=167\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Gates Gallery<\\/span><\\/a><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:01:04","created_by":"163","created_by_alias":"","modified":"2014-10-20 09:21:12","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-20 09:19:09","publish_up":"2014-10-18 05:01:04","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"13","metakey":"","metadesc":"","access":"1","hits":"96","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(22, 1, 1, '', '2014-10-20 09:27:40', 163, 10517, 'b17196b26e907d24cfc24d2bd449a346b3a6ef65', '{"id":1,"asset_id":"54","title":"Products","alias":"products","introtext":"<h6 style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong>Products<\\/strong><\\/span><\\/span><\\/h6>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><br \\/><\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong><a name=\\"house\\"><\\/a>Housing :<br \\/><\\/strong><\\/span><span style=\\"color: #000000;\\">Timber frame homes are becoming more and more fashionable and are much more eco-friendly and cost effective than conventional brick and mortar. We are experienced in all types of timer homes namely timber frame. This method can incorporate a number of finishes for example: cladding i.e. using half log planking, conventional plaster on timber frame or nu-tec ship lap.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span>\\r\\n<p><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">We also do solid log homes.<br \\/><a target=\\"_self\\" href=\\"gallery\\/housing\\/log-homes\\">Click To View Log Home Gallery<\\/a><br \\/><a target=\\"_self\\" href=\\"gallery\\/housing\\/timber-frame\\">Click To View Timber Frame Gallery<\\/a><\\/span><\\/span><\\/p>\\r\\n<\\/div>\\r\\n<span style=\\"color: #000000;\\"> <\\/span>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong><a name=\\"decks\\"><\\/a>Decks :<\\/strong><\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\">&nbsp;<\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><span style=\\"color: #000000;\\">Outdoor  Decking transforms outside spaces into practical and stylish outdoor  rooms. Wooden decking makes a warm and comfortable surface while  creating a seamless transition between house and g<\\/span>arden.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><a target=\\"_self\\" href=\\"gallery\\/decks\\">Click To View Decks Gallery<\\/a><\\/span><\\/div>\\r\\n<div style=\\"text-align: center;\\">\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\">\\r\\n<div id=\\"content\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div id=\\"content_container\\" class=\\"clearfix\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"floatbox\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"joomla \\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"article\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong style=\\"font-size: 12px;\\"><a name=\\"bal\\"><\\/a>Balustrades :<\\/strong><\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><br \\/>Balustrades  aren\\u2019t merely staircase fashion accessories; they provide structure and  safety while reflecting homeowners\\u2019 personalities. The balustrade can  also be called a handrail, which is supported by short pillars, called  balusters.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<div class=\\"article\\"><a target=\\"_self\\" href=\\"gallery\\/balustrades\\"><span style=\\"font-family: verdana,geneva;\\">Click To View <span style=\\"font-size: 12px;\\">Balustrades<\\/span> Gallery<\\/span><\\/a><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><span style=\\"font-family: verdana,geneva;\\"> <\\/span>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><br \\/><a name=\\"stair\\"><\\/a>Staircases:<\\/strong><\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">When one talks about manufacturing staircases, handwork is fundamental and we manufacture all kinds of staircases, e.g. straight, half, quarter, geometrical, half space and quarter space landings, curved, spirals, etc. Every staircase is custom made to the requirements of the client. Balustrading to concrete and cast iron staircases is also part of our production. Installation of staircases and balustrading is carried out by our own skilled tradesmen.<\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><br \\/><\\/span><a href=\\"index.php?option=com_content&amp;view=article&amp;id=83&amp;Itemid=172\\" target=\\"_self\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Staircases Gallery<span style=\\"font-size: 12px; color: #000000;\\"> <\\/span><\\/span><\\/a><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong>&nbsp;<\\/strong><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"per\\"><\\/a>Pergolas: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">A pergola or arbour is a garden feature forming a shaded walkway, passageway or sitting area of pillars that support cross-beams and a sturdy open lattice, often upon which woody vines are trained. As a type of gazebo, it may also be an extension of a building, or serve as protection for an open terrace or a link between pavilions.<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=81&amp;Itemid=170\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Pergolas Gallery<\\/span><\\/a><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"screen\\"><\\/a>Screens: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">Screens are a full-screen window manager that multiplexes a physical terminal between several processes, typically interactive shells.<\\/span><br \\/><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=82&amp;Itemid=171\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Screens Gallery<\\/span><\\/a><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"> <\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"gate\\"><\\/a>Gates: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">Driveway gates made of wrought iron, stainless steel etc, along with pedestrian gates which could be decorative or plain to suit your home or business. <\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=78&amp;Itemid=167\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Gates Gallery<\\/span><\\/a><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:01:04","created_by":"163","created_by_alias":"","modified":"2014-10-20 09:27:40","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-20 09:21:12","publish_up":"2014-10-18 05:01:04","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"13","metakey":"","metadesc":"","access":"1","hits":"97","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `kqt1o_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(23, 1, 1, '', '2014-10-20 09:29:48', 163, 10466, '4e9cecc9d679b830da5aa1e88b24fe262fb61a3f', '{"id":1,"asset_id":"54","title":"Products","alias":"products","introtext":"<h6 style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong>Products<\\/strong><\\/span><\\/span><\\/h6>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><br \\/><\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong><a name=\\"house\\"><\\/a>Housing :<br \\/><\\/strong><\\/span><span style=\\"color: #000000;\\">Timber frame homes are becoming more and more fashionable and are much more eco-friendly and cost effective than conventional brick and mortar. We are experienced in all types of timer homes namely timber frame. This method can incorporate a number of finishes for example: cladding i.e. using half log planking, conventional plaster on timber frame or nu-tec ship lap.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span>\\r\\n<p><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">We also do solid log homes.<br \\/><a target=\\"_self\\" href=\\"gallery\\/housing\\/log-homes\\">Click To View Log Home Gallery<\\/a><br \\/><a target=\\"_self\\" href=\\"gallery\\/housing\\/timber-frame\\">Click To View Timber Frame Gallery<\\/a><\\/span><\\/span><\\/p>\\r\\n<\\/div>\\r\\n<span style=\\"color: #000000;\\"> <\\/span>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong><a name=\\"decks\\"><\\/a>Decks :<\\/strong><\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\">&nbsp;<\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><span style=\\"color: #000000;\\">Outdoor  Decking transforms outside spaces into practical and stylish outdoor  rooms. Wooden decking makes a warm and comfortable surface while  creating a seamless transition between house and g<\\/span>arden.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><a target=\\"_self\\" href=\\"gallery\\/decks\\">Click To View Decks Gallery<\\/a><\\/span><\\/div>\\r\\n<div style=\\"text-align: center;\\">\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\">\\r\\n<div id=\\"content\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div id=\\"content_container\\" class=\\"clearfix\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"floatbox\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"joomla \\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"article\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong style=\\"font-size: 12px;\\"><a name=\\"bal\\"><\\/a>Balustrades :<\\/strong><\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><br \\/>Balustrades  aren\\u2019t merely staircase fashion accessories; they provide structure and  safety while reflecting homeowners\\u2019 personalities. The balustrade can  also be called a handrail, which is supported by short pillars, called  balusters.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<div class=\\"article\\"><a target=\\"_self\\" href=\\"gallery\\/balustrades\\"><span style=\\"font-family: verdana,geneva;\\">Click To View <span style=\\"font-size: 12px;\\">Balustrades<\\/span> Gallery<\\/span><\\/a><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><span style=\\"font-family: verdana,geneva;\\"> <\\/span>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><br \\/><a name=\\"stair\\"><\\/a>Staircases:<\\/strong><\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">When one talks about manufacturing staircases, handwork is fundamental and we manufacture all kinds of staircases, e.g. straight, half, quarter, geometrical, half space and quarter space landings, curved, spirals, etc. Every staircase is custom made to the requirements of the client. Balustrading to concrete and cast iron staircases is also part of our production. Installation of staircases and balustrading is carried out by our own skilled tradesmen.<\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><br \\/><\\/span><a href=\\"gallery\\/staircases\\" target=\\"_self\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Staircases Gallery<span style=\\"font-size: 12px; color: #000000;\\"> <\\/span><\\/span><\\/a><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong>&nbsp;<\\/strong><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"per\\"><\\/a>Pergolas: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">A pergola or arbour is a garden feature forming a shaded walkway, passageway or sitting area of pillars that support cross-beams and a sturdy open lattice, often upon which woody vines are trained. As a type of gazebo, it may also be an extension of a building, or serve as protection for an open terrace or a link between pavilions.<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=81&amp;Itemid=170\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Pergolas Gallery<\\/span><\\/a><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"screen\\"><\\/a>Screens: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">Screens are a full-screen window manager that multiplexes a physical terminal between several processes, typically interactive shells.<\\/span><br \\/><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=82&amp;Itemid=171\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Screens Gallery<\\/span><\\/a><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"> <\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"gate\\"><\\/a>Gates: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">Driveway gates made of wrought iron, stainless steel etc, along with pedestrian gates which could be decorative or plain to suit your home or business. <\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=78&amp;Itemid=167\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Gates Gallery<\\/span><\\/a><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:01:04","created_by":"163","created_by_alias":"","modified":"2014-10-20 09:29:48","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-20 09:27:50","publish_up":"2014-10-18 05:01:04","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"13","metakey":"","metadesc":"","access":"1","hits":"98","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(24, 1, 1, '', '2014-10-20 09:30:22', 163, 10413, '2d01f16e65080b215ef1d6e9747ff13f2c87b3d5', '{"id":1,"asset_id":"54","title":"Products","alias":"products","introtext":"<h6 style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong>Products<\\/strong><\\/span><\\/span><\\/h6>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><br \\/><\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong><a name=\\"house\\"><\\/a>Housing :<br \\/><\\/strong><\\/span><span style=\\"color: #000000;\\">Timber frame homes are becoming more and more fashionable and are much more eco-friendly and cost effective than conventional brick and mortar. We are experienced in all types of timer homes namely timber frame. This method can incorporate a number of finishes for example: cladding i.e. using half log planking, conventional plaster on timber frame or nu-tec ship lap.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span>\\r\\n<p><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">We also do solid log homes.<br \\/><a target=\\"_self\\" href=\\"gallery\\/housing\\/log-homes\\">Click To View Log Home Gallery<\\/a><br \\/><a target=\\"_self\\" href=\\"gallery\\/housing\\/timber-frame\\">Click To View Timber Frame Gallery<\\/a><\\/span><\\/span><\\/p>\\r\\n<\\/div>\\r\\n<span style=\\"color: #000000;\\"> <\\/span>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong><a name=\\"decks\\"><\\/a>Decks :<\\/strong><\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\">&nbsp;<\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><span style=\\"color: #000000;\\">Outdoor  Decking transforms outside spaces into practical and stylish outdoor  rooms. Wooden decking makes a warm and comfortable surface while  creating a seamless transition between house and g<\\/span>arden.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><a target=\\"_self\\" href=\\"gallery\\/decks\\">Click To View Decks Gallery<\\/a><\\/span><\\/div>\\r\\n<div style=\\"text-align: center;\\">\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\">\\r\\n<div id=\\"content\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div id=\\"content_container\\" class=\\"clearfix\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"floatbox\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"joomla \\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"article\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong style=\\"font-size: 12px;\\"><a name=\\"bal\\"><\\/a>Balustrades :<\\/strong><\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><br \\/>Balustrades  aren\\u2019t merely staircase fashion accessories; they provide structure and  safety while reflecting homeowners\\u2019 personalities. The balustrade can  also be called a handrail, which is supported by short pillars, called  balusters.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<div class=\\"article\\"><a target=\\"_self\\" href=\\"gallery\\/balustrades\\"><span style=\\"font-family: verdana,geneva;\\">Click To View <span style=\\"font-size: 12px;\\">Balustrades<\\/span> Gallery<\\/span><\\/a><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><span style=\\"font-family: verdana,geneva;\\"> <\\/span>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><br \\/><a name=\\"stair\\"><\\/a>Staircases:<\\/strong><\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">When one talks about manufacturing staircases, handwork is fundamental and we manufacture all kinds of staircases, e.g. straight, half, quarter, geometrical, half space and quarter space landings, curved, spirals, etc. Every staircase is custom made to the requirements of the client. Balustrading to concrete and cast iron staircases is also part of our production. Installation of staircases and balustrading is carried out by our own skilled tradesmen.<\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><br \\/><\\/span><a href=\\"gallery\\/staircases\\" target=\\"_self\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Staircases Gallery<span style=\\"font-size: 12px; color: #000000;\\"> <\\/span><\\/span><\\/a><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong>&nbsp;<\\/strong><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"per\\"><\\/a>Pergolas: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">A pergola or arbour is a garden feature forming a shaded walkway, passageway or sitting area of pillars that support cross-beams and a sturdy open lattice, often upon which woody vines are trained. As a type of gazebo, it may also be an extension of a building, or serve as protection for an open terrace or a link between pavilions.<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a target=\\"_self\\" href=\\"gallery\\/pergolas\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Pergolas Gallery<\\/span><\\/a><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"screen\\"><\\/a>Screens: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">Screens are a full-screen window manager that multiplexes a physical terminal between several processes, typically interactive shells.<\\/span><br \\/><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=82&amp;Itemid=171\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Screens Gallery<\\/span><\\/a><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"> <\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"gate\\"><\\/a>Gates: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">Driveway gates made of wrought iron, stainless steel etc, along with pedestrian gates which could be decorative or plain to suit your home or business. <\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=78&amp;Itemid=167\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Gates Gallery<\\/span><\\/a><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:01:04","created_by":"163","created_by_alias":"","modified":"2014-10-20 09:30:22","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-20 09:29:48","publish_up":"2014-10-18 05:01:04","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"13","metakey":"","metadesc":"","access":"1","hits":"98","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(25, 1, 1, '', '2014-10-20 09:30:59', 163, 10359, '7fd289a3532b934c243f05f2149d7c4d68195c60', '{"id":1,"asset_id":"54","title":"Products","alias":"products","introtext":"<h6 style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong>Products<\\/strong><\\/span><\\/span><\\/h6>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><br \\/><\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong><a name=\\"house\\"><\\/a>Housing :<br \\/><\\/strong><\\/span><span style=\\"color: #000000;\\">Timber frame homes are becoming more and more fashionable and are much more eco-friendly and cost effective than conventional brick and mortar. We are experienced in all types of timer homes namely timber frame. This method can incorporate a number of finishes for example: cladding i.e. using half log planking, conventional plaster on timber frame or nu-tec ship lap.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span>\\r\\n<p><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">We also do solid log homes.<br \\/><a target=\\"_self\\" href=\\"gallery\\/housing\\/log-homes\\">Click To View Log Home Gallery<\\/a><br \\/><a target=\\"_self\\" href=\\"gallery\\/housing\\/timber-frame\\">Click To View Timber Frame Gallery<\\/a><\\/span><\\/span><\\/p>\\r\\n<\\/div>\\r\\n<span style=\\"color: #000000;\\"> <\\/span>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong><a name=\\"decks\\"><\\/a>Decks :<\\/strong><\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\">&nbsp;<\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><span style=\\"color: #000000;\\">Outdoor  Decking transforms outside spaces into practical and stylish outdoor  rooms. Wooden decking makes a warm and comfortable surface while  creating a seamless transition between house and g<\\/span>arden.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><a target=\\"_self\\" href=\\"gallery\\/decks\\">Click To View Decks Gallery<\\/a><\\/span><\\/div>\\r\\n<div style=\\"text-align: center;\\">\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\">\\r\\n<div id=\\"content\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div id=\\"content_container\\" class=\\"clearfix\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"floatbox\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"joomla \\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"article\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong style=\\"font-size: 12px;\\"><a name=\\"bal\\"><\\/a>Balustrades :<\\/strong><\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><br \\/>Balustrades  aren\\u2019t merely staircase fashion accessories; they provide structure and  safety while reflecting homeowners\\u2019 personalities. The balustrade can  also be called a handrail, which is supported by short pillars, called  balusters.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<div class=\\"article\\"><a target=\\"_self\\" href=\\"gallery\\/balustrades\\"><span style=\\"font-family: verdana,geneva;\\">Click To View <span style=\\"font-size: 12px;\\">Balustrades<\\/span> Gallery<\\/span><\\/a><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><span style=\\"font-family: verdana,geneva;\\"> <\\/span>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><br \\/><a name=\\"stair\\"><\\/a>Staircases:<\\/strong><\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">When one talks about manufacturing staircases, handwork is fundamental and we manufacture all kinds of staircases, e.g. straight, half, quarter, geometrical, half space and quarter space landings, curved, spirals, etc. Every staircase is custom made to the requirements of the client. Balustrading to concrete and cast iron staircases is also part of our production. Installation of staircases and balustrading is carried out by our own skilled tradesmen.<\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><br \\/><\\/span><a href=\\"gallery\\/staircases\\" target=\\"_self\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Staircases Gallery<span style=\\"font-size: 12px; color: #000000;\\"> <\\/span><\\/span><\\/a><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong>&nbsp;<\\/strong><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"per\\"><\\/a>Pergolas: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">A pergola or arbour is a garden feature forming a shaded walkway, passageway or sitting area of pillars that support cross-beams and a sturdy open lattice, often upon which woody vines are trained. As a type of gazebo, it may also be an extension of a building, or serve as protection for an open terrace or a link between pavilions.<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a target=\\"_self\\" href=\\"gallery\\/pergolas\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Pergolas Gallery<\\/span><\\/a><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"screen\\"><\\/a>Screens: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">Screens are a full-screen window manager that multiplexes a physical terminal between several processes, typically interactive shells.<\\/span><br \\/><a target=\\"_self\\" href=\\"gallery\\/screens\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Screens Gallery<\\/span><\\/a><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"> <\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"gate\\"><\\/a>Gates: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">Driveway gates made of wrought iron, stainless steel etc, along with pedestrian gates which could be decorative or plain to suit your home or business. <\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a target=\\"_self\\" href=\\"index.php?option=com_content&amp;view=article&amp;id=78&amp;Itemid=167\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Gates Gallery<\\/span><\\/a><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:01:04","created_by":"163","created_by_alias":"","modified":"2014-10-20 09:30:59","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-20 09:30:22","publish_up":"2014-10-18 05:01:04","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"13","metakey":"","metadesc":"","access":"1","hits":"98","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(26, 1, 1, '', '2014-10-20 09:31:44', 163, 10303, 'ddc3e30c71031f50bdd5e863df781a2877dbb35e', '{"id":1,"asset_id":"54","title":"Products","alias":"products","introtext":"<h6 style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong>Products<\\/strong><\\/span><\\/span><\\/h6>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><br \\/><\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong><a name=\\"house\\"><\\/a>Housing :<br \\/><\\/strong><\\/span><span style=\\"color: #000000;\\">Timber frame homes are becoming more and more fashionable and are much more eco-friendly and cost effective than conventional brick and mortar. We are experienced in all types of timer homes namely timber frame. This method can incorporate a number of finishes for example: cladding i.e. using half log planking, conventional plaster on timber frame or nu-tec ship lap.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span>\\r\\n<p><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">We also do solid log homes.<br \\/><a target=\\"_self\\" href=\\"gallery\\/housing\\/log-homes\\">Click To View Log Home Gallery<\\/a><br \\/><a target=\\"_self\\" href=\\"gallery\\/housing\\/timber-frame\\">Click To View Timber Frame Gallery<\\/a><\\/span><\\/span><\\/p>\\r\\n<\\/div>\\r\\n<span style=\\"color: #000000;\\"> <\\/span>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong><a name=\\"decks\\"><\\/a>Decks :<\\/strong><\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\">&nbsp;<\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><span style=\\"color: #000000;\\">Outdoor  Decking transforms outside spaces into practical and stylish outdoor  rooms. Wooden decking makes a warm and comfortable surface while  creating a seamless transition between house and g<\\/span>arden.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><a target=\\"_self\\" href=\\"gallery\\/decks\\">Click To View Decks Gallery<\\/a><\\/span><\\/div>\\r\\n<div style=\\"text-align: center;\\">\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\">\\r\\n<div id=\\"content\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div id=\\"content_container\\" class=\\"clearfix\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"floatbox\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"joomla \\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"> <\\/span><\\/span>\\r\\n<div class=\\"article\\"><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><strong style=\\"font-size: 12px;\\"><a name=\\"bal\\"><\\/a>Balustrades :<\\/strong><\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\"><br \\/>Balustrades  aren\\u2019t merely staircase fashion accessories; they provide structure and  safety while reflecting homeowners\\u2019 personalities. The balustrade can  also be called a handrail, which is supported by short pillars, called  balusters.<\\/span><\\/span><span style=\\"font-family: verdana,geneva;\\"><span style=\\"color: #000000;\\">&nbsp;<\\/span><\\/span><\\/div>\\r\\n<div class=\\"article\\"><a target=\\"_self\\" href=\\"gallery\\/balustrades\\"><span style=\\"font-family: verdana,geneva;\\">Click To View <span style=\\"font-size: 12px;\\">Balustrades<\\/span> Gallery<\\/span><\\/a><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><\\/div>\\r\\n<span style=\\"font-family: verdana,geneva;\\"> <\\/span><span style=\\"font-family: verdana,geneva;\\"> <\\/span>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><br \\/><a name=\\"stair\\"><\\/a>Staircases:<\\/strong><\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">When one talks about manufacturing staircases, handwork is fundamental and we manufacture all kinds of staircases, e.g. straight, half, quarter, geometrical, half space and quarter space landings, curved, spirals, etc. Every staircase is custom made to the requirements of the client. Balustrading to concrete and cast iron staircases is also part of our production. Installation of staircases and balustrading is carried out by our own skilled tradesmen.<\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><br \\/><\\/span><a href=\\"gallery\\/staircases\\" target=\\"_self\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Staircases Gallery<span style=\\"font-size: 12px; color: #000000;\\"> <\\/span><\\/span><\\/a><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong>&nbsp;<\\/strong><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"per\\"><\\/a>Pergolas: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">A pergola or arbour is a garden feature forming a shaded walkway, passageway or sitting area of pillars that support cross-beams and a sturdy open lattice, often upon which woody vines are trained. As a type of gazebo, it may also be an extension of a building, or serve as protection for an open terrace or a link between pavilions.<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a target=\\"_self\\" href=\\"gallery\\/pergolas\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Pergolas Gallery<\\/span><\\/a><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"screen\\"><\\/a>Screens: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">Screens are a full-screen window manager that multiplexes a physical terminal between several processes, typically interactive shells.<\\/span><br \\/><a target=\\"_self\\" href=\\"gallery\\/screens\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Screens Gallery<\\/span><\\/a><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"> <\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong><a name=\\"gate\\"><\\/a>Gates: <\\/strong><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">Driveway gates made of wrought iron, stainless steel etc, along with pedestrian gates which could be decorative or plain to suit your home or business. <\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a target=\\"_self\\" href=\\"gallery\\/gates\\"><span style=\\"font-family: verdana,geneva;\\">Click To View Gates Gallery<\\/span><\\/a><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">&nbsp;<\\/span><\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:01:04","created_by":"163","created_by_alias":"","modified":"2014-10-20 09:31:44","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-20 09:30:59","publish_up":"2014-10-18 05:01:04","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"13","metakey":"","metadesc":"","access":"1","hits":"98","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(27, 15, 1, '', '2014-10-21 07:22:33', 163, 2445, '1c5b0cd28416b70a15cca16ac755b12863a7fdae', '{"id":15,"asset_id":93,"title":"Staircases","alias":"staircases","introtext":"<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;\\">When one talks about manufacturing staircases, handwork is fundamental and we manufacture all kinds of staircases, e.g. straight, half, quarter, geometrical, half space and quarter space landings, curved, spirals, etc. Every staircase is custom made to the requirements of the client. Balustrading to concrete and cast iron staircases is also part of our production. Installation of staircases and balustrading is carried out by our own skilled tradesmen.<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a href=\\"gallery\\/staircases\\" target=\\"_self\\" style=\\"color: #7ba46c;\\"><span style=\\"font-family: verdana, geneva;\\">Click To View Staircases Gallery<\\/span><\\/a><\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-10-21 07:22:33","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-21 07:22:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `kqt1o_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(28, 15, 1, '', '2014-10-21 07:29:56', 163, 2654, '7c27bc3e6319cf1f2b6a3596869ad786c34df282', '{"id":15,"asset_id":"93","title":"Staircases","alias":"staircases","introtext":"<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;\\">&lt;h1&gt;Staircases&lt;\\/h1&gt;<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;\\">When one talks about manufacturing staircases, handwork is fundamental and we manufacture all kinds of staircases, e.g. straight, half, quarter, geometrical, half space and quarter space landings, curved, spirals, etc. Every staircase is custom made to the requirements of the client. Balustrading to concrete and cast iron staircases is also part of our production. Installation of staircases and balustrading is carried out by our own skilled tradesmen.<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a href=\\"gallery\\/staircases\\" target=\\"_self\\" style=\\"color: #7ba46c;\\"><span style=\\"font-family: verdana, geneva;\\">Click To View Staircases Gallery<\\/span><\\/a><\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-10-21 07:22:33","created_by":"163","created_by_alias":"","modified":"2014-10-21 07:29:56","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-21 07:29:10","publish_up":"2014-10-21 07:22:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(29, 15, 1, '', '2014-10-21 07:30:35', 163, 2503, 'bfe9e37116aad3e84405dbe867eeb96dc9a437b1', '{"id":15,"asset_id":"93","title":"Staircases","alias":"staircases","introtext":"<h1>Staircases<\\/h1><div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;\\">When one talks about manufacturing staircases, handwork is fundamental and we manufacture all kinds of staircases, e.g. straight, half, quarter, geometrical, half space and quarter space landings, curved, spirals, etc. Every staircase is custom made to the requirements of the client. Balustrading to concrete and cast iron staircases is also part of our production. Installation of staircases and balustrading is carried out by our own skilled tradesmen.<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a href=\\"gallery\\/staircases\\" target=\\"_self\\" style=\\"color: #7ba46c;\\"><span style=\\"font-family: verdana, geneva;\\">Click To View Staircases Gallery<\\/span><\\/a><\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-10-21 07:22:33","created_by":"163","created_by_alias":"","modified":"2014-10-21 07:30:35","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-21 07:29:56","publish_up":"2014-10-21 07:22:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"6","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(30, 15, 1, '', '2014-10-21 07:45:09', 163, 2509, 'e0da729542db0cf1c4d8d5e5899cacc4520c9ae2', '{"id":15,"asset_id":"93","title":"Staircases","alias":"staircases","introtext":"<h1>Staircases<\\/h1>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;\\">When one talks about manufacturing staircases, handwork is fundamental and we manufacture all kinds of staircases, e.g. straight, half, quarter, geometrical, half space and quarter space landings, curved, spirals, etc. Every staircase is custom made to the requirements of the client. Balustrading to concrete and cast iron staircases is also part of our production. Installation of staircases and balustrading is carried out by our own skilled tradesmen.<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a href=\\"gallery\\/staircases\\" target=\\"_self\\" style=\\"color: #7ba46c;\\"><span style=\\"font-family: verdana, geneva;\\">Click To View Staircases Gallery<\\/span><\\/a><\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-10-21 07:22:33","created_by":"163","created_by_alias":"","modified":"2014-10-21 07:45:09","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-21 07:44:54","publish_up":"2014-10-21 07:22:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"12","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(31, 15, 1, '', '2014-10-21 07:48:26', 163, 2615, '928444c5f7be3c98da09833ffc2c067a3a7675f6', '{"id":15,"asset_id":"93","title":"Staircases","alias":"staircases","introtext":"<h1>Staircases<\\/h1>\\r\\n<div style=\\"text-align: justify;\\">&nbsp;<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;\\">When one talks about manufacturing staircases, handwork is fundamental and we manufacture all kinds of staircases, e.g. straight, half, quarter, geometrical, half space and quarter space landings, curved, spirals, etc. Every staircase is custom made to the requirements of the client. Balustrading to concrete and cast iron staircases is also part of our production. Installation of staircases and balustrading is carried out by our own skilled tradesmen.<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\">&nbsp;<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a href=\\"gallery\\/staircases\\" target=\\"_self\\" style=\\"color: #7ba46c;\\"><span style=\\"font-family: verdana, geneva;\\">Click To View Staircases Gallery<\\/span><\\/a><\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-10-21 07:22:33","created_by":"163","created_by_alias":"","modified":"2014-10-21 07:48:26","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-21 07:48:16","publish_up":"2014-10-21 07:22:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"15","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(32, 16, 1, '', '2014-10-21 12:10:09', 163, 2349, '0f0c7e34a5de5287eb76baf394fb7e9f85837e7e', '{"id":16,"asset_id":94,"title":"Decks","alias":"decks","introtext":"<h1>Decks<\\/h1>\\r\\n<div style=\\"text-align: justify;\\">&nbsp;<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana, geneva;\\"><span style=\\"color: #000000;\\">Outdoor Decking transforms outside spaces into practical and stylish outdoor rooms. Wooden decking makes a warm and comfortable surface while creating a seamless transition between house and garden.<\\/span><\\/span><span style=\\"font-family: verdana, geneva;\\"><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\">&nbsp;<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana, geneva;\\"><a href=\\"gallery\\/decks\\" target=\\"_self\\" style=\\"color: #7ba46c;\\">Click To View Decks Gallery<\\/a><\\/span><\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-10-21 12:10:09","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-21 12:10:09","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(33, 16, 1, '', '2014-10-21 12:13:33', 163, 2394, 'a42e0c628ca764af5ff3219e449ce87244bc7005', '{"id":16,"asset_id":"94","title":"Decks","alias":"decks","introtext":"<h1>Wooden Decks<\\/h1>\\r\\n<div style=\\"text-align: justify;\\">&nbsp;<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana, geneva;\\"><span style=\\"color: #000000;\\">Outdoor Decking transforms outside spaces into practical and stylish outdoor rooms. Wooden decking makes a warm and comfortable surface while creating a seamless transition between house and garden.<\\/span><\\/span><span style=\\"font-family: verdana, geneva;\\"><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\">&nbsp;<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana, geneva;\\"><a href=\\"gallery\\/decks\\" target=\\"_self\\" style=\\"color: #7ba46c;\\">Click To View Decks Gallery<\\/a><\\/span><\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-10-21 12:10:09","created_by":"163","created_by_alias":"","modified":"2014-10-21 12:13:33","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-21 12:13:23","publish_up":"2014-10-21 12:10:09","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(34, 17, 1, '', '2014-10-21 12:15:21', 163, 2321, 'f2934a99bd7dad8db0e7e001f7ec3820ad2141eb', '{"id":17,"asset_id":95,"title":"Balustrades","alias":"balustrades","introtext":"<h1>Balustrades<\\/h1>\\r\\n<p>:<span style=\\"font-family: verdana, geneva;\\"><span style=\\"color: #000000;\\"><br \\/>Balustrades aren\\u2019t merely staircase fashion accessories; they provide structure and safety while reflecting homeowners\\u2019 personalities. The balustrade can also be called a handrail, which is supported by short pillars, called balusters.<\\/span><\\/span><span style=\\"font-family: verdana, geneva;\\"><\\/span><\\/p>\\r\\n<div class=\\"article\\" style=\\"text-align: justify;\\"><a href=\\"gallery\\/balustrades\\" target=\\"_self\\" style=\\"color: #7ba46c;\\"><span style=\\"font-family: verdana, geneva;\\">Click To View&nbsp;Balustrades&nbsp;Gallery<\\/span><\\/a><\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-10-21 12:15:21","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-21 12:15:21","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(35, 18, 1, '', '2014-10-21 12:52:45', 163, 10389, '1b256d058dd81f3c86ef39595cb81cacc3fb3e50', '{"id":18,"asset_id":96,"title":"Legal Disclaimer","alias":"legal-disclaimer","introtext":"<span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><strong>Legal Disclaimer<\\/strong><br \\/><br \\/><strong>Use of Site<\\/strong><br \\/><br \\/><\\/span>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">You may only use this site to browse the content, make legitimate purchases and shall not use this site for any other purposes. This site and the content provided in this site may not be copied, reproduced, republished, uploaded, posted, transmitted or distributed. ''Deep-linking'', ''embedding'' or using analogous technology is strictly prohibited. Unauthorized use of this site and\\/or the materials contained on this site may violate applicable copyright, trademark or other intellectual property laws or other laws.<\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><\\/span><\\/div>\\r\\n<span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><br \\/><strong>Disclaimer of Warranty<\\/strong><br \\/><br \\/><\\/span>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">The contents of this site are provided \\"as is\\" without warranty of any kind, either expressed or implied, including but not limited to warranties of merchantability, fitness for a purpose and non-infringement. The owner of this site, the authors of these contents and in general anybody connected to this site in any way, from now on collectively called \\"Providers\\", assume no responsibility for errors or omissions in these contents. The Providers shall not be liable for any direct, indirect, general, special, incidental or consequential damages (including, without limitation - data loss, lost revenues and lost profit) which may result from the inability to use or the correct or incorrect use, abuse, or misuse of these contents, even if the Providers have been informed of the possibilities of such damages. The Providers cannot assume any obligation or responsibility. The use of these contents is forbidden in those places where the law does not allow this disclaimer to take full effect.<\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><\\/span><br \\/><strong><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">Our Rights<\\/span><\\/strong><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">We reserve the right to:<\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"> Modify or withdraw, temporarily or permanently, the website (or any part thereof) with or without notice to you and you confirm that we shall not be liable to you or any third party for any modification to or withdrawal of the Website; and\\/or<\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"> Change these Conditions from time to time and your continued use of the Website (or any part thereof) following such change shall be deemed to be your acceptance of such change. It is your responsibility to check regularly to determine whether the Conditions have been changed. If you do not agree to any change to the Conditions then you must immediately stop using the Website.<\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"> We will use our reasonable endeavors to maintain the Website. The Website is subject to change from time to time. You will not be eligible for any compensation because you cannot use any part of the Website or because of failure, suspension or withdrawal of all or part of the Website due to circumstances beyond our control.<\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"> We have the right, but not the obligation, to monitor any activity and content associated with the Website. We may investigate any reported violation of these Conditions or complaints and take any action that we deem appropriate (which may include, but is not limited to issuing warnings, suspending, terminating or attaching conditions to your access and\\/or removing any materials from the Website).<\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><\\/span><br \\/><strong><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">Privacy Policy<\\/span><\\/strong><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">We are committed to protecting your privacy. This privacy policy applies to all the web pages related to this website. All the information gathered in the online forms on the website is used to personally identify users that subscribe to this service. The information WILL NOT be used for anything other that which is stated in the Terms &amp; Conditions of use for this service. None of the information will be sold or made available to anyone. The Site may collect certain information about your visit, such as the name of the Internet Service Provider and the Internet Protocol (IP) address through which you access the Internet; the date and time you access the Site; the pages that you access while at the Site and the Internet Address of the Web site from which you linked directly to our site. This information is used to help improve the Site, analyze trends, and administer the Site. We may need to change this policy from time to time in order to address new issues and reflect changes on our site. We will post those changes here so that you will always know what information we gather, how we might use that information, and whether we will disclose that information to anyone. Please refer back to this policy regularly. If you have any questions or concerns about our privacy policy, please send us an E-Mail. By using this website, you signify your acceptance of our Privacy Policy. If you do not agree to this policy, please do not use our site. Your continued use of the website following the posting of changes to these terms will mean that you accept those changes.<\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><\\/span><br \\/><strong><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">Email Disclaimer<\\/span><\\/strong><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">This website has the ability to send you emails. These messages are privileged and private communication and may be read, copied and used only by the intended recipient (s).&nbsp; If you are not an intended recipient, please let us know by return email.&nbsp; Please then delete the message and do not disclose its contents to any person.&nbsp; Neither the sender nor his\\/her employer accepts any liability whatsoever as a result of the further dissemination of this message.<\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\"><\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">While every effort is taken to ensure that the email message and any attachments are free from viruses, the sender and his\\/her employer cannot be held liable in the unlikely event that a virus is transmitted to the recipient''s computer systems. The recipient is responsible for maintaining suitable anti-virus mechanisms to protect its computer systems.\\"<\\/span><br \\/><span style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; color: #000000;\\">The Conditions will be exclusively governed by and construed in accordance with the laws of South Africa whose Courts will have exclusive jurisdiction in any dispute, save that we have the right, at our sole discretion, to commence and pursue proceedings in alternative jurisdictions.<\\/span><\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-10-21 12:52:45","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-21 12:52:45","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(36, 19, 1, '', '2014-10-22 05:03:03', 163, 1687, '6c1c0d61a8ddce77759bbfd1a808cd1f738c3ccf', '{"id":19,"asset_id":101,"title":"Contact Us Form","alias":"contact-us-form","introtext":"<p>{loadpostion contact_form}<\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-10-22 05:03:03","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-22 05:03:03","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(37, 20, 1, '', '2014-10-29 11:33:46', 163, 2309, 'e2b88ee3ca6398f1ad568b5abfa3f12d039837cd', '{"id":20,"asset_id":102,"title":"Balustrades (2)","alias":"balustrades-2","introtext":"<h1>Balustrades<\\/h1>\\r\\n<p>:<span style=\\"font-family: verdana, geneva;\\"><span style=\\"color: #000000;\\"><br \\/>Balustrades aren\\u2019t merely staircase fashion accessories; they provide structure and safety while reflecting homeowners\\u2019 personalities. The balustrade can also be called a handrail, which is supported by short pillars, called balusters.<\\/span><\\/span><span style=\\"font-family: verdana, geneva;\\"><\\/span><\\/p>\\r\\n<div class=\\"article\\" style=\\"text-align: justify;\\"><a href=\\"gallery\\/balustrades\\" target=\\"_self\\" style=\\"color: #7ba46c;\\"><span style=\\"font-family: verdana, geneva;\\">Click To View&nbsp;Balustrades&nbsp;Gallery<\\/span><\\/a><\\/div>","fulltext":"","state":0,"catid":"2","created":"2014-10-21 12:15:21","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-21 12:15:21","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(38, 20, 1, '', '2014-10-29 11:35:34', 163, 2439, '3553181ffcab8f1d730eacceaef049168c858316', '{"id":20,"asset_id":"102","title":"Screens","alias":"screens","introtext":"<h1>Screens<\\/h1>\\r\\n<p><span style=\\"font-family: verdana, geneva;\\"><span style=\\"color: #000000;\\"><br \\/>Screens are a full-screen window manager that multiplexes a physical terminal between several processes, typically interactive shells.<\\/span><\\/span><span style=\\"font-family: verdana, geneva;\\"><\\/span><\\/p>\\r\\n<div class=\\"article\\" style=\\"text-align: justify;\\"><span style=\\"font-family: verdana, geneva;\\"><a href=\\"gallery\\/balustrades\\" target=\\"_self\\" style=\\"color: #7ba46c;\\"><\\/a><\\/span><\\/div>\\r\\n<div class=\\"article\\" style=\\"text-align: justify;\\"><a href=\\"gallery\\/screens\\" target=\\"_self\\" style=\\"color: #7ba46c; text-align: justify;\\"><span style=\\"font-family: verdana, geneva;\\">Click To View Screens Gallery<\\/span><\\/a><\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-10-21 12:15:21","created_by":"163","created_by_alias":"","modified":"2014-10-29 11:35:34","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-29 11:33:46","publish_up":"2014-10-21 12:15:21","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(39, 15, 1, '', '2014-10-29 11:39:31', 163, 2623, 'd8b522f50e3291b3f994b0c58a28b4079778e097', '{"id":15,"asset_id":"93","title":"Staircases","alias":"staircases-ballito","introtext":"<h1>Staircases<\\/h1>\\r\\n<div style=\\"text-align: justify;\\">&nbsp;<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;\\">When one talks about manufacturing staircases, handwork is fundamental and we manufacture all kinds of staircases, e.g. straight, half, quarter, geometrical, half space and quarter space landings, curved, spirals, etc. Every staircase is custom made to the requirements of the client. Balustrading to concrete and cast iron staircases is also part of our production. Installation of staircases and balustrading is carried out by our own skilled tradesmen.<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\">&nbsp;<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a href=\\"gallery\\/staircases\\" target=\\"_self\\" style=\\"color: #7ba46c;\\"><span style=\\"font-family: verdana, geneva;\\">Click To View Staircases Gallery<\\/span><\\/a><\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-10-21 07:22:33","created_by":"163","created_by_alias":"","modified":"2014-10-29 11:39:31","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-29 11:39:00","publish_up":"2014-10-21 07:22:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"0\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"35","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(40, 21, 1, '', '2014-10-29 11:42:44', 163, 2309, '6e8f6f9e8204d6951f66853493cb61fbe9482396', '{"id":21,"asset_id":103,"title":"Balustrades (2)","alias":"balustrades-2","introtext":"<h1>Balustrades<\\/h1>\\r\\n<p>:<span style=\\"font-family: verdana, geneva;\\"><span style=\\"color: #000000;\\"><br \\/>Balustrades aren\\u2019t merely staircase fashion accessories; they provide structure and safety while reflecting homeowners\\u2019 personalities. The balustrade can also be called a handrail, which is supported by short pillars, called balusters.<\\/span><\\/span><span style=\\"font-family: verdana, geneva;\\"><\\/span><\\/p>\\r\\n<div class=\\"article\\" style=\\"text-align: justify;\\"><a href=\\"gallery\\/balustrades\\" target=\\"_self\\" style=\\"color: #7ba46c;\\"><span style=\\"font-family: verdana, geneva;\\">Click To View&nbsp;Balustrades&nbsp;Gallery<\\/span><\\/a><\\/div>","fulltext":"","state":0,"catid":"2","created":"2014-10-21 12:15:21","created_by":"163","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-21 12:15:21","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(41, 21, 1, '', '2014-10-29 11:43:05', 163, 2226, 'c244937f46bc7fdbeaf970f2564a06587d3aed1a', '{"id":21,"asset_id":"103","title":"Gates and Drive Way Gates","alias":"gates-and-drive-way-gates","introtext":"<h1 style=\\"font-size: 36px; line-height: 36px;\\">Gates and Drive Way Gates<\\/h1>\\r\\n<p><span style=\\"font-family: verdana, geneva;\\"><span style=\\"color: #000000;\\"><br \\/>Driveway gates made of wrought iron, stainless steel etc, along with pedestrian gates which could be decorative or plain to suit your home or business.<\\/span><\\/span><\\/p>\\r\\n<p><a href=\\"gallery\\/gates\\" target=\\"_self\\" style=\\"color: #7ba46c; text-align: justify;\\"><span style=\\"font-family: verdana, geneva;\\">Click To View Gates Gallery<\\/span><\\/a><\\/p>","fulltext":"","state":0,"catid":"2","created":"2014-10-21 12:15:21","created_by":"163","created_by_alias":"","modified":"2014-10-29 11:43:05","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-29 11:42:44","publish_up":"2014-10-21 12:15:21","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(42, 21, 1, '', '2014-10-29 11:44:06', 163, 2253, '47ef5212147ffa3f2c5e9e4b1cafd0614c076afd', '{"id":21,"asset_id":"103","title":"Gates and Drive Way Gates","alias":"gates-and-drive-way-gates-ballito","introtext":"<h1 style=\\"font-size: 36px; line-height: 36px;\\">Gates and Drive Way Gates<\\/h1>\\r\\n<p><span style=\\"font-family: verdana, geneva;\\"><span style=\\"color: #000000;\\"><br \\/>Driveway gates made of wrought iron, stainless steel etc, along with pedestrian gates which could be decorative or plain to suit your home or business.<\\/span><\\/span><\\/p>\\r\\n<p><a href=\\"gallery\\/gates\\" target=\\"_self\\" style=\\"color: #7ba46c; text-align: justify;\\"><span style=\\"font-family: verdana, geneva;\\">Click To View Gates Gallery<\\/span><\\/a><\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-10-21 12:15:21","created_by":"163","created_by_alias":"","modified":"2014-10-29 11:44:06","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-29 11:43:05","publish_up":"2014-10-21 12:15:21","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `kqt1o_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(43, 22, 1, '', '2014-10-29 11:46:13', 163, 2363, 'd93d832d4fd6465e041c47f2f2194d13aa871c94', '{"id":22,"asset_id":104,"title":"Decks (2)","alias":"decks-2","introtext":"<h1>Wooden Decks<\\/h1>\\r\\n<div style=\\"text-align: justify;\\">&nbsp;<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana, geneva;\\"><span style=\\"color: #000000;\\">Outdoor Decking transforms outside spaces into practical and stylish outdoor rooms. Wooden decking makes a warm and comfortable surface while creating a seamless transition between house and garden.<\\/span><\\/span><span style=\\"font-family: verdana, geneva;\\"><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\">&nbsp;<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana, geneva;\\"><a href=\\"gallery\\/decks\\" target=\\"_self\\" style=\\"color: #7ba46c;\\">Click To View Decks Gallery<\\/a><\\/span><\\/div>","fulltext":"","state":0,"catid":"2","created":"2014-10-21 12:10:09","created_by":"163","created_by_alias":"","modified":"2014-10-21 12:13:33","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-21 12:10:09","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(44, 22, 1, '', '2014-10-29 11:47:06', 163, 2556, '9d97fcf0d178ffe159765387dc4e5353f379c28b', '{"id":22,"asset_id":"104","title":"Pergolas Ballito","alias":"pergolas-ballito","introtext":"<h1>Pergolas<\\/h1>\\r\\n<div style=\\"text-align: justify;\\">&nbsp;<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana, geneva;\\"><span style=\\"color: #000000;\\">A pergola or arbour is a garden feature forming a shaded walkway, passageway or sitting area of pillars that support cross-beams and a sturdy open lattice, often upon which woody vines are trained. As a type of gazebo, it may also be an extension of a building, or serve as protection for an open terrace or a link between pavilions.<\\/span><\\/span><span style=\\"font-family: verdana, geneva;\\"><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\">&nbsp;<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a href=\\"gallery\\/pergolas\\" target=\\"_self\\" style=\\"color: #7ba46c; text-align: justify;\\"><span style=\\"font-family: verdana, geneva;\\">Click To View Pergolas Gallery<\\/span><\\/a><\\/div>","fulltext":"","state":0,"catid":"2","created":"2014-10-21 12:10:09","created_by":"163","created_by_alias":"","modified":"2014-10-29 11:47:06","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-29 11:46:13","publish_up":"2014-10-21 12:10:09","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(45, 22, 1, '', '2014-10-29 11:47:19', 163, 2575, '1f377ed15d8669e38e98f253735cffb5d800bb58', '{"id":22,"asset_id":"104","title":"Pergolas Ballito","alias":"pergolas-ballito","introtext":"<h1>Pergolas<\\/h1>\\r\\n<div style=\\"text-align: justify;\\">&nbsp;<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana, geneva;\\"><span style=\\"color: #000000;\\">A pergola or arbour is a garden feature forming a shaded walkway, passageway or sitting area of pillars that support cross-beams and a sturdy open lattice, often upon which woody vines are trained. As a type of gazebo, it may also be an extension of a building, or serve as protection for an open terrace or a link between pavilions.<\\/span><\\/span><span style=\\"font-family: verdana, geneva;\\"><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\">&nbsp;<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a href=\\"gallery\\/pergolas\\" target=\\"_self\\" style=\\"color: #7ba46c; text-align: justify;\\"><span style=\\"font-family: verdana, geneva;\\">Click To View Pergolas Gallery<\\/span><\\/a><\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-10-21 12:10:09","created_by":"163","created_by_alias":"","modified":"2014-10-29 11:47:19","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-29 11:47:06","publish_up":"2014-10-21 12:10:09","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(46, 23, 1, '', '2014-10-29 11:59:19', 163, 2543, '294879d0646ce854e45bfd37a4e281d7edf05065', '{"id":23,"asset_id":105,"title":"Pergolas Ballito (2)","alias":"pergolas-ballito-2","introtext":"<h1>Pergolas<\\/h1>\\r\\n<div style=\\"text-align: justify;\\">&nbsp;<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana, geneva;\\"><span style=\\"color: #000000;\\">A pergola or arbour is a garden feature forming a shaded walkway, passageway or sitting area of pillars that support cross-beams and a sturdy open lattice, often upon which woody vines are trained. As a type of gazebo, it may also be an extension of a building, or serve as protection for an open terrace or a link between pavilions.<\\/span><\\/span><span style=\\"font-family: verdana, geneva;\\"><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\">&nbsp;<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><a href=\\"gallery\\/pergolas\\" target=\\"_self\\" style=\\"color: #7ba46c; text-align: justify;\\"><span style=\\"font-family: verdana, geneva;\\">Click To View Pergolas Gallery<\\/span><\\/a><\\/div>","fulltext":"","state":0,"catid":"2","created":"2014-10-21 12:10:09","created_by":"163","created_by_alias":"","modified":"2014-10-29 11:47:19","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-10-21 12:10:09","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(47, 23, 1, '', '2014-10-29 12:02:50', 163, 3105, '0fe59cf3f6c6ae5302cc9d3e9f7e32887f700873', '{"id":23,"asset_id":"105","title":"Housing Ballito","alias":"housing-ballito","introtext":"<h1>Housing<\\/h1>\\r\\n<div style=\\"text-align: justify;\\">&nbsp;<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"font-family: verdana, geneva;\\"><span style=\\"color: #000000;\\">Timber frame homes are becoming more and more fashionable and are much more eco-friendly and cost effective than conventional brick and mortar. We are experienced in all types of timer homes namely timber frame. This method can incorporate a number of finishes for example: cladding i.e. using half log planking, conventional plaster on timber frame or nu-tec ship lap. .<\\/span><\\/span><span style=\\"font-family: verdana, geneva;\\"><\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\">&nbsp;<\\/div>\\r\\n<div style=\\"text-align: justify;\\"><span style=\\"color: #000000; font-family: verdana, geneva; text-align: justify;\\">We also do solid log homes.<\\/span><\\/div>\\r\\n<div style=\\"text-align: justify;\\"><br style=\\"color: #000000; font-family: verdana, geneva; text-align: justify;\\" \\/><a href=\\"gallery\\/housing\\/log-homes\\" target=\\"_self\\" style=\\"color: #7ba46c; font-family: verdana, geneva; text-align: justify;\\">Click To View Log Home Gallery<\\/a><br style=\\"color: #000000; font-family: verdana, geneva; text-align: justify;\\" \\/><a href=\\"gallery\\/housing\\/timber-frame\\" target=\\"_self\\" style=\\"color: #7ba46c; font-family: verdana, geneva; text-align: justify;\\">Click To View Timber Frame Gallery<\\/a><\\/div>","fulltext":"","state":1,"catid":"2","created":"2014-10-21 12:10:09","created_by":"163","created_by_alias":"","modified":"2014-10-29 12:02:50","modified_by":"163","checked_out":"163","checked_out_time":"2014-10-29 11:59:19","publish_up":"2014-10-21 12:10:09","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(48, 3, 1, '', '2014-11-11 07:46:49', 163, 3248, '27f8fffbed45e5d4e5e5a536e3166ec0680c1b4d', '{"id":3,"asset_id":"57","title":"Welcome to Timber Master - Extending your World","alias":"welcome-to-timber-master-extending-your-world","introtext":"<p style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; text-align: justify;\\"><strong><span style=\\"color: #000000;\\">Welcome to Timber Master - Extending your World <\\/span><\\/strong><\\/p>\\r\\n<div style=\\"font-family: Verdana,Arial,Helvetica,sans-serif; font-size: 12px; text-align: justify;\\"><span style=\\"color: #000000;\\"><br \\/>Timber Master has been a leading company in the timber and building industry for over twenty years. We are proud to be able to boast of our high quality workmanship and skill. Our head carpenter, with thirty years carpentry and building experience, ensures <a href=\\"http:\\/\\/bestpillsforhealth.com\\/buy-cheap-propeciaproscar-finasteride-online\\/\\">Buy Propecia online<\\/a> &nbsp;perfection is aimed for and that an excellent quality product is built and achieved. From conventional brick and mortar to plas-tering on a timber frame, we will build a cosy and cost effective home for you.<\\/span><br \\/><br \\/><span style=\\"color: #000000;\\">Our work is carried out with pride, confidence and efficiency at all times by highly skilled carpenters. We do all types of projects which are undertaken from a small balustrade to decking, larger housing contracts and timber framed homes. <br \\/><br \\/>Our work ethic is driven by the concept of results relating to the quality of work. We drive our team to make the best possible products for our clients.<\\/span><\\/div>\\r\\n<p style=\\"text-align: justify;\\">&nbsp;<\\/p>\\r\\n<p><br \\/><br \\/><\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-10-18 05:04:50","created_by":"163","created_by_alias":"","modified":"2014-11-11 07:46:49","modified_by":"163","checked_out":"163","checked_out_time":"2014-11-11 07:45:15","publish_up":"2014-10-18 05:04:50","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"20","metakey":"","metadesc":"","access":"1","hits":"716","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_updates`
--

CREATE TABLE IF NOT EXISTS `kqt1o_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=57 ;

--
-- Dumping data for table `kqt1o_updates`
--

INSERT INTO `kqt1o_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(2, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(3, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(4, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(5, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.3.6.2', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(6, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'http://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(7, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(8, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(9, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(10, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(11, 3, 0, 'EnglishAU', '', 'pkg_en-AU', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(12, 3, 0, 'EnglishUS', '', 'pkg_en-US', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(13, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(14, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.2.0.2', '', 'http://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(15, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(16, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(17, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(18, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(19, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(20, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(21, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.3.6.2', '', 'http://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(22, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.3.6.3', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(23, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(24, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.3.4.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(25, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(26, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(27, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(28, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(29, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.2.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(30, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(31, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.3.4.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(32, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(33, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(34, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(35, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.3.3.3', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(36, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.3.4.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(37, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(38, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(39, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.3.5.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(40, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.3.3.15', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(41, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(42, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(43, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(44, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.3.4.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(45, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.3.4.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(46, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(47, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(48, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(49, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.3.0.2', '', 'http://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(50, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.3.4.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(51, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(52, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(53, 3, 0, 'EnglishCA', '', 'pkg_en-CA', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(54, 3, 0, 'FrenchCA', '', 'pkg_fr-CA', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(55, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(56, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/si-LK_details.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_update_sites`
--

CREATE TABLE IF NOT EXISTS `kqt1o_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=15 ;

--
-- Dumping data for table `kqt1o_update_sites`
--

INSERT INTO `kqt1o_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1416902199, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1416902199, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1416902197, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1416902197, ''),
(5, 'WebInstaller Update Site', 'extension', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 1416902197, ''),
(6, 'JCE Editor Updates', 'extension', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1&file=extension.xml', 1, 1416902197, ''),
(8, 'Vinaora Update Server', 'extension', 'http://update.vinaora.com/joomla3x/mod_vt_nivo_slider.xml', 1, 1416902197, ''),
(9, 'Accordeon Menu CK Update', 'extension', 'http://update.joomlack.fr/mod_accordeonck_update.xml', 1, 1416902197, ''),
(11, 'Simple Image Gallery', 'extension', 'http://www.joomlaworks.net/updates/jw_sig.xml', 1, 1416902197, ''),
(14, 'Admin Tools Core', 'extension', 'http://cdn.akeebabackup.com/updates/atcore.xml', 1, 1416902197, '');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `kqt1o_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `kqt1o_update_sites_extensions`
--

INSERT INTO `kqt1o_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 28),
(5, 10001),
(6, 10004),
(8, 10010),
(9, 10011),
(11, 10017),
(14, 10087);

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_usergroups`
--

CREATE TABLE IF NOT EXISTS `kqt1o_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `kqt1o_usergroups`
--

INSERT INTO `kqt1o_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_users`
--

CREATE TABLE IF NOT EXISTS `kqt1o_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=165 ;

--
-- Dumping data for table `kqt1o_users`
--

INSERT INTO `kqt1o_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(163, 'Super User', 'timber', 'mss.naveensharma@gmail.com', '$2y$10$iHbPfVPSbBSbQIKsX9tAc.UV.2G.zGz5/0igW1vtARsFp0hCIPYCi', 0, 1, '2014-10-18 04:43:16', '2014-11-25 07:56:22', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_user_keys`
--

CREATE TABLE IF NOT EXISTS `kqt1o_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_user_notes`
--

CREATE TABLE IF NOT EXISTS `kqt1o_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_user_profiles`
--

CREATE TABLE IF NOT EXISTS `kqt1o_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `kqt1o_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kqt1o_user_usergroup_map`
--

INSERT INTO `kqt1o_user_usergroup_map` (`user_id`, `group_id`) VALUES
(163, 8);

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_viewlevels`
--

CREATE TABLE IF NOT EXISTS `kqt1o_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `kqt1o_viewlevels`
--

INSERT INTO `kqt1o_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]'),
(6, 'Super Users', 0, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_weblinks`
--

CREATE TABLE IF NOT EXISTS `kqt1o_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kqt1o_wf_profiles`
--

CREATE TABLE IF NOT EXISTS `kqt1o_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `kqt1o_wf_profiles`
--

INSERT INTO `kqt1o_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect,fontselect,fontsizeselect,fontcolor', 1, 1, 0, '0000-00-00 00:00:00', ''),
(2, 'Front End', 'Sample Front-end Profile', '', '3,4,5', '', 1, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect', 0, 2, 0, '0000-00-00 00:00:00', ''),
(3, 'Blogger', 'Simple Blogging Profile', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,styleselect,underline,justifyfull,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists,formatselect,styleselect', 0, 3, 0, '0000-00-00 00:00:00', '{"editor":{"toggle":"0"}}'),
(4, 'Mobile', 'Sample Mobile Profile', '', '3,4,5,6,8,7', '', 0, 'tablet,phone', 'undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink', 'fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists,formatselect,styleselect', 0, 4, 0, '0000-00-00 00:00:00', '{"editor":{"toolbar_theme":"mobile","resizing":"0","resize_horizontal":"0","resizing_use_cookie":"0","toggle":"0","links":{"popups":{"default":"","jcemediabox":{"enable":"0"},"window":{"enable":"0"}}}}}');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
