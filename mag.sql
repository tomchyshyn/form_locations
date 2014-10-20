-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.33-MariaDB - openSUSE package
-- Server OS:                    Linux
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table mag.adminnotification_inbox
DROP TABLE IF EXISTS `adminnotification_inbox`;
CREATE TABLE IF NOT EXISTS `adminnotification_inbox` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Notification id',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed',
  PRIMARY KEY (`notification_id`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox';

-- Dumping data for table mag.adminnotification_inbox: ~91 rows (approximately)
/*!40000 ALTER TABLE `adminnotification_inbox` DISABLE KEYS */;
INSERT INTO `adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
	(1, 4, '2008-07-25 05:24:40', 'Magento 1.1 Production Version Now Available', 'We are thrilled to announce the availability of the production release of Magento 1.1. Read more about the release in the Magento Blog.', 'http://www.magentocommerce.com/blog/comments/magento-11-is-here-1/', 0, 0),
	(2, 4, '2008-08-02 05:30:16', 'Updated iPhone Theme is now available', 'Updated iPhone theme for Magento 1.1 is now available on Magento Connect and for upgrade through your Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/updated-iphone-theme-for-magento-11-is-now-available/', 0, 0),
	(3, 3, '2008-08-02 05:40:27', 'Magento version 1.1.2 is now available', 'Magento version 1.1.2 is now available for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-version-112-is-now-available/', 0, 0),
	(4, 3, '2008-08-13 21:51:46', 'Magento version 1.1.3 is now available', 'Magento version 1.1.3 is now available', 'http://www.magentocommerce.com/blog/comments/magento-version-113-is-now-available/', 0, 0),
	(5, 1, '2008-09-03 01:10:31', 'Magento Version 1.1.4 Security Update Now Available', 'Magento 1.1.4 Security Update Now Available. If you are using Magento version 1.1.x, we highly recommend upgrading to this version as soon as possible.', 'http://www.magentocommerce.com/blog/comments/magento-version-114-security-update/', 0, 0),
	(6, 3, '2008-09-16 02:09:54', 'Magento version 1.1.5 Now Available', 'Magento version 1.1.5 Now Available.\n\nThis release includes many bug fixes, a new category manager and a new skin for the default Magento theme.', 'http://www.magentocommerce.com/blog/comments/magento-version-115-now-available/', 0, 0),
	(7, 3, '2008-09-18 00:18:35', 'Magento version 1.1.6 Now Available', 'Magento version 1.1.6 Now Available.\n\nThis version includes bug fixes for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-116-now-available/', 0, 0),
	(8, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
	(9, 3, '2008-11-20 06:31:12', 'Magento version 1.1.7 Now Available', 'Magento version 1.1.7 Now Available.\n\nThis version includes over 350 issue resolutions for Magento 1.1.x that are listed in the release notes section, and new functionality that includes:\n\n-Google Website Optimizer integration\n-Google Base integration\n-Scheduled DB logs cleaning option', 'http://www.magentocommerce.com/blog/comments/magento-version-117-now-available/', 0, 0),
	(10, 3, '2008-11-27 02:24:50', 'Magento Version 1.1.8 Now Available', 'Magento version 1.1.8 now available.\n\nThis version includes some issue resolutions for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-118-now-available/', 0, 0),
	(11, 3, '2008-12-30 12:45:59', 'Magento version 1.2.0 is now available for download and upgrade', 'We are extremely happy to announce the availability of Magento version 1.2.0 for download and upgrade.\n\nThis version includes numerous issue resolutions for Magento version 1.1.x and some highly requested new features such as:\n\n    * Support for Downloadable/Digital Products. \n    * Added Layered Navigation to site search result page.\n    * Improved site search to utilize MySQL fulltext search\n    * Added support for fixed-taxes on product level.\n    * Upgraded Zend Framework to the latest stable version 1.7.2', 'http://www.magentocommerce.com/blog/comments/magento-version-120-is-now-available/', 0, 0),
	(12, 2, '2008-12-31 02:59:22', 'Magento version 1.2.0.1 now available', 'Magento version 1.2.0.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1201-available/', 0, 0),
	(13, 2, '2009-01-13 01:41:49', 'Magento version 1.2.0.2 now available', 'Magento version 1.2.0.2 is now available for download and upgrade. This version includes an issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1202-now-available/', 0, 0),
	(14, 3, '2009-01-24 05:25:56', 'Magento version 1.2.0.3 now available', 'Magento version 1.2.0.3 is now available for download and upgrade. This version includes issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1203-now-available/', 0, 0),
	(15, 3, '2009-02-03 02:57:00', 'Magento version 1.2.1 is now available for download and upgrade', 'We are happy to announce the availability of Magento version 1.2.1 for download and upgrade.\n\nThis version includes some issue resolutions for Magento version 1.2.x. A full list of items included in this release can be found on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-121-now-available/', 0, 0),
	(16, 3, '2009-02-24 05:45:47', 'Magento version 1.2.1.1 now available', 'Magento version 1.2.1.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1211-now-available/', 0, 0),
	(17, 3, '2009-02-27 06:39:24', 'CSRF Attack Prevention', 'We have just posted a blog entry about a hypothetical CSRF attack on a Magento admin panel. Please read the post to find out if your Magento installation is at risk at http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 'http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 0, 0),
	(18, 2, '2009-03-04 04:03:58', 'Magento version 1.2.1.2 now available', 'Magento version 1.2.1.2 is now available for download and upgrade.\nThis version includes some updates to improve admin security as described in the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-1212-now-available/', 0, 0),
	(19, 3, '2009-03-31 06:22:40', 'Magento version 1.3.0 now available', 'Magento version 1.3.0 is now available for download and upgrade. This version includes numerous issue resolutions for Magento version 1.2.x and new features as described on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-130-is-now-available/', 0, 0),
	(20, 3, '2009-04-18 08:06:02', 'Magento version 1.3.1 now available', 'Magento version 1.3.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and new features such as Checkout By Amazon and Amazon Flexible Payment. To see a full list of updates please check the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-131-now-available/', 0, 0),
	(21, 3, '2009-05-20 02:31:21', 'Magento version 1.3.1.1 now available', 'Magento version 1.3.1.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and a security update for Magento installations that run on multiple domains or sub-domains. If you are running Magento with multiple domains or sub-domains we highly recommend upgrading to this version.', 'http://www.magentocommerce.com/blog/comments/magento-version-1311-now-available/', 0, 0),
	(22, 3, '2009-05-30 02:54:06', 'Magento version 1.3.2 now available', 'This version includes some improvements and issue resolutions for version 1.3.x that are listed on the release notes page. also included is a Beta version of the Compile module.', 'http://www.magentocommerce.com/blog/comments/magento-version-132-now-available/', 0, 0),
	(23, 3, '2009-06-01 23:32:52', 'Magento version 1.3.2.1 now available', 'Magento version 1.3.2.1 now available for download and upgrade.\n\nThis release solves an issue for users running Magento with PHP 5.2.0, and changes to index.php to support the new Compiler Module.', 'http://www.magentocommerce.com/blog/comments/magento-version-1321-now-available/', 0, 0),
	(24, 3, '2009-07-02 05:21:44', 'Magento version 1.3.2.2 now available', 'Magento version 1.3.2.2 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1322-now-available/', 0, 0),
	(25, 3, '2009-07-23 10:48:54', 'Magento version 1.3.2.3 now available', 'Magento version 1.3.2.3 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. We recommend to upgrade to this version if PayPal payment modules are in use. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1323-now-available/', 0, 0),
	(26, 4, '2009-08-28 22:26:28', 'PayPal is updating Payflow Pro and Website Payments Pro (Payflow Edition) UK.', 'If you are using Payflow Pro and/or Website Payments Pro (Payflow Edition) UK.  payment methods, you will need to update the URLâ€˜s in your Magento Administrator Panel in order to process transactions after September 1, 2009. Full details are available here: http://www.magentocommerce.com/wiki/paypal_payflow_changes', 'http://www.magentocommerce.com/wiki/paypal_payflow_changes', 0, 0),
	(27, 2, '2009-09-24 00:16:49', 'Magento Version 1.3.2.4 Security Update', 'Magento Version 1.3.2.4 is now available. This version includes a security updates for Magento 1.3.x that solves possible XSS vulnerability issue on customer registration page and is available through SVN, Download Page and through the Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-version-1324-security-update/', 0, 0),
	(28, 4, '2009-09-25 18:57:54', 'Magento Preview Version 1.4.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha2-now-available/', 0, 0),
	(29, 4, '2009-10-07 04:55:40', 'Magento Preview Version 1.4.0.0-alpha3 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha3 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha3-now-available/', 0, 0),
	(30, 4, '2009-12-09 04:30:36', 'Magento Preview Version 1.4.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-beta1-now-available/', 0, 0),
	(31, 4, '2009-12-31 14:22:12', 'Magento Preview Version 1.4.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-rc1-now-available/', 0, 0),
	(32, 4, '2010-02-13 08:39:53', 'Magento CE Version 1.4.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.0.0 Stable for upgrade and download.', 'http://bit.ly/c53rpK', 0, 0),
	(33, 3, '2010-02-20 07:39:36', 'Magento CE Version 1.4.0.1 Stable is now available', 'Magento CE 1.4.0.1 Stable is now available for upgrade and download.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1401-stable-now-available/', 0, 0),
	(34, 4, '2010-04-24 00:09:03', 'Magento Version CE 1.3.3.0 Stable - Now Available With Support for 3-D Secure', 'Based on community requests, we are excited to announce the release of Magento CE 1.3.3.0-Stable with support for 3-D Secure. This release is intended for Magento merchants using version 1.3.x, who want to add support for 3-D Secure.', 'http://www.magentocommerce.com/blog/comments/magento-version-ce-1330-stable-now-available-with-support-for-3-d-secure/', 0, 0),
	(35, 4, '2010-05-31 21:20:21', 'Announcing the Launch of Magento Mobile', 'The Magento team is pleased to announce the launch of Magento mobile, a new product that will allow Magento merchants to easily create branded, native mobile storefront applications that are deeply integrated with Magentoâ€™s market-leading eCommerce platform. The product includes a new administrative manager, a native iPhone app that is fully customizable, and a service where Magento manages the submission and maintenance process for the iTunes App Store.\n\nLearn more by visiting the Magento mobile product page and sign-up to be the first to launch a native mobile commerce app, fully integrated with Magento.', 'http://www.magentocommerce.com/product/mobile', 0, 0),
	(36, 4, '2010-06-11 00:08:08', 'Magento CE Version 1.4.1.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.0 Stable for upgrade and download. Some of the highlights of this release include: Enhanced PayPal integration (more info to follow), Change of Database structure of the Sales module to no longer use EAV, and much more.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1410-stable-now-available/', 0, 0),
	(37, 4, '2010-07-27 01:37:34', 'Magento CE Version 1.4.1.1 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-now-available/', 0, 0),
	(38, 4, '2010-07-28 09:12:12', 'Magento CE Version 1.4.2.0-beta1 Preview Release Now Available', 'This release gives a preview of the new Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-beta1-now-available/', 0, 0),
	(39, 4, '2010-07-29 00:15:01', 'Magento CE Version 1.4.1.1 Patch Available', 'As some users experienced issues with upgrading to CE 1.4.1.1 through PEAR channels we provided a patch for it that is available on our blog http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 0, 0),
	(40, 4, '2010-10-12 04:13:25', 'Magento Mobile is now live!', 'Magento Mobile is now live! Signup today to have your own native iPhone mobile-shopping app in iTunes for the holiday season! Learn more at http://www.magentomobile.com/', 'http://www.magentomobile.com/', 0, 0),
	(41, 4, '2010-11-09 02:52:06', 'Magento CE Version 1.4.2.0-RC1 Preview Release Now Available', 'We are happy to announce the availability of Magento Preview Version 1.4.2.0-RC1 for download.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-rc1-now-available/', 0, 0),
	(42, 4, '2010-12-03 01:33:00', 'Magento CE Version 1.4.2.0-RC2 Preview Release Now Available', 'We are happy to announce the availability of Magento Preview Version 1.4.2.0-RC2 for download.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-rc2-now-available/', 0, 0),
	(43, 4, '2010-12-09 03:29:55', 'Magento CE Version 1.4.2.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.2.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1420-stable-now-available/', 0, 0),
	(44, 4, '2010-12-18 04:23:55', 'Magento Preview Version CE 1.5.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-alpha1-now-available/', 0, 0),
	(45, 4, '2010-12-30 04:51:08', 'Magento Preview Version CE 1.5.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-alpha2-now-available/', 0, 0),
	(46, 4, '2011-01-14 05:35:36', 'Magento Preview Version CE 1.5.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-beta1-now-available/', 0, 0),
	(47, 4, '2011-01-22 02:19:09', 'Magento Preview Version CE 1.5.0.0-beta2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-beta2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-beta2-now-available/', 0, 0),
	(48, 4, '2011-01-28 02:27:57', 'Magento Preview Version CE 1.5.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-rc1-now-available/', 0, 0),
	(49, 4, '2011-02-04 02:56:33', 'Magento Preview Version CE 1.5.0.0-rc2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-rc2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-rc2-now-available/', 0, 0),
	(50, 4, '2011-02-09 00:43:23', 'Magento CE Version 1.5.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.5.0.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-community-professional-and-enterprise-editions-releases-now-availab/', 0, 0),
	(51, 4, '2011-02-10 04:42:57', 'Magento CE 1.5.0.1 stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.5.0.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-1501-stable-now-available/', 0, 0),
	(52, 4, '2011-03-19 00:15:45', 'Magento CE 1.5.1.0-beta1 Now Available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.1.0-beta1 for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1510-beta1-now-available/', 0, 0),
	(53, 4, '2011-03-31 22:43:02', 'Magento CE 1.5.1.0-rc1 Now Available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.1.0-rc1 for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1510-rc1-now-available/', 0, 0),
	(54, 4, '2011-04-26 23:21:07', 'Magento CE 1.5.1.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.5.1.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1510-stable-now-available/', 0, 0),
	(55, 4, '2011-05-26 23:33:23', 'Magento Preview Version CE 1.6.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-alpha1-now-available/', 0, 0),
	(56, 4, '2011-06-15 22:12:08', 'Magento Preview Version CE 1.6.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-beta1for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-beta1-now-available/', 0, 0),
	(57, 4, '2011-06-30 23:03:58', 'Magento Preview Version CE 1.6.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-rc1-now-available/', 0, 0),
	(58, 4, '2011-07-11 23:07:39', 'Magento Preview Version CE 1.6.0.0-rc2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-rc2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-rc2-now-available/', 0, 0),
	(59, 4, '2011-08-19 21:58:31', 'Magento CE 1.6.0.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.0.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1600-stable-now-available/', 0, 0),
	(60, 4, '2011-09-17 05:31:26', 'Magento Preview Version CE 1.6.1.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.1.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1610-beta1-now-available/', 0, 0),
	(61, 4, '2011-09-29 19:44:10', 'Magento Preview Version CE 1.6.1.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.1.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1610-rc1-now-available/', 0, 0),
	(62, 4, '2011-10-19 21:50:05', 'Magento CE 1.6.1.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.1.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1610-stable-now-available/', 0, 0),
	(63, 4, '2011-12-30 22:39:35', 'Magento Preview Version CE 1.7.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-alpha1-now-available/', 0, 0),
	(64, 4, '2012-01-11 22:24:20', 'Magento CE 1.6.2.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.2.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1620-stable-now-available/', 0, 0),
	(65, 4, '2012-03-03 00:54:12', 'Magento Preview Version CE 1.7.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-beta1-now-available/', 0, 0),
	(66, 4, '2012-04-23 14:02:40', 'Magento Community Preview Version CE 1.7.0.0-RC1 has been released!', 'Learn more about the exciting new features and updates in this release and how you can take it for a test drive. As this is a preview version, we need to stress that it\'s likely unstable and that we DON\'T recommend that you use it in any production environment just yet.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-rc1-now-available/', 0, 0),
	(67, 4, '2012-05-11 09:46:54', 'Magento Community 1.7 and Magento Enterprise 1.12 now available!', 'Learn more about the exciting new features and updates in these releases.', 'http://www.magentocommerce.com/blog/comments/magento-enterprise-112-and-community-17-now-available/', 0, 0),
	(68, 4, '2012-06-20 18:54:07', 'Magento Community Edition 1.7.0.1 now available! ', 'We have just released an updated version of Magento Community Edition, version 1.7.0.1. This update delivers new, minor functionality and fixes for some potential security vulnerabilities.', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-1701-released/', 0, 0),
	(69, 4, '2012-07-05 19:21:43', 'Important Security Update - Zend Platform Vulnerability', 'We have recently learned of a serious vulnerability in the Zend platform on which Magento is built. Learn more and access a patch that addresses this issue. ', 'http://www.magentocommerce.com/blog/comments/important-security-update-zend-platform-vulnerability/', 0, 0),
	(70, 4, '2012-11-19 20:27:42', 'Wrap up more holiday sales with financing', 'Give your customers up to 6 months financing. You get paid right away with Bill Me Later, a PayPal service. It’s a great way to extend financing in time for the holidays. Learn More.', 'http://www.magentocommerce.com/paypal/billmelater?utm_source=CEMessaging&utm_medium=copy&utm_content=sixmonths&utm_campaign=BML', 0, 0),
	(71, 4, '2012-12-07 11:22:30', 'Increase Your Sales With PayPal', 'Magento merchants using PayPal Express Checkout can help increase their sales on average 18%. It is one simple thing you can do right now to help boost your sales. Learn more.', 'http://www.magentocommerce.com/add-paypal?utm_source=CEModule&utm_medium=copy&utm_content=18&utm_campaign=choosepaypal', 0, 0),
	(72, 4, '2013-01-15 22:02:07', 'Imagine 2013 Registration is Now Open!', 'Join 1500 merchants, partners, developers and enthusiasts from 35+ countries around the world for Magento’s premier global conference! Collaborate, learn, network and get inspired by the future of eCommerce. Tickets will sell out fast! April 8th – 10th in Las Vegas.', 'https://registration.imagineecommerce.com/', 0, 0),
	(73, 4, '2013-02-12 17:53:42', 'Get More eCommerce Power with Magento Enterprise', 'Limited time offer: Get a free, customized evaluation of your Community Edition site from a Magento Solution Partner. This evaluation gives you a clear look at the numerous benefits you can achieve by upgrading to Enterprise Edition. ', 'http://www.magentocommerce.com/community-to-enterprise?utm_source=CEMM&utm_medium=copy&utm_campaign=CE2EE', 0, 0),
	(74, 2, '2013-09-27 17:28:13', 'Magento Community Edition 1.8.0.0 - now available for download!', 'Get tax, security, performance, and many other improvements. \n\nLearn more at http://www.magentocommerce.com/blog/comments/magento-community-edition-one-eight-now-available/ ', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-one-eight-now-available/', 0, 0),
	(75, 4, '2013-12-11 15:35:06', 'Magento Community Edition 1.8.1.0 is here!', 'This new version offers significant tax calculation, product quality, and security enhancements. Be sure to carefully review the upgrade instructions before starting. More information is available at http://www.magentocommerce.com/blog/comments/magento-community-edition-1810-is-here/', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-1810-is-here/', 0, 0),
	(76, 4, '2013-12-12 23:24:39', 'Important Magento Community Edition Patch', 'A security patch is available for Magento Community Edition 1.4.0.0 through 1.7.0.2; the issue has been fixed in Magento Community Edition 1.8.0.0 and later. It resolves a vulnerability discovered through our quarterly penetration testing process and has not been reported by merchants. We encourage all merchants to apply the patch in their next regularly scheduled maintenance cycle. The patch is available at http://www.magentocommerce.com/download in the Magento Community Edition Patches section.', 'http://www.magentocommerce.com/download', 0, 0),
	(77, 4, '2014-01-21 18:34:48', 'PHP 5.4 Patch Now Available', 'Magento is advancing its platform and making development more efficient by adding support for PHP 5.4. Patches are available for download at www.magentocommerce.com/download and you can learn more about this update in our blog post at http://www.magentocommerce.com/blog/comments/magento-now-supports-php-54 .', 'http://www.magentocommerce.com/blog/comments/magento-now-supports-php-54', 0, 0),
	(78, 4, '2014-02-20 17:51:46', 'Discover Card Validation Patch Available', 'A patch that resolves an issue with validating Discover credit cards is now available for download at http://www.magentocommerce.com/download. More information on the patch is available in the Magento Knowledge Base at http://www.magentocommerce.com/knowledge-base/entry/discover-card-validation', 'http://www.magentocommerce.com/knowledge-base/entry/discover-card-validation ', 0, 0),
	(79, 4, '2014-03-04 15:12:26', 'Learn How to Quickly Increase Sales on Your Site', 'Adding the PayPal Express Checkout button to your checkout page can help increase sales 18% on average. It’s fast and easy and you can do it right now to boost sales. Express Checkout is already seamlessly integrated into Community Edition.', 'http://magento.com/paypal/CE_Express_Checkout_NA?utm_source=messagemodule&utm_medium=message&utm_campaign=Ceexpresscheckout', 0, 0),
	(80, 4, '2014-05-13 16:46:11', 'Magento Community Edition 1.9 is now available!', 'It accelerates your entry into the mobile commerce space by slashing the time and cost of getting a mobile device-friendly responsive site.  And a new Bill Me Later payment option helps boost your sales. Visit http://magento.com/blog/magento-news/magento-enables-responsive-sites-half-time to learn more.', 'http://magento.com/blog/magento-news/magento-enables-responsive-sites-half-time', 0, 0),
	(81, 4, '2014-10-08 04:55:06', 'It’s still not too late: Boost your 2014 Holiday sales today.', 'See results in as little as one week with eBay Enterprise Display and 2 business days with eBay Enterprise Affiliate. DID YOU KNOW: Get access to over 128 million highly qualified shoppers on eBay.com with eBay Enterprise Display. And the average retail client using product retargeting sees a $10 to $1 ROI on retargeting spend during Q4. With the eBay Enterprise Affiliate Network, get access to over 200,000 active network publishers across 30+ verticals, and only pay when a customer makes a purchase (Affiliate Network is only available in the U.S. & Canada).  GET STARTED TODAY by visiting www.ebayenterprise.com/turbochargesales', 'http://www.ebayenterprise.com/turbochargesales', 0, 0),
	(82, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
	(83, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
	(84, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
	(85, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
	(86, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
	(87, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
	(88, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
	(89, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
	(90, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
	(91, 4, '2008-11-08 04:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0);
/*!40000 ALTER TABLE `adminnotification_inbox` ENABLE KEYS */;


-- Dumping structure for table mag.admin_assert
DROP TABLE IF EXISTS `admin_assert`;
CREATE TABLE IF NOT EXISTS `admin_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert ID',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert Type',
  `assert_data` text COMMENT 'Assert Data',
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Assert Table';

-- Dumping data for table mag.admin_assert: ~0 rows (approximately)
/*!40000 ALTER TABLE `admin_assert` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_assert` ENABLE KEYS */;


-- Dumping structure for table mag.admin_role
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE IF NOT EXISTS `admin_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name',
  PRIMARY KEY (`role_id`),
  KEY `IDX_ADMIN_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `IDX_ADMIN_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Admin Role Table';

-- Dumping data for table mag.admin_role: ~2 rows (approximately)
/*!40000 ALTER TABLE `admin_role` DISABLE KEYS */;
INSERT INTO `admin_role` (`role_id`, `parent_id`, `tree_level`, `sort_order`, `role_type`, `user_id`, `role_name`) VALUES
	(1, 0, 1, 1, 'G', 0, 'Administrators'),
	(2, 1, 2, 0, 'U', 1, 'first');
/*!40000 ALTER TABLE `admin_role` ENABLE KEYS */;


-- Dumping structure for table mag.admin_rule
DROP TABLE IF EXISTS `admin_rule`;
CREATE TABLE IF NOT EXISTS `admin_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert ID',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role Type',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_ADMIN_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `IDX_ADMIN_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`),
  CONSTRAINT `FK_ADMIN_RULE_ROLE_ID_ADMIN_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table';

-- Dumping data for table mag.admin_rule: ~1 rows (approximately)
/*!40000 ALTER TABLE `admin_rule` DISABLE KEYS */;
INSERT INTO `admin_rule` (`rule_id`, `role_id`, `resource_id`, `privileges`, `assert_id`, `role_type`, `permission`) VALUES
	(1, 1, 'all', NULL, 0, 'G', 'allow');
/*!40000 ALTER TABLE `admin_rule` ENABLE KEYS */;


-- Dumping structure for table mag.admin_user
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE IF NOT EXISTS `admin_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(100) DEFAULT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User Created Time',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UNQ_ADMIN_USER_USERNAME` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Admin User Table';

-- Dumping data for table mag.admin_user: ~1 rows (approximately)
/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;
INSERT INTO `admin_user` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`, `created`, `modified`, `logdate`, `lognum`, `reload_acl_flag`, `is_active`, `extra`, `rp_token`, `rp_token_created_at`) VALUES
	(1, 'first', 'last', 'mail@mail.com', 'admin', 'b3e88910cd0deeaad28ffec96b4c39f3:f1', '2014-10-10 10:05:01', '2014-10-10 10:05:01', '2014-10-17 11:57:06', 30, 0, 1, 'N;', NULL, NULL);
/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;


-- Dumping structure for table mag.api2_acl_attribute
DROP TABLE IF EXISTS `api2_acl_attribute`;
CREATE TABLE IF NOT EXISTS `api2_acl_attribute` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `user_type` varchar(20) NOT NULL COMMENT 'Type of user',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `operation` varchar(20) NOT NULL COMMENT 'Operation',
  `allowed_attributes` text COMMENT 'Allowed attributes',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_API2_ACL_ATTRIBUTE_USER_TYPE_RESOURCE_ID_OPERATION` (`user_type`,`resource_id`,`operation`),
  KEY `IDX_API2_ACL_ATTRIBUTE_USER_TYPE` (`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Filter ACL Attributes';

-- Dumping data for table mag.api2_acl_attribute: ~0 rows (approximately)
/*!40000 ALTER TABLE `api2_acl_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `api2_acl_attribute` ENABLE KEYS */;


-- Dumping structure for table mag.api2_acl_role
DROP TABLE IF EXISTS `api2_acl_role`;
CREATE TABLE IF NOT EXISTS `api2_acl_role` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `role_name` varchar(255) NOT NULL COMMENT 'Name of role',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_API2_ACL_ROLE_CREATED_AT` (`created_at`),
  KEY `IDX_API2_ACL_ROLE_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Roles';

-- Dumping data for table mag.api2_acl_role: ~2 rows (approximately)
/*!40000 ALTER TABLE `api2_acl_role` DISABLE KEYS */;
INSERT INTO `api2_acl_role` (`entity_id`, `created_at`, `updated_at`, `role_name`) VALUES
	(1, '2014-10-10 13:02:49', NULL, 'Guest'),
	(2, '2014-10-10 13:02:49', NULL, 'Customer');
/*!40000 ALTER TABLE `api2_acl_role` ENABLE KEYS */;


-- Dumping structure for table mag.api2_acl_rule
DROP TABLE IF EXISTS `api2_acl_rule`;
CREATE TABLE IF NOT EXISTS `api2_acl_rule` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role ID',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `privilege` varchar(20) DEFAULT NULL COMMENT 'ACL Privilege',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_API2_ACL_RULE_ROLE_ID_RESOURCE_ID_PRIVILEGE` (`role_id`,`resource_id`,`privilege`),
  CONSTRAINT `FK_API2_ACL_RULE_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` FOREIGN KEY (`role_id`) REFERENCES `api2_acl_role` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Rules';

-- Dumping data for table mag.api2_acl_rule: ~0 rows (approximately)
/*!40000 ALTER TABLE `api2_acl_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `api2_acl_rule` ENABLE KEYS */;


-- Dumping structure for table mag.api2_acl_user
DROP TABLE IF EXISTS `api2_acl_user`;
CREATE TABLE IF NOT EXISTS `api2_acl_user` (
  `admin_id` int(10) unsigned NOT NULL COMMENT 'Admin ID',
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role ID',
  UNIQUE KEY `UNQ_API2_ACL_USER_ADMIN_ID` (`admin_id`),
  KEY `FK_API2_ACL_USER_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` (`role_id`),
  CONSTRAINT `FK_API2_ACL_USER_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_API2_ACL_USER_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` FOREIGN KEY (`role_id`) REFERENCES `api2_acl_role` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Users';

-- Dumping data for table mag.api2_acl_user: ~0 rows (approximately)
/*!40000 ALTER TABLE `api2_acl_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `api2_acl_user` ENABLE KEYS */;


-- Dumping structure for table mag.api_assert
DROP TABLE IF EXISTS `api_assert`;
CREATE TABLE IF NOT EXISTS `api_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert id',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert type',
  `assert_data` text COMMENT 'Assert additional data',
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Asserts';

-- Dumping data for table mag.api_assert: ~0 rows (approximately)
/*!40000 ALTER TABLE `api_assert` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_assert` ENABLE KEYS */;


-- Dumping structure for table mag.api_role
DROP TABLE IF EXISTS `api_role`;
CREATE TABLE IF NOT EXISTS `api_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent role id',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role level in tree',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order to display on admin area',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User id',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role name',
  PRIMARY KEY (`role_id`),
  KEY `IDX_API_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `IDX_API_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Roles';

-- Dumping data for table mag.api_role: ~0 rows (approximately)
/*!40000 ALTER TABLE `api_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_role` ENABLE KEYS */;


-- Dumping structure for table mag.api_rule
DROP TABLE IF EXISTS `api_rule`;
CREATE TABLE IF NOT EXISTS `api_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Api rule Id',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Api role Id',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Module code',
  `api_privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert id',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role type',
  `api_permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_API_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `IDX_API_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`),
  CONSTRAINT `FK_API_RULE_ROLE_ID_API_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `api_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Rules';

-- Dumping data for table mag.api_rule: ~0 rows (approximately)
/*!40000 ALTER TABLE `api_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_rule` ENABLE KEYS */;


-- Dumping structure for table mag.api_session
DROP TABLE IF EXISTS `api_session`;
CREATE TABLE IF NOT EXISTS `api_session` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'User id',
  `logdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Login date',
  `sessid` varchar(40) DEFAULT NULL COMMENT 'Sessioin id',
  KEY `IDX_API_SESSION_USER_ID` (`user_id`),
  KEY `IDX_API_SESSION_SESSID` (`sessid`),
  CONSTRAINT `FK_API_SESSION_USER_ID_API_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `api_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Sessions';

-- Dumping data for table mag.api_session: ~0 rows (approximately)
/*!40000 ALTER TABLE `api_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_session` ENABLE KEYS */;


-- Dumping structure for table mag.api_user
DROP TABLE IF EXISTS `api_user`;
CREATE TABLE IF NOT EXISTS `api_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User id',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'First name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'Last name',
  `email` varchar(128) DEFAULT NULL COMMENT 'Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'Nickname',
  `api_key` varchar(100) DEFAULT NULL COMMENT 'Api key',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User record create date',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User record modify date',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Quantity of log ins',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Refresh ACL flag',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Account status',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Users';

-- Dumping data for table mag.api_user: ~0 rows (approximately)
/*!40000 ALTER TABLE `api_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_user` ENABLE KEYS */;


-- Dumping structure for table mag.captcha_log
DROP TABLE IF EXISTS `captcha_log`;
CREATE TABLE IF NOT EXISTS `captcha_log` (
  `type` varchar(32) NOT NULL COMMENT 'Type',
  `value` varchar(32) NOT NULL COMMENT 'Value',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Count',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Count Login Attempts';

-- Dumping data for table mag.captcha_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `captcha_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `captcha_log` ENABLE KEYS */;


-- Dumping structure for table mag.cataloginventory_stock
DROP TABLE IF EXISTS `cataloginventory_stock`;
CREATE TABLE IF NOT EXISTS `cataloginventory_stock` (
  `stock_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Stock Id',
  `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name',
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock';

-- Dumping data for table mag.cataloginventory_stock: ~1 rows (approximately)
/*!40000 ALTER TABLE `cataloginventory_stock` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock` (`stock_id`, `stock_name`) VALUES
	(1, 'Default');
/*!40000 ALTER TABLE `cataloginventory_stock` ENABLE KEYS */;


-- Dumping structure for table mag.cataloginventory_stock_item
DROP TABLE IF EXISTS `cataloginventory_stock_item`;
CREATE TABLE IF NOT EXISTS `cataloginventory_stock_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `stock_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Min Qty',
  `use_config_min_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Qty',
  `is_qty_decimal` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Qty Decimal',
  `backorders` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Backorders',
  `use_config_backorders` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Backorders',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'Min Sale Qty',
  `use_config_min_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Sale Qty',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Max Sale Qty',
  `use_config_max_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Max Sale Qty',
  `is_in_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
  `low_stock_date` timestamp NULL DEFAULT NULL COMMENT 'Low Stock Date',
  `notify_stock_qty` decimal(12,4) DEFAULT NULL COMMENT 'Notify Stock Qty',
  `use_config_notify_stock_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Notify Stock Qty',
  `manage_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Manage Stock',
  `use_config_manage_stock` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Manage Stock',
  `stock_status_changed_auto` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Status Changed Automatically',
  `use_config_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Qty Increments',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Increments',
  `use_config_enable_qty_inc` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Enable Qty Increments',
  `enable_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Enable Qty Increments',
  `is_decimal_divided` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `UNQ_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_STOCK_ID` (`product_id`,`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`),
  CONSTRAINT `FK_CATINV_STOCK_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATINV_STOCK_ITEM_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Item';

-- Dumping data for table mag.cataloginventory_stock_item: ~35 rows (approximately)
/*!40000 ALTER TABLE `cataloginventory_stock_item` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `use_config_min_qty`, `is_qty_decimal`, `backorders`, `use_config_backorders`, `min_sale_qty`, `use_config_min_sale_qty`, `max_sale_qty`, `use_config_max_sale_qty`, `is_in_stock`, `low_stock_date`, `notify_stock_qty`, `use_config_notify_stock_qty`, `manage_stock`, `use_config_manage_stock`, `stock_status_changed_auto`, `use_config_qty_increments`, `qty_increments`, `use_config_enable_qty_inc`, `enable_qty_increments`, `is_decimal_divided`) VALUES
	(1, 1, 1, 0.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(2, 2, 1, 0.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(3, 3, 1, 0.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(4, 4, 1, 0.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(5, 5, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(6, 6, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(7, 7, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(8, 8, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(9, 9, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(10, 10, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(11, 11, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(12, 12, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(13, 13, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(14, 14, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(15, 15, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(16, 16, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(17, 17, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(18, 18, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(19, 19, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(20, 20, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(21, 21, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(22, 22, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(23, 23, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(24, 24, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(25, 25, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(26, 26, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(27, 27, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(28, 28, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(29, 29, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(30, 30, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(31, 31, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(32, 32, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(33, 33, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(34, 34, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0),
	(35, 35, 1, 99.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 1, 1, 0, 1, 0.0000, 1, 0, 0);
/*!40000 ALTER TABLE `cataloginventory_stock_item` ENABLE KEYS */;


-- Dumping structure for table mag.cataloginventory_stock_status
DROP TABLE IF EXISTS `cataloginventory_stock_status`;
CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_CATINV_STOCK_STS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATINV_STOCK_STS_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATINV_STOCK_STS_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

-- Dumping data for table mag.cataloginventory_stock_status: ~17 rows (approximately)
/*!40000 ALTER TABLE `cataloginventory_stock_status` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock_status` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
	(3, 1, 1, 0.0000, 0),
	(4, 1, 1, 0.0000, 0),
	(9, 1, 1, 0.0000, 0),
	(10, 1, 1, 99.0000, 1),
	(11, 1, 1, 99.0000, 1),
	(12, 1, 1, 99.0000, 1),
	(13, 1, 1, 99.0000, 1),
	(14, 1, 1, 0.0000, 1),
	(19, 1, 1, 0.0000, 0),
	(20, 1, 1, 99.0000, 1),
	(26, 1, 1, 0.0000, 0),
	(30, 1, 1, 0.0000, 0),
	(31, 1, 1, 99.0000, 1),
	(32, 1, 1, 99.0000, 1),
	(33, 1, 1, 99.0000, 1),
	(34, 1, 1, 99.0000, 1),
	(35, 1, 1, 0.0000, 1);
/*!40000 ALTER TABLE `cataloginventory_stock_status` ENABLE KEYS */;


-- Dumping structure for table mag.cataloginventory_stock_status_idx
DROP TABLE IF EXISTS `cataloginventory_stock_status_idx`;
CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status_idx` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_IDX_STOCK_ID` (`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_IDX_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Idx';

-- Dumping data for table mag.cataloginventory_stock_status_idx: ~17 rows (approximately)
/*!40000 ALTER TABLE `cataloginventory_stock_status_idx` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock_status_idx` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
	(3, 1, 1, 0.0000, 0),
	(4, 1, 1, 0.0000, 0),
	(9, 1, 1, 0.0000, 0),
	(10, 1, 1, 99.0000, 1),
	(11, 1, 1, 99.0000, 1),
	(12, 1, 1, 99.0000, 1),
	(13, 1, 1, 99.0000, 1),
	(14, 1, 1, 0.0000, 1),
	(19, 1, 1, 0.0000, 0),
	(20, 1, 1, 99.0000, 1),
	(26, 1, 1, 0.0000, 0),
	(30, 1, 1, 0.0000, 0),
	(31, 1, 1, 99.0000, 1),
	(32, 1, 1, 99.0000, 1),
	(33, 1, 1, 99.0000, 1),
	(34, 1, 1, 99.0000, 1),
	(35, 1, 1, 0.0000, 1);
/*!40000 ALTER TABLE `cataloginventory_stock_status_idx` ENABLE KEYS */;


-- Dumping structure for table mag.cataloginventory_stock_status_tmp
DROP TABLE IF EXISTS `cataloginventory_stock_status_tmp`;
CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status_tmp` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_TMP_STOCK_ID` (`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_TMP_WEBSITE_ID` (`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Tmp';

-- Dumping data for table mag.cataloginventory_stock_status_tmp: 0 rows
/*!40000 ALTER TABLE `cataloginventory_stock_status_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cataloginventory_stock_status_tmp` ENABLE KEYS */;


-- Dumping structure for table mag.catalogrule
DROP TABLE IF EXISTS `catalogrule`;
CREATE TABLE IF NOT EXISTS `catalogrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From Date',
  `to_date` date DEFAULT NULL COMMENT 'To Date',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `sub_is_enable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Rule Enable For Subitems',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule';

-- Dumping data for table mag.catalogrule: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalogrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogrule` ENABLE KEYS */;


-- Dumping structure for table mag.catalogrule_affected_product
DROP TABLE IF EXISTS `catalogrule_affected_product`;
CREATE TABLE IF NOT EXISTS `catalogrule_affected_product` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Affected Product';

-- Dumping data for table mag.catalogrule_affected_product: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalogrule_affected_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogrule_affected_product` ENABLE KEYS */;


-- Dumping structure for table mag.catalogrule_customer_group
DROP TABLE IF EXISTS `catalogrule_customer_group`;
CREATE TABLE IF NOT EXISTS `catalogrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `IDX_CATALOGRULE_CUSTOMER_GROUP_RULE_ID` (`rule_id`),
  KEY `IDX_CATALOGRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  CONSTRAINT `FK_CATALOGRULE_CUSTOMER_GROUP_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Customer Groups Relations';

-- Dumping data for table mag.catalogrule_customer_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalogrule_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogrule_customer_group` ENABLE KEYS */;


-- Dumping structure for table mag.catalogrule_group_website
DROP TABLE IF EXISTS `catalogrule_group_website`;
CREATE TABLE IF NOT EXISTS `catalogrule_group_website` (
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOGRULE_GROUP_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_CATALOGRULE_GROUP_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATRULE_GROUP_WS_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

-- Dumping data for table mag.catalogrule_group_website: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalogrule_group_website` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogrule_group_website` ENABLE KEYS */;


-- Dumping structure for table mag.catalogrule_product
DROP TABLE IF EXISTS `catalogrule_product`;
CREATE TABLE IF NOT EXISTS `catalogrule_product` (
  `rule_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `from_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems',
  PRIMARY KEY (`rule_product_id`),
  UNIQUE KEY `EAA51B56FF092A0DCB795D1CEF812B7B` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  KEY `IDX_CATALOGRULE_PRODUCT_RULE_ID` (`rule_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  KEY `IDX_CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  KEY `IDX_CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_CATALOGRULE_PRODUCT_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATALOGRULE_PRODUCT_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATRULE_PRD_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATRULE_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product';

-- Dumping data for table mag.catalogrule_product: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalogrule_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogrule_product` ENABLE KEYS */;


-- Dumping structure for table mag.catalogrule_product_price
DROP TABLE IF EXISTS `catalogrule_product_price`;
CREATE TABLE IF NOT EXISTS `catalogrule_product_price` (
  `rule_product_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rule Price',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate',
  PRIMARY KEY (`rule_product_price_id`),
  UNIQUE KEY `UNQ_CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATRULE_PRD_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATRULE_PRD_PRICE_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price';

-- Dumping data for table mag.catalogrule_product_price: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalogrule_product_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogrule_product_price` ENABLE KEYS */;


-- Dumping structure for table mag.catalogrule_website
DROP TABLE IF EXISTS `catalogrule_website`;
CREATE TABLE IF NOT EXISTS `catalogrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `IDX_CATALOGRULE_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_CATALOGRULE_WEBSITE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_CATALOGRULE_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATALOGRULE_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Websites Relations';

-- Dumping data for table mag.catalogrule_website: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalogrule_website` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogrule_website` ENABLE KEYS */;


-- Dumping structure for table mag.catalogsearch_fulltext
DROP TABLE IF EXISTS `catalogsearch_fulltext`;
CREATE TABLE IF NOT EXISTS `catalogsearch_fulltext` (
  `fulltext_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`fulltext_id`),
  UNIQUE KEY `UNQ_CATALOGSEARCH_FULLTEXT_PRODUCT_ID_STORE_ID` (`product_id`,`store_id`),
  FULLTEXT KEY `FTI_CATALOGSEARCH_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='Catalog search result table';

-- Dumping data for table mag.catalogsearch_fulltext: 11 rows
/*!40000 ALTER TABLE `catalogsearch_fulltext` DISABLE KEYS */;
INSERT INTO `catalogsearch_fulltext` (`fulltext_id`, `product_id`, `store_id`, `data_index`) VALUES
	(57, 35, 1, '2145|None|None|None|None|None|Merlot Formal Dining Set|Merlot Formal Dining Set - Merlot Dining:7 Pc. (Table + 4 Side Chairs + 2 Arm Chairs)|Merlot Formal Dining Set - Merlot Dining:Hutch/Buffet|Merlot Formal Dining Set - Merlot Dining:2 Additional Side Chairs|Merlot Formal Dining Set - Merlot Dining:2 Additional Arm Chairs|BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES|BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES|BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES|BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES|BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES|By:&nbsp;Crown Mark&nbsp;-&nbsp;2145&nbsp;-&nbsp; 7 Pc. Merlot Formal Dining Set - Optional Hutch/Buffet 7 Pc. Set: Price is for Table (2145T-Top &amp; 2145T-Leg - 2 Boxes) + 4 Side Chairs (2146S - 2 Boxes) + 2 Arm Chairs (2146A - 1 Box) Table expands from 42&quot; to 70-88&quot; with 1 x 18&quot; leaf - Allows seating for up to 8 &nbsp;Solid hardwood glides - provide a strong durable glide and support system for the table &nbsp;Cherry veneered top - Provides a beautiful graining and finish while being durable Sleigh or scroll chair back - Gives a classic look to the set while providing a durable frame Multi color textured fabric - Comfortable, beautiful and easy to clean seat and chair back Table Top: 42&quot; X 70&quot; ~ 88&quot; (with 18&quot; Leaf) X 30&quot; H&nbsp; Hutch/Buffet: (2145-B &amp; 2145-H - 2 Boxes) Buffet: 52&quot; X 17&quot; X 32&quot; H | Hutch: 52&quot; X 17&quot; X 48&quot; H Not on Display in Store|By:&nbsp;Crown Mark&nbsp;-&nbsp;2145&nbsp;-&nbsp; 7 Pc. Merlot Formal Dining Set - Optional Hutch/Buffet 7 Pc. Set: Price is for Table (2145T-Top &amp; 2145T-Leg - 2 Boxes) + 4 Side Chairs (2146S - 2 Boxes) + 2 Arm Chairs (2146A - 1 Box) Table expands from 42&quot; to 70-88&quot; with 1 x 18&quot; leaf - Allows seating for up to 8 &nbsp;Solid hardwood glides - provide a strong durable glide and support system for the table &nbsp;Cherry veneered top - Provides a beautiful graining and finish while being durable Sleigh or scroll chair back - Gives a classic look to the set while providing a durable frame Multi color textured fabric - Comfortable, beautiful and easy to clean seat and chair back Table Top: 42&quot; X 70&quot; ~ 88&quot; (with 18&quot; Leaf) X 30&quot; H&nbsp; Hutch/Buffet: (2145-B &amp; 2145-H - 2 Boxes) Buffet: 52&quot; X 17&quot; X 32&quot; H | Hutch: 52&quot; X 17&quot; X 48&quot; H Not on Display in Store|By:&nbsp;Crown Mark&nbsp;-&nbsp;2145&nbsp;-&nbsp; 7 Pc. Merlot Formal Dining Set - Optional Hutch/Buffet 7 Pc. Set: Price is for Table (2145T-Top &amp; 2145T-Leg - 2 Boxes) + 4 Side Chairs (2146S - 2 Boxes) + 2 Arm Chairs (2146A - 1 Box) Table expands from 42&quot; to 70-88&quot; with 1 x 18&quot; leaf - Allows seating for up to 8 &nbsp;Solid hardwood glides - provide a strong durable glide and support system for the table &nbsp;Cherry veneered top - Provides a beautiful graining and finish while being durable Sleigh or scroll chair back - Gives a classic look to the set while providing a durable frame Multi color textured fabric - Comfortable, beautiful and easy to clean seat and chair back Table Top: 42&quot; X 70&quot; ~ 88&quot; (with 18&quot; Leaf) X 30&quot; H&nbsp; Hutch/Buffet: (2145-B &amp; 2145-H - 2 Boxes) Buffet: 52&quot; X 17&quot; X 32&quot; H | Hutch: 52&quot; X 17&quot; X 48&quot; H Not on Display in Store|By:&nbsp;Crown Mark&nbsp;-&nbsp;2145&nbsp;-&nbsp; 7 Pc. Merlot Formal Dining Set - Optional Hutch/Buffet 7 Pc. Set: Price is for Table (2145T-Top &amp; 2145T-Leg - 2 Boxes) + 4 Side Chairs (2146S - 2 Boxes) + 2 Arm Chairs (2146A - 1 Box) Table expands from 42&quot; to 70-88&quot; with 1 x 18&quot; leaf - Allows seating for up to 8 &nbsp;Solid hardwood glides - provide a strong durable glide and support system for the table &nbsp;Cherry veneered top - Provides a beautiful graining and finish while being durable Sleigh or scroll chair back - Gives a classic look to the set while providing a durable frame Multi color textured fabric - Comfortable, beautiful and easy to clean seat and chair back Table Top: 42&quot; X 70&quot; ~ 88&quot; (with 18&quot; Leaf) X 30&quot; H&nbsp; Hutch/Buffet: (2145-B &amp; 2145-H - 2 Boxes) Buffet: 52&quot; X 17&quot; X 32&quot; H | Hutch: 52&quot; X 17&quot; X 48&quot; H Not on Display in Store|By:&nbsp;Crown Mark&nbsp;-&nbsp;2145&nbsp;-&nbsp; 7 Pc. Merlot Formal Dining Set - Optional Hutch/Buffet 7 Pc. Set: Price is for Table (2145T-Top &amp; 2145T-Leg - 2 Boxes) + 4 Side Chairs (2146S - 2 Boxes) + 2 Arm Chairs (2146A - 1 Box) Table expands from 42&quot; to 70-88&quot; with 1 x 18&quot; leaf - Allows seating for up to 8 &nbsp;Solid hardwood glides - provide a strong durable glide and support system for the table &nbsp;Cherry veneered top - Provides a beautiful graining and finish while being durable Sleigh or scroll chair back - Gives a classic look to the set while providing a durable frame Multi color textured fabric - Comfortable, beautiful and easy to clean seat and chair back Table Top: 42&quot; X 70&quot; ~ 88&quot; (with 18&quot; Leaf) X 30&quot; H&nbsp; Hutch/Buffet: (2145-B &amp; 2145-H - 2 Boxes) Buffet: 52&quot; X 17&quot; X 32&quot; H | Hutch: 52&quot; X 17&quot; X 48&quot; H Not on Display in Store|&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CrownMark Furniture &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 Pc. Dining Set &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hutch/Buffet (Optional)|&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CrownMark Furniture &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 Pc. Dining Set &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hutch/Buffet (Optional)|&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CrownMark Furniture &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 Pc. Dining Set &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hutch/Buffet (Optional)|&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CrownMark Furniture &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 Pc. Dining Set &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hutch/Buffet (Optional)|&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CrownMark Furniture &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 Pc. Dining Set &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hutch/Buffet (Optional)|750|650|179|199|1'),
	(56, 34, 1, '(#4) 2146A|None|Merlot Formal Dining Set - Merlot Dining:2 Additional Arm Chairs|BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES|199|By:&nbsp;Crown Mark&nbsp;-&nbsp;2145&nbsp;-&nbsp; 7 Pc. Merlot Formal Dining Set - Optional Hutch/Buffet 7 Pc. Set: Price is for Table (2145T-Top &amp; 2145T-Leg - 2 Boxes) + 4 Side Chairs (2146S - 2 Boxes) + 2 Arm Chairs (2146A - 1 Box) Table expands from 42&quot; to 70-88&quot; with 1 x 18&quot; leaf - Allows seating for up to 8 &nbsp;Solid hardwood glides - provide a strong durable glide and support system for the table &nbsp;Cherry veneered top - Provides a beautiful graining and finish while being durable Sleigh or scroll chair back - Gives a classic look to the set while providing a durable frame Multi color textured fabric - Comfortable, beautiful and easy to clean seat and chair back Table Top: 42&quot; X 70&quot; ~ 88&quot; (with 18&quot; Leaf) X 30&quot; H&nbsp; Hutch/Buffet: (2145-B &amp; 2145-H - 2 Boxes) Buffet: 52&quot; X 17&quot; X 32&quot; H | Hutch: 52&quot; X 17&quot; X 48&quot; H Not on Display in Store|&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CrownMark Furniture &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 Pc. Dining Set &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hutch/Buffet (Optional)|1'),
	(54, 32, 1, '(#2) 2145-H/B|None|Merlot Formal Dining Set - Merlot Dining:Hutch/Buffet|BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES|650|By:&nbsp;Crown Mark&nbsp;-&nbsp;2145&nbsp;-&nbsp; 7 Pc. Merlot Formal Dining Set - Optional Hutch/Buffet 7 Pc. Set: Price is for Table (2145T-Top &amp; 2145T-Leg - 2 Boxes) + 4 Side Chairs (2146S - 2 Boxes) + 2 Arm Chairs (2146A - 1 Box) Table expands from 42&quot; to 70-88&quot; with 1 x 18&quot; leaf - Allows seating for up to 8 &nbsp;Solid hardwood glides - provide a strong durable glide and support system for the table &nbsp;Cherry veneered top - Provides a beautiful graining and finish while being durable Sleigh or scroll chair back - Gives a classic look to the set while providing a durable frame Multi color textured fabric - Comfortable, beautiful and easy to clean seat and chair back Table Top: 42&quot; X 70&quot; ~ 88&quot; (with 18&quot; Leaf) X 30&quot; H&nbsp; Hutch/Buffet: (2145-B &amp; 2145-H - 2 Boxes) Buffet: 52&quot; X 17&quot; X 32&quot; H | Hutch: 52&quot; X 17&quot; X 48&quot; H Not on Display in Store|&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CrownMark Furniture &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 Pc. Dining Set &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hutch/Buffet (Optional)|1'),
	(55, 33, 1, '(#3) 2146S|None|Merlot Formal Dining Set - Merlot Dining:2 Additional Side Chairs|BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES|179|By:&nbsp;Crown Mark&nbsp;-&nbsp;2145&nbsp;-&nbsp; 7 Pc. Merlot Formal Dining Set - Optional Hutch/Buffet 7 Pc. Set: Price is for Table (2145T-Top &amp; 2145T-Leg - 2 Boxes) + 4 Side Chairs (2146S - 2 Boxes) + 2 Arm Chairs (2146A - 1 Box) Table expands from 42&quot; to 70-88&quot; with 1 x 18&quot; leaf - Allows seating for up to 8 &nbsp;Solid hardwood glides - provide a strong durable glide and support system for the table &nbsp;Cherry veneered top - Provides a beautiful graining and finish while being durable Sleigh or scroll chair back - Gives a classic look to the set while providing a durable frame Multi color textured fabric - Comfortable, beautiful and easy to clean seat and chair back Table Top: 42&quot; X 70&quot; ~ 88&quot; (with 18&quot; Leaf) X 30&quot; H&nbsp; Hutch/Buffet: (2145-B &amp; 2145-H - 2 Boxes) Buffet: 52&quot; X 17&quot; X 32&quot; H | Hutch: 52&quot; X 17&quot; X 48&quot; H Not on Display in Store|&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CrownMark Furniture &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 Pc. Dining Set &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hutch/Buffet (Optional)|1'),
	(52, 20, 1, '2455|None|Grandview Marble Dining|Dark marble, carved solid wood apron with gold accents. Chairs are carved with gold accents. Dining Table: 44" X 66" ~ 96" (with 2" X 15" Wood Leaf) X 30" H Order Online ~ Not in Store|5 Pc. Grandview Dining Set|910|1'),
	(53, 31, 1, '(#1) 2145 7 Pc. Set|None|Merlot Formal Dining Set - Merlot Dining:7 Pc. (Table + 4 Side Chairs + 2 Arm Chairs)|BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES|750|By:&nbsp;Crown Mark&nbsp;-&nbsp;2145&nbsp;-&nbsp; 7 Pc. Merlot Formal Dining Set - Optional Hutch/Buffet 7 Pc. Set: Price is for Table (2145T-Top &amp; 2145T-Leg - 2 Boxes) + 4 Side Chairs (2146S - 2 Boxes) + 2 Arm Chairs (2146A - 1 Box) Table expands from 42&quot; to 70-88&quot; with 1 x 18&quot; leaf - Allows seating for up to 8 &nbsp;Solid hardwood glides - provide a strong durable glide and support system for the table &nbsp;Cherry veneered top - Provides a beautiful graining and finish while being durable Sleigh or scroll chair back - Gives a classic look to the set while providing a durable frame Multi color textured fabric - Comfortable, beautiful and easy to clean seat and chair back Table Top: 42&quot; X 70&quot; ~ 88&quot; (with 18&quot; Leaf) X 30&quot; H&nbsp; Hutch/Buffet: (2145-B &amp; 2145-H - 2 Boxes) Buffet: 52&quot; X 17&quot; X 32&quot; H | Hutch: 52&quot; X 17&quot; X 48&quot; H Not on Display in Store|&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CrownMark Furniture &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 Pc. Dining Set &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hutch/Buffet (Optional)|1'),
	(50, 13, 1, '(#4) 2401A|None|Neo Renaissance Formal Dining Set - Neo Renaissance Dining:2 Additional Arm Chairs|BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES|339|By:&nbsp;Crown Mark&nbsp;-&nbsp;2400&nbsp;-&nbsp; 7 Pc.&nbsp;Neo Renaissance Formal Dining Set - Optional Hutch/Buffet 7 Pc. Set: Price is for Table (2400-Top &amp; 2400-Leg - 2 Boxes) + 4 Side Chairs (2401S - 2 Boxes) + 2 Arm Chairs (2401A - 1 Box)&nbsp;Rich dark burnished finish with sunburts match cherry veneer, burl inlays on table top and apron, ornate pedestal and carved feet. Solid wood chair with tapestry cushions, handcarved designed front and back.&nbsp;Table: &nbsp;44&quot; X 72&quot; ~ 108&quot; (with 2&quot; X 18&quot; Leaf) X 30&quot; H&nbsp; Hutch/Buffet: (2400-B &amp; 2400-H - 2 Boxes) Buffet: 60&quot; X 18&quot; X 33&quot; | Hutch: 60&quot; X 16.5&quot; X 53&quot; H Not on Display in Store|&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CrownMark Furniture &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 Pc. Dining Set &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hutch/Buffet (Optional)|1'),
	(51, 14, 1, '2400|None|None|None|None|None|Neo Renaissance Formal Dining Set|Neo Renaissance Formal Dining Set - Neo Renaissance Dining:7 Pc. (Table + 4 Side Chairs + 2 Arm Chairs)|Neo Renaissance Formal Dining Set - Neo Renaissance Dining:Hutch/Buffet|Neo Renaissance Formal Dining Set - Neo Renaissance Dining:2 Additional Side Chairs|Neo Renaissance Formal Dining Set - Neo Renaissance Dining:2 Additional Arm Chairs|BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES|BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES|BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES|BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES|BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES|By:&nbsp;Crown Mark&nbsp;-&nbsp;2400&nbsp;-&nbsp; 7 Pc.&nbsp;Neo Renaissance Formal Dining Set - Optional Hutch/Buffet 7 Pc. Set: Price is for Table (2400-Top &amp; 2400-Leg - 2 Boxes) + 4 Side Chairs (2401S - 2 Boxes) + 2 Arm Chairs (2401A - 1 Box)&nbsp;Rich dark burnished finish with sunburts match cherry veneer, burl inlays on table top and apron, ornate pedestal and carved feet. Solid wood chair with tapestry cushions, handcarved designed front and back.&nbsp;Table: &nbsp;44&quot; X 72&quot; ~ 108&quot; (with 2&quot; X 18&quot; Leaf) X 30&quot; H&nbsp; Hutch/Buffet: (2400-B &amp; 2400-H - 2 Boxes) Buffet: 60&quot; X 18&quot; X 33&quot; | Hutch: 60&quot; X 16.5&quot; X 53&quot; H Not on Display in Store|By:&nbsp;Crown Mark&nbsp;-&nbsp;2400&nbsp;-&nbsp; 7 Pc.&nbsp;Neo Renaissance Formal Dining Set - Optional Hutch/Buffet 7 Pc. Set: Price is for Table (2400-Top &amp; 2400-Leg - 2 Boxes) + 4 Side Chairs (2401S - 2 Boxes) + 2 Arm Chairs (2401A - 1 Box)&nbsp;Rich dark burnished finish with sunburts match cherry veneer, burl inlays on table top and apron, ornate pedestal and carved feet. Solid wood chair with tapestry cushions, handcarved designed front and back.&nbsp;Table: &nbsp;44&quot; X 72&quot; ~ 108&quot; (with 2&quot; X 18&quot; Leaf) X 30&quot; H&nbsp; Hutch/Buffet: (2400-B &amp; 2400-H - 2 Boxes) Buffet: 60&quot; X 18&quot; X 33&quot; | Hutch: 60&quot; X 16.5&quot; X 53&quot; H Not on Display in Store|By:&nbsp;Crown Mark&nbsp;-&nbsp;2400&nbsp;-&nbsp; 7 Pc.&nbsp;Neo Renaissance Formal Dining Set - Optional Hutch/Buffet 7 Pc. Set: Price is for Table (2400-Top &amp; 2400-Leg - 2 Boxes) + 4 Side Chairs (2401S - 2 Boxes) + 2 Arm Chairs (2401A - 1 Box)&nbsp;Rich dark burnished finish with sunburts match cherry veneer, burl inlays on table top and apron, ornate pedestal and carved feet. Solid wood chair with tapestry cushions, handcarved designed front and back.&nbsp;Table: &nbsp;44&quot; X 72&quot; ~ 108&quot; (with 2&quot; X 18&quot; Leaf) X 30&quot; H&nbsp; Hutch/Buffet: (2400-B &amp; 2400-H - 2 Boxes) Buffet: 60&quot; X 18&quot; X 33&quot; | Hutch: 60&quot; X 16.5&quot; X 53&quot; H Not on Display in Store|By:&nbsp;Crown Mark&nbsp;-&nbsp;2400&nbsp;-&nbsp; 7 Pc.&nbsp;Neo Renaissance Formal Dining Set - Optional Hutch/Buffet 7 Pc. Set: Price is for Table (2400-Top &amp; 2400-Leg - 2 Boxes) + 4 Side Chairs (2401S - 2 Boxes) + 2 Arm Chairs (2401A - 1 Box)&nbsp;Rich dark burnished finish with sunburts match cherry veneer, burl inlays on table top and apron, ornate pedestal and carved feet. Solid wood chair with tapestry cushions, handcarved designed front and back.&nbsp;Table: &nbsp;44&quot; X 72&quot; ~ 108&quot; (with 2&quot; X 18&quot; Leaf) X 30&quot; H&nbsp; Hutch/Buffet: (2400-B &amp; 2400-H - 2 Boxes) Buffet: 60&quot; X 18&quot; X 33&quot; | Hutch: 60&quot; X 16.5&quot; X 53&quot; H Not on Display in Store|By:&nbsp;Crown Mark&nbsp;-&nbsp;2400&nbsp;-&nbsp; 7 Pc.&nbsp;Neo Renaissance Formal Dining Set - Optional Hutch/Buffet 7 Pc. Set: Price is for Table (2400-Top &amp; 2400-Leg - 2 Boxes) + 4 Side Chairs (2401S - 2 Boxes) + 2 Arm Chairs (2401A - 1 Box)&nbsp;Rich dark burnished finish with sunburts match cherry veneer, burl inlays on table top and apron, ornate pedestal and carved feet. Solid wood chair with tapestry cushions, handcarved designed front and back.&nbsp;Table: &nbsp;44&quot; X 72&quot; ~ 108&quot; (with 2&quot; X 18&quot; Leaf) X 30&quot; H&nbsp; Hutch/Buffet: (2400-B &amp; 2400-H - 2 Boxes) Buffet: 60&quot; X 18&quot; X 33&quot; | Hutch: 60&quot; X 16.5&quot; X 53&quot; H Not on Display in Store|&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CrownMark Furniture &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 Pc. Dining Set &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hutch/Buffet (Optional)|&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CrownMark Furniture &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 Pc. Dining Set &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hutch/Buffet (Optional)|&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CrownMark Furniture &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 Pc. Dining Set &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hutch/Buffet (Optional)|&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CrownMark Furniture &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 Pc. Dining Set &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hutch/Buffet (Optional)|&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CrownMark Furniture &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 Pc. Dining Set &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hutch/Buffet (Optional)|1499|1100|319|339|1'),
	(47, 10, 1, '(#1) 2400 7 Pc. Set|None|Neo Renaissance Formal Dining Set - Neo Renaissance Dining:7 Pc. (Table + 4 Side Chairs + 2 Arm Chairs)|By:&nbsp;Crown Mark&nbsp;-&nbsp;2400&nbsp;-&nbsp; 7 Pc.&nbsp;Neo Renaissance Formal Dining Set - Optional Hutch/Buffet 7 Pc. Set: Price is for Table (2400-Top &amp; 2400-Leg - 2 Boxes) + 4 Side Chairs (2401S - 2 Boxes) + 2 Arm Chairs (2401A - 1 Box)&nbsp;Rich dark burnished finish with sunburts match cherry veneer, burl inlays on table top and apron, ornate pedestal and carved feet. Solid wood chair with tapestry cushions, handcarved designed front and back.&nbsp;Table: &nbsp;44&quot; X 72&quot; ~ 108&quot; (with 2&quot; X 18&quot; Leaf) X 30&quot; H&nbsp; Hutch/Buffet: (2400-B &amp; 2400-H - 2 Boxes) Buffet: 60&quot; X 18&quot; X 33&quot; | Hutch: 60&quot; X 16.5&quot; X 53&quot; H Not on Display in Store|&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CrownMark Furniture &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 Pc. Dining Set &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hutch/Buffet (Optional)|BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES|1499|1'),
	(48, 11, 1, '(#2) 2400-H/B|None|Neo Renaissance Formal Dining Set - Neo Renaissance Dining:Hutch/Buffet|BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES|1100|By:&nbsp;Crown Mark&nbsp;-&nbsp;2400&nbsp;-&nbsp; 7 Pc.&nbsp;Neo Renaissance Formal Dining Set - Optional Hutch/Buffet 7 Pc. Set: Price is for Table (2400-Top &amp; 2400-Leg - 2 Boxes) + 4 Side Chairs (2401S - 2 Boxes) + 2 Arm Chairs (2401A - 1 Box)&nbsp;Rich dark burnished finish with sunburts match cherry veneer, burl inlays on table top and apron, ornate pedestal and carved feet. Solid wood chair with tapestry cushions, handcarved designed front and back.&nbsp;Table: &nbsp;44&quot; X 72&quot; ~ 108&quot; (with 2&quot; X 18&quot; Leaf) X 30&quot; H&nbsp; Hutch/Buffet: (2400-B &amp; 2400-H - 2 Boxes) Buffet: 60&quot; X 18&quot; X 33&quot; | Hutch: 60&quot; X 16.5&quot; X 53&quot; H Not on Display in Store|&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CrownMark Furniture &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 Pc. Dining Set &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hutch/Buffet (Optional)|1'),
	(49, 12, 1, '(#3) 2401S|None|Neo Renaissance Formal Dining Set - Neo Renaissance Dining:2 Additional Side Chairs|BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES|319|By:&nbsp;Crown Mark&nbsp;-&nbsp;2400&nbsp;-&nbsp; 7 Pc.&nbsp;Neo Renaissance Formal Dining Set - Optional Hutch/Buffet 7 Pc. Set: Price is for Table (2400-Top &amp; 2400-Leg - 2 Boxes) + 4 Side Chairs (2401S - 2 Boxes) + 2 Arm Chairs (2401A - 1 Box)&nbsp;Rich dark burnished finish with sunburts match cherry veneer, burl inlays on table top and apron, ornate pedestal and carved feet. Solid wood chair with tapestry cushions, handcarved designed front and back.&nbsp;Table: &nbsp;44&quot; X 72&quot; ~ 108&quot; (with 2&quot; X 18&quot; Leaf) X 30&quot; H&nbsp; Hutch/Buffet: (2400-B &amp; 2400-H - 2 Boxes) Buffet: 60&quot; X 18&quot; X 33&quot; | Hutch: 60&quot; X 16.5&quot; X 53&quot; H Not on Display in Store|&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CrownMark Furniture &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7 Pc. Dining Set &middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hutch/Buffet (Optional)|1');
/*!40000 ALTER TABLE `catalogsearch_fulltext` ENABLE KEYS */;


-- Dumping structure for table mag.catalogsearch_query
DROP TABLE IF EXISTS `catalogsearch_query`;
CREATE TABLE IF NOT EXISTS `catalogsearch_query` (
  `query_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Query ID',
  `query_text` varchar(255) DEFAULT NULL COMMENT 'Query text',
  `num_results` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Num results',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `redirect` varchar(255) DEFAULT NULL COMMENT 'Redirect',
  `synonym_for` varchar(255) DEFAULT NULL COMMENT 'Synonym for',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `display_in_terms` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Display in terms',
  `is_active` smallint(6) DEFAULT '1' COMMENT 'Active status',
  `is_processed` smallint(6) DEFAULT '0' COMMENT 'Processed status',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated at',
  PRIMARY KEY (`query_id`),
  KEY `IDX_CATALOGSEARCH_QUERY_QUERY_TEXT_STORE_ID_POPULARITY` (`query_text`,`store_id`,`popularity`),
  KEY `IDX_CATALOGSEARCH_QUERY_STORE_ID` (`store_id`),
  KEY `IDX_CATALOGSEARCH_QUERY_SYNONYM_FOR` (`synonym_for`),
  CONSTRAINT `FK_CATALOGSEARCH_QUERY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog search query table';

-- Dumping data for table mag.catalogsearch_query: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalogsearch_query` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogsearch_query` ENABLE KEYS */;


-- Dumping structure for table mag.catalogsearch_result
DROP TABLE IF EXISTS `catalogsearch_result`;
CREATE TABLE IF NOT EXISTS `catalogsearch_result` (
  `query_id` int(10) unsigned NOT NULL COMMENT 'Query ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `relevance` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Relevance',
  PRIMARY KEY (`query_id`,`product_id`),
  KEY `IDX_CATALOGSEARCH_RESULT_QUERY_ID` (`query_id`),
  KEY `IDX_CATALOGSEARCH_RESULT_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_CATALOGSEARCH_RESULT_QUERY_ID_CATALOGSEARCH_QUERY_QUERY_ID` FOREIGN KEY (`query_id`) REFERENCES `catalogsearch_query` (`query_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATSRCH_RESULT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog search result table';

-- Dumping data for table mag.catalogsearch_result: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalogsearch_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogsearch_result` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_category_anc_categs_index_idx
DROP TABLE IF EXISTS `catalog_category_anc_categs_index_idx`;
CREATE TABLE IF NOT EXISTS `catalog_category_anc_categs_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `path` varchar(255) DEFAULT NULL COMMENT 'Path',
  KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_IDX_CATEGORY_ID` (`category_id`),
  KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_IDX_PATH_CATEGORY_ID` (`path`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Indexer Index Table';

-- Dumping data for table mag.catalog_category_anc_categs_index_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_anc_categs_index_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_category_anc_categs_index_idx` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_category_anc_categs_index_tmp
DROP TABLE IF EXISTS `catalog_category_anc_categs_index_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_category_anc_categs_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `path` varchar(255) DEFAULT NULL COMMENT 'Path',
  KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_TMP_CATEGORY_ID` (`category_id`),
  KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_TMP_PATH_CATEGORY_ID` (`path`,`category_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Indexer Temp Table';

-- Dumping data for table mag.catalog_category_anc_categs_index_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_category_anc_categs_index_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_category_anc_categs_index_tmp` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_category_anc_products_index_idx
DROP TABLE IF EXISTS `catalog_category_anc_products_index_idx`;
CREATE TABLE IF NOT EXISTS `catalog_category_anc_products_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  KEY `IDX_CAT_CTGR_ANC_PRDS_IDX_IDX_CTGR_ID_PRD_ID_POSITION` (`category_id`,`product_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Product Indexer Index Table';

-- Dumping data for table mag.catalog_category_anc_products_index_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_anc_products_index_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_category_anc_products_index_idx` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_category_anc_products_index_tmp
DROP TABLE IF EXISTS `catalog_category_anc_products_index_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_category_anc_products_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  KEY `IDX_CAT_CTGR_ANC_PRDS_IDX_TMP_CTGR_ID_PRD_ID_POSITION` (`category_id`,`product_id`,`position`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Product Indexer Temp Table';

-- Dumping data for table mag.catalog_category_anc_products_index_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_category_anc_products_index_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_category_anc_products_index_tmp` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_category_entity
DROP TABLE IF EXISTS `catalog_category_entity`;
CREATE TABLE IF NOT EXISTS `catalog_category_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attriute Set ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int(11) NOT NULL COMMENT 'Position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int(11) NOT NULL COMMENT 'Child Count',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_LEVEL` (`level`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_PATH_ENTITY_ID` (`path`,`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Table';

-- Dumping data for table mag.catalog_category_entity: ~7 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_entity` DISABLE KEYS */;
INSERT INTO `catalog_category_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`) VALUES
	(1, 3, 0, 0, '2014-10-10 10:03:08', '2014-10-10 10:03:08', '1', 0, 0, 6),
	(2, 3, 3, 1, '2014-10-10 10:03:08', '2014-10-10 10:03:08', '1/2', 1, 1, 5),
	(97, 3, 3, 2, '2014-10-14 19:20:52', '2014-10-14 19:20:52', '1/2/97', 1, 2, 0),
	(98, 3, 3, 2, '2014-10-14 19:20:52', '2014-10-14 19:20:52', '1/2/98', 1, 2, 0),
	(99, 3, 3, 2, '2014-10-14 19:20:53', '2014-10-14 19:20:53', '1/2/99', 1, 2, 0),
	(100, 3, 3, 2, '2014-10-14 19:20:53', '2014-10-14 19:20:53', '1/2/100', 1, 2, 0),
	(101, 3, 3, 2, '2014-10-14 19:20:53', '2014-10-14 19:20:53', '1/2/101', 1, 2, 0);
/*!40000 ALTER TABLE `catalog_category_entity` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_category_entity_datetime
DROP TABLE IF EXISTS `catalog_category_entity_datetime`;
CREATE TABLE IF NOT EXISTS `catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_DTIME_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_DTIME_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Datetime Attribute Backend Table';

-- Dumping data for table mag.catalog_category_entity_datetime: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_entity_datetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_category_entity_datetime` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_category_entity_decimal
DROP TABLE IF EXISTS `catalog_category_entity_decimal`;
CREATE TABLE IF NOT EXISTS `catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_DEC_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_DEC_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Decimal Attribute Backend Table';

-- Dumping data for table mag.catalog_category_entity_decimal: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_entity_decimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_category_entity_decimal` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_category_entity_int
DROP TABLE IF EXISTS `catalog_category_entity_int`;
CREATE TABLE IF NOT EXISTS `catalog_category_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_INT_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_INT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Integer Attribute Backend Table';

-- Dumping data for table mag.catalog_category_entity_int: ~16 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_entity_int` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
	(1, 3, 67, 0, 1, 1),
	(2, 3, 67, 1, 1, 1),
	(3, 3, 42, 0, 2, 1),
	(4, 3, 67, 0, 2, 1),
	(5, 3, 42, 1, 2, 1),
	(6, 3, 67, 1, 2, 1),
	(195, 3, 42, 0, 97, 1),
	(196, 3, 67, 0, 97, 1),
	(197, 3, 42, 0, 98, 1),
	(198, 3, 67, 0, 98, 1),
	(199, 3, 42, 0, 99, 1),
	(200, 3, 67, 0, 99, 1),
	(201, 3, 42, 0, 100, 1),
	(202, 3, 67, 0, 100, 1),
	(203, 3, 42, 0, 101, 1),
	(204, 3, 67, 0, 101, 1);
/*!40000 ALTER TABLE `catalog_category_entity_int` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_category_entity_text
DROP TABLE IF EXISTS `catalog_category_entity_text`;
CREATE TABLE IF NOT EXISTS `catalog_category_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_TEXT_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_TEXT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Text Attribute Backend Table';

-- Dumping data for table mag.catalog_category_entity_text: ~19 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_entity_text` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
	(1, 3, 65, 0, 1, NULL),
	(2, 3, 65, 1, 1, NULL),
	(3, 3, 65, 0, 2, NULL),
	(4, 3, 65, 1, 2, NULL),
	(287, 3, 44, 0, 97, ''),
	(288, 3, 48, 0, 97, ''),
	(289, 3, 47, 0, 97, ''),
	(290, 3, 44, 0, 98, ''),
	(291, 3, 48, 0, 98, ''),
	(292, 3, 47, 0, 98, ''),
	(293, 3, 44, 0, 99, ''),
	(294, 3, 48, 0, 99, ''),
	(295, 3, 47, 0, 99, ''),
	(296, 3, 44, 0, 100, ''),
	(297, 3, 48, 0, 100, ''),
	(298, 3, 47, 0, 100, ''),
	(299, 3, 44, 0, 101, ''),
	(300, 3, 48, 0, 101, ''),
	(301, 3, 47, 0, 101, '');
/*!40000 ALTER TABLE `catalog_category_entity_text` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_category_entity_varchar
DROP TABLE IF EXISTS `catalog_category_entity_varchar`;
CREATE TABLE IF NOT EXISTS `catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_VCHR_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_VCHR_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Varchar Attribute Backend Table';

-- Dumping data for table mag.catalog_category_entity_varchar: ~37 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_entity_varchar` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
	(1, 3, 41, 0, 1, 'Root Catalog'),
	(2, 3, 41, 1, 1, 'Root Catalog'),
	(3, 3, 43, 1, 1, 'root-catalog'),
	(4, 3, 41, 0, 2, 'Default Category'),
	(5, 3, 41, 1, 2, 'Default Category'),
	(6, 3, 49, 1, 2, 'PRODUCTS'),
	(7, 3, 43, 1, 2, 'default-category'),
	(356, 3, 41, 0, 97, 'Casing'),
	(357, 3, 46, 0, 97, 'Casing'),
	(358, 3, 41, 0, 98, 'Picture Frame Molding'),
	(359, 3, 46, 0, 98, 'Picture Frame Molding'),
	(360, 3, 41, 0, 99, 'Picture Frames'),
	(361, 3, 46, 0, 99, 'Picture Frames'),
	(362, 3, 41, 0, 100, 'Rosettes & Medallions'),
	(363, 3, 46, 0, 100, 'Rosettes & Medallions'),
	(364, 3, 41, 0, 101, 'Base Molding'),
	(365, 3, 46, 0, 101, 'Base Molding'),
	(366, 3, 43, 1, 100, 'rosettes-medallions'),
	(367, 3, 43, 0, 100, 'rosettes-medallions'),
	(368, 3, 57, 1, 100, 'rosettes-medallions.html'),
	(369, 3, 57, 0, 100, 'rosettes-medallions.html'),
	(370, 3, 43, 1, 101, 'base-molding'),
	(371, 3, 43, 0, 101, 'base-molding'),
	(372, 3, 57, 1, 101, 'base-molding.html'),
	(373, 3, 57, 0, 101, 'base-molding.html'),
	(374, 3, 43, 1, 97, 'casing'),
	(375, 3, 43, 0, 97, 'casing'),
	(376, 3, 57, 1, 97, 'casing.html'),
	(377, 3, 57, 0, 97, 'casing.html'),
	(378, 3, 43, 1, 98, 'picture-frame-molding'),
	(379, 3, 43, 0, 98, 'picture-frame-molding'),
	(380, 3, 57, 1, 98, 'picture-frame-molding.html'),
	(381, 3, 57, 0, 98, 'picture-frame-molding.html'),
	(382, 3, 43, 1, 99, 'picture-frames'),
	(383, 3, 43, 0, 99, 'picture-frames'),
	(384, 3, 57, 1, 99, 'picture-frames.html'),
	(385, 3, 57, 0, 99, 'picture-frames.html');
/*!40000 ALTER TABLE `catalog_category_entity_varchar` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_category_flat_store_1
DROP TABLE IF EXISTS `catalog_category_flat_store_1`;
CREATE TABLE IF NOT EXISTS `catalog_category_flat_store_1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'entity_id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'parent_id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'created_at',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'updated_at',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT 'path',
  `position` int(11) NOT NULL COMMENT 'position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'level',
  `children_count` int(11) NOT NULL COMMENT 'children_count',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `all_children` text COMMENT 'All Children',
  `available_sort_by` text COMMENT 'Available Product Listing Sort By',
  `children` text COMMENT 'Children',
  `custom_apply_to_products` int(11) DEFAULT NULL COMMENT 'Apply To Products',
  `custom_design` varchar(255) DEFAULT NULL COMMENT 'Custom Design',
  `custom_design_from` datetime DEFAULT NULL COMMENT 'Active From',
  `custom_design_to` datetime DEFAULT NULL COMMENT 'Active To',
  `custom_layout_update` text COMMENT 'Custom Layout Update',
  `custom_use_parent_settings` int(11) DEFAULT NULL COMMENT 'Use Parent Category Settings',
  `default_sort_by` varchar(255) DEFAULT NULL COMMENT 'Default Product Listing Sort By',
  `description` text COMMENT 'Description',
  `display_mode` varchar(255) DEFAULT NULL COMMENT 'Display Mode',
  `filter_price_range` decimal(12,4) DEFAULT NULL COMMENT 'Layered Navigation Price Step',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `include_in_menu` int(11) DEFAULT NULL COMMENT 'Include in Navigation Menu',
  `is_active` int(11) DEFAULT NULL COMMENT 'Is Active',
  `is_anchor` int(11) DEFAULT NULL COMMENT 'Is Anchor',
  `landing_page` int(11) DEFAULT NULL COMMENT 'CMS Block',
  `meta_description` text COMMENT 'Meta Description',
  `meta_keywords` text COMMENT 'Meta Keywords',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Page Layout',
  `path_in_store` text COMMENT 'Path In Store',
  `thumbnail` varchar(255) DEFAULT NULL COMMENT 'Thumbnail Image',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'URL Key',
  `url_path` varchar(255) DEFAULT NULL COMMENT 'Url Path',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_FLAT_STORE_1_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_CATEGORY_FLAT_STORE_1_PATH` (`path`),
  KEY `IDX_CATALOG_CATEGORY_FLAT_STORE_1_LEVEL` (`level`),
  CONSTRAINT `FK_CATALOG_CATEGORY_FLAT_STORE_1_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_FLAT_STORE_1_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Flat (Store 1)';

-- Dumping data for table mag.catalog_category_flat_store_1: ~7 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_flat_store_1` DISABLE KEYS */;
INSERT INTO `catalog_category_flat_store_1` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `store_id`, `all_children`, `available_sort_by`, `children`, `custom_apply_to_products`, `custom_design`, `custom_design_from`, `custom_design_to`, `custom_layout_update`, `custom_use_parent_settings`, `default_sort_by`, `description`, `display_mode`, `filter_price_range`, `image`, `include_in_menu`, `is_active`, `is_anchor`, `landing_page`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `page_layout`, `path_in_store`, `thumbnail`, `url_key`, `url_path`) VALUES
	(1, 0, '2014-10-10 10:03:08', '2014-10-10 10:03:08', '1', 0, 0, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Root Catalog', NULL, NULL, NULL, 'root-catalog', NULL),
	(2, 1, '2014-10-10 10:03:08', '2014-10-10 10:03:08', '1/2', 1, 1, 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PRODUCTS', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 'Default Category', NULL, NULL, NULL, 'default-category', NULL),
	(97, 2, '2014-10-14 19:20:52', '2014-10-14 19:20:52', '1/2/97', 1, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 1, NULL, NULL, '', '', 'Casing', 'Casing', NULL, NULL, NULL, 'casing', 'casing.html'),
	(98, 2, '2014-10-14 19:20:52', '2014-10-14 19:20:52', '1/2/98', 1, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 1, NULL, NULL, '', '', 'Picture Frame Molding', 'Picture Frame Molding', NULL, NULL, NULL, 'picture-frame-molding', 'picture-frame-molding.html'),
	(99, 2, '2014-10-14 19:20:53', '2014-10-14 19:20:53', '1/2/99', 1, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 1, NULL, NULL, '', '', 'Picture Frames', 'Picture Frames', NULL, NULL, NULL, 'picture-frames', 'picture-frames.html'),
	(100, 2, '2014-10-14 19:20:53', '2014-10-14 19:20:53', '1/2/100', 1, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 1, NULL, NULL, '', '', 'Rosettes & Medallions', 'Rosettes & Medallions', NULL, NULL, NULL, 'rosettes-medallions', 'rosettes-medallions.html'),
	(101, 2, '2014-10-14 19:20:53', '2014-10-14 19:20:53', '1/2/101', 1, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 1, 1, NULL, NULL, '', '', 'Base Molding', 'Base Molding', NULL, NULL, NULL, 'base-molding', 'base-molding.html');
/*!40000 ALTER TABLE `catalog_category_flat_store_1` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_category_product
DROP TABLE IF EXISTS `catalog_category_product`;
CREATE TABLE IF NOT EXISTS `catalog_category_product` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`category_id`,`product_id`),
  KEY `IDX_CATALOG_CATEGORY_PRODUCT_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_CAT_CTGR_PRD_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Category Linkage Table';

-- Dumping data for table mag.catalog_category_product: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_category_product` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_category_product_index
DROP TABLE IF EXISTS `catalog_category_product_index`;
CREATE TABLE IF NOT EXISTS `catalog_category_product_index` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `IDX_CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `15D3C269665C74C2219037D534F4B0DC` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`),
  CONSTRAINT `FK_CATALOG_CATEGORY_PRODUCT_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_PRD_IDX_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

-- Dumping data for table mag.catalog_category_product_index: ~13 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_product_index` DISABLE KEYS */;
INSERT INTO `catalog_category_product_index` (`category_id`, `product_id`, `position`, `is_parent`, `store_id`, `visibility`) VALUES
	(2, 3, 0, 1, 1, 4),
	(2, 4, 0, 1, 1, 4),
	(2, 10, 0, 1, 1, 4),
	(2, 11, 0, 1, 1, 4),
	(2, 12, 0, 1, 1, 4),
	(2, 13, 0, 1, 1, 4),
	(2, 14, 0, 1, 1, 4),
	(2, 20, 0, 1, 1, 4),
	(2, 31, 0, 1, 1, 4),
	(2, 32, 0, 1, 1, 4),
	(2, 33, 0, 1, 1, 4),
	(2, 34, 0, 1, 1, 4),
	(2, 35, 0, 1, 1, 4);
/*!40000 ALTER TABLE `catalog_category_product_index` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_category_product_index_enbl_idx
DROP TABLE IF EXISTS `catalog_category_product_index_enbl_idx`;
CREATE TABLE IF NOT EXISTS `catalog_category_product_index_enbl_idx` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `visibility` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  KEY `IDX_CAT_CTGR_PRD_IDX_ENBL_IDX_PRD_ID_VISIBILITY` (`product_id`,`visibility`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Enabled Indexer Index Table';

-- Dumping data for table mag.catalog_category_product_index_enbl_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_product_index_enbl_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_category_product_index_enbl_idx` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_category_product_index_enbl_tmp
DROP TABLE IF EXISTS `catalog_category_product_index_enbl_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_category_product_index_enbl_tmp` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `visibility` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  KEY `IDX_CAT_CTGR_PRD_IDX_ENBL_TMP_PRD_ID_VISIBILITY` (`product_id`,`visibility`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Enabled Indexer Temp Table';

-- Dumping data for table mag.catalog_category_product_index_enbl_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_category_product_index_enbl_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_category_product_index_enbl_tmp` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_category_product_index_idx
DROP TABLE IF EXISTS `catalog_category_product_index_idx`;
CREATE TABLE IF NOT EXISTS `catalog_category_product_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  KEY `IDX_CAT_CTGR_PRD_IDX_IDX_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Index Table';

-- Dumping data for table mag.catalog_category_product_index_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_product_index_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_category_product_index_idx` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_category_product_index_tmp
DROP TABLE IF EXISTS `catalog_category_product_index_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_category_product_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  KEY `IDX_CAT_CTGR_PRD_IDX_TMP_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Temp Table';

-- Dumping data for table mag.catalog_category_product_index_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_category_product_index_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_category_product_index_tmp` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_compare_item
DROP TABLE IF EXISTS `catalog_compare_item`;
CREATE TABLE IF NOT EXISTS `catalog_compare_item` (
  `catalog_compare_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Compare Item ID',
  `visitor_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`catalog_compare_item_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_COMPARE_ITEM_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATALOG_COMPARE_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CMP_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Compare Table';

-- Dumping data for table mag.catalog_compare_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_compare_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_compare_item` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_eav_attribute
DROP TABLE IF EXISTS `catalog_eav_attribute`;
CREATE TABLE IF NOT EXISTS `catalog_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `is_configurable` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Configurable',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules',
  PRIMARY KEY (`attribute_id`),
  KEY `IDX_CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`),
  KEY `IDX_CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`),
  CONSTRAINT `FK_CATALOG_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog EAV Attribute Table';

-- Dumping data for table mag.catalog_eav_attribute: ~114 rows (approximately)
/*!40000 ALTER TABLE `catalog_eav_attribute` DISABLE KEYS */;
INSERT INTO `catalog_eav_attribute` (`attribute_id`, `frontend_input_renderer`, `is_global`, `is_visible`, `is_searchable`, `is_filterable`, `is_comparable`, `is_visible_on_front`, `is_html_allowed_on_front`, `is_used_for_price_rules`, `is_filterable_in_search`, `used_in_product_listing`, `used_for_sort_by`, `is_configurable`, `apply_to`, `is_visible_in_advanced_search`, `position`, `is_wysiwyg_enabled`, `is_used_for_promo_rules`) VALUES
	(41, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(42, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(43, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(44, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL, 0, 0, 1, 0),
	(45, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(46, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(47, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(48, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(49, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(50, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(51, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(52, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(53, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(54, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(55, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(56, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(57, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(58, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(59, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(60, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(61, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(62, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(63, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(64, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(65, 'adminhtml/catalog_category_helper_sortby_available', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(66, 'adminhtml/catalog_category_helper_sortby_default', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(67, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(68, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(69, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(70, 'adminhtml/catalog_category_helper_pricestep', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(71, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 0, 0, 0),
	(72, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, NULL, 1, 0, 1, 0),
	(73, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, NULL, 1, 0, 1, 0),
	(74, NULL, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 0, 0, 0),
	(75, NULL, 2, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 'simple,configurable,virtual,bundle,downloadable', 1, 0, 0, 0),
	(76, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
	(77, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
	(78, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
	(79, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'virtual,downloadable', 0, 0, 0, 0),
	(80, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,bundle', 0, 0, 0, 0),
	(81, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 1, 0, 0, 0),
	(82, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(83, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(84, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(85, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(86, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
	(87, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
	(88, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(89, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(90, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
	(91, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
	(92, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'simple', 1, 0, 0, 0),
	(93, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
	(94, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
	(95, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(96, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
	(97, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
	(98, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(99, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
	(100, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
	(101, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
	(102, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(103, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(104, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(105, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(106, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(107, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(108, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(109, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(110, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
	(111, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(112, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
	(113, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
	(114, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
	(115, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(116, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(117, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,configurable,bundle,grouped', 0, 0, 0, 0),
	(118, 'adminhtml/catalog_product_helper_form_msrp_enabled', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
	(119, 'adminhtml/catalog_product_helper_form_msrp_price', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
	(120, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
	(121, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,downloadable,bundle', 1, 0, 0, 0),
	(122, 'giftmessage/adminhtml_product_helper_form_config', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
	(123, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
	(124, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'bundle', 0, 0, 0, 0),
	(125, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
	(126, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
	(127, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
	(128, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0),
	(129, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
	(130, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
	(131, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0),
	(132, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(801, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(802, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(803, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(804, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(805, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(806, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(807, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(808, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(809, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(810, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(811, NULL, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(812, NULL, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(813, NULL, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(814, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(815, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(816, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(817, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(818, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(819, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(820, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(821, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(822, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0);
/*!40000 ALTER TABLE `catalog_eav_attribute` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_bundle_option
DROP TABLE IF EXISTS `catalog_product_bundle_option`;
CREATE TABLE IF NOT EXISTS `catalog_product_bundle_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `type` varchar(255) DEFAULT NULL COMMENT 'Type',
  PRIMARY KEY (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_OPTION_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_CAT_PRD_BNDL_OPT_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option';

-- Dumping data for table mag.catalog_product_bundle_option: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_bundle_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_bundle_option` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_bundle_option_value
DROP TABLE IF EXISTS `catalog_product_bundle_option_value`;
CREATE TABLE IF NOT EXISTS `catalog_product_bundle_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_BUNDLE_OPTION_VALUE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  CONSTRAINT `FK_CAT_PRD_BNDL_OPT_VAL_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option Value';

-- Dumping data for table mag.catalog_product_bundle_option_value: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_bundle_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_bundle_option_value` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_bundle_price_index
DROP TABLE IF EXISTS `catalog_product_bundle_price_index`;
CREATE TABLE IF NOT EXISTS `catalog_product_bundle_price_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `min_price` decimal(12,4) NOT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) NOT NULL COMMENT 'Max Price',
  PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Price Index';

-- Dumping data for table mag.catalog_product_bundle_price_index: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_bundle_price_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_bundle_price_index` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_bundle_selection
DROP TABLE IF EXISTS `catalog_product_bundle_selection`;
CREATE TABLE IF NOT EXISTS `catalog_product_bundle_selection` (
  `selection_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Selection Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `parent_product_id` int(10) unsigned NOT NULL COMMENT 'Parent Product Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  `selection_qty` decimal(12,4) DEFAULT NULL COMMENT 'Selection Qty',
  `selection_can_change_qty` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Selection Can Change Qty',
  PRIMARY KEY (`selection_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION_ID` (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection';

-- Dumping data for table mag.catalog_product_bundle_selection: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_bundle_selection` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_bundle_selection` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_bundle_selection_price
DROP TABLE IF EXISTS `catalog_product_bundle_selection_price`;
CREATE TABLE IF NOT EXISTS `catalog_product_bundle_selection_price` (
  `selection_id` int(10) unsigned NOT NULL COMMENT 'Selection Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  PRIMARY KEY (`selection_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DCF37523AA05D770A70AA4ED7C2616E4` FOREIGN KEY (`selection_id`) REFERENCES `catalog_product_bundle_selection` (`selection_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection Price';

-- Dumping data for table mag.catalog_product_bundle_selection_price: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_bundle_selection_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_bundle_selection_price` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_bundle_stock_index
DROP TABLE IF EXISTS `catalog_product_bundle_stock_index`;
CREATE TABLE IF NOT EXISTS `catalog_product_bundle_stock_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `stock_status` smallint(6) DEFAULT '0' COMMENT 'Stock Status',
  PRIMARY KEY (`entity_id`,`website_id`,`stock_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Stock Index';

-- Dumping data for table mag.catalog_product_bundle_stock_index: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_bundle_stock_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_bundle_stock_index` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_enabled_index
DROP TABLE IF EXISTS `catalog_product_enabled_index`;
CREATE TABLE IF NOT EXISTS `catalog_product_enabled_index` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  PRIMARY KEY (`product_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENABLED_INDEX_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_PRODUCT_ENABLED_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENABLED_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Visibility Index Table';

-- Dumping data for table mag.catalog_product_enabled_index: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_enabled_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_enabled_index` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_entity
DROP TABLE IF EXISTS `catalog_product_entity`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Has Options',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required Options',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_SKU` (`sku`),
  CONSTRAINT `FK_CAT_PRD_ENTT_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Table';

-- Dumping data for table mag.catalog_product_entity: ~35 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity` DISABLE KEYS */;
INSERT INTO `catalog_product_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `type_id`, `sku`, `has_options`, `required_options`, `created_at`, `updated_at`) VALUES
	(1, 4, 85, 'simple', '(#2) CM7007Q-HB + CM7007Q-FBR  + CM7088N + CM7088D + CM7088M', 0, 0, '2014-10-17 14:53:33', '2014-10-17 14:53:33'),
	(2, 4, 85, 'simple', '(#3) CM7007Q-HB + CM7007Q-FBR', 0, 0, '2014-10-17 14:53:34', '2014-10-17 14:53:34'),
	(3, 4, 85, 'simple', '(#3) CM7007 Queen Bed + CM7088N X 2 + CM7088D, CM7088M, CM7088C', 0, 0, '2014-10-17 14:53:35', '2014-10-17 14:53:35'),
	(4, 4, 85, 'grouped', 'CM7007 (Q / K Bed) | CM7088N | CM7088D | CM7088M | CM088C', 1, 1, '2014-10-17 14:53:36', '2014-10-17 14:53:36'),
	(5, 4, 85, 'simple', '2010-2', 0, 0, '2014-10-17 14:53:37', '2014-10-17 14:53:37'),
	(6, 4, 85, 'simple', '2010-3', 0, 0, '2014-10-17 14:53:38', '2014-10-17 14:53:38'),
	(7, 4, 85, 'simple', '2010-4', 0, 0, '2014-10-17 14:53:39', '2014-10-17 14:53:39'),
	(8, 4, 85, 'simple', '2010-5', 0, 0, '2014-10-17 14:53:40', '2014-10-17 14:53:40'),
	(9, 4, 85, 'grouped', '2010', 1, 1, '2014-10-17 14:53:40', '2014-10-17 14:53:40'),
	(10, 4, 85, 'simple', '(#1) 2400 7 Pc. Set', 0, 0, '2014-10-17 14:53:44', '2014-10-17 14:53:44'),
	(11, 4, 85, 'simple', '(#2) 2400-H/B', 0, 0, '2014-10-17 14:53:45', '2014-10-17 14:53:45'),
	(12, 4, 85, 'simple', '(#3) 2401S', 0, 0, '2014-10-17 14:53:47', '2014-10-17 14:53:47'),
	(13, 4, 85, 'simple', '(#4) 2401A', 0, 0, '2014-10-17 14:53:48', '2014-10-17 14:53:48'),
	(14, 4, 85, 'grouped', '2400', 1, 1, '2014-10-17 14:53:49', '2014-10-17 14:53:49'),
	(15, 4, 85, 'simple', '(#1) 2120 7 Pc. Set', 0, 0, '2014-10-17 14:53:51', '2014-10-17 14:53:51'),
	(16, 4, 85, 'simple', '(#2) 2120 Hutch/Buffet', 0, 0, '2014-10-17 14:53:52', '2014-10-17 14:53:52'),
	(17, 4, 85, 'simple', '(#3) 2120S-N', 0, 0, '2014-10-17 14:53:53', '2014-10-17 14:53:53'),
	(18, 4, 85, 'simple', '(#4) 2120A-N', 0, 0, '2014-10-17 14:53:53', '2014-10-17 14:53:53'),
	(19, 4, 85, 'grouped', '2120 -PS#7', 1, 1, '2014-10-17 14:53:54', '2014-10-17 14:53:54'),
	(20, 4, 85, 'simple', '2455', 0, 0, '2014-10-17 14:53:59', '2014-10-17 14:53:59'),
	(21, 4, 85, 'simple', '2450-1', 0, 0, '2014-10-17 14:54:01', '2014-10-17 14:54:01'),
	(22, 4, 85, 'simple', '2450-2', 0, 0, '2014-10-17 14:54:02', '2014-10-17 14:54:02'),
	(23, 4, 85, 'simple', '2450-3', 0, 0, '2014-10-17 14:54:02', '2014-10-17 14:54:02'),
	(24, 4, 85, 'simple', '2450-4', 0, 0, '2014-10-17 14:54:03', '2014-10-17 14:54:03'),
	(25, 4, 85, 'simple', '2450-5', 0, 0, '2014-10-17 14:54:04', '2014-10-17 14:54:04'),
	(26, 4, 85, 'grouped', '2450', 1, 1, '2014-10-17 14:54:05', '2014-10-17 14:54:05'),
	(27, 4, 85, 'simple', '2123-1', 0, 0, '2014-10-17 14:54:09', '2014-10-17 14:54:09'),
	(28, 4, 85, 'simple', '2123-2', 0, 0, '2014-10-17 14:54:10', '2014-10-17 14:54:10'),
	(29, 4, 85, 'simple', '2123-3', 0, 0, '2014-10-17 14:54:11', '2014-10-17 14:54:11'),
	(30, 4, 85, 'grouped', '2123', 1, 1, '2014-10-17 14:54:12', '2014-10-17 14:54:12'),
	(31, 4, 85, 'simple', '(#1) 2145 7 Pc. Set', 0, 0, '2014-10-17 14:54:13', '2014-10-17 14:54:13'),
	(32, 4, 85, 'simple', '(#2) 2145-H/B', 0, 0, '2014-10-17 14:54:14', '2014-10-17 14:54:14'),
	(33, 4, 85, 'simple', '(#3) 2146S', 0, 0, '2014-10-17 14:54:15', '2014-10-17 14:54:15'),
	(34, 4, 85, 'simple', '(#4) 2146A', 0, 0, '2014-10-17 14:54:16', '2014-10-17 14:54:16'),
	(35, 4, 85, 'grouped', '2145', 1, 1, '2014-10-17 14:54:17', '2014-10-17 14:54:17');
/*!40000 ALTER TABLE `catalog_product_entity` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_entity_datetime
DROP TABLE IF EXISTS `catalog_product_entity_datetime`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_ENTT_DTIME_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_DTIME_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Datetime Attribute Backend Table';

-- Dumping data for table mag.catalog_product_entity_datetime: ~24 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity_datetime` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_datetime` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
	(1, 4, 77, 0, 1, '2014-10-17 14:53:33'),
	(2, 4, 78, 0, 1, '2024-10-17 14:53:33'),
	(3, 4, 77, 0, 3, '2014-10-17 14:53:35'),
	(4, 4, 78, 0, 3, '2024-10-17 14:53:35'),
	(5, 4, 77, 0, 4, '2014-10-17 14:53:36'),
	(6, 4, 78, 0, 4, '2024-10-17 14:53:36'),
	(7, 4, 77, 0, 10, '2014-10-17 14:53:44'),
	(8, 4, 78, 0, 10, '2024-10-17 14:53:44'),
	(9, 4, 77, 0, 11, '2014-10-17 14:53:45'),
	(10, 4, 78, 0, 11, '2024-10-17 14:53:45'),
	(11, 4, 77, 0, 14, '2014-10-17 14:53:49'),
	(12, 4, 78, 0, 14, '2024-10-17 14:53:49'),
	(13, 4, 77, 0, 15, '2012-05-01 00:00:00'),
	(14, 4, 78, 0, 15, '2012-05-01 00:00:00'),
	(15, 4, 77, 0, 16, '2014-10-17 14:53:52'),
	(16, 4, 78, 0, 16, '2024-10-17 14:53:52'),
	(17, 4, 77, 0, 19, '2014-10-17 14:53:54'),
	(18, 4, 78, 0, 19, '2024-10-17 14:53:54'),
	(19, 4, 77, 0, 31, '2014-10-17 14:54:13'),
	(20, 4, 78, 0, 31, '2024-10-17 14:54:13'),
	(21, 4, 77, 0, 32, '2014-10-17 14:54:14'),
	(22, 4, 78, 0, 32, '2024-10-17 14:54:14'),
	(23, 4, 77, 0, 35, '2014-10-17 14:54:17'),
	(24, 4, 78, 0, 35, '2024-10-17 14:54:17');
/*!40000 ALTER TABLE `catalog_product_entity_datetime` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_entity_decimal
DROP TABLE IF EXISTS `catalog_product_entity_decimal`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_ENTT_DEC_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Decimal Attribute Backend Table';

-- Dumping data for table mag.catalog_product_entity_decimal: ~71 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity_decimal` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_decimal` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
	(1, 4, 75, 0, 1, 0.0000),
	(2, 4, 76, 0, 1, 499.0000),
	(3, 4, 80, 0, 1, 0.0000),
	(4, 4, 75, 0, 2, 0.0000),
	(5, 4, 80, 0, 2, 0.0000),
	(6, 4, 75, 0, 3, 899.0000),
	(7, 4, 76, 0, 3, 749.0000),
	(8, 4, 80, 0, 3, 0.0000),
	(11, 4, 80, 0, 4, 0.0000),
	(12, 4, 75, 0, 5, 1699.0000),
	(13, 4, 80, 0, 5, 0.0000),
	(14, 4, 75, 0, 6, 1299.0000),
	(15, 4, 80, 0, 6, 0.0000),
	(16, 4, 75, 0, 7, 350.0000),
	(17, 4, 80, 0, 7, 0.0000),
	(18, 4, 75, 0, 8, 375.0000),
	(19, 4, 80, 0, 8, 0.0000),
	(21, 4, 80, 0, 9, 0.0000),
	(22, 4, 75, 0, 10, 1499.0000),
	(23, 4, 76, 0, 10, 1399.0000),
	(24, 4, 80, 0, 10, 0.0000),
	(25, 4, 75, 0, 11, 1100.0000),
	(26, 4, 76, 0, 11, 999.0000),
	(27, 4, 80, 0, 11, 0.0000),
	(28, 4, 75, 0, 12, 319.0000),
	(29, 4, 80, 0, 12, 0.0000),
	(30, 4, 75, 0, 13, 339.0000),
	(31, 4, 80, 0, 13, 0.0000),
	(34, 4, 80, 0, 14, 0.0000),
	(35, 4, 75, 0, 15, 1949.0000),
	(36, 4, 76, 0, 15, 1699.0000),
	(37, 4, 80, 0, 15, 0.0000),
	(38, 4, 75, 0, 16, 1230.0000),
	(39, 4, 76, 0, 16, 1099.0000),
	(40, 4, 80, 0, 16, 0.0000),
	(41, 4, 75, 0, 17, 469.0000),
	(42, 4, 80, 0, 17, 0.0000),
	(43, 4, 75, 0, 18, 499.0000),
	(44, 4, 80, 0, 18, 0.0000),
	(47, 4, 80, 0, 19, 0.0000),
	(48, 4, 75, 0, 20, 910.0000),
	(49, 4, 80, 0, 20, 0.0000),
	(50, 4, 75, 0, 21, 879.0000),
	(51, 4, 80, 0, 21, 0.0000),
	(52, 4, 75, 0, 22, 1120.0000),
	(53, 4, 80, 0, 22, 0.0000),
	(54, 4, 75, 0, 23, 799.0000),
	(55, 4, 80, 0, 23, 0.0000),
	(56, 4, 75, 0, 24, 210.0000),
	(57, 4, 80, 0, 24, 0.0000),
	(58, 4, 75, 0, 25, 240.0000),
	(59, 4, 80, 0, 25, 0.0000),
	(61, 4, 80, 0, 26, 0.0000),
	(62, 4, 75, 0, 27, 649.0000),
	(63, 4, 80, 0, 27, 0.0000),
	(64, 4, 75, 0, 28, 641.0000),
	(65, 4, 80, 0, 28, 0.0000),
	(66, 4, 75, 0, 29, 150.0000),
	(67, 4, 80, 0, 29, 0.0000),
	(69, 4, 80, 0, 30, 0.0000),
	(70, 4, 75, 0, 31, 750.0000),
	(71, 4, 76, 0, 31, 699.9500),
	(72, 4, 80, 0, 31, 0.0000),
	(73, 4, 75, 0, 32, 650.0000),
	(74, 4, 76, 0, 32, 599.9500),
	(75, 4, 80, 0, 32, 0.0000),
	(76, 4, 75, 0, 33, 179.0000),
	(77, 4, 80, 0, 33, 0.0000),
	(78, 4, 75, 0, 34, 199.0000),
	(79, 4, 80, 0, 34, 0.0000),
	(82, 4, 80, 0, 35, 0.0000);
/*!40000 ALTER TABLE `catalog_product_entity_decimal` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_entity_gallery
DROP TABLE IF EXISTS `catalog_product_entity_gallery`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_ENTT_GLR_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Gallery Attribute Backend Table';

-- Dumping data for table mag.catalog_product_entity_gallery: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_entity_gallery` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_entity_group_price
DROP TABLE IF EXISTS `catalog_product_entity_group_price`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity_group_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CC12C83765B562314470A24F2BDD0F36` (`entity_id`,`all_groups`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_CAT_PRD_ENTT_GROUP_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_GROUP_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DF909D22C11B60B1E5E3EE64AB220ECE` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Group Price Attribute Backend Table';

-- Dumping data for table mag.catalog_product_entity_group_price: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity_group_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_entity_group_price` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_entity_int
DROP TABLE IF EXISTS `catalog_product_entity_int`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID` (`entity_id`),
  CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_INT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Integer Attribute Backend Table';

-- Dumping data for table mag.catalog_product_entity_int: ~140 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity_int` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
	(1, 4, 81, 0, 1, 0),
	(2, 4, 96, 0, 1, 2),
	(3, 4, 121, 0, 1, 0),
	(4, 4, 102, 0, 1, 4),
	(5, 4, 81, 0, 2, 0),
	(6, 4, 96, 0, 2, 2),
	(7, 4, 121, 0, 2, 0),
	(8, 4, 102, 0, 2, 4),
	(9, 4, 81, 0, 3, 0),
	(10, 4, 96, 0, 3, 1),
	(11, 4, 121, 0, 3, 0),
	(12, 4, 102, 0, 3, 4),
	(13, 4, 81, 0, 4, 0),
	(14, 4, 96, 0, 4, 1),
	(15, 4, 121, 0, 4, 0),
	(16, 4, 102, 0, 4, 4),
	(17, 4, 81, 0, 5, 0),
	(18, 4, 96, 0, 5, 2),
	(19, 4, 121, 0, 5, 0),
	(20, 4, 102, 0, 5, 4),
	(21, 4, 81, 0, 6, 0),
	(22, 4, 96, 0, 6, 2),
	(23, 4, 121, 0, 6, 0),
	(24, 4, 102, 0, 6, 4),
	(25, 4, 81, 0, 7, 0),
	(26, 4, 96, 0, 7, 2),
	(27, 4, 121, 0, 7, 0),
	(28, 4, 102, 0, 7, 4),
	(29, 4, 81, 0, 8, 0),
	(30, 4, 96, 0, 8, 2),
	(31, 4, 121, 0, 8, 0),
	(32, 4, 102, 0, 8, 4),
	(33, 4, 81, 0, 9, 0),
	(34, 4, 96, 0, 9, 2),
	(35, 4, 121, 0, 9, 0),
	(36, 4, 102, 0, 9, 4),
	(37, 4, 81, 0, 10, 0),
	(38, 4, 96, 0, 10, 1),
	(39, 4, 121, 0, 10, 0),
	(40, 4, 102, 0, 10, 4),
	(41, 4, 81, 0, 11, 0),
	(42, 4, 96, 0, 11, 1),
	(43, 4, 121, 0, 11, 0),
	(44, 4, 102, 0, 11, 4),
	(45, 4, 81, 0, 12, 0),
	(46, 4, 96, 0, 12, 1),
	(47, 4, 121, 0, 12, 0),
	(48, 4, 102, 0, 12, 4),
	(49, 4, 81, 0, 13, 0),
	(50, 4, 96, 0, 13, 1),
	(51, 4, 121, 0, 13, 0),
	(52, 4, 102, 0, 13, 4),
	(53, 4, 81, 0, 14, 0),
	(54, 4, 96, 0, 14, 1),
	(55, 4, 121, 0, 14, 0),
	(56, 4, 102, 0, 14, 4),
	(57, 4, 81, 0, 15, 0),
	(58, 4, 96, 0, 15, 2),
	(59, 4, 121, 0, 15, 0),
	(60, 4, 102, 0, 15, 4),
	(61, 4, 81, 0, 16, 0),
	(62, 4, 96, 0, 16, 2),
	(63, 4, 121, 0, 16, 0),
	(64, 4, 102, 0, 16, 4),
	(65, 4, 81, 0, 17, 0),
	(66, 4, 96, 0, 17, 2),
	(67, 4, 121, 0, 17, 0),
	(68, 4, 102, 0, 17, 4),
	(69, 4, 81, 0, 18, 0),
	(70, 4, 96, 0, 18, 2),
	(71, 4, 121, 0, 18, 0),
	(72, 4, 102, 0, 18, 4),
	(73, 4, 81, 0, 19, 0),
	(74, 4, 96, 0, 19, 2),
	(75, 4, 121, 0, 19, 0),
	(76, 4, 102, 0, 19, 4),
	(77, 4, 81, 0, 20, 0),
	(78, 4, 96, 0, 20, 1),
	(79, 4, 121, 0, 20, 0),
	(80, 4, 102, 0, 20, 4),
	(81, 4, 81, 0, 21, 0),
	(82, 4, 96, 0, 21, 2),
	(83, 4, 121, 0, 21, 0),
	(84, 4, 102, 0, 21, 4),
	(85, 4, 81, 0, 22, 0),
	(86, 4, 96, 0, 22, 2),
	(87, 4, 121, 0, 22, 0),
	(88, 4, 102, 0, 22, 4),
	(89, 4, 81, 0, 23, 0),
	(90, 4, 96, 0, 23, 2),
	(91, 4, 121, 0, 23, 0),
	(92, 4, 102, 0, 23, 4),
	(93, 4, 81, 0, 24, 0),
	(94, 4, 96, 0, 24, 2),
	(95, 4, 121, 0, 24, 0),
	(96, 4, 102, 0, 24, 4),
	(97, 4, 81, 0, 25, 0),
	(98, 4, 96, 0, 25, 2),
	(99, 4, 121, 0, 25, 0),
	(100, 4, 102, 0, 25, 4),
	(101, 4, 81, 0, 26, 0),
	(102, 4, 96, 0, 26, 2),
	(103, 4, 121, 0, 26, 0),
	(104, 4, 102, 0, 26, 4),
	(105, 4, 81, 0, 27, 0),
	(106, 4, 96, 0, 27, 2),
	(107, 4, 121, 0, 27, 0),
	(108, 4, 102, 0, 27, 4),
	(109, 4, 81, 0, 28, 0),
	(110, 4, 96, 0, 28, 2),
	(111, 4, 121, 0, 28, 0),
	(112, 4, 102, 0, 28, 4),
	(113, 4, 81, 0, 29, 0),
	(114, 4, 96, 0, 29, 2),
	(115, 4, 121, 0, 29, 0),
	(116, 4, 102, 0, 29, 4),
	(117, 4, 81, 0, 30, 0),
	(118, 4, 96, 0, 30, 2),
	(119, 4, 121, 0, 30, 0),
	(120, 4, 102, 0, 30, 4),
	(121, 4, 81, 0, 31, 0),
	(122, 4, 96, 0, 31, 1),
	(123, 4, 121, 0, 31, 0),
	(124, 4, 102, 0, 31, 4),
	(125, 4, 81, 0, 32, 0),
	(126, 4, 96, 0, 32, 1),
	(127, 4, 121, 0, 32, 0),
	(128, 4, 102, 0, 32, 4),
	(129, 4, 81, 0, 33, 0),
	(130, 4, 96, 0, 33, 1),
	(131, 4, 121, 0, 33, 0),
	(132, 4, 102, 0, 33, 4),
	(133, 4, 81, 0, 34, 0),
	(134, 4, 96, 0, 34, 1),
	(135, 4, 121, 0, 34, 0),
	(136, 4, 102, 0, 34, 4),
	(137, 4, 81, 0, 35, 0),
	(138, 4, 96, 0, 35, 1),
	(139, 4, 121, 0, 35, 0),
	(140, 4, 102, 0, 35, 4);
/*!40000 ALTER TABLE `catalog_product_entity_int` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_entity_media_gallery
DROP TABLE IF EXISTS `catalog_product_entity_media_gallery`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity_media_gallery` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ENTITY_ID` (`entity_id`),
  CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Backend Table';

-- Dumping data for table mag.catalog_product_entity_media_gallery: ~100 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_media_gallery` (`value_id`, `attribute_id`, `entity_id`, `value`) VALUES
	(1, 88, 1, '/a/2/a2079201440f8cfe11cc6_l.jpg'),
	(2, 88, 1, '/a/2/a2079201440f8cfe11cc6_l.jpg'),
	(3, 88, 1, '/a/2/a2079201440f8cfe11cc6_l.jpg'),
	(4, 88, 1, '/a/2/a2079201440f8e1cf5cd8a_m.jpg'),
	(5, 88, 1, '/a/2/a2079201440f8fc2d6e76c_m.jpg'),
	(6, 88, 1, '/a/2/a2079201440f8fe84d845e_m.jpg'),
	(7, 88, 2, '/a/2/a2079201440f8cfe11cc6_l.jpg'),
	(8, 88, 2, '/a/2/a2079201440f8cfe11cc6_l.jpg'),
	(9, 88, 2, '/a/2/a2079201440f8cfe11cc6_l.jpg'),
	(10, 88, 2, '/a/2/a2079201440f8e1cf5cd8a_m.jpg'),
	(11, 88, 2, '/a/2/a2079201440f8fc2d6e76c_m.jpg'),
	(12, 88, 2, '/a/2/a2079201440f8fe84d845e_m.jpg'),
	(13, 88, 3, '/a/2/a2079201440f8cfe11cc6_l.jpg'),
	(16, 88, 3, '/a/2/a2079201440f8e1cf5cd8a_m.jpg'),
	(17, 88, 3, '/a/2/a2079201440f8fc2d6e76c_m.jpg'),
	(18, 88, 3, '/a/2/a2079201440f8fe84d845e_m.jpg'),
	(19, 88, 4, '/a/2/a2079201440f8cfe11cc6_l.jpg'),
	(22, 88, 4, '/a/2/a2079201440f8e1cf5cd8a_m.jpg'),
	(23, 88, 4, '/a/2/a2079201440f8fc2d6e76c_m.jpg'),
	(24, 88, 4, '/a/2/a2079201440f8fe84d845e_m.jpg'),
	(25, 88, 5, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(26, 88, 5, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(27, 88, 5, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(28, 88, 6, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(29, 88, 6, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(30, 88, 6, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(31, 88, 7, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(32, 88, 7, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(33, 88, 7, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(34, 88, 8, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(35, 88, 8, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(36, 88, 8, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(37, 88, 9, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(38, 88, 9, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(39, 88, 9, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(40, 88, 10, '/a/2/a20791b13f6e0d5ad3e115_m.jpg'),
	(43, 88, 11, '/a/2/a20791b13f6e0d5ad3e115_m.jpg'),
	(46, 88, 12, '/a/2/a20791b13f6e0d5ad3e115_m.jpg'),
	(49, 88, 13, '/a/2/a20791b13f6e0d5ad3e115_m.jpg'),
	(52, 88, 14, '/a/2/a20791b13f6e0d5ad3e115_m.jpg'),
	(55, 88, 15, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(56, 88, 15, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(57, 88, 15, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(58, 88, 16, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(59, 88, 16, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(60, 88, 16, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(61, 88, 17, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(62, 88, 17, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(63, 88, 17, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(64, 88, 18, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(65, 88, 18, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(66, 88, 18, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(67, 88, 19, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(68, 88, 19, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(69, 88, 19, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(70, 88, 20, '/a/2/a20792912d1041436e5886_m.jpg'),
	(73, 88, 20, '/a/2/a20792912d1041442ab25f_s.jpg'),
	(74, 88, 21, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(75, 88, 21, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(76, 88, 21, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(77, 88, 21, '/a/2/a20792912d1046f877c3a1_s.jpg'),
	(78, 88, 22, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(79, 88, 22, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(80, 88, 22, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(81, 88, 22, '/a/2/a20792912d1046f877c3a1_s.jpg'),
	(82, 88, 23, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(83, 88, 23, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(84, 88, 23, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(85, 88, 23, '/a/2/a20792912d1046f877c3a1_s.jpg'),
	(86, 88, 24, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(87, 88, 24, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(88, 88, 24, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(89, 88, 24, '/a/2/a20792912d1046f877c3a1_s.jpg'),
	(90, 88, 25, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(91, 88, 25, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(92, 88, 25, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(93, 88, 25, '/a/2/a20792912d1046f877c3a1_s.jpg'),
	(94, 88, 26, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(95, 88, 26, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(96, 88, 26, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(97, 88, 26, '/a/2/a20792912d1046f877c3a1_s.jpg'),
	(98, 88, 27, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(99, 88, 27, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(100, 88, 27, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(101, 88, 27, '/a/2/a20792912d10378a0a39ec_s.jpg'),
	(102, 88, 28, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(103, 88, 28, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(104, 88, 28, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(105, 88, 28, '/a/2/a20792912d10378a0a39ec_s.jpg'),
	(106, 88, 29, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(109, 88, 29, '/a/2/a20792912d10378a0a39ec_s.jpg'),
	(110, 88, 30, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(111, 88, 30, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(112, 88, 30, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(113, 88, 30, '/a/2/a20792912d10378a0a39ec_s.jpg'),
	(114, 88, 31, '/a/2/a20791b13f6e063a331af9_m.jpg'),
	(117, 88, 32, '/a/2/a20791b13f6e063a331af9_m.jpg'),
	(120, 88, 33, '/a/2/a20791b13f6e063a331af9_m.jpg'),
	(123, 88, 34, '/a/2/a20791b13f6e063a331af9_m.jpg'),
	(126, 88, 35, '/a/2/a20791b13f6e063a331af9_m.jpg');
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_entity_media_gallery_value
DROP TABLE IF EXISTS `catalog_product_entity_media_gallery_value`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity_media_gallery_value` (
  `value_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Value ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  `disabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Disabled',
  PRIMARY KEY (`value_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_VAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_VAL_VAL_ID_CAT_PRD_ENTT_MDA_GLR_VAL_ID` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Value Table';

-- Dumping data for table mag.catalog_product_entity_media_gallery_value: ~100 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_media_gallery_value` (`value_id`, `store_id`, `label`, `position`, `disabled`) VALUES
	(1, 0, 'CLOSEOUT SET - Villa Park Platform Bedroom Set', 0, 0),
	(2, 0, 'CLOSEOUT SET - Villa Park Platform Bedroom Set', 0, 0),
	(3, 0, 'CLOSEOUT SET - Villa Park Platform Bedroom Set', 0, 0),
	(4, 0, 'CLOSEOUT SET - Villa Park Platform Bedroom Set', 0, 0),
	(5, 0, 'CLOSEOUT SET - Villa Park Platform Bedroom Set', 0, 0),
	(6, 0, 'CLOSEOUT SET - Villa Park Platform Bedroom Set', 0, 0),
	(7, 0, 'CLOSEOUT SET - Villa Park Platform Bedroom Set', 0, 0),
	(8, 0, 'CLOSEOUT SET - Villa Park Platform Bedroom Set', 0, 0),
	(9, 0, 'CLOSEOUT SET - Villa Park Platform Bedroom Set', 0, 0),
	(10, 0, 'CLOSEOUT SET - Villa Park Platform Bedroom Set', 0, 0),
	(11, 0, 'CLOSEOUT SET - Villa Park Platform Bedroom Set', 0, 0),
	(12, 0, 'CLOSEOUT SET - Villa Park Platform Bedroom Set', 0, 0),
	(13, 0, 'CLOSEOUT SET - Villa Park Platform Bedroom Set', 0, 0),
	(16, 0, 'CLOSEOUT SET - Villa Park Platform Bedroom Set', 0, 0),
	(17, 0, 'CLOSEOUT SET - Villa Park Platform Bedroom Set', 0, 0),
	(18, 0, 'CLOSEOUT SET - Villa Park Platform Bedroom Set', 0, 0),
	(19, 0, 'CLOSEOUT SET - Villa Park Platform Bedroom Set', 0, 0),
	(22, 0, 'CLOSEOUT SET - Villa Park Platform Bedroom Set', 0, 0),
	(23, 0, 'CLOSEOUT SET - Villa Park Platform Bedroom Set', 0, 0),
	(24, 0, 'CLOSEOUT SET - Villa Park Platform Bedroom Set', 0, 0),
	(25, 0, 'Windham Formal Dining Set', 0, 0),
	(26, 0, 'Windham Formal Dining Set', 0, 0),
	(27, 0, 'Windham Formal Dining Set', 0, 0),
	(28, 0, 'Windham Formal Dining Set', 0, 0),
	(29, 0, 'Windham Formal Dining Set', 0, 0),
	(30, 0, 'Windham Formal Dining Set', 0, 0),
	(31, 0, 'Windham Formal Dining Set', 0, 0),
	(32, 0, 'Windham Formal Dining Set', 0, 0),
	(33, 0, 'Windham Formal Dining Set', 0, 0),
	(34, 0, 'Windham Formal Dining Set', 0, 0),
	(35, 0, 'Windham Formal Dining Set', 0, 0),
	(36, 0, 'Windham Formal Dining Set', 0, 0),
	(37, 0, 'Windham Formal Dining Set', 0, 0),
	(38, 0, 'Windham Formal Dining Set', 0, 0),
	(39, 0, 'Windham Formal Dining Set', 0, 0),
	(40, 0, 'Neo Renaissance Formal Dining Set', 0, 0),
	(43, 0, 'Neo Renaissance Formal Dining Set', 0, 0),
	(46, 0, 'Neo Renaissance Formal Dining Set', 0, 0),
	(49, 0, 'Neo Renaissance Formal Dining Set', 0, 0),
	(52, 0, 'Neo Renaissance Formal Dining Set', 0, 0),
	(55, 0, 'Estelle Formal Dining Set', 0, 0),
	(56, 0, 'Estelle Formal Dining Set', 0, 0),
	(57, 0, 'Estelle Formal Dining Set', 0, 0),
	(58, 0, 'Estelle Formal Dining Set', 0, 0),
	(59, 0, 'Estelle Formal Dining Set', 0, 0),
	(60, 0, 'Estelle Formal Dining Set', 0, 0),
	(61, 0, 'Estelle Formal Dining Set', 0, 0),
	(62, 0, 'Estelle Formal Dining Set', 0, 0),
	(63, 0, 'Estelle Formal Dining Set', 0, 0),
	(64, 0, 'Estelle Formal Dining Set', 0, 0),
	(65, 0, 'Estelle Formal Dining Set', 0, 0),
	(66, 0, 'Estelle Formal Dining Set', 0, 0),
	(67, 0, 'Estelle Formal Dining Set', 0, 0),
	(68, 0, 'Estelle Formal Dining Set', 0, 0),
	(69, 0, 'Estelle Formal Dining Set', 0, 0),
	(70, 0, 'Grandview Marble Dining', 0, 0),
	(73, 0, 'Grandview Marble Dining', 0, 0),
	(74, 0, 'Monaco Dining', 0, 0),
	(75, 0, 'Monaco Dining', 0, 0),
	(76, 0, 'Monaco Dining', 0, 0),
	(77, 0, 'Monaco Dining', 0, 0),
	(78, 0, 'Monaco Dining', 0, 0),
	(79, 0, 'Monaco Dining', 0, 0),
	(80, 0, 'Monaco Dining', 0, 0),
	(81, 0, 'Monaco Dining', 0, 0),
	(82, 0, 'Monaco Dining', 0, 0),
	(83, 0, 'Monaco Dining', 0, 0),
	(84, 0, 'Monaco Dining', 0, 0),
	(85, 0, 'Monaco Dining', 0, 0),
	(86, 0, 'Monaco Dining', 0, 0),
	(87, 0, 'Monaco Dining', 0, 0),
	(88, 0, 'Monaco Dining', 0, 0),
	(89, 0, 'Monaco Dining', 0, 0),
	(90, 0, 'Monaco Dining', 0, 0),
	(91, 0, 'Monaco Dining', 0, 0),
	(92, 0, 'Monaco Dining', 0, 0),
	(93, 0, 'Monaco Dining', 0, 0),
	(94, 0, 'Monaco Dining', 0, 0),
	(95, 0, 'Monaco Dining', 0, 0),
	(96, 0, 'Monaco Dining', 0, 0),
	(97, 0, 'Monaco Dining', 0, 0),
	(98, 0, 'Apollo Dining', 0, 0),
	(99, 0, 'Apollo Dining', 0, 0),
	(100, 0, 'Apollo Dining', 0, 0),
	(101, 0, 'Apollo Dining', 0, 0),
	(102, 0, 'Apollo Dining', 0, 0),
	(103, 0, 'Apollo Dining', 0, 0),
	(104, 0, 'Apollo Dining', 0, 0),
	(105, 0, 'Apollo Dining', 0, 0),
	(106, 0, 'Apollo Dining', 0, 0),
	(109, 0, 'Apollo Dining', 0, 0),
	(110, 0, 'Apollo Dining', 0, 0),
	(111, 0, 'Apollo Dining', 0, 0),
	(112, 0, 'Apollo Dining', 0, 0),
	(113, 0, 'Apollo Dining', 0, 0),
	(114, 0, 'Merlot Formal Dining Set', 0, 0),
	(117, 0, 'Merlot Formal Dining Set', 0, 0),
	(120, 0, 'Merlot Formal Dining Set', 0, 0),
	(123, 0, 'Merlot Formal Dining Set', 0, 0),
	(126, 0, 'Merlot Formal Dining Set', 0, 0);
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_entity_text
DROP TABLE IF EXISTS `catalog_product_entity_text`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_TEXT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Text Attribute Backend Table';

-- Dumping data for table mag.catalog_product_entity_text: ~101 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity_text` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
	(1, 4, 72, 0, 1, '<h2><u>By:</u>&nbsp;FOA&nbsp;-&nbsp;CM7007 -&nbsp;Villa Park&nbsp;Queen Size Platform Bed Set&nbsp;- Closeout - Liquidating Inventory - Get it before it\'s GONE</h2> <strong><u>9&nbsp;Pc. Queen Set:</u></strong> Price is for <font color="#ff0000"><strong>DISPLAY</strong></font> Queen Bed (<font color="#0000ff"><strong>CM7007Q-HB + CM7007Q-FBR - 2 Boxes</strong></font>), <font color="#ff0000"><strong>DISPLAY</strong></font> 1 Nightstand (<strong><font color="#0000ff">CM7088N</font></strong>), 1 More Nightstand (<strong><font color="#0000ff">CM7088N</font></strong>), Dresser (<strong><font color="#0000ff">CM7088D</font></strong>), &nbsp;Mirror (<strong><font color="#0000ff">CM7088M</font></strong>), &amp; Chest (<strong><font color="#0000ff">CM7088C</font></strong>) - <strong><font color="#ff0000">Only 1 Set At this Price <br /></font></strong><br /><strong><font color="#0000ff"><u>The last set sold gets the display bed and nightstand</u>. Please call to check current inventory as we may sell out before website is updated. Prices Do not Include Mattresses or Bed Linens.</font></strong><br /><br />A sleek modern vibe fused with the relaxing warmth of the leatherette headboard will create a casual yet sophisticated look. There is generous storage in all the matching case goods, which are accented with burshed nikel knobs. The cool simplicity of this bedroom group will make a bold statement to your home.<br /><br />Features:<br />* Contemporary Style<br />* Padded Leatherette Platform Bed<br />* Curved Headboard<br />* European Style Slat Kit<br />* Solid Wood, Wood Veneer, &amp; Others<br /><br />Queen Bed: (<strong><font color="#0000ff">CM7007Q</font></strong>) 86&quot; X 63&quot; X 40 1/2&quot; H<br />Nightstand:(<font color="#0000ff"><strong>CM7088N</strong></font>) 22&quot; X 16&quot; X 24&quot; H<br />Dresser: (<font color="#0000ff"><strong>CM7088D</strong></font>) 58&quot; X 16&quot; X 35&quot; H<br />Mirror: (<strong><font color="#0000ff">CM7088M</font></strong>) 40&quot; X 40&quot; X 3/4&quot; Deep<br />Chest: (<strong><font color="#0000ff">CM7088C</font></strong>)&nbsp;34&quot; X 16&quot; X 47 7/8&quot; - Not Included with Set but can purchase separately.<br /><br />Mattress &amp; Bed Linens Not Included.<br /><br />'),
	(2, 4, 73, 0, 1, '<br /> <p class="MsoListParagraphCxSpFirst" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><span style="COLOR: rgb(255,102,0)"><font color="#0000ff" face="Calibri">FOA</font></span></strong></p> <p class="MsoListParagraphCxSpMiddle" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">Queen Size - <font color="#ff0000">Closeout - Liquidating Inventory</font></font></strong></p>'),
	(3, 4, 817, 0, 1, 'BED CHEST DRESSER KING LEATHER MIRROR NIGHTSTAND PLATFORM QUEEN SIZE'),
	(4, 4, 72, 0, 2, '<h2><u>By:</u>&nbsp;FOA&nbsp;-&nbsp;CM7007 -&nbsp;Villa Park&nbsp;Queen Size Platform Bed Set&nbsp;- Closeout - Liquidating Inventory - Get it before it\'s GONE</h2> <strong><u>9&nbsp;Pc. Queen Set:</u></strong> Price is for <font color="#ff0000"><strong>DISPLAY</strong></font> Queen Bed (<font color="#0000ff"><strong>CM7007Q-HB + CM7007Q-FBR - 2 Boxes</strong></font>), <font color="#ff0000"><strong>DISPLAY</strong></font> 1 Nightstand (<strong><font color="#0000ff">CM7088N</font></strong>), 1 More Nightstand (<strong><font color="#0000ff">CM7088N</font></strong>), Dresser (<strong><font color="#0000ff">CM7088D</font></strong>), &nbsp;Mirror (<strong><font color="#0000ff">CM7088M</font></strong>), &amp; Chest (<strong><font color="#0000ff">CM7088C</font></strong>) - <strong><font color="#ff0000">Only 1 Set At this Price <br /></font></strong><br /><strong><font color="#0000ff"><u>The last set sold gets the display bed and nightstand</u>. Please call to check current inventory as we may sell out before website is updated. Prices Do not Include Mattresses or Bed Linens.</font></strong><br /><br />A sleek modern vibe fused with the relaxing warmth of the leatherette headboard will create a casual yet sophisticated look. There is generous storage in all the matching case goods, which are accented with burshed nikel knobs. The cool simplicity of this bedroom group will make a bold statement to your home.<br /><br />Features:<br />* Contemporary Style<br />* Padded Leatherette Platform Bed<br />* Curved Headboard<br />* European Style Slat Kit<br />* Solid Wood, Wood Veneer, &amp; Others<br /><br />Queen Bed: (<strong><font color="#0000ff">CM7007Q</font></strong>) 86&quot; X 63&quot; X 40 1/2&quot; H<br />Nightstand:(<font color="#0000ff"><strong>CM7088N</strong></font>) 22&quot; X 16&quot; X 24&quot; H<br />Dresser: (<font color="#0000ff"><strong>CM7088D</strong></font>) 58&quot; X 16&quot; X 35&quot; H<br />Mirror: (<strong><font color="#0000ff">CM7088M</font></strong>) 40&quot; X 40&quot; X 3/4&quot; Deep<br />Chest: (<strong><font color="#0000ff">CM7088C</font></strong>)&nbsp;34&quot; X 16&quot; X 47 7/8&quot; - Not Included with Set but can purchase separately.<br /><br />Mattress &amp; Bed Linens Not Included.<br /><br />'),
	(5, 4, 73, 0, 2, '<br /> <p class="MsoListParagraphCxSpFirst" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><span style="COLOR: rgb(255,102,0)"><font color="#0000ff" face="Calibri">FOA</font></span></strong></p> <p class="MsoListParagraphCxSpMiddle" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">Queen Size - <font color="#ff0000">Closeout - Liquidating Inventory</font></font></strong></p>'),
	(6, 4, 817, 0, 2, 'BED CHEST DRESSER KING LEATHER MIRROR NIGHTSTAND PLATFORM QUEEN SIZE'),
	(7, 4, 72, 0, 3, '<h2><u>By:</u>&nbsp;FOA&nbsp;-&nbsp;CM7007 -&nbsp;Villa Park&nbsp;Queen Size Platform Bed Set&nbsp;- Closeout - Liquidating Inventory - Get it before it\'s GONE</h2> <strong><u>9&nbsp;Pc. Queen Set:</u></strong> Price is for <font color="#ff0000"><strong>DISPLAY</strong></font> Queen Bed (<font color="#0000ff"><strong>CM7007Q-HB + CM7007Q-FBR - 2 Boxes</strong></font>), <font color="#ff0000"><strong>DISPLAY</strong></font> 1 Nightstand (<strong><font color="#0000ff">CM7088N</font></strong>), 1 More Nightstand (<strong><font color="#0000ff">CM7088N</font></strong>), Dresser (<strong><font color="#0000ff">CM7088D</font></strong>), &nbsp;Mirror (<strong><font color="#0000ff">CM7088M</font></strong>), &amp; Chest (<strong><font color="#0000ff">CM7088C</font></strong>) - <strong><font color="#ff0000">Only 1 Set At this Price <br /></font></strong><br /><strong><font color="#0000ff"><u>The last set sold gets the display bed and nightstand</u>. Please call to check current inventory as we may sell out before website is updated. Prices Do not Include Mattresses or Bed Linens.</font></strong><br /><br />A sleek modern vibe fused with the relaxing warmth of the leatherette headboard will create a casual yet sophisticated look. There is generous storage in all the matching case goods, which are accented with burshed nikel knobs. The cool simplicity of this bedroom group will make a bold statement to your home.<br /><br />Features:<br />* Contemporary Style<br />* Padded Leatherette Platform Bed<br />* Curved Headboard<br />* European Style Slat Kit<br />* Solid Wood, Wood Veneer, &amp; Others<br /><br />Queen Bed: (<strong><font color="#0000ff">CM7007Q</font></strong>) 86&quot; X 63&quot; X 40 1/2&quot; H<br />Nightstand:(<font color="#0000ff"><strong>CM7088N</strong></font>) 22&quot; X 16&quot; X 24&quot; H<br />Dresser: (<font color="#0000ff"><strong>CM7088D</strong></font>) 58&quot; X 16&quot; X 35&quot; H<br />Mirror: (<strong><font color="#0000ff">CM7088M</font></strong>) 40&quot; X 40&quot; X 3/4&quot; Deep<br />Chest: (<strong><font color="#0000ff">CM7088C</font></strong>)&nbsp;34&quot; X 16&quot; X 47 7/8&quot; - Not Included with Set but can purchase separately.<br /><br />Mattress &amp; Bed Linens Not Included.<br /><br />'),
	(8, 4, 73, 0, 3, '<br /> <p class="MsoListParagraphCxSpFirst" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><span style="COLOR: rgb(255,102,0)"><font color="#0000ff" face="Calibri">FOA</font></span></strong></p> <p class="MsoListParagraphCxSpMiddle" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">Queen Size - <font color="#ff0000">Closeout - Liquidating Inventory</font></font></strong></p>'),
	(9, 4, 817, 0, 3, 'BED CHEST DRESSER KING LEATHER MIRROR NIGHTSTAND PLATFORM QUEEN SIZE'),
	(10, 4, 72, 0, 4, '<h2><u>By:</u>&nbsp;FOA&nbsp;-&nbsp;CM7007 -&nbsp;Villa Park&nbsp;Queen Size Platform Bed Set&nbsp;- Closeout - Liquidating Inventory - Get it before it\'s GONE</h2> <strong><u>9&nbsp;Pc. Queen Set:</u></strong> Price is for <font color="#ff0000"><strong>DISPLAY</strong></font> Queen Bed (<font color="#0000ff"><strong>CM7007Q-HB + CM7007Q-FBR - 2 Boxes</strong></font>), <font color="#ff0000"><strong>DISPLAY</strong></font> 1 Nightstand (<strong><font color="#0000ff">CM7088N</font></strong>), 1 More Nightstand (<strong><font color="#0000ff">CM7088N</font></strong>), Dresser (<strong><font color="#0000ff">CM7088D</font></strong>), &nbsp;Mirror (<strong><font color="#0000ff">CM7088M</font></strong>), &amp; Chest (<strong><font color="#0000ff">CM7088C</font></strong>) - <strong><font color="#ff0000">Only 1 Set At this Price <br /></font></strong><br /><strong><font color="#0000ff"><u>The last set sold gets the display bed and nightstand</u>. Please call to check current inventory as we may sell out before website is updated. Prices Do not Include Mattresses or Bed Linens.</font></strong><br /><br />A sleek modern vibe fused with the relaxing warmth of the leatherette headboard will create a casual yet sophisticated look. There is generous storage in all the matching case goods, which are accented with burshed nikel knobs. The cool simplicity of this bedroom group will make a bold statement to your home.<br /><br />Features:<br />* Contemporary Style<br />* Padded Leatherette Platform Bed<br />* Curved Headboard<br />* European Style Slat Kit<br />* Solid Wood, Wood Veneer, &amp; Others<br /><br />Queen Bed: (<strong><font color="#0000ff">CM7007Q</font></strong>) 86&quot; X 63&quot; X 40 1/2&quot; H<br />Nightstand:(<font color="#0000ff"><strong>CM7088N</strong></font>) 22&quot; X 16&quot; X 24&quot; H<br />Dresser: (<font color="#0000ff"><strong>CM7088D</strong></font>) 58&quot; X 16&quot; X 35&quot; H<br />Mirror: (<strong><font color="#0000ff">CM7088M</font></strong>) 40&quot; X 40&quot; X 3/4&quot; Deep<br />Chest: (<strong><font color="#0000ff">CM7088C</font></strong>)&nbsp;34&quot; X 16&quot; X 47 7/8&quot; - Not Included with Set but can purchase separately.<br /><br />Mattress &amp; Bed Linens Not Included.<br /><br />'),
	(11, 4, 83, 0, 4, ''),
	(12, 4, 73, 0, 4, '<br /> <p class="MsoListParagraphCxSpFirst" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><span style="COLOR: rgb(255,102,0)"><font color="#0000ff" face="Calibri">FOA</font></span></strong></p> <p class="MsoListParagraphCxSpMiddle" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">Queen Size - <font color="#ff0000">Closeout - Liquidating Inventory</font></font></strong></p>'),
	(13, 4, 817, 0, 4, 'BED CHEST DRESSER KING LEATHER MIRROR NIGHTSTAND PLATFORM QUEEN SIZE'),
	(14, 4, 72, 0, 5, 'Cherry veneer table with burl inlays, beaded trim and apron, ornate oversized pedestal and bun feet. Chairs have oversized cushions and back with heavy ornate carvings on back, arm, chair frame and legs. <br /><br />Table Top 47&quot; X 78&quot; ~ 110&quot; (with 2&quot; X 16&quot; Leaf) X 31&quot; H <style type="text/css"> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --></style> <p><font color="#c80413" size="2" face="" trebuchet=""><span style="BACKGROUND-COLOR: #ffffff; FONT-WEIGHT: 700">Order Online ~ Not in Store</span></font></p>'),
	(15, 4, 73, 0, 5, '<font color="#ff0000"><strong><u>7</u></strong></font>&nbsp;Pc. Windham Dining Set'),
	(16, 4, 817, 0, 5, 'BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES WINHAM'),
	(17, 4, 72, 0, 6, 'Cherry veneer table with burl inlays, beaded trim and apron, ornate oversized pedestal and bun feet. Chairs have oversized cushions and back with heavy ornate carvings on back, arm, chair frame and legs. <br /><br />Table Top 47&quot; X 78&quot; ~ 110&quot; (with 2&quot; X 16&quot; Leaf) X 31&quot; H <style type="text/css"> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --></style> <p><font color="#c80413" size="2" face="" trebuchet=""><span style="BACKGROUND-COLOR: #ffffff; FONT-WEIGHT: 700">Order Online ~ Not in Store</span></font></p>'),
	(18, 4, 73, 0, 6, '<font color="#ff0000"><strong><u>7</u></strong></font>&nbsp;Pc. Windham Dining Set'),
	(19, 4, 817, 0, 6, 'BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES WINHAM'),
	(20, 4, 72, 0, 7, 'Cherry veneer table with burl inlays, beaded trim and apron, ornate oversized pedestal and bun feet. Chairs have oversized cushions and back with heavy ornate carvings on back, arm, chair frame and legs. <br /><br />Table Top 47&quot; X 78&quot; ~ 110&quot; (with 2&quot; X 16&quot; Leaf) X 31&quot; H <style type="text/css"> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --></style> <p><font color="#c80413" size="2" face="" trebuchet=""><span style="BACKGROUND-COLOR: #ffffff; FONT-WEIGHT: 700">Order Online ~ Not in Store</span></font></p>'),
	(21, 4, 73, 0, 7, '<font color="#ff0000"><strong><u>7</u></strong></font>&nbsp;Pc. Windham Dining Set'),
	(22, 4, 817, 0, 7, 'BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES WINHAM'),
	(23, 4, 72, 0, 8, 'Cherry veneer table with burl inlays, beaded trim and apron, ornate oversized pedestal and bun feet. Chairs have oversized cushions and back with heavy ornate carvings on back, arm, chair frame and legs. <br /><br />Table Top 47&quot; X 78&quot; ~ 110&quot; (with 2&quot; X 16&quot; Leaf) X 31&quot; H <style type="text/css"> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --></style> <p><font color="#c80413" size="2" face="" trebuchet=""><span style="BACKGROUND-COLOR: #ffffff; FONT-WEIGHT: 700">Order Online ~ Not in Store</span></font></p>'),
	(24, 4, 73, 0, 8, '<font color="#ff0000"><strong><u>7</u></strong></font>&nbsp;Pc. Windham Dining Set'),
	(25, 4, 817, 0, 8, 'BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES WINHAM'),
	(26, 4, 72, 0, 9, 'Cherry veneer table with burl inlays, beaded trim and apron, ornate oversized pedestal and bun feet. Chairs have oversized cushions and back with heavy ornate carvings on back, arm, chair frame and legs. <br /><br />Table Top 47&quot; X 78&quot; ~ 110&quot; (with 2&quot; X 16&quot; Leaf) X 31&quot; H <style type="text/css"> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --></style> <p><font color="#c80413" size="2" face="" trebuchet=""><span style="BACKGROUND-COLOR: #ffffff; FONT-WEIGHT: 700">Order Online ~ Not in Store</span></font></p>'),
	(27, 4, 83, 0, 9, 'houston formal dining room, cherry dining tables, formal dining sets'),
	(28, 4, 73, 0, 9, '<font color="#ff0000"><strong><u>7</u></strong></font>&nbsp;Pc. Windham Dining Set'),
	(29, 4, 817, 0, 9, 'BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES WINHAM'),
	(30, 4, 72, 0, 10, '<h2><u>By:</u>&nbsp;Crown Mark&nbsp;-&nbsp;2400&nbsp;-&nbsp; 7 Pc.&nbsp;Neo Renaissance Formal Dining Set - Optional Hutch/Buffet</h2> <strong><u>7 Pc. Set:</u></strong> Price is for <strong><u>Table</u></strong> (<strong><font color="#0000ff">2400-Top &amp; 2400-Leg</font></strong> -<u> 2 Boxes</u>) + <strong><u>4 Side Chairs</u></strong> (<strong><font color="#0000ff">2401S</font></strong> -<u> 2 Boxes</u>) + <strong><u>2 Arm Chairs</u></strong> (<strong><font color="#0000ff">2401A</font></strong> - <u>1 Box</u>)&nbsp;<br /><br />Rich dark burnished finish with sunburts match cherry veneer, burl inlays on table top and apron, ornate pedestal and carved feet. Solid wood chair with tapestry cushions, handcarved designed front and back.&nbsp;<br /><br />Table: &nbsp;44&quot; X 72&quot; ~ 108&quot; (with 2&quot; X 18&quot; Leaf) X 30&quot; H&nbsp;<br /><style type="text/css"> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --></style>Hutch/Buffet: (<strong><font color="#0000ff">2400-B &amp; 2400-H</font></strong> - <u>2 Boxes</u>) <strong><u>Buffet</u></strong>: 60&quot; X 18&quot; X 33&quot; | <u><strong>Hutch</strong></u>: 60&quot; X 16.5&quot; X 53&quot; H <p><font color="#c80413" size="2" face="" trebuchet=""><span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Not on Display in Store</span></font></p>'),
	(31, 4, 73, 0, 10, '<br /> <p class="MsoListParagraphCxSpFirst" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><span style="COLOR: green"><font face="Calibri">CrownMark Furniture<o:p></o:p></font></span></strong></p> <p class="MsoListParagraphCxSpMiddle" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">7 Pc. Dining Set<o:p></o:p></font></strong></p> <p class="MsoListParagraphCxSpLast" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">Hutch/Buffet (Optional)</font></strong></p>'),
	(32, 4, 817, 0, 10, 'BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES'),
	(33, 4, 72, 0, 11, '<h2><u>By:</u>&nbsp;Crown Mark&nbsp;-&nbsp;2400&nbsp;-&nbsp; 7 Pc.&nbsp;Neo Renaissance Formal Dining Set - Optional Hutch/Buffet</h2> <strong><u>7 Pc. Set:</u></strong> Price is for <strong><u>Table</u></strong> (<strong><font color="#0000ff">2400-Top &amp; 2400-Leg</font></strong> -<u> 2 Boxes</u>) + <strong><u>4 Side Chairs</u></strong> (<strong><font color="#0000ff">2401S</font></strong> -<u> 2 Boxes</u>) + <strong><u>2 Arm Chairs</u></strong> (<strong><font color="#0000ff">2401A</font></strong> - <u>1 Box</u>)&nbsp;<br /><br />Rich dark burnished finish with sunburts match cherry veneer, burl inlays on table top and apron, ornate pedestal and carved feet. Solid wood chair with tapestry cushions, handcarved designed front and back.&nbsp;<br /><br />Table: &nbsp;44&quot; X 72&quot; ~ 108&quot; (with 2&quot; X 18&quot; Leaf) X 30&quot; H&nbsp;<br /><style type="text/css"> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --></style>Hutch/Buffet: (<strong><font color="#0000ff">2400-B &amp; 2400-H</font></strong> - <u>2 Boxes</u>) <strong><u>Buffet</u></strong>: 60&quot; X 18&quot; X 33&quot; | <u><strong>Hutch</strong></u>: 60&quot; X 16.5&quot; X 53&quot; H <p><font color="#c80413" size="2" face="" trebuchet=""><span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Not on Display in Store</span></font></p>'),
	(34, 4, 73, 0, 11, '<br /> <p class="MsoListParagraphCxSpFirst" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><span style="COLOR: green"><font face="Calibri">CrownMark Furniture<o:p></o:p></font></span></strong></p> <p class="MsoListParagraphCxSpMiddle" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">7 Pc. Dining Set<o:p></o:p></font></strong></p> <p class="MsoListParagraphCxSpLast" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">Hutch/Buffet (Optional)</font></strong></p>'),
	(35, 4, 817, 0, 11, 'BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES'),
	(36, 4, 72, 0, 12, '<h2><u>By:</u>&nbsp;Crown Mark&nbsp;-&nbsp;2400&nbsp;-&nbsp; 7 Pc.&nbsp;Neo Renaissance Formal Dining Set - Optional Hutch/Buffet</h2> <strong><u>7 Pc. Set:</u></strong> Price is for <strong><u>Table</u></strong> (<strong><font color="#0000ff">2400-Top &amp; 2400-Leg</font></strong> -<u> 2 Boxes</u>) + <strong><u>4 Side Chairs</u></strong> (<strong><font color="#0000ff">2401S</font></strong> -<u> 2 Boxes</u>) + <strong><u>2 Arm Chairs</u></strong> (<strong><font color="#0000ff">2401A</font></strong> - <u>1 Box</u>)&nbsp;<br /><br />Rich dark burnished finish with sunburts match cherry veneer, burl inlays on table top and apron, ornate pedestal and carved feet. Solid wood chair with tapestry cushions, handcarved designed front and back.&nbsp;<br /><br />Table: &nbsp;44&quot; X 72&quot; ~ 108&quot; (with 2&quot; X 18&quot; Leaf) X 30&quot; H&nbsp;<br /><style type="text/css"> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --></style>Hutch/Buffet: (<strong><font color="#0000ff">2400-B &amp; 2400-H</font></strong> - <u>2 Boxes</u>) <strong><u>Buffet</u></strong>: 60&quot; X 18&quot; X 33&quot; | <u><strong>Hutch</strong></u>: 60&quot; X 16.5&quot; X 53&quot; H <p><font color="#c80413" size="2" face="" trebuchet=""><span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Not on Display in Store</span></font></p>'),
	(37, 4, 73, 0, 12, '<br /> <p class="MsoListParagraphCxSpFirst" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><span style="COLOR: green"><font face="Calibri">CrownMark Furniture<o:p></o:p></font></span></strong></p> <p class="MsoListParagraphCxSpMiddle" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">7 Pc. Dining Set<o:p></o:p></font></strong></p> <p class="MsoListParagraphCxSpLast" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">Hutch/Buffet (Optional)</font></strong></p>'),
	(38, 4, 817, 0, 12, 'BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES'),
	(39, 4, 72, 0, 13, '<h2><u>By:</u>&nbsp;Crown Mark&nbsp;-&nbsp;2400&nbsp;-&nbsp; 7 Pc.&nbsp;Neo Renaissance Formal Dining Set - Optional Hutch/Buffet</h2> <strong><u>7 Pc. Set:</u></strong> Price is for <strong><u>Table</u></strong> (<strong><font color="#0000ff">2400-Top &amp; 2400-Leg</font></strong> -<u> 2 Boxes</u>) + <strong><u>4 Side Chairs</u></strong> (<strong><font color="#0000ff">2401S</font></strong> -<u> 2 Boxes</u>) + <strong><u>2 Arm Chairs</u></strong> (<strong><font color="#0000ff">2401A</font></strong> - <u>1 Box</u>)&nbsp;<br /><br />Rich dark burnished finish with sunburts match cherry veneer, burl inlays on table top and apron, ornate pedestal and carved feet. Solid wood chair with tapestry cushions, handcarved designed front and back.&nbsp;<br /><br />Table: &nbsp;44&quot; X 72&quot; ~ 108&quot; (with 2&quot; X 18&quot; Leaf) X 30&quot; H&nbsp;<br /><style type="text/css"> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --></style>Hutch/Buffet: (<strong><font color="#0000ff">2400-B &amp; 2400-H</font></strong> - <u>2 Boxes</u>) <strong><u>Buffet</u></strong>: 60&quot; X 18&quot; X 33&quot; | <u><strong>Hutch</strong></u>: 60&quot; X 16.5&quot; X 53&quot; H <p><font color="#c80413" size="2" face="" trebuchet=""><span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Not on Display in Store</span></font></p>'),
	(40, 4, 73, 0, 13, '<br /> <p class="MsoListParagraphCxSpFirst" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><span style="COLOR: green"><font face="Calibri">CrownMark Furniture<o:p></o:p></font></span></strong></p> <p class="MsoListParagraphCxSpMiddle" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">7 Pc. Dining Set<o:p></o:p></font></strong></p> <p class="MsoListParagraphCxSpLast" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">Hutch/Buffet (Optional)</font></strong></p>'),
	(41, 4, 817, 0, 13, 'BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES'),
	(42, 4, 72, 0, 14, '<h2><u>By:</u>&nbsp;Crown Mark&nbsp;-&nbsp;2400&nbsp;-&nbsp; 7 Pc.&nbsp;Neo Renaissance Formal Dining Set - Optional Hutch/Buffet</h2> <strong><u>7 Pc. Set:</u></strong> Price is for <strong><u>Table</u></strong> (<strong><font color="#0000ff">2400-Top &amp; 2400-Leg</font></strong> -<u> 2 Boxes</u>) + <strong><u>4 Side Chairs</u></strong> (<strong><font color="#0000ff">2401S</font></strong> -<u> 2 Boxes</u>) + <strong><u>2 Arm Chairs</u></strong> (<strong><font color="#0000ff">2401A</font></strong> - <u>1 Box</u>)&nbsp;<br /><br />Rich dark burnished finish with sunburts match cherry veneer, burl inlays on table top and apron, ornate pedestal and carved feet. Solid wood chair with tapestry cushions, handcarved designed front and back.&nbsp;<br /><br />Table: &nbsp;44&quot; X 72&quot; ~ 108&quot; (with 2&quot; X 18&quot; Leaf) X 30&quot; H&nbsp;<br /><style type="text/css"> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --></style>Hutch/Buffet: (<strong><font color="#0000ff">2400-B &amp; 2400-H</font></strong> - <u>2 Boxes</u>) <strong><u>Buffet</u></strong>: 60&quot; X 18&quot; X 33&quot; | <u><strong>Hutch</strong></u>: 60&quot; X 16.5&quot; X 53&quot; H <p><font color="#c80413" size="2" face="" trebuchet=""><span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Not on Display in Store</span></font></p>'),
	(43, 4, 83, 0, 14, 'houston neo renaissance dining set, houston formal dining tables, formal dining tables, formal dining room'),
	(44, 4, 73, 0, 14, '<br /> <p class="MsoListParagraphCxSpFirst" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><span style="COLOR: green"><font face="Calibri">CrownMark Furniture<o:p></o:p></font></span></strong></p> <p class="MsoListParagraphCxSpMiddle" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">7 Pc. Dining Set<o:p></o:p></font></strong></p> <p class="MsoListParagraphCxSpLast" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">Hutch/Buffet (Optional)</font></strong></p>'),
	(45, 4, 817, 0, 14, 'BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES'),
	(46, 4, 72, 0, 15, '<h2><u>By:</u>&nbsp;Crown Mark&nbsp;-&nbsp;2120&nbsp;-&nbsp; 7 Pc. Estelle Formal Dining Set - Optional Hutch/Buffet</h2> <strong><u>7 Pc. Set:</u></strong> Price is for <strong><u>Table</u></strong> (<strong><font color="#0000ff">2120T-Leg-N &amp; 2120-Top-N</font></strong> - <u>2 Boxes</u>) + <strong><u>4 Side Chairs</u></strong> (<strong><font color="#0000ff">2120S-N</font></strong> -<u>2 Boxes</u>) +<u><strong> 2 Arm Chairs</strong></u> (<strong><font color="#0000ff">2120A-N</font></strong> - <u>1 Box</u>)&nbsp;<br /><br />Bookmatched cherry veneer double pedestal formal table with hand carved solid wood apron. Oversized back chair with brass nailheads, hand carved solid wood arms and pillaster legs. <br /><br />Table Top: 44&quot; X 72&quot; ~ 108&quot; (with 2 X 18&quot; Leaf) X 30 1/4&quot; H&nbsp;<br /><style type="text/css"> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --></style>Hutch/Buffet: (<strong><font color="#0000ff">2120-B-N &amp; 2120-H-N</font></strong> - <u>2 Boxes</u>) <strong><u>Buffet:</u></strong> 66.5&quot; X 20&quot; X 33&quot; H | <strong><u>Hutch:</u></strong> 66.5&quot; X 20.5&quot; X 56.75&quot; H <p><font color="#c80413" size="2" face="" trebuchet=""><span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Not on Display in Store</span></font></p>'),
	(47, 4, 73, 0, 15, '<br /> <p class="MsoListParagraphCxSpFirst" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span style="FONT: 7pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><span style="COLOR: green"><font face="Calibri">CrownMark Furniture<o:p></o:p></font></span></strong></p> <p class="MsoListParagraphCxSpMiddle" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span style="FONT: 7pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">7 Pc. Dining Set<o:p></o:p></font></strong></p> <p class="MsoListParagraphCxSpLast" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span style="FONT: 7pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">Hutch/Buffet (Optional)<o:p></o:p></font></strong></p>'),
	(48, 4, 817, 0, 15, 'BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES'),
	(49, 4, 72, 0, 16, '<h2><u>By:</u>&nbsp;Crown Mark&nbsp;-&nbsp;2120&nbsp;-&nbsp; 7 Pc. Estelle Formal Dining Set - Optional Hutch/Buffet</h2> <strong><u>7 Pc. Set:</u></strong> Price is for <strong><u>Table</u></strong> (<strong><font color="#0000ff">2120T-Leg-N &amp; 2120-Top-N</font></strong> - <u>2 Boxes</u>) + <strong><u>4 Side Chairs</u></strong> (<strong><font color="#0000ff">2120S-N</font></strong> -<u>2 Boxes</u>) +<u><strong> 2 Arm Chairs</strong></u> (<strong><font color="#0000ff">2120A-N</font></strong> - <u>1 Box</u>)&nbsp;<br /><br />Bookmatched cherry veneer double pedestal formal table with hand carved solid wood apron. Oversized back chair with brass nailheads, hand carved solid wood arms and pillaster legs. <br /><br />Table Top: 44&quot; X 72&quot; ~ 108&quot; (with 2 X 18&quot; Leaf) X 30 1/4&quot; H&nbsp;<br /><style type="text/css"> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --></style>Hutch/Buffet: (<strong><font color="#0000ff">2120-B-N &amp; 2120-H-N</font></strong> - <u>2 Boxes</u>) <strong><u>Buffet:</u></strong> 66.5&quot; X 20&quot; X 33&quot; H | <strong><u>Hutch:</u></strong> 66.5&quot; X 20.5&quot; X 56.75&quot; H <p><font color="#c80413" size="2" face="" trebuchet=""><span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Not on Display in Store</span></font></p>'),
	(50, 4, 73, 0, 16, '<br /> <p class="MsoListParagraphCxSpFirst" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span style="FONT: 7pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><span style="COLOR: green"><font face="Calibri">CrownMark Furniture<o:p></o:p></font></span></strong></p> <p class="MsoListParagraphCxSpMiddle" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span style="FONT: 7pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">7 Pc. Dining Set<o:p></o:p></font></strong></p> <p class="MsoListParagraphCxSpLast" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span style="FONT: 7pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">Hutch/Buffet (Optional)<o:p></o:p></font></strong></p>'),
	(51, 4, 817, 0, 16, 'BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES'),
	(52, 4, 72, 0, 17, '<h2><u>By:</u>&nbsp;Crown Mark&nbsp;-&nbsp;2120&nbsp;-&nbsp; 7 Pc. Estelle Formal Dining Set - Optional Hutch/Buffet</h2> <strong><u>7 Pc. Set:</u></strong> Price is for <strong><u>Table</u></strong> (<strong><font color="#0000ff">2120T-Leg-N &amp; 2120-Top-N</font></strong> - <u>2 Boxes</u>) + <strong><u>4 Side Chairs</u></strong> (<strong><font color="#0000ff">2120S-N</font></strong> -<u>2 Boxes</u>) +<u><strong> 2 Arm Chairs</strong></u> (<strong><font color="#0000ff">2120A-N</font></strong> - <u>1 Box</u>)&nbsp;<br /><br />Bookmatched cherry veneer double pedestal formal table with hand carved solid wood apron. Oversized back chair with brass nailheads, hand carved solid wood arms and pillaster legs. <br /><br />Table Top: 44&quot; X 72&quot; ~ 108&quot; (with 2 X 18&quot; Leaf) X 30 1/4&quot; H&nbsp;<br /><style type="text/css"> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --></style>Hutch/Buffet: (<strong><font color="#0000ff">2120-B-N &amp; 2120-H-N</font></strong> - <u>2 Boxes</u>) <strong><u>Buffet:</u></strong> 66.5&quot; X 20&quot; X 33&quot; H | <strong><u>Hutch:</u></strong> 66.5&quot; X 20.5&quot; X 56.75&quot; H <p><font color="#c80413" size="2" face="" trebuchet=""><span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Not on Display in Store</span></font></p>'),
	(53, 4, 73, 0, 17, '<br /> <p class="MsoListParagraphCxSpFirst" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span style="FONT: 7pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><span style="COLOR: green"><font face="Calibri">CrownMark Furniture<o:p></o:p></font></span></strong></p> <p class="MsoListParagraphCxSpMiddle" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span style="FONT: 7pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">7 Pc. Dining Set<o:p></o:p></font></strong></p> <p class="MsoListParagraphCxSpLast" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span style="FONT: 7pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">Hutch/Buffet (Optional)<o:p></o:p></font></strong></p>'),
	(54, 4, 817, 0, 17, 'BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES'),
	(55, 4, 72, 0, 18, '<h2><u>By:</u>&nbsp;Crown Mark&nbsp;-&nbsp;2120&nbsp;-&nbsp; 7 Pc. Estelle Formal Dining Set - Optional Hutch/Buffet</h2> <strong><u>7 Pc. Set:</u></strong> Price is for <strong><u>Table</u></strong> (<strong><font color="#0000ff">2120T-Leg-N &amp; 2120-Top-N</font></strong> - <u>2 Boxes</u>) + <strong><u>4 Side Chairs</u></strong> (<strong><font color="#0000ff">2120S-N</font></strong> -<u>2 Boxes</u>) +<u><strong> 2 Arm Chairs</strong></u> (<strong><font color="#0000ff">2120A-N</font></strong> - <u>1 Box</u>)&nbsp;<br /><br />Bookmatched cherry veneer double pedestal formal table with hand carved solid wood apron. Oversized back chair with brass nailheads, hand carved solid wood arms and pillaster legs. <br /><br />Table Top: 44&quot; X 72&quot; ~ 108&quot; (with 2 X 18&quot; Leaf) X 30 1/4&quot; H&nbsp;<br /><style type="text/css"> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --></style>Hutch/Buffet: (<strong><font color="#0000ff">2120-B-N &amp; 2120-H-N</font></strong> - <u>2 Boxes</u>) <strong><u>Buffet:</u></strong> 66.5&quot; X 20&quot; X 33&quot; H | <strong><u>Hutch:</u></strong> 66.5&quot; X 20.5&quot; X 56.75&quot; H <p><font color="#c80413" size="2" face="" trebuchet=""><span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Not on Display in Store</span></font></p>'),
	(56, 4, 73, 0, 18, '<br /> <p class="MsoListParagraphCxSpFirst" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span style="FONT: 7pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><span style="COLOR: green"><font face="Calibri">CrownMark Furniture<o:p></o:p></font></span></strong></p> <p class="MsoListParagraphCxSpMiddle" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span style="FONT: 7pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">7 Pc. Dining Set<o:p></o:p></font></strong></p> <p class="MsoListParagraphCxSpLast" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span style="FONT: 7pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">Hutch/Buffet (Optional)<o:p></o:p></font></strong></p>'),
	(57, 4, 817, 0, 18, 'BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES'),
	(58, 4, 72, 0, 19, '<h2><u>By:</u>&nbsp;Crown Mark&nbsp;-&nbsp;2120&nbsp;-&nbsp; 7 Pc. Estelle Formal Dining Set - Optional Hutch/Buffet</h2> <strong><u>7 Pc. Set:</u></strong> Price is for <strong><u>Table</u></strong> (<strong><font color="#0000ff">2120T-Leg-N &amp; 2120-Top-N</font></strong> - <u>2 Boxes</u>) + <strong><u>4 Side Chairs</u></strong> (<strong><font color="#0000ff">2120S-N</font></strong> -<u>2 Boxes</u>) +<u><strong> 2 Arm Chairs</strong></u> (<strong><font color="#0000ff">2120A-N</font></strong> - <u>1 Box</u>)&nbsp;<br /><br />Bookmatched cherry veneer double pedestal formal table with hand carved solid wood apron. Oversized back chair with brass nailheads, hand carved solid wood arms and pillaster legs. <br /><br />Table Top: 44&quot; X 72&quot; ~ 108&quot; (with 2 X 18&quot; Leaf) X 30 1/4&quot; H&nbsp;<br /><style type="text/css"> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --></style>Hutch/Buffet: (<strong><font color="#0000ff">2120-B-N &amp; 2120-H-N</font></strong> - <u>2 Boxes</u>) <strong><u>Buffet:</u></strong> 66.5&quot; X 20&quot; X 33&quot; H | <strong><u>Hutch:</u></strong> 66.5&quot; X 20.5&quot; X 56.75&quot; H <p><font color="#c80413" size="2" face="" trebuchet=""><span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Not on Display in Store</span></font></p>'),
	(59, 4, 83, 0, 19, 'houston estelle dining est, houston formal dining tables, formal dining tables, formal dining room'),
	(60, 4, 73, 0, 19, '<br /> <p class="MsoListParagraphCxSpFirst" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span style="FONT: 7pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><span style="COLOR: green"><font face="Calibri">CrownMark Furniture<o:p></o:p></font></span></strong></p> <p class="MsoListParagraphCxSpMiddle" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span style="FONT: 7pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">7 Pc. Dining Set<o:p></o:p></font></strong></p> <p class="MsoListParagraphCxSpLast" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span style="FONT: 7pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">Hutch/Buffet (Optional)<o:p></o:p></font></strong></p>'),
	(61, 4, 817, 0, 19, 'BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES'),
	(62, 4, 72, 0, 20, 'Dark marble, carved solid wood apron with gold accents. Chairs are carved with gold accents. <br> <br>Dining Table: 44" X 66" ~ 96" (with 2" X 15" Wood Leaf) X 30" H <style> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --> </style> <p> <font color="#c80413" face=""Trebuchet MS", Arial, Helvetica" size="2"> <span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Order Online ~ Not in Store</span></font>'),
	(63, 4, 83, 0, 20, ''),
	(64, 4, 73, 0, 20, '5 Pc. Grandview Dining Set'),
	(65, 4, 72, 0, 21, 'Cognac finish with solid wood hand carved corners, ball and claw legs and ornate back. <br> <br>Monaco Dining Table 42" X 72" ~96" (with 2" X 12" Leaf) 30" H <style> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --> </style> <p> <font color="#c80413" face=""Trebuchet MS", Arial, Helvetica" size="2"> <span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Order Online ~ Not in Store</span></font>'),
	(66, 4, 73, 0, 21, '5 Pc. Monaco Dining Set'),
	(67, 4, 72, 0, 22, 'Cognac finish with solid wood hand carved corners, ball and claw legs and ornate back. <br> <br>Monaco Dining Table 42" X 72" ~96" (with 2" X 12" Leaf) 30" H <style> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --> </style> <p> <font color="#c80413" face=""Trebuchet MS", Arial, Helvetica" size="2"> <span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Order Online ~ Not in Store</span></font>'),
	(68, 4, 73, 0, 22, '5 Pc. Monaco Dining Set'),
	(69, 4, 72, 0, 23, 'Cognac finish with solid wood hand carved corners, ball and claw legs and ornate back. <br> <br>Monaco Dining Table 42" X 72" ~96" (with 2" X 12" Leaf) 30" H <style> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --> </style> <p> <font color="#c80413" face=""Trebuchet MS", Arial, Helvetica" size="2"> <span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Order Online ~ Not in Store</span></font>'),
	(70, 4, 73, 0, 23, '5 Pc. Monaco Dining Set'),
	(71, 4, 72, 0, 24, 'Cognac finish with solid wood hand carved corners, ball and claw legs and ornate back. <br> <br>Monaco Dining Table 42" X 72" ~96" (with 2" X 12" Leaf) 30" H <style> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --> </style> <p> <font color="#c80413" face=""Trebuchet MS", Arial, Helvetica" size="2"> <span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Order Online ~ Not in Store</span></font>'),
	(72, 4, 73, 0, 24, '5 Pc. Monaco Dining Set'),
	(73, 4, 72, 0, 25, 'Cognac finish with solid wood hand carved corners, ball and claw legs and ornate back. <br> <br>Monaco Dining Table 42" X 72" ~96" (with 2" X 12" Leaf) 30" H <style> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --> </style> <p> <font color="#c80413" face=""Trebuchet MS", Arial, Helvetica" size="2"> <span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Order Online ~ Not in Store</span></font>'),
	(74, 4, 73, 0, 25, '5 Pc. Monaco Dining Set'),
	(75, 4, 72, 0, 26, 'Cognac finish with solid wood hand carved corners, ball and claw legs and ornate back. <br> <br>Monaco Dining Table 42" X 72" ~96" (with 2" X 12" Leaf) 30" H <style> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --> </style> <p> <font color="#c80413" face=""Trebuchet MS", Arial, Helvetica" size="2"> <span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Order Online ~ Not in Store</span></font>'),
	(76, 4, 83, 0, 26, ''),
	(77, 4, 73, 0, 26, '5 Pc. Monaco Dining Set'),
	(78, 4, 72, 0, 27, 'Apollo dining. Shaped table base with a contemporary flair. <br> <br>Table Top 44" X 66" ~ 82" (with 16" Leaf) X 30" H <br> <br><style> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --> </style> <p> <font color="#c80413" face=""Trebuchet MS", Arial, Helvetica" size="2"> <span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Order Online ~ Not in Store</span></font></p>'),
	(79, 4, 73, 0, 27, '5 Pc. Apollo Dining Set'),
	(80, 4, 72, 0, 28, 'Apollo dining. Shaped table base with a contemporary flair. <br> <br>Table Top 44" X 66" ~ 82" (with 16" Leaf) X 30" H <br> <br><style> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --> </style> <p> <font color="#c80413" face=""Trebuchet MS", Arial, Helvetica" size="2"> <span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Order Online ~ Not in Store</span></font></p>'),
	(81, 4, 73, 0, 28, '5 Pc. Apollo Dining Set'),
	(82, 4, 72, 0, 29, 'Apollo dining. Shaped table base with a contemporary flair. <br> <br>Table Top 44" X 66" ~ 82" (with 16" Leaf) X 30" H <br> <br><style> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --> </style> <p> <font color="#c80413" face=""Trebuchet MS", Arial, Helvetica" size="2"> <span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Order Online ~ Not in Store</span></font></p>'),
	(83, 4, 73, 0, 29, '5 Pc. Apollo Dining Set'),
	(84, 4, 72, 0, 30, 'Apollo dining. Shaped table base with a contemporary flair. <br> <br>Table Top 44" X 66" ~ 82" (with 16" Leaf) X 30" H <br> <br><style> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --> </style> <p> <font color="#c80413" face=""Trebuchet MS", Arial, Helvetica" size="2"> <span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Order Online ~ Not in Store</span></font></p>'),
	(85, 4, 83, 0, 30, ''),
	(86, 4, 73, 0, 30, '5 Pc. Apollo Dining Set'),
	(87, 4, 72, 0, 31, '<h2><u>By:</u>&nbsp;Crown Mark&nbsp;-&nbsp;2145&nbsp;-&nbsp; 7 Pc. Merlot Formal Dining Set - Optional Hutch/Buffet</h2> <p><strong><u>7 Pc. Set:</u></strong> Price is for <strong><u>Table</u></strong> (<strong><font color="#0000ff">2145T-Top &amp; 2145T-Leg</font></strong> -<u> 2 Boxes</u>) + <strong><u>4 Side Chairs</u></strong> (<strong><font color="#0000ff">2146S</font></strong> - <u>2 Boxes</u>) + <strong><u>2 Arm Chairs</u></strong> (<strong><font color="#0000ff">2146A</font></strong> - <u>1 Box</u>)</p> <ul> <li>Table expands from 42&quot; to 70-88&quot; with 1 x 18&quot; leaf - Allows seating for up to 8</li> <li>&nbsp;Solid hardwood glides - provide a strong durable glide and support system for the table</li> <li>&nbsp;Cherry veneered top - Provides a beautiful graining and finish while being durable</li> <li>Sleigh or scroll chair back - Gives a classic look to the set while providing a durable frame </li> <li>Multi color textured fabric - Comfortable, beautiful and easy to clean seat and chair back</li> </ul> <p>Table Top: 42&quot; X 70&quot; ~ 88&quot; (with 18&quot; Leaf) X 30&quot; H&nbsp;<br /><style type="text/css"> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --></style>Hutch/Buffet: (<strong><font color="#0000ff">2145-B &amp; 2145-H</font></strong> - <u>2 Boxes</u>) <u><strong>Buffet</strong></u>: 52&quot; X 17&quot; X 32&quot; H | <u><strong>Hutch</strong></u>: 52&quot; X 17&quot; X 48&quot; H</p> <p><font color="#c80413" size="2" face="" trebuchet=""><span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Not on Display in Store</span></font></p>'),
	(88, 4, 73, 0, 31, '<br /> <p class="MsoListParagraphCxSpFirst" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><span style="COLOR: green"><font face="Calibri">CrownMark Furniture<o:p></o:p></font></span></strong></p> <p class="MsoListParagraphCxSpMiddle" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">7 Pc. Dining Set<o:p></o:p></font></strong></p> <p class="MsoListParagraphCxSpLast" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">Hutch/Buffet (Optional)<o:p></o:p></font></strong></p>'),
	(89, 4, 817, 0, 31, 'BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES'),
	(90, 4, 72, 0, 32, '<h2><u>By:</u>&nbsp;Crown Mark&nbsp;-&nbsp;2145&nbsp;-&nbsp; 7 Pc. Merlot Formal Dining Set - Optional Hutch/Buffet</h2> <p><strong><u>7 Pc. Set:</u></strong> Price is for <strong><u>Table</u></strong> (<strong><font color="#0000ff">2145T-Top &amp; 2145T-Leg</font></strong> -<u> 2 Boxes</u>) + <strong><u>4 Side Chairs</u></strong> (<strong><font color="#0000ff">2146S</font></strong> - <u>2 Boxes</u>) + <strong><u>2 Arm Chairs</u></strong> (<strong><font color="#0000ff">2146A</font></strong> - <u>1 Box</u>)</p> <ul> <li>Table expands from 42&quot; to 70-88&quot; with 1 x 18&quot; leaf - Allows seating for up to 8</li> <li>&nbsp;Solid hardwood glides - provide a strong durable glide and support system for the table</li> <li>&nbsp;Cherry veneered top - Provides a beautiful graining and finish while being durable</li> <li>Sleigh or scroll chair back - Gives a classic look to the set while providing a durable frame </li> <li>Multi color textured fabric - Comfortable, beautiful and easy to clean seat and chair back</li> </ul> <p>Table Top: 42&quot; X 70&quot; ~ 88&quot; (with 18&quot; Leaf) X 30&quot; H&nbsp;<br /><style type="text/css"> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --></style>Hutch/Buffet: (<strong><font color="#0000ff">2145-B &amp; 2145-H</font></strong> - <u>2 Boxes</u>) <u><strong>Buffet</strong></u>: 52&quot; X 17&quot; X 32&quot; H | <u><strong>Hutch</strong></u>: 52&quot; X 17&quot; X 48&quot; H</p> <p><font color="#c80413" size="2" face="" trebuchet=""><span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Not on Display in Store</span></font></p>'),
	(91, 4, 73, 0, 32, '<br /> <p class="MsoListParagraphCxSpFirst" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><span style="COLOR: green"><font face="Calibri">CrownMark Furniture<o:p></o:p></font></span></strong></p> <p class="MsoListParagraphCxSpMiddle" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">7 Pc. Dining Set<o:p></o:p></font></strong></p> <p class="MsoListParagraphCxSpLast" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">Hutch/Buffet (Optional)<o:p></o:p></font></strong></p>'),
	(92, 4, 817, 0, 32, 'BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES'),
	(93, 4, 72, 0, 33, '<h2><u>By:</u>&nbsp;Crown Mark&nbsp;-&nbsp;2145&nbsp;-&nbsp; 7 Pc. Merlot Formal Dining Set - Optional Hutch/Buffet</h2> <p><strong><u>7 Pc. Set:</u></strong> Price is for <strong><u>Table</u></strong> (<strong><font color="#0000ff">2145T-Top &amp; 2145T-Leg</font></strong> -<u> 2 Boxes</u>) + <strong><u>4 Side Chairs</u></strong> (<strong><font color="#0000ff">2146S</font></strong> - <u>2 Boxes</u>) + <strong><u>2 Arm Chairs</u></strong> (<strong><font color="#0000ff">2146A</font></strong> - <u>1 Box</u>)</p> <ul> <li>Table expands from 42&quot; to 70-88&quot; with 1 x 18&quot; leaf - Allows seating for up to 8</li> <li>&nbsp;Solid hardwood glides - provide a strong durable glide and support system for the table</li> <li>&nbsp;Cherry veneered top - Provides a beautiful graining and finish while being durable</li> <li>Sleigh or scroll chair back - Gives a classic look to the set while providing a durable frame </li> <li>Multi color textured fabric - Comfortable, beautiful and easy to clean seat and chair back</li> </ul> <p>Table Top: 42&quot; X 70&quot; ~ 88&quot; (with 18&quot; Leaf) X 30&quot; H&nbsp;<br /><style type="text/css"> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --></style>Hutch/Buffet: (<strong><font color="#0000ff">2145-B &amp; 2145-H</font></strong> - <u>2 Boxes</u>) <u><strong>Buffet</strong></u>: 52&quot; X 17&quot; X 32&quot; H | <u><strong>Hutch</strong></u>: 52&quot; X 17&quot; X 48&quot; H</p> <p><font color="#c80413" size="2" face="" trebuchet=""><span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Not on Display in Store</span></font></p>'),
	(94, 4, 73, 0, 33, '<br /> <p class="MsoListParagraphCxSpFirst" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><span style="COLOR: green"><font face="Calibri">CrownMark Furniture<o:p></o:p></font></span></strong></p> <p class="MsoListParagraphCxSpMiddle" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">7 Pc. Dining Set<o:p></o:p></font></strong></p> <p class="MsoListParagraphCxSpLast" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">Hutch/Buffet (Optional)<o:p></o:p></font></strong></p>'),
	(95, 4, 817, 0, 33, 'BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES'),
	(96, 4, 72, 0, 34, '<h2><u>By:</u>&nbsp;Crown Mark&nbsp;-&nbsp;2145&nbsp;-&nbsp; 7 Pc. Merlot Formal Dining Set - Optional Hutch/Buffet</h2> <p><strong><u>7 Pc. Set:</u></strong> Price is for <strong><u>Table</u></strong> (<strong><font color="#0000ff">2145T-Top &amp; 2145T-Leg</font></strong> -<u> 2 Boxes</u>) + <strong><u>4 Side Chairs</u></strong> (<strong><font color="#0000ff">2146S</font></strong> - <u>2 Boxes</u>) + <strong><u>2 Arm Chairs</u></strong> (<strong><font color="#0000ff">2146A</font></strong> - <u>1 Box</u>)</p> <ul> <li>Table expands from 42&quot; to 70-88&quot; with 1 x 18&quot; leaf - Allows seating for up to 8</li> <li>&nbsp;Solid hardwood glides - provide a strong durable glide and support system for the table</li> <li>&nbsp;Cherry veneered top - Provides a beautiful graining and finish while being durable</li> <li>Sleigh or scroll chair back - Gives a classic look to the set while providing a durable frame </li> <li>Multi color textured fabric - Comfortable, beautiful and easy to clean seat and chair back</li> </ul> <p>Table Top: 42&quot; X 70&quot; ~ 88&quot; (with 18&quot; Leaf) X 30&quot; H&nbsp;<br /><style type="text/css"> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --></style>Hutch/Buffet: (<strong><font color="#0000ff">2145-B &amp; 2145-H</font></strong> - <u>2 Boxes</u>) <u><strong>Buffet</strong></u>: 52&quot; X 17&quot; X 32&quot; H | <u><strong>Hutch</strong></u>: 52&quot; X 17&quot; X 48&quot; H</p> <p><font color="#c80413" size="2" face="" trebuchet=""><span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Not on Display in Store</span></font></p>'),
	(97, 4, 73, 0, 34, '<br /> <p class="MsoListParagraphCxSpFirst" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><span style="COLOR: green"><font face="Calibri">CrownMark Furniture<o:p></o:p></font></span></strong></p> <p class="MsoListParagraphCxSpMiddle" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">7 Pc. Dining Set<o:p></o:p></font></strong></p> <p class="MsoListParagraphCxSpLast" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">Hutch/Buffet (Optional)<o:p></o:p></font></strong></p>'),
	(98, 4, 817, 0, 34, 'BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES'),
	(99, 4, 72, 0, 35, '<h2><u>By:</u>&nbsp;Crown Mark&nbsp;-&nbsp;2145&nbsp;-&nbsp; 7 Pc. Merlot Formal Dining Set - Optional Hutch/Buffet</h2> <p><strong><u>7 Pc. Set:</u></strong> Price is for <strong><u>Table</u></strong> (<strong><font color="#0000ff">2145T-Top &amp; 2145T-Leg</font></strong> -<u> 2 Boxes</u>) + <strong><u>4 Side Chairs</u></strong> (<strong><font color="#0000ff">2146S</font></strong> - <u>2 Boxes</u>) + <strong><u>2 Arm Chairs</u></strong> (<strong><font color="#0000ff">2146A</font></strong> - <u>1 Box</u>)</p> <ul> <li>Table expands from 42&quot; to 70-88&quot; with 1 x 18&quot; leaf - Allows seating for up to 8</li> <li>&nbsp;Solid hardwood glides - provide a strong durable glide and support system for the table</li> <li>&nbsp;Cherry veneered top - Provides a beautiful graining and finish while being durable</li> <li>Sleigh or scroll chair back - Gives a classic look to the set while providing a durable frame </li> <li>Multi color textured fabric - Comfortable, beautiful and easy to clean seat and chair back</li> </ul> <p>Table Top: 42&quot; X 70&quot; ~ 88&quot; (with 18&quot; Leaf) X 30&quot; H&nbsp;<br /><style type="text/css"> <!-- .primary { 	font-size:12px; 	font-family:"Trebuchet MS", Arial, Helvetica; 	color:black; 	background-color:#FFFFFF; 	padding:10px; } --></style>Hutch/Buffet: (<strong><font color="#0000ff">2145-B &amp; 2145-H</font></strong> - <u>2 Boxes</u>) <u><strong>Buffet</strong></u>: 52&quot; X 17&quot; X 32&quot; H | <u><strong>Hutch</strong></u>: 52&quot; X 17&quot; X 48&quot; H</p> <p><font color="#c80413" size="2" face="" trebuchet=""><span style="FONT-WEIGHT: 700; BACKGROUND-COLOR: #ffffff">Not on Display in Store</span></font></p>'),
	(100, 4, 83, 0, 35, 'houston merlot dining set, houston formal dining furniture, formal dining room, formal dining tables'),
	(101, 4, 73, 0, 35, '<br /> <p class="MsoListParagraphCxSpFirst" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><span style="COLOR: green"><font face="Calibri">CrownMark Furniture<o:p></o:p></font></span></strong></p> <p class="MsoListParagraphCxSpMiddle" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">7 Pc. Dining Set<o:p></o:p></font></strong></p> <p class="MsoListParagraphCxSpLast" style="MARGIN: 0in 0in 0pt 39pt; TEXT-INDENT: -0.25in; mso-add-space: auto; mso-list: l0 level1 lfo1"><strong><span style="FONT-FAMILY: Symbol; FONT-WEIGHT: normal; COLOR: black; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-themecolor: text1; mso-bidi-font-weight: bold"><span style="mso-list: Ignore">&middot;<span new="" times="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></strong><strong><font face="Calibri">Hutch/Buffet (Optional)<o:p></o:p></font></strong></p>'),
	(102, 4, 817, 0, 35, 'BUFFET CHAIRS CHERRY DINING FORMAL FURNITURE HUTCH LEAF PEDASTAL RECTANGLE ROOM SET SETS TABLE TABLES');
/*!40000 ALTER TABLE `catalog_product_entity_text` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_entity_tier_price
DROP TABLE IF EXISTS `catalog_product_entity_tier_price`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'QTY',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `E8AB433B9ACB00343ABB312AD2FAB087` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_6E08D719F0501DD1D8E6D4EFF2511C85` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_TIER_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Attribute Backend Table';

-- Dumping data for table mag.catalog_product_entity_tier_price: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity_tier_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_entity_tier_price` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_entity_varchar
DROP TABLE IF EXISTS `catalog_product_entity_varchar`;
CREATE TABLE IF NOT EXISTS `catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_ENTT_VCHR_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_VCHR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=626 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Varchar Attribute Backend Table';

-- Dumping data for table mag.catalog_product_entity_varchar: ~559 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity_varchar` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
	(1, 4, 117, 0, 1, ''),
	(2, 4, 85, 0, 1, '/a/2/a2079201440f8cfe11cc6_l.jpg'),
	(3, 4, 112, 0, 1, 'CLOSEOUT SET - Villa Park Platform Bedroom Set'),
	(4, 4, 71, 0, 1, 'CLOSEOUT SET - Villa Park Platform Bedroom Set - Your Choice Of:6 Pc. Queen Set'),
	(5, 4, 109, 0, 1, 'container2'),
	(6, 4, 86, 0, 1, '/a/2/a2079201440f8cfe11cc6_l.jpg'),
	(7, 4, 113, 0, 1, 'CLOSEOUT SET - Villa Park Platform Bedroom Set'),
	(8, 4, 87, 0, 1, '/a/2/a2079201440f8cfe11cc6_l.jpg'),
	(9, 4, 114, 0, 1, 'CLOSEOUT SET - Villa Park Platform Bedroom Set'),
	(10, 4, 97, 0, 1, 'closeout-set-villa-park-platform-bedroom-set-your-choice-of-6-pc-queen-set'),
	(11, 4, 98, 0, 1, 'closeout-set-villa-park-platform-bedroom-set-your-choice-of-6-pc-queen-set.html'),
	(12, 4, 807, 0, 1, '0.0'),
	(13, 4, 808, 0, 1, '0.0'),
	(14, 4, 809, 0, 1, '0.0'),
	(15, 4, 810, 0, 1, 'self'),
	(16, 4, 815, 0, 1, 'New'),
	(17, 4, 816, 0, 1, '4093'),
	(18, 4, 117, 0, 2, ''),
	(19, 4, 85, 0, 2, '/a/2/a2079201440f8cfe11cc6_l.jpg'),
	(20, 4, 112, 0, 2, 'CLOSEOUT SET - Villa Park Platform Bedroom Set'),
	(21, 4, 71, 0, 2, 'CLOSEOUT SET - Villa Park Platform Bedroom Set - Your Choice Of:Queen Bed Only'),
	(22, 4, 109, 0, 2, 'container2'),
	(23, 4, 86, 0, 2, '/a/2/a2079201440f8cfe11cc6_l.jpg'),
	(24, 4, 113, 0, 2, 'CLOSEOUT SET - Villa Park Platform Bedroom Set'),
	(25, 4, 87, 0, 2, '/a/2/a2079201440f8cfe11cc6_l.jpg'),
	(26, 4, 114, 0, 2, 'CLOSEOUT SET - Villa Park Platform Bedroom Set'),
	(27, 4, 97, 0, 2, 'closeout-set-villa-park-platform-bedroom-set-your-choice-of-queen-bed-only'),
	(28, 4, 98, 0, 2, 'closeout-set-villa-park-platform-bedroom-set-your-choice-of-queen-bed-only.html'),
	(29, 4, 807, 0, 2, '0.0'),
	(30, 4, 808, 0, 2, '0.0'),
	(31, 4, 809, 0, 2, '0.0'),
	(32, 4, 810, 0, 2, 'self'),
	(33, 4, 815, 0, 2, 'New'),
	(34, 4, 816, 0, 2, '4093'),
	(35, 4, 117, 0, 3, ''),
	(36, 4, 85, 0, 3, '/a/2/a2079201440f8cfe11cc6_l.jpg'),
	(37, 4, 112, 0, 3, 'CLOSEOUT SET - Villa Park Platform Bedroom Set'),
	(38, 4, 71, 0, 3, 'CLOSEOUT SET - Villa Park Platform Bedroom Set - Your Choice Of:8 Pc. Queen Set'),
	(39, 4, 109, 0, 3, 'container2'),
	(40, 4, 86, 0, 3, '/a/2/a2079201440f8cfe11cc6_l.jpg'),
	(41, 4, 113, 0, 3, 'CLOSEOUT SET - Villa Park Platform Bedroom Set'),
	(42, 4, 87, 0, 3, '/a/2/a2079201440f8cfe11cc6_l.jpg'),
	(43, 4, 114, 0, 3, 'CLOSEOUT SET - Villa Park Platform Bedroom Set'),
	(44, 4, 97, 0, 3, 'closeout-set-villa-park-platform-bedroom-set-your-choice-of-8-pc-queen-set'),
	(45, 4, 98, 0, 3, 'closeout-set-villa-park-platform-bedroom-set-your-choice-of-8-pc-queen-set.html'),
	(46, 4, 807, 0, 3, '0.0'),
	(47, 4, 808, 0, 3, '0.0'),
	(48, 4, 809, 0, 3, '0.0'),
	(49, 4, 810, 0, 3, 'self'),
	(50, 4, 815, 0, 3, 'New'),
	(51, 4, 816, 0, 3, '4093'),
	(52, 4, 117, 0, 4, ''),
	(53, 4, 85, 0, 4, '/a/2/a2079201440f8cfe11cc6_l.jpg'),
	(54, 4, 112, 0, 4, 'CLOSEOUT SET - Villa Park Platform Bedroom Set'),
	(55, 4, 84, 0, 4, 'By:FOA-, CM7293-Robles Black White PlatformQueen or King Size Platform Bed Set   6 Pc. Queen Set: Price is for Queen Bed (82300), 1 Nightstand (82370), Dresse'),
	(56, 4, 82, 0, 4, 'CLOSEOUT SET - Villa Park Platform Bedroom Set'),
	(57, 4, 71, 0, 4, 'CLOSEOUT SET - Villa Park Platform Bedroom Set'),
	(58, 4, 109, 0, 4, 'container2'),
	(59, 4, 86, 0, 4, '/a/2/a2079201440f8cfe11cc6_l.jpg'),
	(60, 4, 113, 0, 4, 'CLOSEOUT SET - Villa Park Platform Bedroom Set'),
	(61, 4, 87, 0, 4, '/a/2/a2079201440f8cfe11cc6_l.jpg'),
	(62, 4, 114, 0, 4, 'CLOSEOUT SET - Villa Park Platform Bedroom Set'),
	(63, 4, 97, 0, 4, 'closeout-set-villa-park-platform-bedroom-set'),
	(64, 4, 98, 0, 4, 'closeout-set-villa-park-platform-bedroom-set.html'),
	(65, 4, 807, 0, 4, '0.0'),
	(66, 4, 808, 0, 4, '0.0'),
	(67, 4, 809, 0, 4, '0.0'),
	(68, 4, 810, 0, 4, 'self'),
	(69, 4, 815, 0, 4, 'New'),
	(70, 4, 816, 0, 4, '4093'),
	(71, 4, 117, 0, 5, ''),
	(72, 4, 85, 0, 5, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(73, 4, 112, 0, 5, 'Windham Formal Dining Set'),
	(74, 4, 71, 0, 5, 'Windham Formal Dining Set - Windham Dining:7 Pc. (Table + 4 Side Chairs + 2 Arm Chairs)'),
	(75, 4, 109, 0, 5, 'container2'),
	(76, 4, 86, 0, 5, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(77, 4, 113, 0, 5, 'Windham Formal Dining Set'),
	(78, 4, 87, 0, 5, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(79, 4, 114, 0, 5, 'Windham Formal Dining Set'),
	(80, 4, 97, 0, 5, 'windham-formal-dining-set-windham-dining-7-pc-table-4-side-chairs-2-arm-chairs'),
	(81, 4, 98, 0, 5, 'windham-formal-dining-set-windham-dining-7-pc-table-4-side-chairs-2-arm-chairs.html'),
	(82, 4, 807, 0, 5, '0.0'),
	(83, 4, 808, 0, 5, '0.0'),
	(84, 4, 809, 0, 5, '0.0'),
	(85, 4, 810, 0, 5, 'self'),
	(86, 4, 815, 0, 5, 'New'),
	(87, 4, 816, 0, 5, '3'),
	(88, 4, 117, 0, 6, ''),
	(89, 4, 85, 0, 6, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(90, 4, 112, 0, 6, 'Windham Formal Dining Set'),
	(91, 4, 71, 0, 6, 'Windham Formal Dining Set - Windham Dining:Hutch/Buffet'),
	(92, 4, 109, 0, 6, 'container2'),
	(93, 4, 86, 0, 6, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(94, 4, 113, 0, 6, 'Windham Formal Dining Set'),
	(95, 4, 87, 0, 6, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(96, 4, 114, 0, 6, 'Windham Formal Dining Set'),
	(97, 4, 97, 0, 6, 'windham-formal-dining-set-windham-dining-hutch-buffet'),
	(98, 4, 98, 0, 6, 'windham-formal-dining-set-windham-dining-hutch-buffet.html'),
	(99, 4, 807, 0, 6, '0.0'),
	(100, 4, 808, 0, 6, '0.0'),
	(101, 4, 809, 0, 6, '0.0'),
	(102, 4, 810, 0, 6, 'self'),
	(103, 4, 815, 0, 6, 'New'),
	(104, 4, 816, 0, 6, '3'),
	(105, 4, 117, 0, 7, ''),
	(106, 4, 85, 0, 7, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(107, 4, 112, 0, 7, 'Windham Formal Dining Set'),
	(108, 4, 71, 0, 7, 'Windham Formal Dining Set - Windham Dining:2 Additional Side Chairs'),
	(109, 4, 109, 0, 7, 'container2'),
	(110, 4, 86, 0, 7, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(111, 4, 113, 0, 7, 'Windham Formal Dining Set'),
	(112, 4, 87, 0, 7, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(113, 4, 114, 0, 7, 'Windham Formal Dining Set'),
	(114, 4, 97, 0, 7, 'windham-formal-dining-set-windham-dining-2-additional-side-chairs'),
	(115, 4, 98, 0, 7, 'windham-formal-dining-set-windham-dining-2-additional-side-chairs.html'),
	(116, 4, 807, 0, 7, '0.0'),
	(117, 4, 808, 0, 7, '0.0'),
	(118, 4, 809, 0, 7, '0.0'),
	(119, 4, 810, 0, 7, 'self'),
	(120, 4, 815, 0, 7, 'New'),
	(121, 4, 816, 0, 7, '3'),
	(122, 4, 117, 0, 8, ''),
	(123, 4, 85, 0, 8, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(124, 4, 112, 0, 8, 'Windham Formal Dining Set'),
	(125, 4, 71, 0, 8, 'Windham Formal Dining Set - Windham Dining:2 Additional Arm Chairs'),
	(126, 4, 109, 0, 8, 'container2'),
	(127, 4, 86, 0, 8, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(128, 4, 113, 0, 8, 'Windham Formal Dining Set'),
	(129, 4, 87, 0, 8, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(130, 4, 114, 0, 8, 'Windham Formal Dining Set'),
	(131, 4, 97, 0, 8, 'windham-formal-dining-set-windham-dining-2-additional-arm-chairs'),
	(132, 4, 98, 0, 8, 'windham-formal-dining-set-windham-dining-2-additional-arm-chairs.html'),
	(133, 4, 807, 0, 8, '0.0'),
	(134, 4, 808, 0, 8, '0.0'),
	(135, 4, 809, 0, 8, '0.0'),
	(136, 4, 810, 0, 8, 'self'),
	(137, 4, 815, 0, 8, 'New'),
	(138, 4, 816, 0, 8, '3'),
	(139, 4, 117, 0, 9, ''),
	(140, 4, 85, 0, 9, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(141, 4, 112, 0, 9, 'Windham Formal Dining Set'),
	(142, 4, 84, 0, 9, 'Formal dining sets in Houston, Texas. Dining furniture for any budget.'),
	(143, 4, 82, 0, 9, 'Windham Formal Dining Set'),
	(144, 4, 71, 0, 9, 'Windham Formal Dining Set'),
	(145, 4, 109, 0, 9, 'container2'),
	(146, 4, 86, 0, 9, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(147, 4, 113, 0, 9, 'Windham Formal Dining Set'),
	(148, 4, 87, 0, 9, '/a/2/a20791d1334c6ffb538978_m.jpg'),
	(149, 4, 114, 0, 9, 'Windham Formal Dining Set'),
	(150, 4, 97, 0, 9, 'windham-formal-dining-set'),
	(151, 4, 98, 0, 9, 'windham-formal-dining-set.html'),
	(152, 4, 807, 0, 9, '0.0'),
	(153, 4, 808, 0, 9, '0.0'),
	(154, 4, 809, 0, 9, '0.0'),
	(155, 4, 810, 0, 9, 'self'),
	(156, 4, 815, 0, 9, 'New'),
	(157, 4, 816, 0, 9, '3'),
	(158, 4, 117, 0, 10, ''),
	(159, 4, 85, 0, 10, '/a/2/a20791b13f6e0d5ad3e115_m.jpg'),
	(160, 4, 112, 0, 10, 'Neo Renaissance Formal Dining Set'),
	(161, 4, 71, 0, 10, 'Neo Renaissance Formal Dining Set - Neo Renaissance Dining:7 Pc. (Table + 4 Side Chairs + 2 Arm Chairs)'),
	(162, 4, 109, 0, 10, 'container2'),
	(163, 4, 86, 0, 10, '/a/2/a20791b13f6e0d5ad3e115_m.jpg'),
	(164, 4, 113, 0, 10, 'Neo Renaissance Formal Dining Set'),
	(165, 4, 87, 0, 10, '/a/2/a20791b13f6e0d5ad3e115_m.jpg'),
	(166, 4, 114, 0, 10, 'Neo Renaissance Formal Dining Set'),
	(167, 4, 97, 0, 10, 'neo-renaissance-formal-dining-set-neo-renaissance-dining-7-pc-table-4-side-chairs-2-arm-chairs'),
	(168, 4, 98, 0, 10, 'neo-renaissance-formal-dining-set-neo-renaissance-dining-7-pc-table-4-side-chairs-2-arm-chairs.html'),
	(169, 4, 807, 0, 10, '0.0'),
	(170, 4, 808, 0, 10, '0.0'),
	(171, 4, 809, 0, 10, '0.0'),
	(172, 4, 810, 0, 10, 'self'),
	(173, 4, 815, 0, 10, 'New'),
	(174, 4, 816, 0, 10, '4'),
	(175, 4, 117, 0, 11, ''),
	(176, 4, 85, 0, 11, '/a/2/a20791b13f6e0d5ad3e115_m.jpg'),
	(177, 4, 112, 0, 11, 'Neo Renaissance Formal Dining Set'),
	(178, 4, 71, 0, 11, 'Neo Renaissance Formal Dining Set - Neo Renaissance Dining:Hutch/Buffet'),
	(179, 4, 109, 0, 11, 'container2'),
	(180, 4, 86, 0, 11, '/a/2/a20791b13f6e0d5ad3e115_m.jpg'),
	(181, 4, 113, 0, 11, 'Neo Renaissance Formal Dining Set'),
	(182, 4, 87, 0, 11, '/a/2/a20791b13f6e0d5ad3e115_m.jpg'),
	(183, 4, 114, 0, 11, 'Neo Renaissance Formal Dining Set'),
	(184, 4, 97, 0, 11, 'neo-renaissance-formal-dining-set-neo-renaissance-dining-hutch-buffet'),
	(185, 4, 98, 0, 11, 'neo-renaissance-formal-dining-set-neo-renaissance-dining-hutch-buffet.html'),
	(186, 4, 807, 0, 11, '0.0'),
	(187, 4, 808, 0, 11, '0.0'),
	(188, 4, 809, 0, 11, '0.0'),
	(189, 4, 810, 0, 11, 'self'),
	(190, 4, 815, 0, 11, 'New'),
	(191, 4, 816, 0, 11, '4'),
	(192, 4, 117, 0, 12, ''),
	(193, 4, 85, 0, 12, '/a/2/a20791b13f6e0d5ad3e115_m.jpg'),
	(194, 4, 112, 0, 12, 'Neo Renaissance Formal Dining Set'),
	(195, 4, 71, 0, 12, 'Neo Renaissance Formal Dining Set - Neo Renaissance Dining:2 Additional Side Chairs'),
	(196, 4, 109, 0, 12, 'container2'),
	(197, 4, 86, 0, 12, '/a/2/a20791b13f6e0d5ad3e115_m.jpg'),
	(198, 4, 113, 0, 12, 'Neo Renaissance Formal Dining Set'),
	(199, 4, 87, 0, 12, '/a/2/a20791b13f6e0d5ad3e115_m.jpg'),
	(200, 4, 114, 0, 12, 'Neo Renaissance Formal Dining Set'),
	(201, 4, 97, 0, 12, 'neo-renaissance-formal-dining-set-neo-renaissance-dining-2-additional-side-chairs'),
	(202, 4, 98, 0, 12, 'neo-renaissance-formal-dining-set-neo-renaissance-dining-2-additional-side-chairs.html'),
	(203, 4, 807, 0, 12, '0.0'),
	(204, 4, 808, 0, 12, '0.0'),
	(205, 4, 809, 0, 12, '0.0'),
	(206, 4, 810, 0, 12, 'self'),
	(207, 4, 815, 0, 12, 'New'),
	(208, 4, 816, 0, 12, '4'),
	(209, 4, 117, 0, 13, ''),
	(210, 4, 85, 0, 13, '/a/2/a20791b13f6e0d5ad3e115_m.jpg'),
	(211, 4, 112, 0, 13, 'Neo Renaissance Formal Dining Set'),
	(212, 4, 71, 0, 13, 'Neo Renaissance Formal Dining Set - Neo Renaissance Dining:2 Additional Arm Chairs'),
	(213, 4, 109, 0, 13, 'container2'),
	(214, 4, 86, 0, 13, '/a/2/a20791b13f6e0d5ad3e115_m.jpg'),
	(215, 4, 113, 0, 13, 'Neo Renaissance Formal Dining Set'),
	(216, 4, 87, 0, 13, '/a/2/a20791b13f6e0d5ad3e115_m.jpg'),
	(217, 4, 114, 0, 13, 'Neo Renaissance Formal Dining Set'),
	(218, 4, 97, 0, 13, 'neo-renaissance-formal-dining-set-neo-renaissance-dining-2-additional-arm-chairs'),
	(219, 4, 98, 0, 13, 'neo-renaissance-formal-dining-set-neo-renaissance-dining-2-additional-arm-chairs.html'),
	(220, 4, 807, 0, 13, '0.0'),
	(221, 4, 808, 0, 13, '0.0'),
	(222, 4, 809, 0, 13, '0.0'),
	(223, 4, 810, 0, 13, 'self'),
	(224, 4, 815, 0, 13, 'New'),
	(225, 4, 816, 0, 13, '4'),
	(226, 4, 117, 0, 14, ''),
	(227, 4, 85, 0, 14, '/a/2/a20791b13f6e0d5ad3e115_m.jpg'),
	(228, 4, 112, 0, 14, 'Neo Renaissance Formal Dining Set'),
	(229, 4, 84, 0, 14, 'Formal dining sets in Houston, Texas. Dining furniture for any budget.'),
	(230, 4, 82, 0, 14, 'Neo Renaissance Formal Dining Set'),
	(231, 4, 71, 0, 14, 'Neo Renaissance Formal Dining Set'),
	(232, 4, 109, 0, 14, 'container2'),
	(233, 4, 86, 0, 14, '/a/2/a20791b13f6e0d5ad3e115_m.jpg'),
	(234, 4, 113, 0, 14, 'Neo Renaissance Formal Dining Set'),
	(235, 4, 87, 0, 14, '/a/2/a20791b13f6e0d5ad3e115_m.jpg'),
	(236, 4, 114, 0, 14, 'Neo Renaissance Formal Dining Set'),
	(237, 4, 97, 0, 14, 'neo-renaissance-formal-dining-set'),
	(238, 4, 98, 0, 14, 'neo-renaissance-formal-dining-set.html'),
	(239, 4, 807, 0, 14, '0.0'),
	(240, 4, 808, 0, 14, '0.0'),
	(241, 4, 809, 0, 14, '0.0'),
	(242, 4, 810, 0, 14, 'self'),
	(243, 4, 815, 0, 14, 'New'),
	(244, 4, 816, 0, 14, '4'),
	(245, 4, 117, 0, 15, ''),
	(246, 4, 85, 0, 15, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(247, 4, 112, 0, 15, 'Estelle Formal Dining Set'),
	(248, 4, 71, 0, 15, 'Estelle Formal Dining Set - Estelle Dining Set:7 Pc. (Table + 4 Side Chairs + 2 Arm Chairs)'),
	(249, 4, 109, 0, 15, 'container2'),
	(250, 4, 86, 0, 15, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(251, 4, 113, 0, 15, 'Estelle Formal Dining Set'),
	(252, 4, 87, 0, 15, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(253, 4, 114, 0, 15, 'Estelle Formal Dining Set'),
	(254, 4, 97, 0, 15, 'estelle-formal-dining-set-estelle-dining-set-7-pc-table-4-side-chairs-2-arm-chairs'),
	(255, 4, 98, 0, 15, 'estelle-formal-dining-set-estelle-dining-set-7-pc-table-4-side-chairs-2-arm-chairs.html'),
	(256, 4, 807, 0, 15, '0.0'),
	(257, 4, 808, 0, 15, '0.0'),
	(258, 4, 809, 0, 15, '0.0'),
	(259, 4, 810, 0, 15, 'self'),
	(260, 4, 815, 0, 15, 'New'),
	(261, 4, 816, 0, 15, '7'),
	(262, 4, 117, 0, 16, ''),
	(263, 4, 85, 0, 16, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(264, 4, 112, 0, 16, 'Estelle Formal Dining Set'),
	(265, 4, 71, 0, 16, 'Estelle Formal Dining Set - Estelle Dining Set:Hutch/Buffet'),
	(266, 4, 109, 0, 16, 'container2'),
	(267, 4, 86, 0, 16, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(268, 4, 113, 0, 16, 'Estelle Formal Dining Set'),
	(269, 4, 87, 0, 16, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(270, 4, 114, 0, 16, 'Estelle Formal Dining Set'),
	(271, 4, 97, 0, 16, 'estelle-formal-dining-set-estelle-dining-set-hutch-buffet'),
	(272, 4, 98, 0, 16, 'estelle-formal-dining-set-estelle-dining-set-hutch-buffet.html'),
	(273, 4, 807, 0, 16, '0.0'),
	(274, 4, 808, 0, 16, '0.0'),
	(275, 4, 809, 0, 16, '0.0'),
	(276, 4, 810, 0, 16, 'self'),
	(277, 4, 815, 0, 16, 'New'),
	(278, 4, 816, 0, 16, '7'),
	(279, 4, 117, 0, 17, ''),
	(280, 4, 85, 0, 17, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(281, 4, 112, 0, 17, 'Estelle Formal Dining Set'),
	(282, 4, 71, 0, 17, 'Estelle Formal Dining Set - Estelle Dining Set:2 Additional Side Chairs'),
	(283, 4, 109, 0, 17, 'container2'),
	(284, 4, 86, 0, 17, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(285, 4, 113, 0, 17, 'Estelle Formal Dining Set'),
	(286, 4, 87, 0, 17, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(287, 4, 114, 0, 17, 'Estelle Formal Dining Set'),
	(288, 4, 97, 0, 17, 'estelle-formal-dining-set-estelle-dining-set-2-additional-side-chairs'),
	(289, 4, 98, 0, 17, 'estelle-formal-dining-set-estelle-dining-set-2-additional-side-chairs.html'),
	(290, 4, 807, 0, 17, '0.0'),
	(291, 4, 808, 0, 17, '0.0'),
	(292, 4, 809, 0, 17, '0.0'),
	(293, 4, 810, 0, 17, 'self'),
	(294, 4, 815, 0, 17, 'New'),
	(295, 4, 816, 0, 17, '7'),
	(296, 4, 117, 0, 18, ''),
	(297, 4, 85, 0, 18, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(298, 4, 112, 0, 18, 'Estelle Formal Dining Set'),
	(299, 4, 71, 0, 18, 'Estelle Formal Dining Set - Estelle Dining Set:2 Additional Arm Chairs'),
	(300, 4, 109, 0, 18, 'container2'),
	(301, 4, 86, 0, 18, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(302, 4, 113, 0, 18, 'Estelle Formal Dining Set'),
	(303, 4, 87, 0, 18, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(304, 4, 114, 0, 18, 'Estelle Formal Dining Set'),
	(305, 4, 97, 0, 18, 'estelle-formal-dining-set-estelle-dining-set-2-additional-arm-chairs'),
	(306, 4, 98, 0, 18, 'estelle-formal-dining-set-estelle-dining-set-2-additional-arm-chairs.html'),
	(307, 4, 807, 0, 18, '0.0'),
	(308, 4, 808, 0, 18, '0.0'),
	(309, 4, 809, 0, 18, '0.0'),
	(310, 4, 810, 0, 18, 'self'),
	(311, 4, 815, 0, 18, 'New'),
	(312, 4, 816, 0, 18, '7'),
	(313, 4, 117, 0, 19, ''),
	(314, 4, 85, 0, 19, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(315, 4, 112, 0, 19, 'Estelle Formal Dining Set'),
	(316, 4, 84, 0, 19, 'Formal dining room furniture in Houston, Texas. Dining tables & chairs.'),
	(317, 4, 82, 0, 19, 'Estelle Formal Dining Set'),
	(318, 4, 71, 0, 19, 'Estelle Formal Dining Set'),
	(319, 4, 109, 0, 19, 'container2'),
	(320, 4, 86, 0, 19, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(321, 4, 113, 0, 19, 'Estelle Formal Dining Set'),
	(322, 4, 87, 0, 19, '/a/2/a20791a132a728a03188fb_m.jpg'),
	(323, 4, 114, 0, 19, 'Estelle Formal Dining Set'),
	(324, 4, 97, 0, 19, 'estelle-formal-dining-set'),
	(325, 4, 98, 0, 19, 'estelle-formal-dining-set.html'),
	(326, 4, 807, 0, 19, '0.0'),
	(327, 4, 808, 0, 19, '0.0'),
	(328, 4, 809, 0, 19, '0.0'),
	(329, 4, 810, 0, 19, 'self'),
	(330, 4, 815, 0, 19, 'New'),
	(331, 4, 816, 0, 19, '7'),
	(332, 4, 117, 0, 20, ''),
	(333, 4, 85, 0, 20, '/a/2/a20792912d1041436e5886_m.jpg'),
	(334, 4, 112, 0, 20, 'Grandview Marble Dining'),
	(335, 4, 84, 0, 20, ''),
	(336, 4, 82, 0, 20, 'Grandview Marble Dining'),
	(337, 4, 71, 0, 20, 'Grandview Marble Dining'),
	(338, 4, 109, 0, 20, 'container2'),
	(339, 4, 86, 0, 20, '/a/2/a20792912d1041436e5886_m.jpg'),
	(340, 4, 113, 0, 20, 'Grandview Marble Dining'),
	(341, 4, 87, 0, 20, '/a/2/a20792912d1041436e5886_m.jpg'),
	(342, 4, 114, 0, 20, 'Grandview Marble Dining'),
	(343, 4, 97, 0, 20, 'grandview-marble-dining'),
	(344, 4, 98, 0, 20, 'grandview-marble-dining.html'),
	(345, 4, 807, 0, 20, '0.0'),
	(346, 4, 808, 0, 20, '0.0'),
	(347, 4, 809, 0, 20, '0.0'),
	(348, 4, 810, 0, 20, 'self'),
	(349, 4, 815, 0, 20, 'New'),
	(350, 4, 816, 0, 20, '8'),
	(351, 4, 117, 0, 21, ''),
	(352, 4, 85, 0, 21, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(353, 4, 112, 0, 21, 'Monaco Dining'),
	(354, 4, 71, 0, 21, 'Monaco Dining - Monaco Dining:5 Pc. (Table + 4 Side Chairs)'),
	(355, 4, 109, 0, 21, 'container2'),
	(356, 4, 86, 0, 21, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(357, 4, 113, 0, 21, 'Monaco Dining'),
	(358, 4, 87, 0, 21, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(359, 4, 114, 0, 21, 'Monaco Dining'),
	(360, 4, 97, 0, 21, 'monaco-dining-monaco-dining-5-pc-table-4-side-chairs'),
	(361, 4, 98, 0, 21, 'monaco-dining-monaco-dining-5-pc-table-4-side-chairs.html'),
	(362, 4, 807, 0, 21, '0.0'),
	(363, 4, 808, 0, 21, '0.0'),
	(364, 4, 809, 0, 21, '0.0'),
	(365, 4, 810, 0, 21, 'self'),
	(366, 4, 815, 0, 21, 'New'),
	(367, 4, 816, 0, 21, '9'),
	(368, 4, 117, 0, 22, ''),
	(369, 4, 85, 0, 22, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(370, 4, 112, 0, 22, 'Monaco Dining'),
	(371, 4, 71, 0, 22, 'Monaco Dining - Monaco Dining:7 Pc. (Table + 4 Side Chairs + 2 Arm Chairs)'),
	(372, 4, 109, 0, 22, 'container2'),
	(373, 4, 86, 0, 22, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(374, 4, 113, 0, 22, 'Monaco Dining'),
	(375, 4, 87, 0, 22, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(376, 4, 114, 0, 22, 'Monaco Dining'),
	(377, 4, 97, 0, 22, 'monaco-dining-monaco-dining-7-pc-table-4-side-chairs-2-arm-chairs'),
	(378, 4, 98, 0, 22, 'monaco-dining-monaco-dining-7-pc-table-4-side-chairs-2-arm-chairs.html'),
	(379, 4, 807, 0, 22, '0.0'),
	(380, 4, 808, 0, 22, '0.0'),
	(381, 4, 809, 0, 22, '0.0'),
	(382, 4, 810, 0, 22, 'self'),
	(383, 4, 815, 0, 22, 'New'),
	(384, 4, 816, 0, 22, '9'),
	(385, 4, 117, 0, 23, ''),
	(386, 4, 85, 0, 23, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(387, 4, 112, 0, 23, 'Monaco Dining'),
	(388, 4, 71, 0, 23, 'Monaco Dining - Monaco Dining:Hutch/Buffet'),
	(389, 4, 109, 0, 23, 'container2'),
	(390, 4, 86, 0, 23, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(391, 4, 113, 0, 23, 'Monaco Dining'),
	(392, 4, 87, 0, 23, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(393, 4, 114, 0, 23, 'Monaco Dining'),
	(394, 4, 97, 0, 23, 'monaco-dining-monaco-dining-hutch-buffet'),
	(395, 4, 98, 0, 23, 'monaco-dining-monaco-dining-hutch-buffet.html'),
	(396, 4, 807, 0, 23, '0.0'),
	(397, 4, 808, 0, 23, '0.0'),
	(398, 4, 809, 0, 23, '0.0'),
	(399, 4, 810, 0, 23, 'self'),
	(400, 4, 815, 0, 23, 'New'),
	(401, 4, 816, 0, 23, '9'),
	(402, 4, 117, 0, 24, ''),
	(403, 4, 85, 0, 24, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(404, 4, 112, 0, 24, 'Monaco Dining'),
	(405, 4, 71, 0, 24, 'Monaco Dining - Monaco Dining:2 Additional Side Chairs'),
	(406, 4, 109, 0, 24, 'container2'),
	(407, 4, 86, 0, 24, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(408, 4, 113, 0, 24, 'Monaco Dining'),
	(409, 4, 87, 0, 24, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(410, 4, 114, 0, 24, 'Monaco Dining'),
	(411, 4, 97, 0, 24, 'monaco-dining-monaco-dining-2-additional-side-chairs'),
	(412, 4, 98, 0, 24, 'monaco-dining-monaco-dining-2-additional-side-chairs.html'),
	(413, 4, 807, 0, 24, '0.0'),
	(414, 4, 808, 0, 24, '0.0'),
	(415, 4, 809, 0, 24, '0.0'),
	(416, 4, 810, 0, 24, 'self'),
	(417, 4, 815, 0, 24, 'New'),
	(418, 4, 816, 0, 24, '9'),
	(419, 4, 117, 0, 25, ''),
	(420, 4, 85, 0, 25, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(421, 4, 112, 0, 25, 'Monaco Dining'),
	(422, 4, 71, 0, 25, 'Monaco Dining - Monaco Dining:2 Additional Arm Chairs'),
	(423, 4, 109, 0, 25, 'container2'),
	(424, 4, 86, 0, 25, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(425, 4, 113, 0, 25, 'Monaco Dining'),
	(426, 4, 87, 0, 25, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(427, 4, 114, 0, 25, 'Monaco Dining'),
	(428, 4, 97, 0, 25, 'monaco-dining-monaco-dining-2-additional-arm-chairs'),
	(429, 4, 98, 0, 25, 'monaco-dining-monaco-dining-2-additional-arm-chairs.html'),
	(430, 4, 807, 0, 25, '0.0'),
	(431, 4, 808, 0, 25, '0.0'),
	(432, 4, 809, 0, 25, '0.0'),
	(433, 4, 810, 0, 25, 'self'),
	(434, 4, 815, 0, 25, 'New'),
	(435, 4, 816, 0, 25, '9'),
	(436, 4, 117, 0, 26, ''),
	(437, 4, 85, 0, 26, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(438, 4, 112, 0, 26, 'Monaco Dining'),
	(439, 4, 84, 0, 26, ''),
	(440, 4, 82, 0, 26, 'Monaco Dining'),
	(441, 4, 71, 0, 26, 'Monaco Dining'),
	(442, 4, 109, 0, 26, 'container2'),
	(443, 4, 86, 0, 26, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(444, 4, 113, 0, 26, 'Monaco Dining'),
	(445, 4, 87, 0, 26, '/a/2/a20792912d1046f7a39310_m.jpg'),
	(446, 4, 114, 0, 26, 'Monaco Dining'),
	(447, 4, 97, 0, 26, 'monaco-dining'),
	(448, 4, 98, 0, 26, 'monaco-dining.html'),
	(449, 4, 807, 0, 26, '0.0'),
	(450, 4, 808, 0, 26, '0.0'),
	(451, 4, 809, 0, 26, '0.0'),
	(452, 4, 810, 0, 26, 'self'),
	(453, 4, 815, 0, 26, 'New'),
	(454, 4, 816, 0, 26, '9'),
	(455, 4, 117, 0, 27, ''),
	(456, 4, 85, 0, 27, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(457, 4, 112, 0, 27, 'Apollo Dining'),
	(458, 4, 71, 0, 27, 'Apollo Dining - Apollo Dining:5 Pc. (Table + 4 Side Chairs)'),
	(459, 4, 109, 0, 27, 'container2'),
	(460, 4, 86, 0, 27, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(461, 4, 113, 0, 27, 'Apollo Dining'),
	(462, 4, 87, 0, 27, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(463, 4, 114, 0, 27, 'Apollo Dining'),
	(464, 4, 97, 0, 27, 'apollo-dining-apollo-dining-5-pc-table-4-side-chairs'),
	(465, 4, 98, 0, 27, 'apollo-dining-apollo-dining-5-pc-table-4-side-chairs.html'),
	(466, 4, 807, 0, 27, '0.0'),
	(467, 4, 808, 0, 27, '0.0'),
	(468, 4, 809, 0, 27, '0.0'),
	(469, 4, 810, 0, 27, 'self'),
	(470, 4, 815, 0, 27, 'New'),
	(471, 4, 816, 0, 27, '10'),
	(472, 4, 117, 0, 28, ''),
	(473, 4, 85, 0, 28, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(474, 4, 112, 0, 28, 'Apollo Dining'),
	(475, 4, 71, 0, 28, 'Apollo Dining - Apollo Dining:Hutch/Buffet'),
	(476, 4, 109, 0, 28, 'container2'),
	(477, 4, 86, 0, 28, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(478, 4, 113, 0, 28, 'Apollo Dining'),
	(479, 4, 87, 0, 28, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(480, 4, 114, 0, 28, 'Apollo Dining'),
	(481, 4, 97, 0, 28, 'apollo-dining-apollo-dining-hutch-buffet'),
	(482, 4, 98, 0, 28, 'apollo-dining-apollo-dining-hutch-buffet.html'),
	(483, 4, 807, 0, 28, '0.0'),
	(484, 4, 808, 0, 28, '0.0'),
	(485, 4, 809, 0, 28, '0.0'),
	(486, 4, 810, 0, 28, 'self'),
	(487, 4, 815, 0, 28, 'New'),
	(488, 4, 816, 0, 28, '10'),
	(489, 4, 117, 0, 29, ''),
	(490, 4, 85, 0, 29, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(491, 4, 112, 0, 29, 'Apollo Dining'),
	(492, 4, 71, 0, 29, 'Apollo Dining - Apollo Dining:2 Additional Side Chairs'),
	(493, 4, 109, 0, 29, 'container2'),
	(494, 4, 86, 0, 29, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(495, 4, 113, 0, 29, 'Apollo Dining'),
	(496, 4, 87, 0, 29, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(497, 4, 114, 0, 29, 'Apollo Dining'),
	(498, 4, 97, 0, 29, 'apollo-dining-apollo-dining-2-additional-side-chairs'),
	(499, 4, 98, 0, 29, 'apollo-dining-apollo-dining-2-additional-side-chairs.html'),
	(500, 4, 807, 0, 29, '0.0'),
	(501, 4, 808, 0, 29, '0.0'),
	(502, 4, 809, 0, 29, '0.0'),
	(503, 4, 810, 0, 29, 'self'),
	(504, 4, 815, 0, 29, 'New'),
	(505, 4, 816, 0, 29, '10'),
	(506, 4, 117, 0, 30, ''),
	(507, 4, 85, 0, 30, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(508, 4, 112, 0, 30, 'Apollo Dining'),
	(509, 4, 84, 0, 30, ''),
	(510, 4, 82, 0, 30, 'Apollo Dining'),
	(511, 4, 71, 0, 30, 'Apollo Dining'),
	(512, 4, 109, 0, 30, 'container2'),
	(513, 4, 86, 0, 30, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(514, 4, 113, 0, 30, 'Apollo Dining'),
	(515, 4, 87, 0, 30, '/a/2/a20792912d1037894b63cb_m.jpg'),
	(516, 4, 114, 0, 30, 'Apollo Dining'),
	(517, 4, 97, 0, 30, 'apollo-dining'),
	(518, 4, 98, 0, 30, 'apollo-dining.html'),
	(519, 4, 807, 0, 30, '0.0'),
	(520, 4, 808, 0, 30, '0.0'),
	(521, 4, 809, 0, 30, '0.0'),
	(522, 4, 810, 0, 30, 'self'),
	(523, 4, 815, 0, 30, 'New'),
	(524, 4, 816, 0, 30, '10'),
	(525, 4, 117, 0, 31, ''),
	(526, 4, 85, 0, 31, '/a/2/a20791b13f6e063a331af9_m.jpg'),
	(527, 4, 112, 0, 31, 'Merlot Formal Dining Set'),
	(528, 4, 71, 0, 31, 'Merlot Formal Dining Set - Merlot Dining:7 Pc. (Table + 4 Side Chairs + 2 Arm Chairs)'),
	(529, 4, 109, 0, 31, 'container2'),
	(530, 4, 86, 0, 31, '/a/2/a20791b13f6e063a331af9_m.jpg'),
	(531, 4, 113, 0, 31, 'Merlot Formal Dining Set'),
	(532, 4, 87, 0, 31, '/a/2/a20791b13f6e063a331af9_m.jpg'),
	(533, 4, 114, 0, 31, 'Merlot Formal Dining Set'),
	(534, 4, 97, 0, 31, 'merlot-formal-dining-set-merlot-dining-7-pc-table-4-side-chairs-2-arm-chairs'),
	(535, 4, 98, 0, 31, 'merlot-formal-dining-set-merlot-dining-7-pc-table-4-side-chairs-2-arm-chairs.html'),
	(536, 4, 807, 0, 31, '0.0'),
	(537, 4, 808, 0, 31, '0.0'),
	(538, 4, 809, 0, 31, '0.0'),
	(539, 4, 810, 0, 31, 'self'),
	(540, 4, 815, 0, 31, 'New'),
	(541, 4, 816, 0, 31, '11'),
	(542, 4, 117, 0, 32, ''),
	(543, 4, 85, 0, 32, '/a/2/a20791b13f6e063a331af9_m.jpg'),
	(544, 4, 112, 0, 32, 'Merlot Formal Dining Set'),
	(545, 4, 71, 0, 32, 'Merlot Formal Dining Set - Merlot Dining:Hutch/Buffet'),
	(546, 4, 109, 0, 32, 'container2'),
	(547, 4, 86, 0, 32, '/a/2/a20791b13f6e063a331af9_m.jpg'),
	(548, 4, 113, 0, 32, 'Merlot Formal Dining Set'),
	(549, 4, 87, 0, 32, '/a/2/a20791b13f6e063a331af9_m.jpg'),
	(550, 4, 114, 0, 32, 'Merlot Formal Dining Set'),
	(551, 4, 97, 0, 32, 'merlot-formal-dining-set-merlot-dining-hutch-buffet'),
	(552, 4, 98, 0, 32, 'merlot-formal-dining-set-merlot-dining-hutch-buffet.html'),
	(553, 4, 807, 0, 32, '0.0'),
	(554, 4, 808, 0, 32, '0.0'),
	(555, 4, 809, 0, 32, '0.0'),
	(556, 4, 810, 0, 32, 'self'),
	(557, 4, 815, 0, 32, 'New'),
	(558, 4, 816, 0, 32, '11'),
	(559, 4, 117, 0, 33, ''),
	(560, 4, 85, 0, 33, '/a/2/a20791b13f6e063a331af9_m.jpg'),
	(561, 4, 112, 0, 33, 'Merlot Formal Dining Set'),
	(562, 4, 71, 0, 33, 'Merlot Formal Dining Set - Merlot Dining:2 Additional Side Chairs'),
	(563, 4, 109, 0, 33, 'container2'),
	(564, 4, 86, 0, 33, '/a/2/a20791b13f6e063a331af9_m.jpg'),
	(565, 4, 113, 0, 33, 'Merlot Formal Dining Set'),
	(566, 4, 87, 0, 33, '/a/2/a20791b13f6e063a331af9_m.jpg'),
	(567, 4, 114, 0, 33, 'Merlot Formal Dining Set'),
	(568, 4, 97, 0, 33, 'merlot-formal-dining-set-merlot-dining-2-additional-side-chairs'),
	(569, 4, 98, 0, 33, 'merlot-formal-dining-set-merlot-dining-2-additional-side-chairs.html'),
	(570, 4, 807, 0, 33, '0.0'),
	(571, 4, 808, 0, 33, '0.0'),
	(572, 4, 809, 0, 33, '0.0'),
	(573, 4, 810, 0, 33, 'self'),
	(574, 4, 815, 0, 33, 'New'),
	(575, 4, 816, 0, 33, '11'),
	(576, 4, 117, 0, 34, ''),
	(577, 4, 85, 0, 34, '/a/2/a20791b13f6e063a331af9_m.jpg'),
	(578, 4, 112, 0, 34, 'Merlot Formal Dining Set'),
	(579, 4, 71, 0, 34, 'Merlot Formal Dining Set - Merlot Dining:2 Additional Arm Chairs'),
	(580, 4, 109, 0, 34, 'container2'),
	(581, 4, 86, 0, 34, '/a/2/a20791b13f6e063a331af9_m.jpg'),
	(582, 4, 113, 0, 34, 'Merlot Formal Dining Set'),
	(583, 4, 87, 0, 34, '/a/2/a20791b13f6e063a331af9_m.jpg'),
	(584, 4, 114, 0, 34, 'Merlot Formal Dining Set'),
	(585, 4, 97, 0, 34, 'merlot-formal-dining-set-merlot-dining-2-additional-arm-chairs'),
	(586, 4, 98, 0, 34, 'merlot-formal-dining-set-merlot-dining-2-additional-arm-chairs.html'),
	(587, 4, 807, 0, 34, '0.0'),
	(588, 4, 808, 0, 34, '0.0'),
	(589, 4, 809, 0, 34, '0.0'),
	(590, 4, 810, 0, 34, 'self'),
	(591, 4, 815, 0, 34, 'New'),
	(592, 4, 816, 0, 34, '11'),
	(593, 4, 117, 0, 35, ''),
	(594, 4, 85, 0, 35, '/a/2/a20791b13f6e063a331af9_m.jpg'),
	(595, 4, 112, 0, 35, 'Merlot Formal Dining Set'),
	(596, 4, 84, 0, 35, 'Formal dining room furniture in Houston, Texas. Dining tables & chairs.'),
	(597, 4, 82, 0, 35, 'Merlot Formal Dining Set'),
	(598, 4, 71, 0, 35, 'Merlot Formal Dining Set'),
	(599, 4, 109, 0, 35, 'container2'),
	(600, 4, 86, 0, 35, '/a/2/a20791b13f6e063a331af9_m.jpg'),
	(601, 4, 113, 0, 35, 'Merlot Formal Dining Set'),
	(602, 4, 87, 0, 35, '/a/2/a20791b13f6e063a331af9_m.jpg'),
	(603, 4, 114, 0, 35, 'Merlot Formal Dining Set'),
	(604, 4, 97, 0, 35, 'merlot-formal-dining-set'),
	(605, 4, 98, 0, 35, 'merlot-formal-dining-set.html'),
	(606, 4, 807, 0, 35, '0.0'),
	(607, 4, 808, 0, 35, '0.0'),
	(608, 4, 809, 0, 35, '0.0'),
	(609, 4, 810, 0, 35, 'self'),
	(610, 4, 815, 0, 35, 'New'),
	(611, 4, 816, 0, 35, '11'),
	(612, 4, 97, 1, 5, 'windham-formal-dining-set-windham-dining-7-pc-table-4-side-chairs-2-arm-chairs'),
	(613, 4, 98, 1, 5, 'windham-formal-dining-set-windham-dining-7-pc-table-4-side-chairs-2-arm-chairs.html'),
	(614, 4, 97, 1, 10, 'neo-renaissance-formal-dining-set-neo-renaissance-dining-7-pc-table-4-side-chairs-2-arm-chairs'),
	(615, 4, 98, 1, 10, 'neo-renaissance-formal-dining-set-neo-renaissance-dining-7-pc-table-4-side-chairs-2-arm-chairs.html'),
	(616, 4, 97, 1, 15, 'estelle-formal-dining-set-estelle-dining-set-7-pc-table-4-side-chairs-2-arm-chairs'),
	(617, 4, 98, 1, 15, 'estelle-formal-dining-set-estelle-dining-set-7-pc-table-4-side-chairs-2-arm-chairs.html'),
	(618, 4, 97, 1, 21, 'monaco-dining-monaco-dining-5-pc-table-4-side-chairs'),
	(619, 4, 98, 1, 21, 'monaco-dining-monaco-dining-5-pc-table-4-side-chairs.html'),
	(620, 4, 97, 1, 22, 'monaco-dining-monaco-dining-7-pc-table-4-side-chairs-2-arm-chairs'),
	(621, 4, 98, 1, 22, 'monaco-dining-monaco-dining-7-pc-table-4-side-chairs-2-arm-chairs.html'),
	(622, 4, 97, 1, 27, 'apollo-dining-apollo-dining-5-pc-table-4-side-chairs'),
	(623, 4, 98, 1, 27, 'apollo-dining-apollo-dining-5-pc-table-4-side-chairs.html'),
	(624, 4, 97, 1, 31, 'merlot-formal-dining-set-merlot-dining-7-pc-table-4-side-chairs-2-arm-chairs'),
	(625, 4, 98, 1, 31, 'merlot-formal-dining-set-merlot-dining-7-pc-table-4-side-chairs-2-arm-chairs.html');
/*!40000 ALTER TABLE `catalog_product_entity_varchar` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_flat_1
DROP TABLE IF EXISTS `catalog_product_flat_1`;
CREATE TABLE IF NOT EXISTS `catalog_product_flat_1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'entity_id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'attribute_set_id',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'type_id',
  `cost` decimal(12,4) DEFAULT NULL COMMENT 'cost',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'created_at',
  `gift_message_available` smallint(6) DEFAULT NULL COMMENT 'gift_message_available',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'has_options',
  `image_label` varchar(255) DEFAULT NULL COMMENT 'image_label',
  `is_recurring` smallint(6) DEFAULT NULL COMMENT 'is_recurring',
  `links_exist` int(11) DEFAULT NULL COMMENT 'links_exist',
  `links_purchased_separately` int(11) DEFAULT NULL COMMENT 'links_purchased_separately',
  `links_title` varchar(255) DEFAULT NULL COMMENT 'links_title',
  `msrp` decimal(12,4) DEFAULT NULL COMMENT 'msrp',
  `msrp_display_actual_price_type` varchar(255) DEFAULT NULL COMMENT 'msrp_display_actual_price_type',
  `msrp_enabled` smallint(6) DEFAULT NULL COMMENT 'msrp_enabled',
  `name` varchar(255) DEFAULT NULL COMMENT 'name',
  `news_from_date` datetime DEFAULT NULL COMMENT 'news_from_date',
  `news_to_date` datetime DEFAULT NULL COMMENT 'news_to_date',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'price',
  `price_type` int(11) DEFAULT NULL COMMENT 'price_type',
  `price_view` int(11) DEFAULT NULL COMMENT 'price_view',
  `recurring_profile` text COMMENT 'recurring_profile',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'required_options',
  `shipment_type` int(11) DEFAULT NULL COMMENT 'shipment_type',
  `short_description` text COMMENT 'short_description',
  `sku` varchar(64) DEFAULT NULL COMMENT 'sku',
  `sku_type` int(11) DEFAULT NULL COMMENT 'sku_type',
  `small_image` varchar(255) DEFAULT NULL COMMENT 'small_image',
  `small_image_label` varchar(255) DEFAULT NULL COMMENT 'small_image_label',
  `special_from_date` datetime DEFAULT NULL COMMENT 'special_from_date',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'special_price',
  `special_to_date` datetime DEFAULT NULL COMMENT 'special_to_date',
  `tax_class_id` int(10) unsigned DEFAULT NULL COMMENT 'tax_class_id',
  `thumbnail` varchar(255) DEFAULT NULL COMMENT 'thumbnail',
  `thumbnail_label` varchar(255) DEFAULT NULL COMMENT 'thumbnail_label',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'updated_at',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'url_key',
  `url_path` varchar(255) DEFAULT NULL COMMENT 'url_path',
  `visibility` smallint(5) unsigned DEFAULT NULL COMMENT 'visibility',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'weight',
  `weight_type` int(11) DEFAULT NULL COMMENT 'weight_type',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_TYPE_ID` (`type_id`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_NAME` (`name`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_PRICE` (`price`),
  CONSTRAINT `FK_CAT_PRD_FLAT_1_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Flat (Store 1)';

-- Dumping data for table mag.catalog_product_flat_1: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_flat_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_flat_1` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_eav
DROP TABLE IF EXISTS `catalog_product_index_eav`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_eav` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`),
  CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_EAV_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_IDX_EAV_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_IDX_EAV_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

-- Dumping data for table mag.catalog_product_index_eav: ~22 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_eav` DISABLE KEYS */;
INSERT INTO `catalog_product_index_eav` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
	(10, 81, 1, 0),
	(10, 121, 1, 0),
	(11, 81, 1, 0),
	(11, 121, 1, 0),
	(12, 81, 1, 0),
	(12, 121, 1, 0),
	(13, 81, 1, 0),
	(13, 121, 1, 0),
	(14, 81, 1, 0),
	(14, 121, 1, 0),
	(20, 81, 1, 0),
	(20, 121, 1, 0),
	(31, 81, 1, 0),
	(31, 121, 1, 0),
	(32, 81, 1, 0),
	(32, 121, 1, 0),
	(33, 81, 1, 0),
	(33, 121, 1, 0),
	(34, 81, 1, 0),
	(34, 121, 1, 0),
	(35, 81, 1, 0),
	(35, 121, 1, 0);
/*!40000 ALTER TABLE `catalog_product_index_eav` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_eav_decimal
DROP TABLE IF EXISTS `catalog_product_index_eav_decimal`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`),
  CONSTRAINT `FK_CAT_PRD_IDX_EAV_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_IDX_EAV_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_IDX_EAV_DEC_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

-- Dumping data for table mag.catalog_product_index_eav_decimal: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_eav_decimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_eav_decimal` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_eav_decimal_idx
DROP TABLE IF EXISTS `catalog_product_index_eav_decimal_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Index Table';

-- Dumping data for table mag.catalog_product_index_eav_decimal_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_eav_decimal_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_eav_decimal_idx` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_eav_decimal_tmp
DROP TABLE IF EXISTS `catalog_product_index_eav_decimal_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Temp Table';

-- Dumping data for table mag.catalog_product_index_eav_decimal_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_eav_decimal_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_eav_decimal_tmp` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_eav_idx
DROP TABLE IF EXISTS `catalog_product_index_eav_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Index Table';

-- Dumping data for table mag.catalog_product_index_eav_idx: ~22 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_eav_idx` DISABLE KEYS */;
INSERT INTO `catalog_product_index_eav_idx` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
	(10, 81, 1, 0),
	(10, 121, 1, 0),
	(11, 81, 1, 0),
	(11, 121, 1, 0),
	(12, 81, 1, 0),
	(12, 121, 1, 0),
	(13, 81, 1, 0),
	(13, 121, 1, 0),
	(14, 81, 1, 0),
	(14, 121, 1, 0),
	(20, 81, 1, 0),
	(20, 121, 1, 0),
	(31, 81, 1, 0),
	(31, 121, 1, 0),
	(32, 81, 1, 0),
	(32, 121, 1, 0),
	(33, 81, 1, 0),
	(33, 121, 1, 0),
	(34, 81, 1, 0),
	(34, 121, 1, 0),
	(35, 81, 1, 0),
	(35, 121, 1, 0);
/*!40000 ALTER TABLE `catalog_product_index_eav_idx` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_eav_tmp
DROP TABLE IF EXISTS `catalog_product_index_eav_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Temp Table';

-- Dumping data for table mag.catalog_product_index_eav_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_eav_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_eav_tmp` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_group_price
DROP TABLE IF EXISTS `catalog_product_index_group_price`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_group_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_GROUP_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_GROUP_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_195DF97C81B0BDD6A2EEC50F870E16D1` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_IDX_GROUP_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_IDX_GROUP_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Group Price Index Table';

-- Dumping data for table mag.catalog_product_index_group_price: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_group_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_group_price` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price
DROP TABLE IF EXISTS `catalog_product_index_price`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  KEY `IDX_CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`),
  CONSTRAINT `FK_CAT_PRD_IDX_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_IDX_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_IDX_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

-- Dumping data for table mag.catalog_product_index_price: ~44 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price` DISABLE KEYS */;
INSERT INTO `catalog_product_index_price` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`, `group_price`) VALUES
	(10, 0, 1, 0, 1499.0000, 1399.0000, 1399.0000, 1399.0000, NULL, NULL),
	(10, 1, 1, 0, 1499.0000, 1399.0000, 1399.0000, 1399.0000, NULL, NULL),
	(10, 2, 1, 0, 1499.0000, 1399.0000, 1399.0000, 1399.0000, NULL, NULL),
	(10, 3, 1, 0, 1499.0000, 1399.0000, 1399.0000, 1399.0000, NULL, NULL),
	(11, 0, 1, 0, 1100.0000, 999.0000, 999.0000, 999.0000, NULL, NULL),
	(11, 1, 1, 0, 1100.0000, 999.0000, 999.0000, 999.0000, NULL, NULL),
	(11, 2, 1, 0, 1100.0000, 999.0000, 999.0000, 999.0000, NULL, NULL),
	(11, 3, 1, 0, 1100.0000, 999.0000, 999.0000, 999.0000, NULL, NULL),
	(12, 0, 1, 0, 319.0000, 319.0000, 319.0000, 319.0000, NULL, NULL),
	(12, 1, 1, 0, 319.0000, 319.0000, 319.0000, 319.0000, NULL, NULL),
	(12, 2, 1, 0, 319.0000, 319.0000, 319.0000, 319.0000, NULL, NULL),
	(12, 3, 1, 0, 319.0000, 319.0000, 319.0000, 319.0000, NULL, NULL),
	(13, 0, 1, 0, 339.0000, 339.0000, 339.0000, 339.0000, NULL, NULL),
	(13, 1, 1, 0, 339.0000, 339.0000, 339.0000, 339.0000, NULL, NULL),
	(13, 2, 1, 0, 339.0000, 339.0000, 339.0000, 339.0000, NULL, NULL),
	(13, 3, 1, 0, 339.0000, 339.0000, 339.0000, 339.0000, NULL, NULL),
	(14, 0, 1, 0, NULL, NULL, 319.0000, 1399.0000, NULL, NULL),
	(14, 1, 1, 0, NULL, NULL, 319.0000, 1399.0000, NULL, NULL),
	(14, 2, 1, 0, NULL, NULL, 319.0000, 1399.0000, NULL, NULL),
	(14, 3, 1, 0, NULL, NULL, 319.0000, 1399.0000, NULL, NULL),
	(20, 0, 1, 0, 910.0000, 910.0000, 910.0000, 910.0000, NULL, NULL),
	(20, 1, 1, 0, 910.0000, 910.0000, 910.0000, 910.0000, NULL, NULL),
	(20, 2, 1, 0, 910.0000, 910.0000, 910.0000, 910.0000, NULL, NULL),
	(20, 3, 1, 0, 910.0000, 910.0000, 910.0000, 910.0000, NULL, NULL),
	(31, 0, 1, 0, 750.0000, 699.9500, 699.9500, 699.9500, NULL, NULL),
	(31, 1, 1, 0, 750.0000, 699.9500, 699.9500, 699.9500, NULL, NULL),
	(31, 2, 1, 0, 750.0000, 699.9500, 699.9500, 699.9500, NULL, NULL),
	(31, 3, 1, 0, 750.0000, 699.9500, 699.9500, 699.9500, NULL, NULL),
	(32, 0, 1, 0, 650.0000, 599.9500, 599.9500, 599.9500, NULL, NULL),
	(32, 1, 1, 0, 650.0000, 599.9500, 599.9500, 599.9500, NULL, NULL),
	(32, 2, 1, 0, 650.0000, 599.9500, 599.9500, 599.9500, NULL, NULL),
	(32, 3, 1, 0, 650.0000, 599.9500, 599.9500, 599.9500, NULL, NULL),
	(33, 0, 1, 0, 179.0000, 179.0000, 179.0000, 179.0000, NULL, NULL),
	(33, 1, 1, 0, 179.0000, 179.0000, 179.0000, 179.0000, NULL, NULL),
	(33, 2, 1, 0, 179.0000, 179.0000, 179.0000, 179.0000, NULL, NULL),
	(33, 3, 1, 0, 179.0000, 179.0000, 179.0000, 179.0000, NULL, NULL),
	(34, 0, 1, 0, 199.0000, 199.0000, 199.0000, 199.0000, NULL, NULL),
	(34, 1, 1, 0, 199.0000, 199.0000, 199.0000, 199.0000, NULL, NULL),
	(34, 2, 1, 0, 199.0000, 199.0000, 199.0000, 199.0000, NULL, NULL),
	(34, 3, 1, 0, 199.0000, 199.0000, 199.0000, 199.0000, NULL, NULL),
	(35, 0, 1, 0, NULL, NULL, 179.0000, 699.9500, NULL, NULL),
	(35, 1, 1, 0, NULL, NULL, 179.0000, 699.9500, NULL, NULL),
	(35, 2, 1, 0, NULL, NULL, 179.0000, 699.9500, NULL, NULL),
	(35, 3, 1, 0, NULL, NULL, 179.0000, 699.9500, NULL, NULL);
/*!40000 ALTER TABLE `catalog_product_index_price` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price_bundle_idx
DROP TABLE IF EXISTS `catalog_product_index_price_bundle_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  `group_price_percent` decimal(12,4) DEFAULT NULL COMMENT 'Group Price Percent',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Idx';

-- Dumping data for table mag.catalog_product_index_price_bundle_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_idx` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price_bundle_opt_idx
DROP TABLE IF EXISTS `catalog_product_index_price_bundle_opt_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `alt_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Idx';

-- Dumping data for table mag.catalog_product_index_price_bundle_opt_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_opt_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_opt_idx` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price_bundle_opt_tmp
DROP TABLE IF EXISTS `catalog_product_index_price_bundle_opt_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `alt_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Tmp';

-- Dumping data for table mag.catalog_product_index_price_bundle_opt_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_opt_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_opt_tmp` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price_bundle_sel_idx
DROP TABLE IF EXISTS `catalog_product_index_price_bundle_sel_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Idx';

-- Dumping data for table mag.catalog_product_index_price_bundle_sel_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_sel_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_sel_idx` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price_bundle_sel_tmp
DROP TABLE IF EXISTS `catalog_product_index_price_bundle_sel_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Tmp';

-- Dumping data for table mag.catalog_product_index_price_bundle_sel_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_sel_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_sel_tmp` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price_bundle_tmp
DROP TABLE IF EXISTS `catalog_product_index_price_bundle_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  `group_price_percent` decimal(12,4) DEFAULT NULL COMMENT 'Group Price Percent',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Tmp';

-- Dumping data for table mag.catalog_product_index_price_bundle_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_tmp` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price_cfg_opt_agr_idx
DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_agr_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Index Table';

-- Dumping data for table mag.catalog_product_index_price_cfg_opt_agr_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price_cfg_opt_agr_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_cfg_opt_agr_idx` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price_cfg_opt_agr_tmp
DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_agr_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Temp Table';

-- Dumping data for table mag.catalog_product_index_price_cfg_opt_agr_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_price_cfg_opt_agr_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_cfg_opt_agr_tmp` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price_cfg_opt_idx
DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Index Table';

-- Dumping data for table mag.catalog_product_index_price_cfg_opt_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price_cfg_opt_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_cfg_opt_idx` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price_cfg_opt_tmp
DROP TABLE IF EXISTS `catalog_product_index_price_cfg_opt_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Temp Table';

-- Dumping data for table mag.catalog_product_index_price_cfg_opt_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_price_cfg_opt_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_cfg_opt_tmp` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price_downlod_idx
DROP TABLE IF EXISTS `catalog_product_index_price_downlod_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer Table for price of downloadable products';

-- Dumping data for table mag.catalog_product_index_price_downlod_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price_downlod_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_downlod_idx` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price_downlod_tmp
DROP TABLE IF EXISTS `catalog_product_index_price_downlod_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Temporary Indexer Table for price of downloadable products';

-- Dumping data for table mag.catalog_product_index_price_downlod_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_price_downlod_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_downlod_tmp` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price_final_idx
DROP TABLE IF EXISTS `catalog_product_index_price_final_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_final_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Index Table';

-- Dumping data for table mag.catalog_product_index_price_final_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price_final_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_final_idx` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price_final_tmp
DROP TABLE IF EXISTS `catalog_product_index_price_final_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_final_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Temp Table';

-- Dumping data for table mag.catalog_product_index_price_final_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_price_final_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_final_tmp` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price_idx
DROP TABLE IF EXISTS `catalog_product_index_price_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Index Table';

-- Dumping data for table mag.catalog_product_index_price_idx: ~44 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price_idx` DISABLE KEYS */;
INSERT INTO `catalog_product_index_price_idx` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`, `group_price`) VALUES
	(10, 0, 1, 0, 1499.0000, 1399.0000, 1399.0000, 1399.0000, NULL, NULL),
	(10, 1, 1, 0, 1499.0000, 1399.0000, 1399.0000, 1399.0000, NULL, NULL),
	(10, 2, 1, 0, 1499.0000, 1399.0000, 1399.0000, 1399.0000, NULL, NULL),
	(10, 3, 1, 0, 1499.0000, 1399.0000, 1399.0000, 1399.0000, NULL, NULL),
	(11, 0, 1, 0, 1100.0000, 999.0000, 999.0000, 999.0000, NULL, NULL),
	(11, 1, 1, 0, 1100.0000, 999.0000, 999.0000, 999.0000, NULL, NULL),
	(11, 2, 1, 0, 1100.0000, 999.0000, 999.0000, 999.0000, NULL, NULL),
	(11, 3, 1, 0, 1100.0000, 999.0000, 999.0000, 999.0000, NULL, NULL),
	(12, 0, 1, 0, 319.0000, 319.0000, 319.0000, 319.0000, NULL, NULL),
	(12, 1, 1, 0, 319.0000, 319.0000, 319.0000, 319.0000, NULL, NULL),
	(12, 2, 1, 0, 319.0000, 319.0000, 319.0000, 319.0000, NULL, NULL),
	(12, 3, 1, 0, 319.0000, 319.0000, 319.0000, 319.0000, NULL, NULL),
	(13, 0, 1, 0, 339.0000, 339.0000, 339.0000, 339.0000, NULL, NULL),
	(13, 1, 1, 0, 339.0000, 339.0000, 339.0000, 339.0000, NULL, NULL),
	(13, 2, 1, 0, 339.0000, 339.0000, 339.0000, 339.0000, NULL, NULL),
	(13, 3, 1, 0, 339.0000, 339.0000, 339.0000, 339.0000, NULL, NULL),
	(14, 0, 1, 0, NULL, NULL, 319.0000, 1399.0000, NULL, NULL),
	(14, 1, 1, 0, NULL, NULL, 319.0000, 1399.0000, NULL, NULL),
	(14, 2, 1, 0, NULL, NULL, 319.0000, 1399.0000, NULL, NULL),
	(14, 3, 1, 0, NULL, NULL, 319.0000, 1399.0000, NULL, NULL),
	(20, 0, 1, 0, 910.0000, 910.0000, 910.0000, 910.0000, NULL, NULL),
	(20, 1, 1, 0, 910.0000, 910.0000, 910.0000, 910.0000, NULL, NULL),
	(20, 2, 1, 0, 910.0000, 910.0000, 910.0000, 910.0000, NULL, NULL),
	(20, 3, 1, 0, 910.0000, 910.0000, 910.0000, 910.0000, NULL, NULL),
	(31, 0, 1, 0, 750.0000, 699.9500, 699.9500, 699.9500, NULL, NULL),
	(31, 1, 1, 0, 750.0000, 699.9500, 699.9500, 699.9500, NULL, NULL),
	(31, 2, 1, 0, 750.0000, 699.9500, 699.9500, 699.9500, NULL, NULL),
	(31, 3, 1, 0, 750.0000, 699.9500, 699.9500, 699.9500, NULL, NULL),
	(32, 0, 1, 0, 650.0000, 599.9500, 599.9500, 599.9500, NULL, NULL),
	(32, 1, 1, 0, 650.0000, 599.9500, 599.9500, 599.9500, NULL, NULL),
	(32, 2, 1, 0, 650.0000, 599.9500, 599.9500, 599.9500, NULL, NULL),
	(32, 3, 1, 0, 650.0000, 599.9500, 599.9500, 599.9500, NULL, NULL),
	(33, 0, 1, 0, 179.0000, 179.0000, 179.0000, 179.0000, NULL, NULL),
	(33, 1, 1, 0, 179.0000, 179.0000, 179.0000, 179.0000, NULL, NULL),
	(33, 2, 1, 0, 179.0000, 179.0000, 179.0000, 179.0000, NULL, NULL),
	(33, 3, 1, 0, 179.0000, 179.0000, 179.0000, 179.0000, NULL, NULL),
	(34, 0, 1, 0, 199.0000, 199.0000, 199.0000, 199.0000, NULL, NULL),
	(34, 1, 1, 0, 199.0000, 199.0000, 199.0000, 199.0000, NULL, NULL),
	(34, 2, 1, 0, 199.0000, 199.0000, 199.0000, 199.0000, NULL, NULL),
	(34, 3, 1, 0, 199.0000, 199.0000, 199.0000, 199.0000, NULL, NULL),
	(35, 0, 1, 0, NULL, NULL, 179.0000, 699.9500, NULL, NULL),
	(35, 1, 1, 0, NULL, NULL, 179.0000, 699.9500, NULL, NULL),
	(35, 2, 1, 0, NULL, NULL, 179.0000, 699.9500, NULL, NULL),
	(35, 3, 1, 0, NULL, NULL, 179.0000, 699.9500, NULL, NULL);
/*!40000 ALTER TABLE `catalog_product_index_price_idx` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price_opt_agr_idx
DROP TABLE IF EXISTS `catalog_product_index_price_opt_agr_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Index Table';

-- Dumping data for table mag.catalog_product_index_price_opt_agr_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price_opt_agr_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_opt_agr_idx` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price_opt_agr_tmp
DROP TABLE IF EXISTS `catalog_product_index_price_opt_agr_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Temp Table';

-- Dumping data for table mag.catalog_product_index_price_opt_agr_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_price_opt_agr_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_opt_agr_tmp` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price_opt_idx
DROP TABLE IF EXISTS `catalog_product_index_price_opt_idx`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Index Table';

-- Dumping data for table mag.catalog_product_index_price_opt_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price_opt_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_opt_idx` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price_opt_tmp
DROP TABLE IF EXISTS `catalog_product_index_price_opt_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Temp Table';

-- Dumping data for table mag.catalog_product_index_price_opt_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_price_opt_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_opt_tmp` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_price_tmp
DROP TABLE IF EXISTS `catalog_product_index_price_tmp`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_MIN_PRICE` (`min_price`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Temp Table';

-- Dumping data for table mag.catalog_product_index_price_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_price_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_tmp` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_tier_price
DROP TABLE IF EXISTS `catalog_product_index_tier_price`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_tier_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_CAT_PRD_IDX_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_IDX_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_IDX_TIER_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Index Table';

-- Dumping data for table mag.catalog_product_index_tier_price: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_tier_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_tier_price` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_index_website
DROP TABLE IF EXISTS `catalog_product_index_website`;
CREATE TABLE IF NOT EXISTS `catalog_product_index_website` (
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `website_date` date DEFAULT NULL COMMENT 'Website Date',
  `rate` float DEFAULT '1' COMMENT 'Rate',
  PRIMARY KEY (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_WEBSITE_WEBSITE_DATE` (`website_date`),
  CONSTRAINT `FK_CAT_PRD_IDX_WS_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Website Index Table';

-- Dumping data for table mag.catalog_product_index_website: ~1 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_website` DISABLE KEYS */;
INSERT INTO `catalog_product_index_website` (`website_id`, `website_date`, `rate`) VALUES
	(1, '2014-10-17', 1);
/*!40000 ALTER TABLE `catalog_product_index_website` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_link
DROP TABLE IF EXISTS `catalog_product_link`;
CREATE TABLE IF NOT EXISTS `catalog_product_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `linked_product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Linked Product ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_CAT_PRD_LNK_LNK_TYPE_ID_PRD_ID_LNKED_PRD_ID` (`link_type_id`,`product_id`,`linked_product_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_PRODUCT_ID` (`product_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_LINKED_PRODUCT_ID` (`linked_product_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_LINK_TYPE_ID` (`link_type_id`),
  CONSTRAINT `FK_CAT_PRD_LNK_LNKED_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`linked_product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_LNK_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Product Linkage Table';

-- Dumping data for table mag.catalog_product_link: ~27 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_link` DISABLE KEYS */;
INSERT INTO `catalog_product_link` (`link_id`, `product_id`, `linked_product_id`, `link_type_id`) VALUES
	(1, 4, 1, 3),
	(2, 4, 2, 3),
	(3, 4, 3, 3),
	(4, 9, 5, 3),
	(5, 9, 6, 3),
	(6, 9, 7, 3),
	(7, 9, 8, 3),
	(8, 14, 10, 3),
	(9, 14, 11, 3),
	(10, 14, 12, 3),
	(11, 14, 13, 3),
	(12, 19, 15, 3),
	(13, 19, 16, 3),
	(14, 19, 17, 3),
	(15, 19, 18, 3),
	(16, 26, 21, 3),
	(17, 26, 22, 3),
	(18, 26, 23, 3),
	(19, 26, 24, 3),
	(20, 26, 25, 3),
	(21, 30, 27, 3),
	(22, 30, 28, 3),
	(23, 30, 29, 3),
	(24, 35, 31, 3),
	(25, 35, 32, 3),
	(26, 35, 33, 3),
	(27, 35, 34, 3);
/*!40000 ALTER TABLE `catalog_product_link` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_link_attribute
DROP TABLE IF EXISTS `catalog_product_link_attribute`;
CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Link Attribute ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  `product_link_attribute_code` varchar(32) DEFAULT NULL COMMENT 'Product Link Attribute Code',
  `data_type` varchar(32) DEFAULT NULL COMMENT 'Data Type',
  PRIMARY KEY (`product_link_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_LINK_TYPE_ID` (`link_type_id`),
  CONSTRAINT `FK_CAT_PRD_LNK_ATTR_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Attribute Table';

-- Dumping data for table mag.catalog_product_link_attribute: ~5 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_link_attribute` DISABLE KEYS */;
INSERT INTO `catalog_product_link_attribute` (`product_link_attribute_id`, `link_type_id`, `product_link_attribute_code`, `data_type`) VALUES
	(1, 1, 'position', 'int'),
	(2, 3, 'position', 'int'),
	(3, 3, 'qty', 'decimal'),
	(4, 4, 'position', 'int'),
	(5, 5, 'position', 'int');
/*!40000 ALTER TABLE `catalog_product_link_attribute` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_link_attribute_decimal
DROP TABLE IF EXISTS `catalog_product_link_attribute_decimal`;
CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_decimal` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_DECIMAL_LINK_ID` (`link_id`),
  CONSTRAINT `FK_AB2EFA9A14F7BCF1D5400056203D14B6` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_LNK_ATTR_DEC_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Decimal Attribute Table';

-- Dumping data for table mag.catalog_product_link_attribute_decimal: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_link_attribute_decimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_link_attribute_decimal` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_link_attribute_int
DROP TABLE IF EXISTS `catalog_product_link_attribute_int`;
CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_int` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_PRODUCT_LINK_ATTRIBUTE_ID` (`product_link_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_LINK_ID` (`link_id`),
  CONSTRAINT `FK_CAT_PRD_LNK_ATTR_INT_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_D6D878F8BA2A4282F8DDED7E6E3DE35C` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Integer Attribute Table';

-- Dumping data for table mag.catalog_product_link_attribute_int: ~27 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_link_attribute_int` DISABLE KEYS */;
INSERT INTO `catalog_product_link_attribute_int` (`value_id`, `product_link_attribute_id`, `link_id`, `value`) VALUES
	(1, 2, 1, 0),
	(2, 2, 2, 0),
	(3, 2, 3, 0),
	(4, 2, 4, 0),
	(5, 2, 5, 0),
	(6, 2, 6, 0),
	(7, 2, 7, 0),
	(8, 2, 8, 0),
	(9, 2, 9, 0),
	(10, 2, 10, 0),
	(11, 2, 11, 0),
	(12, 2, 12, 0),
	(13, 2, 13, 0),
	(14, 2, 14, 0),
	(15, 2, 15, 0),
	(16, 2, 16, 0),
	(17, 2, 17, 0),
	(18, 2, 18, 0),
	(19, 2, 19, 0),
	(20, 2, 20, 0),
	(21, 2, 21, 0),
	(22, 2, 22, 0),
	(23, 2, 23, 0),
	(24, 2, 24, 0),
	(25, 2, 25, 0),
	(26, 2, 26, 0),
	(27, 2, 27, 0);
/*!40000 ALTER TABLE `catalog_product_link_attribute_int` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_link_attribute_varchar
DROP TABLE IF EXISTS `catalog_product_link_attribute_varchar`;
CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_varchar` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_VARCHAR_LINK_ID` (`link_id`),
  CONSTRAINT `FK_CAT_PRD_LNK_ATTR_VCHR_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DEE9C4DA61CFCC01DFCF50F0D79CEA51` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Varchar Attribute Table';

-- Dumping data for table mag.catalog_product_link_attribute_varchar: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_link_attribute_varchar` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_link_attribute_varchar` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_link_type
DROP TABLE IF EXISTS `catalog_product_link_type`;
CREATE TABLE IF NOT EXISTS `catalog_product_link_type` (
  `link_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Type ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  PRIMARY KEY (`link_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Type Table';

-- Dumping data for table mag.catalog_product_link_type: ~4 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_link_type` DISABLE KEYS */;
INSERT INTO `catalog_product_link_type` (`link_type_id`, `code`) VALUES
	(1, 'relation'),
	(3, 'super'),
	(4, 'up_sell'),
	(5, 'cross_sell');
/*!40000 ALTER TABLE `catalog_product_link_type` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_option
DROP TABLE IF EXISTS `catalog_product_option`;
CREATE TABLE IF NOT EXISTS `catalog_product_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `type` varchar(50) DEFAULT NULL COMMENT 'Type',
  `is_require` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Required',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `max_characters` int(10) unsigned DEFAULT NULL COMMENT 'Max Characters',
  `file_extension` varchar(50) DEFAULT NULL COMMENT 'File Extension',
  `image_size_x` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size X',
  `image_size_y` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size Y',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_CAT_PRD_OPT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Table';

-- Dumping data for table mag.catalog_product_option: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_option` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_option_price
DROP TABLE IF EXISTS `catalog_product_option_price`;
CREATE TABLE IF NOT EXISTS `catalog_product_option_price` (
  `option_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Price ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_price_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID` (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_PRICE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_PRICE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_OPT_PRICE_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Price Table';

-- Dumping data for table mag.catalog_product_option_price: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_option_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_option_price` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_option_title
DROP TABLE IF EXISTS `catalog_product_option_title`;
CREATE TABLE IF NOT EXISTS `catalog_product_option_title` (
  `option_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Title ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_title_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID` (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_OPT_TTL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Title Table';

-- Dumping data for table mag.catalog_product_option_title: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_option_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_option_title` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_option_type_price
DROP TABLE IF EXISTS `catalog_product_option_type_price`;
CREATE TABLE IF NOT EXISTS `catalog_product_option_type_price` (
  `option_type_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Price ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_type_price_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID` (`option_type_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_B523E3378E8602F376CC415825576B7F` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_OPT_TYPE_PRICE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Price Table';

-- Dumping data for table mag.catalog_product_option_type_price: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_option_type_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_option_type_price` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_option_type_title
DROP TABLE IF EXISTS `catalog_product_option_type_title`;
CREATE TABLE IF NOT EXISTS `catalog_product_option_type_title` (
  `option_type_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Title ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_type_title_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID` (`option_type_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_C085B9CF2C2A302E8043FDEA1937D6A2` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_OPT_TYPE_TTL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Title Table';

-- Dumping data for table mag.catalog_product_option_type_title: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_option_type_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_option_type_title` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_option_type_value
DROP TABLE IF EXISTS `catalog_product_option_type_value`;
CREATE TABLE IF NOT EXISTS `catalog_product_option_type_value` (
  `option_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_type_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION_ID` (`option_id`),
  CONSTRAINT `FK_CAT_PRD_OPT_TYPE_VAL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Value Table';

-- Dumping data for table mag.catalog_product_option_type_value: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_option_type_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_option_type_value` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_relation
DROP TABLE IF EXISTS `catalog_product_relation`;
CREATE TABLE IF NOT EXISTS `catalog_product_relation` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  PRIMARY KEY (`parent_id`,`child_id`),
  KEY `IDX_CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`),
  CONSTRAINT `FK_CAT_PRD_RELATION_CHILD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`child_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_RELATION_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Relation Table';

-- Dumping data for table mag.catalog_product_relation: ~27 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_relation` DISABLE KEYS */;
INSERT INTO `catalog_product_relation` (`parent_id`, `child_id`) VALUES
	(4, 1),
	(4, 2),
	(4, 3),
	(9, 5),
	(9, 6),
	(9, 7),
	(9, 8),
	(14, 10),
	(14, 11),
	(14, 12),
	(14, 13),
	(19, 15),
	(19, 16),
	(19, 17),
	(19, 18),
	(26, 21),
	(26, 22),
	(26, 23),
	(26, 24),
	(26, 25),
	(30, 27),
	(30, 28),
	(30, 29),
	(35, 31),
	(35, 32),
	(35, 33),
	(35, 34);
/*!40000 ALTER TABLE `catalog_product_relation` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_super_attribute
DROP TABLE IF EXISTS `catalog_product_super_attribute`;
CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Super Attribute ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`product_super_attribute_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID_ATTRIBUTE_ID` (`product_id`,`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_CAT_PRD_SPR_ATTR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Table';

-- Dumping data for table mag.catalog_product_super_attribute: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_super_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_super_attribute` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_super_attribute_label
DROP TABLE IF EXISTS `catalog_product_super_attribute_label`;
CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute_label` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `use_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Use Default Value',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID_STORE_ID` (`product_super_attribute_id`,`store_id`),
  KEY `IDX_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID` (`product_super_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  CONSTRAINT `FK_309442281DF7784210ED82B2CC51E5D5` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_SPR_ATTR_LBL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Label Table';

-- Dumping data for table mag.catalog_product_super_attribute_label: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_super_attribute_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_super_attribute_label` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_super_attribute_pricing
DROP TABLE IF EXISTS `catalog_product_super_attribute_pricing`;
CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute_pricing` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `value_index` varchar(255) DEFAULT NULL COMMENT 'Value Index',
  `is_percent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Percent',
  `pricing_value` decimal(12,4) DEFAULT NULL COMMENT 'Pricing Value',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_SPR_ATTR_PRICING_PRD_SPR_ATTR_ID_VAL_IDX_WS_ID` (`product_super_attribute_id`,`value_index`,`website_id`),
  KEY `IDX_CAT_PRD_SPR_ATTR_PRICING_PRD_SPR_ATTR_ID` (`product_super_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRICING_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_CAT_PRD_SPR_ATTR_PRICING_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CDE8813117106CFAA3AD209358F66332` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Pricing Table';

-- Dumping data for table mag.catalog_product_super_attribute_pricing: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_super_attribute_pricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_super_attribute_pricing` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_super_link
DROP TABLE IF EXISTS `catalog_product_super_link`;
CREATE TABLE IF NOT EXISTS `catalog_product_super_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID_PARENT_ID` (`product_id`,`parent_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_LINK_PARENT_ID` (`parent_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_CAT_PRD_SPR_LNK_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_SPR_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Link Table';

-- Dumping data for table mag.catalog_product_super_link: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_super_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_super_link` ENABLE KEYS */;


-- Dumping structure for table mag.catalog_product_website
DROP TABLE IF EXISTS `catalog_product_website`;
CREATE TABLE IF NOT EXISTS `catalog_product_website` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`product_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_WEBSITE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_CATALOG_PRODUCT_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_WS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Website Linkage Table';

-- Dumping data for table mag.catalog_product_website: ~35 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_website` DISABLE KEYS */;
INSERT INTO `catalog_product_website` (`product_id`, `website_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(26, 1),
	(27, 1),
	(28, 1),
	(29, 1),
	(30, 1),
	(31, 1),
	(32, 1),
	(33, 1),
	(34, 1),
	(35, 1);
/*!40000 ALTER TABLE `catalog_product_website` ENABLE KEYS */;


-- Dumping structure for table mag.checkout_agreement
DROP TABLE IF EXISTS `checkout_agreement`;
CREATE TABLE IF NOT EXISTS `checkout_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `content` text COMMENT 'Content',
  `content_height` varchar(25) DEFAULT NULL COMMENT 'Content Height',
  `checkbox_text` text COMMENT 'Checkbox Text',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `is_html` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Html',
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement';

-- Dumping data for table mag.checkout_agreement: ~0 rows (approximately)
/*!40000 ALTER TABLE `checkout_agreement` DISABLE KEYS */;
/*!40000 ALTER TABLE `checkout_agreement` ENABLE KEYS */;


-- Dumping structure for table mag.checkout_agreement_store
DROP TABLE IF EXISTS `checkout_agreement_store`;
CREATE TABLE IF NOT EXISTS `checkout_agreement_store` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`agreement_id`,`store_id`),
  KEY `FK_CHECKOUT_AGREEMENT_STORE_STORE_ID_CORE_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CHECKOUT_AGREEMENT_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CHKT_AGRT_STORE_AGRT_ID_CHKT_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `checkout_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement Store';

-- Dumping data for table mag.checkout_agreement_store: ~0 rows (approximately)
/*!40000 ALTER TABLE `checkout_agreement_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `checkout_agreement_store` ENABLE KEYS */;


-- Dumping structure for table mag.cms_block
DROP TABLE IF EXISTS `cms_block`;
CREATE TABLE IF NOT EXISTS `cms_block` (
  `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Block Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active',
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='CMS Block Table';

-- Dumping data for table mag.cms_block: ~3 rows (approximately)
/*!40000 ALTER TABLE `cms_block` DISABLE KEYS */;
INSERT INTO `cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
	(1, 'Footer Links', 'footer_links', '\n<ul>\n    <li><a href="{{store direct_url="about-magento-demo-store"}}">About Us</a></li>\n    <li><a href="{{store direct_url="customer-service"}}">Customer Service</a></li>\n<li class="last privacy"><a href="{{store direct_url="privacy-policy-cookie-restriction-mode"}}">Privacy Policy</a></li>\r\n</ul>', '2014-10-10 10:03:06', '2014-10-10 10:03:07', 1),
	(2, 'Footer Links Company', 'footer_links_company', '\n<div class="links">\n    <div class="block-title">\n        <strong><span>Company</span></strong>\n    </div>\n    <ul>\n        <li><a href="{{store url=""}}about-magento-demo-store/">About Us</a></li>\n        <li><a href="{{store url=""}}contacts/">Contact Us</a></li>\n        <li><a href="{{store url=""}}customer-service/">Customer Service</a></li>\n        <li><a href="{{store url=""}}privacy-policy-cookie-restriction-mode/">Privacy Policy</a></li>\n    </ul>\n</div>', '2014-10-10 10:03:07', '2014-10-10 10:03:07', 1),
	(3, 'Cookie restriction notice', 'cookie_restriction_notice_block', '<p>This website requires cookies to provide all of its features. For more information on what data is contained in the cookies, please see our <a href="{{store direct_url="privacy-policy-cookie-restriction-mode"}}">Privacy Policy page</a>. To accept cookies from this site, please click the Allow button below.</p>', '2014-10-10 10:03:07', '2014-10-10 10:03:07', 1);
/*!40000 ALTER TABLE `cms_block` ENABLE KEYS */;


-- Dumping structure for table mag.cms_block_store
DROP TABLE IF EXISTS `cms_block_store`;
CREATE TABLE IF NOT EXISTS `cms_block_store` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`block_id`,`store_id`),
  KEY `IDX_CMS_BLOCK_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CMS_BLOCK_STORE_BLOCK_ID_CMS_BLOCK_BLOCK_ID` FOREIGN KEY (`block_id`) REFERENCES `cms_block` (`block_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CMS_BLOCK_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block To Store Linkage Table';

-- Dumping data for table mag.cms_block_store: ~3 rows (approximately)
/*!40000 ALTER TABLE `cms_block_store` DISABLE KEYS */;
INSERT INTO `cms_block_store` (`block_id`, `store_id`) VALUES
	(1, 0),
	(2, 0),
	(3, 0);
/*!40000 ALTER TABLE `cms_block_store` ENABLE KEYS */;


-- Dumping structure for table mag.cms_page
DROP TABLE IF EXISTS `cms_page`;
CREATE TABLE IF NOT EXISTS `cms_page` (
  `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Page ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `root_template` varchar(255) DEFAULT NULL COMMENT 'Page Template',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Page Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date',
  PRIMARY KEY (`page_id`),
  KEY `IDX_CMS_PAGE_IDENTIFIER` (`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='CMS Page Table';

-- Dumping data for table mag.cms_page: ~7 rows (approximately)
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;
INSERT INTO `cms_page` (`page_id`, `title`, `root_template`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`) VALUES
	(1, '404 Not Found 1', 'two_columns_right', 'Page keywords', 'Page description', 'no-route', NULL, '\n<div class="page-title"><h1>Whoops, our bad...</h1></div>\n<dl>\n    <dt>The page you requested was not found, and we have a fine guess why.</dt>\n    <dd>\n        <ul class="disc">\n            <li>If you typed the URL directly, please make sure the spelling is correct.</li>\n            <li>If you clicked on a link to get here, the link is outdated.</li>\n        </ul>\n    </dd>\n</dl>\n<dl>\n    <dt>What can you do?</dt>\n    <dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\n    <dd>\n        <ul class="disc">\n            <li><a href="#" onclick="history.go(-1); return false;">Go back</a> to the previous page.</li>\n            <li>Use the search bar at the top of the page to search for your products.</li>\n            <li>Follow these links to get you back on track!<br /><a href="{{store url=""}}">Store Home</a>\n            <span class="separator">|</span> <a href="{{store url="customer/account"}}">My Account</a></li>\n        </ul>\n    </dd>\n</dl>\n', '2014-10-10 10:03:06', '2014-10-10 10:03:06', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 'Home page', 'two_columns_right', NULL, NULL, 'home', NULL, '<div class="page-title"><h2>Home Page</h2></div>', '2014-10-10 10:03:07', '2014-10-10 10:03:10', 1, 0, '<!--<reference name="content">\n        <block type="catalog/product_new" name="home.catalog.product.new" alias="product_new" template="catalog/product/new.phtml" after="cms_page">\n            <action method="addPriceBlockType">\n                <type>bundle</type>\n                <block>bundle/catalog_product_price</block>\n                <template>bundle/catalog/product/price.phtml</template>\n            </action>\n        </block>\n        <block type="reports/product_viewed" name="home.reports.product.viewed" alias="product_viewed" template="reports/home_product_viewed.phtml" after="product_new">\n            <action method="addPriceBlockType">\n                <type>bundle</type>\n                <block>bundle/catalog_product_price</block>\n                <template>bundle/catalog/product/price.phtml</template>\n            </action>\n        </block>\n        <block type="reports/product_compared" name="home.reports.product.compared" template="reports/home_product_compared.phtml" after="product_viewed">\n            <action method="addPriceBlockType">\n                <type>bundle</type>\n                <block>bundle/catalog_product_price</block>\n                <template>bundle/catalog/product/price.phtml</template>\n            </action>\n        </block>\n    </reference>\n    <reference name="right">\n        <action method="unsetChild"><alias>right.reports.product.viewed</alias></action>\n        <action method="unsetChild"><alias>right.reports.product.compared</alias></action>\n    </reference>-->', NULL, NULL, NULL, NULL, NULL),
	(3, 'About Us', 'two_columns_right', NULL, NULL, 'about-magento-demo-store', NULL, '\n<div class="page-title">\n    <h1>About Magento Store</h1>\n</div>\n<div class="col3-set">\n<div class="col-1"><p style="line-height:1.2em;"><small>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\nMorbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec,\ntempus vitae, iaculis semper, pede.</small></p>\n<p style="color:#888; font:1.2em/1.4em georgia, serif;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\nMorbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis,\nporta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta.</p></div>\n<div class="col-2">\n<p><strong style="color:#de036f;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus.\nDuis lobortis. Nulla nec velit.</strong></p>\n<p>Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper.\nPhasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada\nfames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac,\ntempus nec, tempor nec, justo. </p>\n<p>Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam.\nPellentesque consequat luctus purus. Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi.\nVestibulum sapien dolor, aliquet nec, porta ac, malesuada a, libero. Praesent feugiat purus eget est.\nNulla facilisi. Vestibulum tincidunt sapien eu velit. Mauris purus. Maecenas eget mauris eu orci accumsan feugiat.\nPellentesque eget velit. Nunc tincidunt.</p></div>\n<div class="col-3">\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper </p>\n<p><strong style="color:#de036f;">Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci,\nsit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus.</strong></p>\n<p>Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi.</p>\n<div class="divider"></div>\n<p>To all of you, from all of us at Magento Store - Thank you and Happy eCommerce!</p>\n<p style="line-height:1.2em;"><strong style="font:italic 2em Georgia, serif;">John Doe</strong><br />\n<small>Some important guy</small></p></div>\n</div>', '2014-10-10 10:03:07', '2014-10-10 10:03:07', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 'Customer Service', 'three_columns', NULL, NULL, 'customer-service', NULL, '<div class="page-title">\n<h1>Customer Service</h1>\n</div>\n<ul class="disc">\n<li><a href="#answer1">Shipping &amp; Delivery</a></li>\n<li><a href="#answer2">Privacy &amp; Security</a></li>\n<li><a href="#answer3">Returns &amp; Replacements</a></li>\n<li><a href="#answer4">Ordering</a></li>\n<li><a href="#answer5">Payment, Pricing &amp; Promotions</a></li>\n<li><a href="#answer6">Viewing Orders</a></li>\n<li><a href="#answer7">Updating Account Information</a></li>\n</ul>\n<dl>\n<dt id="answer1">Shipping &amp; Delivery</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id="answer2">Privacy &amp; Security</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id="answer3">Returns &amp; Replacements</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id="answer4">Ordering</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id="answer5">Payment, Pricing &amp; Promotions</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id="answer6">Viewing Orders</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\n Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\n justo.</dd>\n<dt id="answer7">Updating Account Information</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\n Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\n Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\n faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\n Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\n justo.</dd>\n</dl>', '2014-10-10 10:03:07', '2014-10-10 10:03:07', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 'Enable Cookies', 'one_column', NULL, NULL, 'enable-cookies', NULL, '<div class="std">\n    <ul class="messages">\n        <li class="notice-msg">\n            <ul>\n                <li>Please enable cookies in your web browser to continue.</li>\n            </ul>\n        </li>\n    </ul>\n    <div class="page-title">\n        <h1><a name="top"></a>What are Cookies?</h1>\n    </div>\n    <p>Cookies are short pieces of data that are sent to your computer when you visit a website.\n    On later visits, this data is then returned to that website. Cookies allow us to recognize you automatically\n    whenever you visit our site so that we can personalize your experience and provide you with better service.\n    We also use cookies (and similar browser data, such as Flash cookies) for fraud prevention and other purposes.\n     If your web browser is set to refuse cookies from our website, you will not be able to complete a purchase\n     or take advantage of certain features of our website, such as storing items in your Shopping Cart or\n     receiving personalized recommendations. As a result, we strongly encourage you to configure your web\n     browser to accept cookies from our website.</p>\n    <h2 class="subtitle">Enabling Cookies</h2>\n    <ul class="disc">\n        <li><a href="#ie7">Internet Explorer 7.x</a></li>\n        <li><a href="#ie6">Internet Explorer 6.x</a></li>\n        <li><a href="#firefox">Mozilla/Firefox</a></li>\n        <li><a href="#opera">Opera 7.x</a></li>\n    </ul>\n    <h3><a name="ie7"></a>Internet Explorer 7.x</h3>\n    <ol>\n        <li>\n            <p>Start Internet Explorer</p>\n        </li>\n        <li>\n            <p>Under the <strong>Tools</strong> menu, click <strong>Internet Options</strong></p>\n            <p><img src="{{skin url="images/cookies/ie7-1.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Click the <strong>Privacy</strong> tab</p>\n            <p><img src="{{skin url="images/cookies/ie7-2.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Click the <strong>Advanced</strong> button</p>\n            <p><img src="{{skin url="images/cookies/ie7-3.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Put a check mark in the box for <strong>Override Automatic Cookie Handling</strong>,\n            put another check mark in the <strong>Always accept session cookies </strong>box</p>\n            <p><img src="{{skin url="images/cookies/ie7-4.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Click <strong>OK</strong></p>\n            <p><img src="{{skin url="images/cookies/ie7-5.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Click <strong>OK</strong></p>\n            <p><img src="{{skin url="images/cookies/ie7-6.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Restart Internet Explore</p>\n        </li>\n    </ol>\n    <p class="a-top"><a href="#top">Back to Top</a></p>\n    <h3><a name="ie6"></a>Internet Explorer 6.x</h3>\n    <ol>\n        <li>\n            <p>Select <strong>Internet Options</strong> from the Tools menu</p>\n            <p><img src="{{skin url="images/cookies/ie6-1.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Click on the <strong>Privacy</strong> tab</p>\n        </li>\n        <li>\n            <p>Click the <strong>Default</strong> button (or manually slide the bar down to <strong>Medium</strong>)\n            under <strong>Settings</strong>. Click <strong>OK</strong></p>\n            <p><img src="{{skin url="images/cookies/ie6-2.gif"}}" alt="" /></p>\n        </li>\n    </ol>\n    <p class="a-top"><a href="#top">Back to Top</a></p>\n    <h3><a name="firefox"></a>Mozilla/Firefox</h3>\n    <ol>\n        <li>\n            <p>Click on the <strong>Tools</strong>-menu in Mozilla</p>\n        </li>\n        <li>\n            <p>Click on the <strong>Options...</strong> item in the menu - a new window open</p>\n        </li>\n        <li>\n            <p>Click on the <strong>Privacy</strong> selection in the left part of the window. (See image below)</p>\n            <p><img src="{{skin url="images/cookies/firefox.png"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Expand the <strong>Cookies</strong> section</p>\n        </li>\n        <li>\n            <p>Check the <strong>Enable cookies</strong> and <strong>Accept cookies normally</strong> checkboxes</p>\n        </li>\n        <li>\n            <p>Save changes by clicking <strong>Ok</strong>.</p>\n        </li>\n    </ol>\n    <p class="a-top"><a href="#top">Back to Top</a></p>\n    <h3><a name="opera"></a>Opera 7.x</h3>\n    <ol>\n        <li>\n            <p>Click on the <strong>Tools</strong> menu in Opera</p>\n        </li>\n        <li>\n            <p>Click on the <strong>Preferences...</strong> item in the menu - a new window open</p>\n        </li>\n        <li>\n            <p>Click on the <strong>Privacy</strong> selection near the bottom left of the window. (See image below)</p>\n            <p><img src="{{skin url="images/cookies/opera.png"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>The <strong>Enable cookies</strong> checkbox must be checked, and <strong>Accept all cookies</strong>\n            should be selected in the &quot;<strong>Normal cookies</strong>&quot; drop-down</p>\n        </li>\n        <li>\n            <p>Save changes by clicking <strong>Ok</strong></p>\n        </li>\n    </ol>\n    <p class="a-top"><a href="#top">Back to Top</a></p>\n</div>\n', '2014-10-10 10:03:07', '2014-10-10 10:03:07', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 'Privacy Policy', 'one_column', NULL, NULL, 'privacy-policy-cookie-restriction-mode', 'Privacy Policy', '<p style="color: #ff0000; font-weight: bold; font-size: 13px">\n    Please replace this text with you Privacy Policy.\n    Please add any additional cookies your website uses below (e.g., Google Analytics)\n</p>\n<p>\n    This privacy policy sets out how {{config path="general/store_information/name"}} uses and protects any information\n    that you give {{config path="general/store_information/name"}} when you use this website.\n    {{config path="general/store_information/name"}} is committed to ensuring that your privacy is protected.\n    Should we ask you to provide certain information by which you can be identified when using this website,\n    then you can be assured that it will only be used in accordance with this privacy statement.\n    {{config path="general/store_information/name"}} may change this policy from time to time by updating this page.\n    You should check this page from time to time to ensure that you are happy with any changes.\n</p>\n<h2>What we collect</h2>\n<p>We may collect the following information:</p>\n<ul>\n    <li>name</li>\n    <li>contact information including email address</li>\n    <li>demographic information such as postcode, preferences and interests</li>\n    <li>other information relevant to customer surveys and/or offers</li>\n</ul>\n<p>\n    For the exhaustive list of cookies we collect see the <a href="#list">List of cookies we collect</a> section.\n</p>\n<h2>What we do with the information we gather</h2>\n<p>\n    We require this information to understand your needs and provide you with a better service,\n    and in particular for the following reasons:\n</p>\n<ul>\n    <li>Internal record keeping.</li>\n    <li>We may use the information to improve our products and services.</li>\n    <li>\n        We may periodically send promotional emails about new products, special offers or other information which we\n        think you may find interesting using the email address which you have provided.\n    </li>\n    <li>\n        From time to time, we may also use your information to contact you for market research purposes.\n        We may contact you by email, phone, fax or mail. We may use the information to customise the website\n        according to your interests.\n    </li>\n</ul>\n<h2>Security</h2>\n<p>\n    We are committed to ensuring that your information is secure. In order to prevent unauthorised access or disclosure,\n    we have put in place suitable physical, electronic and managerial procedures to safeguard and secure\n    the information we collect online.\n</p>\n<h2>How we use cookies</h2>\n<p>\n    A cookie is a small file which asks permission to be placed on your computer\'s hard drive.\n    Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit\n    a particular site. Cookies allow web applications to respond to you as an individual. The web application\n    can tailor its operations to your needs, likes and dislikes by gathering and remembering information about\n    your preferences.\n</p>\n<p>\n    We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page traffic\n    and improve our website in order to tailor it to customer needs. We only use this information for statistical\n    analysis purposes and then the data is removed from the system.\n</p>\n<p>\n    Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful\n    and which you do not. A cookie in no way gives us access to your computer or any information about you,\n    other than the data you choose to share with us. You can choose to accept or decline cookies.\n    Most web browsers automatically accept cookies, but you can usually modify your browser setting\n    to decline cookies if you prefer. This may prevent you from taking full advantage of the website.\n</p>\n<h2>Links to other websites</h2>\n<p>\n    Our website may contain links to other websites of interest. However, once you have used these links\n    to leave our site, you should note that we do not have any control over that other website.\n    Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst\n    visiting such sites and such sites are not governed by this privacy statement.\n    You should exercise caution and look at the privacy statement applicable to the website in question.\n</p>\n<h2>Controlling your personal information</h2>\n<p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\n<ul>\n    <li>\n        whenever you are asked to fill in a form on the website, look for the box that you can click to indicate\n        that you do not want the information to be used by anybody for direct marketing purposes\n    </li>\n    <li>\n        if you have previously agreed to us using your personal information for direct marketing purposes,\n        you may change your mind at any time by writing to or emailing us at\n        {{config path="trans_email/ident_general/email"}}\n    </li>\n</ul>\n<p>\n    We will not sell, distribute or lease your personal information to third parties unless we have your permission\n    or are required by law to do so. We may use your personal information to send you promotional information\n    about third parties which we think you may find interesting if you tell us that you wish this to happen.\n</p>\n<p>\n    You may request details of personal information which we hold about you under the Data Protection Act 1998.\n    A small fee will be payable. If you would like a copy of the information held on you please write to\n    {{config path="general/store_information/address"}}.\n</p>\n<p>\n    If you believe that any information we are holding on you is incorrect or incomplete,\n    please write to or email us as soon as possible, at the above address.\n    We will promptly correct any information found to be incorrect.\n</p>\n<h2><a name="list"></a>List of cookies we collect</h2>\n<p>The table below lists the cookies we collect and what information they store.</p>\n<table class="data-table">\n    <thead>\n        <tr>\n            <th>COOKIE name</th>\n            <th>COOKIE Description</th>\n        </tr>\n    </thead>\n    <tbody>\n        <tr>\n            <th>CART</th>\n            <td>The association with your shopping cart.</td>\n        </tr>\n        <tr>\n            <th>CATEGORY_INFO</th>\n            <td>Stores the category info on the page, that allows to display pages more quickly.</td>\n        </tr>\n        <tr>\n            <th>COMPARE</th>\n            <td>The items that you have in the Compare Products list.</td>\n        </tr>\n        <tr>\n            <th>CURRENCY</th>\n            <td>Your preferred currency</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER</th>\n            <td>An encrypted version of your customer id with the store.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_AUTH</th>\n            <td>An indicator if you are currently logged into the store.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_INFO</th>\n            <td>An encrypted version of the customer group you belong to.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_SEGMENT_IDS</th>\n            <td>Stores the Customer Segment ID</td>\n        </tr>\n        <tr>\n            <th>EXTERNAL_NO_CACHE</th>\n            <td>A flag, which indicates whether caching is disabled or not.</td>\n        </tr>\n        <tr>\n            <th>FRONTEND</th>\n            <td>You sesssion ID on the server.</td>\n        </tr>\n        <tr>\n            <th>GUEST-VIEW</th>\n            <td>Allows guests to edit their orders.</td>\n        </tr>\n        <tr>\n            <th>LAST_CATEGORY</th>\n            <td>The last category you visited.</td>\n        </tr>\n        <tr>\n            <th>LAST_PRODUCT</th>\n            <td>The most recent product you have viewed.</td>\n        </tr>\n        <tr>\n            <th>NEWMESSAGE</th>\n            <td>Indicates whether a new message has been received.</td>\n        </tr>\n        <tr>\n            <th>NO_CACHE</th>\n            <td>Indicates whether it is allowed to use cache.</td>\n        </tr>\n        <tr>\n            <th>PERSISTENT_SHOPPING_CART</th>\n            <td>A link to information about your cart and viewing history if you have asked the site.</td>\n        </tr>\n        <tr>\n            <th>POLL</th>\n            <td>The ID of any polls you have recently voted in.</td>\n        </tr>\n        <tr>\n            <th>POLLN</th>\n            <td>Information on what polls you have voted on.</td>\n        </tr>\n        <tr>\n            <th>RECENTLYCOMPARED</th>\n            <td>The items that you have recently compared.            </td>\n        </tr>\n        <tr>\n            <th>STF</th>\n            <td>Information on products you have emailed to friends.</td>\n        </tr>\n        <tr>\n            <th>STORE</th>\n            <td>The store view or language you have selected.</td>\n        </tr>\n        <tr>\n            <th>USER_ALLOWED_SAVE_COOKIE</th>\n            <td>Indicates whether a customer allowed to use cookies.</td>\n        </tr>\n        <tr>\n            <th>VIEWED_PRODUCT_IDS</th>\n            <td>The products that you have recently viewed.</td>\n        </tr>\n        <tr>\n            <th>WISHLIST</th>\n            <td>An encrypted list of products added to your Wishlist.</td>\n        </tr>\n        <tr>\n            <th>WISHLIST_CNT</th>\n            <td>The number of items in your Wishlist.</td>\n        </tr>\n    </tbody>\n</table>', '2014-10-10 10:03:07', '2014-10-10 10:03:07', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;


-- Dumping structure for table mag.cms_page_store
DROP TABLE IF EXISTS `cms_page_store`;
CREATE TABLE IF NOT EXISTS `cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`page_id`,`store_id`),
  KEY `IDX_CMS_PAGE_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CMS_PAGE_STORE_PAGE_ID_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CMS_PAGE_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

-- Dumping data for table mag.cms_page_store: ~6 rows (approximately)
/*!40000 ALTER TABLE `cms_page_store` DISABLE KEYS */;
INSERT INTO `cms_page_store` (`page_id`, `store_id`) VALUES
	(1, 0),
	(2, 0),
	(3, 0),
	(4, 0),
	(5, 0),
	(6, 0);
/*!40000 ALTER TABLE `cms_page_store` ENABLE KEYS */;


-- Dumping structure for table mag.core_cache
DROP TABLE IF EXISTS `core_cache`;
CREATE TABLE IF NOT EXISTS `core_cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int(11) DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int(11) DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int(11) DEFAULT NULL COMMENT 'Cache Expiration Time',
  PRIMARY KEY (`id`),
  KEY `IDX_CORE_CACHE_EXPIRE_TIME` (`expire_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches';

-- Dumping data for table mag.core_cache: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_cache` ENABLE KEYS */;


-- Dumping structure for table mag.core_cache_option
DROP TABLE IF EXISTS `core_cache_option`;
CREATE TABLE IF NOT EXISTS `core_cache_option` (
  `code` varchar(32) NOT NULL COMMENT 'Code',
  `value` smallint(6) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cache Options';

-- Dumping data for table mag.core_cache_option: ~8 rows (approximately)
/*!40000 ALTER TABLE `core_cache_option` DISABLE KEYS */;
INSERT INTO `core_cache_option` (`code`, `value`) VALUES
	('block_html', 1),
	('collections', 1),
	('config', 1),
	('config_api', 1),
	('config_api2', 1),
	('eav', 1),
	('layout', 1),
	('translate', 1);
/*!40000 ALTER TABLE `core_cache_option` ENABLE KEYS */;


-- Dumping structure for table mag.core_cache_tag
DROP TABLE IF EXISTS `core_cache_tag`;
CREATE TABLE IF NOT EXISTS `core_cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id',
  PRIMARY KEY (`tag`,`cache_id`),
  KEY `IDX_CORE_CACHE_TAG_CACHE_ID` (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Caches';

-- Dumping data for table mag.core_cache_tag: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_cache_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_cache_tag` ENABLE KEYS */;


-- Dumping structure for table mag.core_config_data
DROP TABLE IF EXISTS `core_config_data`;
CREATE TABLE IF NOT EXISTS `core_config_data` (
  `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value',
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `UNQ_CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Config Data';

-- Dumping data for table mag.core_config_data: ~12 rows (approximately)
/*!40000 ALTER TABLE `core_config_data` DISABLE KEYS */;
INSERT INTO `core_config_data` (`config_id`, `scope`, `scope_id`, `path`, `value`) VALUES
	(1, 'default', 0, 'general/region/display_all', '1'),
	(2, 'default', 0, 'general/region/state_required', 'AT,CA,CH,DE,EE,ES,FI,FR,LT,LV,RO,US'),
	(3, 'default', 0, 'catalog/category/root_id', '2'),
	(4, 'default', 0, 'payment/paypal_express/skip_order_review_step', '1'),
	(5, 'default', 0, 'admin/dashboard/enable_charts', '1'),
	(6, 'default', 0, 'web/unsecure/base_url', 'http://tst/magento/'),
	(7, 'default', 0, 'web/secure/base_url', 'http://tst/magento/'),
	(8, 'default', 0, 'general/locale/code', 'uk_UA'),
	(9, 'default', 0, 'general/locale/timezone', 'Europe/Kiev'),
	(10, 'default', 0, 'currency/options/base', 'USD'),
	(11, 'default', 0, 'currency/options/default', 'USD'),
	(12, 'default', 0, 'currency/options/allow', 'USD');
/*!40000 ALTER TABLE `core_config_data` ENABLE KEYS */;


-- Dumping structure for table mag.core_email_template
DROP TABLE IF EXISTS `core_email_template`;
CREATE TABLE IF NOT EXISTS `core_email_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Creation',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `UNQ_CORE_EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
  KEY `IDX_CORE_EMAIL_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `IDX_CORE_EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates';

-- Dumping data for table mag.core_email_template: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_email_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_email_template` ENABLE KEYS */;


-- Dumping structure for table mag.core_flag
DROP TABLE IF EXISTS `core_flag`;
CREATE TABLE IF NOT EXISTS `core_flag` (
  `flag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` text COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update',
  PRIMARY KEY (`flag_id`),
  KEY `IDX_CORE_FLAG_LAST_UPDATE` (`last_update`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Flag';

-- Dumping data for table mag.core_flag: ~2 rows (approximately)
/*!40000 ALTER TABLE `core_flag` DISABLE KEYS */;
INSERT INTO `core_flag` (`flag_id`, `flag_code`, `state`, `flag_data`, `last_update`) VALUES
	(1, 'admin_notification_survey', 0, 'a:1:{s:13:"survey_viewed";b:1;}', '2014-10-10 10:05:02'),
	(2, 'catalog_product_flat', 0, 'a:2:{s:8:"is_built";b:1;s:16:"is_store_built_1";b:1;}', '2014-10-10 11:03:47');
/*!40000 ALTER TABLE `core_flag` ENABLE KEYS */;


-- Dumping structure for table mag.core_layout_link
DROP TABLE IF EXISTS `core_layout_link`;
CREATE TABLE IF NOT EXISTS `core_layout_link` (
  `layout_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `area` varchar(64) DEFAULT NULL COMMENT 'Area',
  `package` varchar(64) DEFAULT NULL COMMENT 'Package',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  PRIMARY KEY (`layout_link_id`),
  UNIQUE KEY `UNQ_CORE_LAYOUT_LINK_STORE_ID_PACKAGE_THEME_LAYOUT_UPDATE_ID` (`store_id`,`package`,`theme`,`layout_update_id`),
  KEY `IDX_CORE_LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`),
  CONSTRAINT `FK_CORE_LAYOUT_LINK_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CORE_LYT_LNK_LYT_UPDATE_ID_CORE_LYT_UPDATE_LYT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Link';

-- Dumping data for table mag.core_layout_link: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_layout_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_layout_link` ENABLE KEYS */;


-- Dumping structure for table mag.core_layout_update
DROP TABLE IF EXISTS `core_layout_update`;
CREATE TABLE IF NOT EXISTS `core_layout_update` (
  `layout_update_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Layout Update Id',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`layout_update_id`),
  KEY `IDX_CORE_LAYOUT_UPDATE_HANDLE` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Updates';

-- Dumping data for table mag.core_layout_update: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_layout_update` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_layout_update` ENABLE KEYS */;


-- Dumping structure for table mag.core_resource
DROP TABLE IF EXISTS `core_resource`;
CREATE TABLE IF NOT EXISTS `core_resource` (
  `code` varchar(50) NOT NULL COMMENT 'Resource Code',
  `version` varchar(50) DEFAULT NULL COMMENT 'Resource Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Resources';

-- Dumping data for table mag.core_resource: ~52 rows (approximately)
/*!40000 ALTER TABLE `core_resource` DISABLE KEYS */;
INSERT INTO `core_resource` (`code`, `version`, `data_version`) VALUES
	('adminnotification_setup', '1.6.0.0', '1.6.0.0'),
	('admin_setup', '1.6.1.1', '1.6.1.1'),
	('api2_setup', '1.0.0.0', '1.0.0.0'),
	('api_setup', '1.6.0.1', '1.6.0.1'),
	('backup_setup', '1.6.0.0', '1.6.0.0'),
	('bundle_setup', '1.6.0.0.1', '1.6.0.0.1'),
	('captcha_setup', '1.7.0.0.0', '1.7.0.0.0'),
	('catalogindex_setup', '1.6.0.0', '1.6.0.0'),
	('cataloginventory_setup', '1.6.0.0.2', '1.6.0.0.2'),
	('catalogrule_setup', '1.6.0.3', '1.6.0.3'),
	('catalogsearch_setup', '1.8.2.0', '1.8.2.0'),
	('catalog_setup', '1.6.0.0.19', '1.6.0.0.19'),
	('checkout_setup', '1.6.0.0', '1.6.0.0'),
	('cms_setup', '1.6.0.0.2', '1.6.0.0.2'),
	('compiler_setup', '1.6.0.0', '1.6.0.0'),
	('contacts_setup', '1.6.0.0', '1.6.0.0'),
	('core_setup', '1.6.0.4', '1.6.0.4'),
	('cron_setup', '1.6.0.0', '1.6.0.0'),
	('customer_setup', '1.6.2.0.3', '1.6.2.0.3'),
	('dataflow_setup', '1.6.0.0', '1.6.0.0'),
	('directory_setup', '1.6.0.2', '1.6.0.2'),
	('downloadable_setup', '1.6.0.0.2', '1.6.0.0.2'),
	('eav_setup', '1.6.0.1', '1.6.0.1'),
	('giftmessage_setup', '1.6.0.0', '1.6.0.0'),
	('importexport_setup', '1.6.0.2', '1.6.0.2'),
	('index_setup', '1.6.0.0', '1.6.0.0'),
	('log_setup', '1.6.1.0', '1.6.1.0'),
	('moneybookers_setup', '1.6.0.0', '1.6.0.0'),
	('newsletter_setup', '1.6.0.1', '1.6.0.1'),
	('oauth_setup', '1.0.0.0', '1.0.0.0'),
	('paygate_setup', '1.6.0.0', '1.6.0.0'),
	('payment_setup', '1.6.0.0', '1.6.0.0'),
	('paypaluk_setup', '1.6.0.0', '1.6.0.0'),
	('paypal_setup', '1.6.0.5', '1.6.0.5'),
	('persistent_setup', '1.0.0.0', '1.0.0.0'),
	('poll_setup', '1.6.0.0', '1.6.0.0'),
	('productalert_setup', '1.6.0.0', '1.6.0.0'),
	('rating_setup', '1.6.0.0', '1.6.0.0'),
	('reports_setup', '1.6.0.0.1', '1.6.0.0.1'),
	('review_setup', '1.6.0.0', '1.6.0.0'),
	('salesrule_setup', '1.6.0.3', '1.6.0.3'),
	('sales_setup', '1.6.0.8', '1.6.0.8'),
	('sendfriend_setup', '1.6.0.0', '1.6.0.0'),
	('shipping_setup', '1.6.0.0', '1.6.0.0'),
	('sitemap_setup', '1.6.0.0', '1.6.0.0'),
	('tag_setup', '1.6.0.0', '1.6.0.0'),
	('tax_setup', '1.6.0.4', '1.6.0.4'),
	('usa_setup', '1.6.0.3', '1.6.0.3'),
	('weee_setup', '1.6.0.0', '1.6.0.0'),
	('widget_setup', '1.6.0.0', '1.6.0.0'),
	('wishlist_setup', '1.6.0.0', '1.6.0.0'),
	('xmlconnect_setup', '1.6.0.0.1', '1.6.0.0.1');
/*!40000 ALTER TABLE `core_resource` ENABLE KEYS */;


-- Dumping structure for table mag.core_session
DROP TABLE IF EXISTS `core_session`;
CREATE TABLE IF NOT EXISTS `core_session` (
  `session_id` varchar(255) NOT NULL COMMENT 'Session Id',
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Date of Session Expiration',
  `session_data` mediumblob NOT NULL COMMENT 'Session Data',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database Sessions Storage';

-- Dumping data for table mag.core_session: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_session` ENABLE KEYS */;


-- Dumping structure for table mag.core_store
DROP TABLE IF EXISTS `core_store`;
CREATE TABLE IF NOT EXISTS `core_store` (
  `store_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Store Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Activity',
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `UNQ_CORE_STORE_CODE` (`code`),
  KEY `IDX_CORE_STORE_WEBSITE_ID` (`website_id`),
  KEY `IDX_CORE_STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`),
  KEY `IDX_CORE_STORE_GROUP_ID` (`group_id`),
  CONSTRAINT `FK_CORE_STORE_GROUP_ID_CORE_STORE_GROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `core_store_group` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CORE_STORE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Stores';

-- Dumping data for table mag.core_store: ~2 rows (approximately)
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` (`store_id`, `code`, `website_id`, `group_id`, `name`, `sort_order`, `is_active`) VALUES
	(0, 'admin', 0, 0, 'Admin', 0, 1),
	(1, 'default', 1, 1, 'Default Store View', 0, 1);
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;


-- Dumping structure for table mag.core_store_group
DROP TABLE IF EXISTS `core_store_group`;
CREATE TABLE IF NOT EXISTS `core_store_group` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Group Name',
  `root_category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Root Category Id',
  `default_store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Store Id',
  PRIMARY KEY (`group_id`),
  KEY `IDX_CORE_STORE_GROUP_WEBSITE_ID` (`website_id`),
  KEY `IDX_CORE_STORE_GROUP_DEFAULT_STORE_ID` (`default_store_id`),
  CONSTRAINT `FK_CORE_STORE_GROUP_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Store Groups';

-- Dumping data for table mag.core_store_group: ~2 rows (approximately)
/*!40000 ALTER TABLE `core_store_group` DISABLE KEYS */;
INSERT INTO `core_store_group` (`group_id`, `website_id`, `name`, `root_category_id`, `default_store_id`) VALUES
	(0, 0, 'Default', 0, 0),
	(1, 1, 'Main Website Store', 2, 1);
/*!40000 ALTER TABLE `core_store_group` ENABLE KEYS */;


-- Dumping structure for table mag.core_translate
DROP TABLE IF EXISTS `core_translate`;
CREATE TABLE IF NOT EXISTS `core_translate` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Key Id of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  `crc_string` bigint(20) NOT NULL DEFAULT '1591228201' COMMENT 'Translation String CRC32 Hash',
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `UNQ_CORE_TRANSLATE_STORE_ID_LOCALE_CRC_STRING_STRING` (`store_id`,`locale`,`crc_string`,`string`),
  KEY `IDX_CORE_TRANSLATE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CORE_TRANSLATE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Translations';

-- Dumping data for table mag.core_translate: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_translate` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_translate` ENABLE KEYS */;


-- Dumping structure for table mag.core_url_rewrite
DROP TABLE IF EXISTS `core_url_rewrite`;
CREATE TABLE IF NOT EXISTS `core_url_rewrite` (
  `url_rewrite_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rewrite Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `id_path` varchar(255) DEFAULT NULL COMMENT 'Id Path',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `is_system` smallint(5) unsigned DEFAULT '1' COMMENT 'Defines is Rewrite System',
  `options` varchar(255) DEFAULT NULL COMMENT 'Options',
  `description` varchar(255) DEFAULT NULL COMMENT 'Deascription',
  `category_id` int(10) unsigned DEFAULT NULL COMMENT 'Category Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  PRIMARY KEY (`url_rewrite_id`),
  UNIQUE KEY `UNQ_CORE_URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`),
  UNIQUE KEY `UNQ_CORE_URL_REWRITE_ID_PATH_IS_SYSTEM_STORE_ID` (`id_path`,`is_system`,`store_id`),
  KEY `IDX_CORE_URL_REWRITE_TARGET_PATH_STORE_ID` (`target_path`,`store_id`),
  KEY `IDX_CORE_URL_REWRITE_ID_PATH` (`id_path`),
  KEY `IDX_CORE_URL_REWRITE_STORE_ID` (`store_id`),
  KEY `FK_CORE_URL_REWRITE_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` (`category_id`),
  KEY `FK_CORE_URL_REWRITE_PRODUCT_ID_CATALOG_CATEGORY_ENTITY_ENTITY_ID` (`product_id`),
  CONSTRAINT `FK_CORE_URL_REWRITE_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CORE_URL_REWRITE_PRODUCT_ID_CATALOG_CATEGORY_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CORE_URL_REWRITE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='Url Rewrites';

-- Dumping data for table mag.core_url_rewrite: ~40 rows (approximately)
/*!40000 ALTER TABLE `core_url_rewrite` DISABLE KEYS */;
INSERT INTO `core_url_rewrite` (`url_rewrite_id`, `store_id`, `id_path`, `request_path`, `target_path`, `is_system`, `options`, `description`, `category_id`, `product_id`) VALUES
	(1, 1, 'category/100', 'rosettes-medallions.html', 'catalog/category/view/id/100', 1, NULL, NULL, 100, NULL),
	(2, 1, 'category/101', 'base-molding.html', 'catalog/category/view/id/101', 1, NULL, NULL, 101, NULL),
	(3, 1, 'category/97', 'casing.html', 'catalog/category/view/id/97', 1, NULL, NULL, 97, NULL),
	(4, 1, 'category/98', 'picture-frame-molding.html', 'catalog/category/view/id/98', 1, NULL, NULL, 98, NULL),
	(5, 1, 'category/99', 'picture-frames.html', 'catalog/category/view/id/99', 1, NULL, NULL, 99, NULL),
	(6, 1, 'product/1', 'closeout-set-villa-park-platform-bedroom-set-your-choice-of-6-pc-queen-set.html', 'catalog/product/view/id/1', 1, NULL, NULL, NULL, 1),
	(7, 1, 'product/2', 'closeout-set-villa-park-platform-bedroom-set-your-choice-of-queen-bed-only.html', 'catalog/product/view/id/2', 1, NULL, NULL, NULL, 2),
	(8, 1, 'product/3', 'closeout-set-villa-park-platform-bedroom-set-your-choice-of-8-pc-queen-set.html', 'catalog/product/view/id/3', 1, NULL, NULL, NULL, 3),
	(9, 1, 'product/4', 'closeout-set-villa-park-platform-bedroom-set.html', 'catalog/product/view/id/4', 1, NULL, NULL, NULL, 4),
	(10, 1, 'product/5', 'windham-formal-dining-set-windham-dining-7-pc-table-4-side-chairs-2-arm-chairs.html', 'catalog/product/view/id/5', 1, NULL, NULL, NULL, 5),
	(11, 1, 'product/6', 'windham-formal-dining-set-windham-dining-hutch-buffet.html', 'catalog/product/view/id/6', 1, NULL, NULL, NULL, 6),
	(12, 1, 'product/7', 'windham-formal-dining-set-windham-dining-2-additional-side-chairs.html', 'catalog/product/view/id/7', 1, NULL, NULL, NULL, 7),
	(13, 1, 'product/8', 'windham-formal-dining-set-windham-dining-2-additional-arm-chairs.html', 'catalog/product/view/id/8', 1, NULL, NULL, NULL, 8),
	(14, 1, 'product/9', 'windham-formal-dining-set.html', 'catalog/product/view/id/9', 1, NULL, NULL, NULL, 9),
	(15, 1, 'product/10', 'neo-renaissance-formal-dining-set-neo-renaissance-dining-7-pc-table-4-side-chairs-2-arm-chairs.html', 'catalog/product/view/id/10', 1, NULL, NULL, NULL, 10),
	(16, 1, 'product/11', 'neo-renaissance-formal-dining-set-neo-renaissance-dining-hutch-buffet.html', 'catalog/product/view/id/11', 1, NULL, NULL, NULL, 11),
	(17, 1, 'product/12', 'neo-renaissance-formal-dining-set-neo-renaissance-dining-2-additional-side-chairs.html', 'catalog/product/view/id/12', 1, NULL, NULL, NULL, 12),
	(18, 1, 'product/13', 'neo-renaissance-formal-dining-set-neo-renaissance-dining-2-additional-arm-chairs.html', 'catalog/product/view/id/13', 1, NULL, NULL, NULL, 13),
	(19, 1, 'product/14', 'neo-renaissance-formal-dining-set.html', 'catalog/product/view/id/14', 1, NULL, NULL, NULL, 14),
	(20, 1, 'product/15', 'estelle-formal-dining-set-estelle-dining-set-7-pc-table-4-side-chairs-2-arm-chairs.html', 'catalog/product/view/id/15', 1, NULL, NULL, NULL, 15),
	(21, 1, 'product/16', 'estelle-formal-dining-set-estelle-dining-set-hutch-buffet.html', 'catalog/product/view/id/16', 1, NULL, NULL, NULL, 16),
	(22, 1, 'product/17', 'estelle-formal-dining-set-estelle-dining-set-2-additional-side-chairs.html', 'catalog/product/view/id/17', 1, NULL, NULL, NULL, 17),
	(23, 1, 'product/18', 'estelle-formal-dining-set-estelle-dining-set-2-additional-arm-chairs.html', 'catalog/product/view/id/18', 1, NULL, NULL, NULL, 18),
	(24, 1, 'product/19', 'estelle-formal-dining-set.html', 'catalog/product/view/id/19', 1, NULL, NULL, NULL, 19),
	(25, 1, 'product/20', 'grandview-marble-dining.html', 'catalog/product/view/id/20', 1, NULL, NULL, NULL, 20),
	(26, 1, 'product/21', 'monaco-dining-monaco-dining-5-pc-table-4-side-chairs.html', 'catalog/product/view/id/21', 1, NULL, NULL, NULL, 21),
	(27, 1, 'product/22', 'monaco-dining-monaco-dining-7-pc-table-4-side-chairs-2-arm-chairs.html', 'catalog/product/view/id/22', 1, NULL, NULL, NULL, 22),
	(28, 1, 'product/23', 'monaco-dining-monaco-dining-hutch-buffet.html', 'catalog/product/view/id/23', 1, NULL, NULL, NULL, 23),
	(29, 1, 'product/24', 'monaco-dining-monaco-dining-2-additional-side-chairs.html', 'catalog/product/view/id/24', 1, NULL, NULL, NULL, 24),
	(30, 1, 'product/25', 'monaco-dining-monaco-dining-2-additional-arm-chairs.html', 'catalog/product/view/id/25', 1, NULL, NULL, NULL, 25),
	(31, 1, 'product/26', 'monaco-dining.html', 'catalog/product/view/id/26', 1, NULL, NULL, NULL, 26),
	(32, 1, 'product/27', 'apollo-dining-apollo-dining-5-pc-table-4-side-chairs.html', 'catalog/product/view/id/27', 1, NULL, NULL, NULL, 27),
	(33, 1, 'product/28', 'apollo-dining-apollo-dining-hutch-buffet.html', 'catalog/product/view/id/28', 1, NULL, NULL, NULL, 28),
	(34, 1, 'product/29', 'apollo-dining-apollo-dining-2-additional-side-chairs.html', 'catalog/product/view/id/29', 1, NULL, NULL, NULL, 29),
	(35, 1, 'product/30', 'apollo-dining.html', 'catalog/product/view/id/30', 1, NULL, NULL, NULL, 30),
	(36, 1, 'product/31', 'merlot-formal-dining-set-merlot-dining-7-pc-table-4-side-chairs-2-arm-chairs.html', 'catalog/product/view/id/31', 1, NULL, NULL, NULL, 31),
	(37, 1, 'product/32', 'merlot-formal-dining-set-merlot-dining-hutch-buffet.html', 'catalog/product/view/id/32', 1, NULL, NULL, NULL, 32),
	(38, 1, 'product/33', 'merlot-formal-dining-set-merlot-dining-2-additional-side-chairs.html', 'catalog/product/view/id/33', 1, NULL, NULL, NULL, 33),
	(39, 1, 'product/34', 'merlot-formal-dining-set-merlot-dining-2-additional-arm-chairs.html', 'catalog/product/view/id/34', 1, NULL, NULL, NULL, 34),
	(40, 1, 'product/35', 'merlot-formal-dining-set.html', 'catalog/product/view/id/35', 1, NULL, NULL, NULL, 35);
/*!40000 ALTER TABLE `core_url_rewrite` ENABLE KEYS */;


-- Dumping structure for table mag.core_variable
DROP TABLE IF EXISTS `core_variable`;
CREATE TABLE IF NOT EXISTS `core_variable` (
  `variable_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Variable Code',
  `name` varchar(255) DEFAULT NULL COMMENT 'Variable Name',
  PRIMARY KEY (`variable_id`),
  UNIQUE KEY `UNQ_CORE_VARIABLE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variables';

-- Dumping data for table mag.core_variable: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_variable` ENABLE KEYS */;


-- Dumping structure for table mag.core_variable_value
DROP TABLE IF EXISTS `core_variable_value`;
CREATE TABLE IF NOT EXISTS `core_variable_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Value Id',
  `variable_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Variable Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `plain_value` text COMMENT 'Plain Text Value',
  `html_value` text COMMENT 'Html Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CORE_VARIABLE_VALUE_VARIABLE_ID_STORE_ID` (`variable_id`,`store_id`),
  KEY `IDX_CORE_VARIABLE_VALUE_VARIABLE_ID` (`variable_id`),
  KEY `IDX_CORE_VARIABLE_VALUE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CORE_VARIABLE_VALUE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CORE_VARIABLE_VALUE_VARIABLE_ID_CORE_VARIABLE_VARIABLE_ID` FOREIGN KEY (`variable_id`) REFERENCES `core_variable` (`variable_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Value';

-- Dumping data for table mag.core_variable_value: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_variable_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_variable_value` ENABLE KEYS */;


-- Dumping structure for table mag.core_website
DROP TABLE IF EXISTS `core_website`;
CREATE TABLE IF NOT EXISTS `core_website` (
  `website_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Website Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) DEFAULT NULL COMMENT 'Website Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Group Id',
  `is_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Defines Is Website Default',
  PRIMARY KEY (`website_id`),
  UNIQUE KEY `UNQ_CORE_WEBSITE_CODE` (`code`),
  KEY `IDX_CORE_WEBSITE_SORT_ORDER` (`sort_order`),
  KEY `IDX_CORE_WEBSITE_DEFAULT_GROUP_ID` (`default_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Websites';

-- Dumping data for table mag.core_website: ~2 rows (approximately)
/*!40000 ALTER TABLE `core_website` DISABLE KEYS */;
INSERT INTO `core_website` (`website_id`, `code`, `name`, `sort_order`, `default_group_id`, `is_default`) VALUES
	(0, 'admin', 'Admin', 0, 0, 0),
	(1, 'base', 'Main Website', 0, 1, 1);
/*!40000 ALTER TABLE `core_website` ENABLE KEYS */;


-- Dumping structure for table mag.coupon_aggregated
DROP TABLE IF EXISTS `coupon_aggregated`;
CREATE TABLE IF NOT EXISTS `coupon_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_COUPON_AGGREGATED_STORE_ID` (`store_id`),
  KEY `IDX_COUPON_AGGREGATED_RULE_NAME` (`rule_name`),
  CONSTRAINT `FK_COUPON_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated';

-- Dumping data for table mag.coupon_aggregated: ~0 rows (approximately)
/*!40000 ALTER TABLE `coupon_aggregated` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_aggregated` ENABLE KEYS */;


-- Dumping structure for table mag.coupon_aggregated_order
DROP TABLE IF EXISTS `coupon_aggregated_order`;
CREATE TABLE IF NOT EXISTS `coupon_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGRED_ORDER_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  KEY `IDX_COUPON_AGGREGATED_ORDER_RULE_NAME` (`rule_name`),
  CONSTRAINT `FK_COUPON_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Order';

-- Dumping data for table mag.coupon_aggregated_order: ~0 rows (approximately)
/*!40000 ALTER TABLE `coupon_aggregated_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_aggregated_order` ENABLE KEYS */;


-- Dumping structure for table mag.coupon_aggregated_updated
DROP TABLE IF EXISTS `coupon_aggregated_updated`;
CREATE TABLE IF NOT EXISTS `coupon_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGRED_UPDATED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  KEY `IDX_COUPON_AGGREGATED_UPDATED_RULE_NAME` (`rule_name`),
  CONSTRAINT `FK_COUPON_AGGREGATED_UPDATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Updated';

-- Dumping data for table mag.coupon_aggregated_updated: ~0 rows (approximately)
/*!40000 ALTER TABLE `coupon_aggregated_updated` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_aggregated_updated` ENABLE KEYS */;


-- Dumping structure for table mag.cron_schedule
DROP TABLE IF EXISTS `cron_schedule`;
CREATE TABLE IF NOT EXISTS `cron_schedule` (
  `schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Schedule Id',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At',
  PRIMARY KEY (`schedule_id`),
  KEY `IDX_CRON_SCHEDULE_JOB_CODE` (`job_code`),
  KEY `IDX_CRON_SCHEDULE_SCHEDULED_AT_STATUS` (`scheduled_at`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron Schedule';

-- Dumping data for table mag.cron_schedule: ~0 rows (approximately)
/*!40000 ALTER TABLE `cron_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_schedule` ENABLE KEYS */;


-- Dumping structure for table mag.customer_address_entity
DROP TABLE IF EXISTS `customer_address_entity`;
CREATE TABLE IF NOT EXISTS `customer_address_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_CUSTOMER_ADDRESS_ENTITY_PARENT_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity';

-- Dumping data for table mag.customer_address_entity: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_address_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_address_entity` ENABLE KEYS */;


-- Dumping structure for table mag.customer_address_entity_datetime
DROP TABLE IF EXISTS `customer_address_entity_datetime`;
CREATE TABLE IF NOT EXISTS `customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_CSTR_ADDR_ENTT_DTIME_ENTT_ID_ATTR_ID_VAL` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Datetime';

-- Dumping data for table mag.customer_address_entity_datetime: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_address_entity_datetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_address_entity_datetime` ENABLE KEYS */;


-- Dumping structure for table mag.customer_address_entity_decimal
DROP TABLE IF EXISTS `customer_address_entity_decimal`;
CREATE TABLE IF NOT EXISTS `customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Decimal';

-- Dumping data for table mag.customer_address_entity_decimal: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_address_entity_decimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_address_entity_decimal` ENABLE KEYS */;


-- Dumping structure for table mag.customer_address_entity_int
DROP TABLE IF EXISTS `customer_address_entity_int`;
CREATE TABLE IF NOT EXISTS `customer_address_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Int';

-- Dumping data for table mag.customer_address_entity_int: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_address_entity_int` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_address_entity_int` ENABLE KEYS */;


-- Dumping structure for table mag.customer_address_entity_text
DROP TABLE IF EXISTS `customer_address_entity_text`;
CREATE TABLE IF NOT EXISTS `customer_address_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Text';

-- Dumping data for table mag.customer_address_entity_text: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_address_entity_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_address_entity_text` ENABLE KEYS */;


-- Dumping structure for table mag.customer_address_entity_varchar
DROP TABLE IF EXISTS `customer_address_entity_varchar`;
CREATE TABLE IF NOT EXISTS `customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Varchar';

-- Dumping data for table mag.customer_address_entity_varchar: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_address_entity_varchar` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_address_entity_varchar` ENABLE KEYS */;


-- Dumping structure for table mag.customer_eav_attribute
DROP TABLE IF EXISTS `customer_eav_attribute`;
CREATE TABLE IF NOT EXISTS `customer_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model',
  PRIMARY KEY (`attribute_id`),
  CONSTRAINT `FK_CSTR_EAV_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute';

-- Dumping data for table mag.customer_eav_attribute: ~40 rows (approximately)
/*!40000 ALTER TABLE `customer_eav_attribute` DISABLE KEYS */;
INSERT INTO `customer_eav_attribute` (`attribute_id`, `is_visible`, `input_filter`, `multiline_count`, `validate_rules`, `is_system`, `sort_order`, `data_model`) VALUES
	(1, 1, NULL, 0, NULL, 1, 10, NULL),
	(2, 0, NULL, 0, NULL, 1, 0, NULL),
	(3, 1, NULL, 0, NULL, 1, 20, NULL),
	(4, 0, NULL, 0, NULL, 0, 30, NULL),
	(5, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 40, NULL),
	(6, 0, NULL, 0, NULL, 0, 50, NULL),
	(7, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 60, NULL),
	(8, 0, NULL, 0, NULL, 0, 70, NULL),
	(9, 1, NULL, 0, 'a:1:{s:16:"input_validation";s:5:"email";}', 1, 80, NULL),
	(10, 1, NULL, 0, NULL, 1, 25, NULL),
	(11, 0, 'date', 0, 'a:1:{s:16:"input_validation";s:4:"date";}', 0, 90, NULL),
	(12, 0, NULL, 0, NULL, 1, 0, NULL),
	(13, 0, NULL, 0, NULL, 1, 0, NULL),
	(14, 0, NULL, 0, NULL, 1, 0, NULL),
	(15, 0, NULL, 0, 'a:1:{s:15:"max_text_length";i:255;}', 0, 100, NULL),
	(16, 0, NULL, 0, NULL, 1, 0, NULL),
	(17, 0, 'datetime', 0, NULL, 0, 0, NULL),
	(18, 0, NULL, 0, 'a:0:{}', 0, 110, NULL),
	(19, 0, NULL, 0, NULL, 0, 10, NULL),
	(20, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 20, NULL),
	(21, 0, NULL, 0, NULL, 0, 30, NULL),
	(22, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 40, NULL),
	(23, 0, NULL, 0, NULL, 0, 50, NULL),
	(24, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 60, NULL),
	(25, 1, NULL, 2, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 70, NULL),
	(26, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 80, NULL),
	(27, 1, NULL, 0, NULL, 1, 90, NULL),
	(28, 1, NULL, 0, NULL, 1, 100, NULL),
	(29, 1, NULL, 0, NULL, 1, 100, NULL),
	(30, 1, NULL, 0, 'a:0:{}', 1, 110, 'customer/attribute_data_postcode'),
	(31, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 120, NULL),
	(32, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 130, NULL),
	(33, 0, NULL, 0, NULL, 1, 0, NULL),
	(34, 0, NULL, 0, 'a:1:{s:16:"input_validation";s:4:"date";}', 1, 0, NULL),
	(35, 1, NULL, 0, NULL, 1, 28, NULL),
	(36, 1, NULL, 0, NULL, 1, 140, NULL),
	(37, 0, NULL, 0, NULL, 1, 0, NULL),
	(38, 0, NULL, 0, NULL, 1, 0, NULL),
	(39, 0, NULL, 0, NULL, 1, 0, NULL),
	(40, 0, NULL, 0, NULL, 1, 0, NULL);
/*!40000 ALTER TABLE `customer_eav_attribute` ENABLE KEYS */;


-- Dumping structure for table mag.customer_eav_attribute_website
DROP TABLE IF EXISTS `customer_eav_attribute_website`;
CREATE TABLE IF NOT EXISTS `customer_eav_attribute_website` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `is_visible` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint(5) unsigned DEFAULT NULL COMMENT 'Multiline Count',
  PRIMARY KEY (`attribute_id`,`website_id`),
  KEY `IDX_CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_CSTR_EAV_ATTR_WS_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_EAV_ATTR_WS_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute Website';

-- Dumping data for table mag.customer_eav_attribute_website: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_eav_attribute_website` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_eav_attribute_website` ENABLE KEYS */;


-- Dumping structure for table mag.customer_entity
DROP TABLE IF EXISTS `customer_entity`;
CREATE TABLE IF NOT EXISTS `customer_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `website_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Website Id',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `disable_auto_group_change` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Disable automatic group change based on VAT ID',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `IDX_CUSTOMER_ENTITY_STORE_ID` (`store_id`),
  KEY `IDX_CUSTOMER_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `IDX_CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_CUSTOMER_ENTITY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOMER_ENTITY_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity';

-- Dumping data for table mag.customer_entity: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_entity` ENABLE KEYS */;


-- Dumping structure for table mag.customer_entity_datetime
DROP TABLE IF EXISTS `customer_entity_datetime`;
CREATE TABLE IF NOT EXISTS `customer_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `FK_CSTR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Datetime';

-- Dumping data for table mag.customer_entity_datetime: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_entity_datetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_entity_datetime` ENABLE KEYS */;


-- Dumping structure for table mag.customer_entity_decimal
DROP TABLE IF EXISTS `customer_entity_decimal`;
CREATE TABLE IF NOT EXISTS `customer_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `FK_CSTR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Decimal';

-- Dumping data for table mag.customer_entity_decimal: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_entity_decimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_entity_decimal` ENABLE KEYS */;


-- Dumping structure for table mag.customer_entity_int
DROP TABLE IF EXISTS `customer_entity_int`;
CREATE TABLE IF NOT EXISTS `customer_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `FK_CSTR_ENTT_INT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOMER_ENTITY_INT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOMER_ENTITY_INT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Int';

-- Dumping data for table mag.customer_entity_int: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_entity_int` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_entity_int` ENABLE KEYS */;


-- Dumping structure for table mag.customer_entity_text
DROP TABLE IF EXISTS `customer_entity_text`;
CREATE TABLE IF NOT EXISTS `customer_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  CONSTRAINT `FK_CSTR_ENTT_TEXT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOMER_ENTITY_TEXT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Text';

-- Dumping data for table mag.customer_entity_text: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_entity_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_entity_text` ENABLE KEYS */;


-- Dumping structure for table mag.customer_entity_varchar
DROP TABLE IF EXISTS `customer_entity_varchar`;
CREATE TABLE IF NOT EXISTS `customer_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `FK_CSTR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Varchar';

-- Dumping data for table mag.customer_entity_varchar: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_entity_varchar` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_entity_varchar` ENABLE KEYS */;


-- Dumping structure for table mag.customer_form_attribute
DROP TABLE IF EXISTS `customer_form_attribute`;
CREATE TABLE IF NOT EXISTS `customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`form_code`,`attribute_id`),
  KEY `IDX_CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `FK_CSTR_FORM_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Form Attribute';

-- Dumping data for table mag.customer_form_attribute: ~94 rows (approximately)
/*!40000 ALTER TABLE `customer_form_attribute` DISABLE KEYS */;
INSERT INTO `customer_form_attribute` (`form_code`, `attribute_id`) VALUES
	('adminhtml_checkout', 9),
	('adminhtml_checkout', 10),
	('adminhtml_checkout', 11),
	('adminhtml_checkout', 15),
	('adminhtml_checkout', 18),
	('adminhtml_customer', 1),
	('adminhtml_customer', 3),
	('adminhtml_customer', 4),
	('adminhtml_customer', 5),
	('adminhtml_customer', 6),
	('adminhtml_customer', 7),
	('adminhtml_customer', 8),
	('adminhtml_customer', 9),
	('adminhtml_customer', 10),
	('adminhtml_customer', 11),
	('adminhtml_customer', 15),
	('adminhtml_customer', 17),
	('adminhtml_customer', 18),
	('adminhtml_customer', 35),
	('adminhtml_customer_address', 19),
	('adminhtml_customer_address', 20),
	('adminhtml_customer_address', 21),
	('adminhtml_customer_address', 22),
	('adminhtml_customer_address', 23),
	('adminhtml_customer_address', 24),
	('adminhtml_customer_address', 25),
	('adminhtml_customer_address', 26),
	('adminhtml_customer_address', 27),
	('adminhtml_customer_address', 28),
	('adminhtml_customer_address', 29),
	('adminhtml_customer_address', 30),
	('adminhtml_customer_address', 31),
	('adminhtml_customer_address', 32),
	('adminhtml_customer_address', 36),
	('checkout_register', 4),
	('checkout_register', 5),
	('checkout_register', 6),
	('checkout_register', 7),
	('checkout_register', 8),
	('checkout_register', 9),
	('checkout_register', 11),
	('checkout_register', 15),
	('checkout_register', 17),
	('checkout_register', 18),
	('customer_account_create', 4),
	('customer_account_create', 5),
	('customer_account_create', 6),
	('customer_account_create', 7),
	('customer_account_create', 8),
	('customer_account_create', 9),
	('customer_account_create', 11),
	('customer_account_create', 15),
	('customer_account_create', 17),
	('customer_account_create', 18),
	('customer_account_edit', 4),
	('customer_account_edit', 5),
	('customer_account_edit', 6),
	('customer_account_edit', 7),
	('customer_account_edit', 8),
	('customer_account_edit', 9),
	('customer_account_edit', 11),
	('customer_account_edit', 15),
	('customer_account_edit', 17),
	('customer_account_edit', 18),
	('customer_address_edit', 19),
	('customer_address_edit', 20),
	('customer_address_edit', 21),
	('customer_address_edit', 22),
	('customer_address_edit', 23),
	('customer_address_edit', 24),
	('customer_address_edit', 25),
	('customer_address_edit', 26),
	('customer_address_edit', 27),
	('customer_address_edit', 28),
	('customer_address_edit', 29),
	('customer_address_edit', 30),
	('customer_address_edit', 31),
	('customer_address_edit', 32),
	('customer_address_edit', 36),
	('customer_register_address', 19),
	('customer_register_address', 20),
	('customer_register_address', 21),
	('customer_register_address', 22),
	('customer_register_address', 23),
	('customer_register_address', 24),
	('customer_register_address', 25),
	('customer_register_address', 26),
	('customer_register_address', 27),
	('customer_register_address', 28),
	('customer_register_address', 29),
	('customer_register_address', 30),
	('customer_register_address', 31),
	('customer_register_address', 32),
	('customer_register_address', 36);
/*!40000 ALTER TABLE `customer_form_attribute` ENABLE KEYS */;


-- Dumping structure for table mag.customer_group
DROP TABLE IF EXISTS `customer_group`;
CREATE TABLE IF NOT EXISTS `customer_group` (
  `customer_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Customer Group Id',
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tax Class Id',
  PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Customer Group';

-- Dumping data for table mag.customer_group: ~4 rows (approximately)
/*!40000 ALTER TABLE `customer_group` DISABLE KEYS */;
INSERT INTO `customer_group` (`customer_group_id`, `customer_group_code`, `tax_class_id`) VALUES
	(0, 'NOT LOGGED IN', 3),
	(1, 'General', 3),
	(2, 'Wholesale', 3),
	(3, 'Retailer', 3);
/*!40000 ALTER TABLE `customer_group` ENABLE KEYS */;


-- Dumping structure for table mag.dataflow_batch
DROP TABLE IF EXISTS `dataflow_batch`;
CREATE TABLE IF NOT EXISTS `dataflow_batch` (
  `batch_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `adapter` varchar(128) DEFAULT NULL COMMENT 'Adapter',
  `params` text COMMENT 'Parameters',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`batch_id`),
  KEY `IDX_DATAFLOW_BATCH_PROFILE_ID` (`profile_id`),
  KEY `IDX_DATAFLOW_BATCH_STORE_ID` (`store_id`),
  KEY `IDX_DATAFLOW_BATCH_CREATED_AT` (`created_at`),
  CONSTRAINT `FK_DATAFLOW_BATCH_PROFILE_ID_DATAFLOW_PROFILE_PROFILE_ID` FOREIGN KEY (`profile_id`) REFERENCES `dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_DATAFLOW_BATCH_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch';

-- Dumping data for table mag.dataflow_batch: ~0 rows (approximately)
/*!40000 ALTER TABLE `dataflow_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataflow_batch` ENABLE KEYS */;


-- Dumping structure for table mag.dataflow_batch_export
DROP TABLE IF EXISTS `dataflow_batch_export`;
CREATE TABLE IF NOT EXISTS `dataflow_batch_export` (
  `batch_export_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Export Id',
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`batch_export_id`),
  KEY `IDX_DATAFLOW_BATCH_EXPORT_BATCH_ID` (`batch_id`),
  CONSTRAINT `FK_DATAFLOW_BATCH_EXPORT_BATCH_ID_DATAFLOW_BATCH_BATCH_ID` FOREIGN KEY (`batch_id`) REFERENCES `dataflow_batch` (`batch_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Export';

-- Dumping data for table mag.dataflow_batch_export: ~0 rows (approximately)
/*!40000 ALTER TABLE `dataflow_batch_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataflow_batch_export` ENABLE KEYS */;


-- Dumping structure for table mag.dataflow_batch_import
DROP TABLE IF EXISTS `dataflow_batch_import`;
CREATE TABLE IF NOT EXISTS `dataflow_batch_import` (
  `batch_import_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Import Id',
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`batch_import_id`),
  KEY `IDX_DATAFLOW_BATCH_IMPORT_BATCH_ID` (`batch_id`),
  CONSTRAINT `FK_DATAFLOW_BATCH_IMPORT_BATCH_ID_DATAFLOW_BATCH_BATCH_ID` FOREIGN KEY (`batch_id`) REFERENCES `dataflow_batch` (`batch_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Import';

-- Dumping data for table mag.dataflow_batch_import: ~0 rows (approximately)
/*!40000 ALTER TABLE `dataflow_batch_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataflow_batch_import` ENABLE KEYS */;


-- Dumping structure for table mag.dataflow_import_data
DROP TABLE IF EXISTS `dataflow_import_data`;
CREATE TABLE IF NOT EXISTS `dataflow_import_data` (
  `import_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Import Id',
  `session_id` int(11) DEFAULT NULL COMMENT 'Session Id',
  `serial_number` int(11) NOT NULL DEFAULT '0' COMMENT 'Serial Number',
  `value` text COMMENT 'Value',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`import_id`),
  KEY `IDX_DATAFLOW_IMPORT_DATA_SESSION_ID` (`session_id`),
  CONSTRAINT `FK_DATAFLOW_IMPORT_DATA_SESSION_ID_DATAFLOW_SESSION_SESSION_ID` FOREIGN KEY (`session_id`) REFERENCES `dataflow_session` (`session_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Import Data';

-- Dumping data for table mag.dataflow_import_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `dataflow_import_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataflow_import_data` ENABLE KEYS */;


-- Dumping structure for table mag.dataflow_profile
DROP TABLE IF EXISTS `dataflow_profile`;
CREATE TABLE IF NOT EXISTS `dataflow_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Profile Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `actions_xml` text COMMENT 'Actions Xml',
  `gui_data` text COMMENT 'Gui Data',
  `direction` varchar(6) DEFAULT NULL COMMENT 'Direction',
  `entity_type` varchar(64) DEFAULT NULL COMMENT 'Entity Type',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `data_transfer` varchar(11) DEFAULT NULL COMMENT 'Data Transfer',
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile';

-- Dumping data for table mag.dataflow_profile: ~6 rows (approximately)
/*!40000 ALTER TABLE `dataflow_profile` DISABLE KEYS */;
INSERT INTO `dataflow_profile` (`profile_id`, `name`, `created_at`, `updated_at`, `actions_xml`, `gui_data`, `direction`, `entity_type`, `store_id`, `data_transfer`) VALUES
	(1, 'Export All Products', '2014-10-10 10:03:06', '2014-10-10 10:03:06', '<action type="catalog/convert_adapter_product" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="catalog/convert_parser_product" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
	(2, 'Export Product Stocks', '2014-10-10 10:03:06', '2014-10-10 10:03:06', '<action type="catalog/convert_adapter_product" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="catalog/convert_parser_product" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:25:"export_product_stocks.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:4:"true";s:7:"product";a:2:{s:2:"db";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}s:4:"file";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
	(3, 'Import All Products', '2014-10-10 10:03:06', '2014-10-10 10:03:06', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">catalog/convert_adapter_product</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
	(4, 'Import Product Stocks', '2014-10-10 10:03:06', '2014-10-10 10:03:06', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">catalog/convert_adapter_product</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:18:"export_product.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
	(5, 'Export Customers', '2014-10-10 10:03:06', '2014-10-10 10:03:06', '<action type="customer/convert_adapter_customer" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="filter/adressType"><![CDATA[default_billing]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="customer/convert_parser_customer" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_customers.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:20:"export_customers.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'customer', 0, 'file'),
	(6, 'Import Customers', '2014-10-10 10:03:06', '2014-10-10 10:03:06', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">customer/convert_adapter_customer</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:19:"export_customer.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'customer', 0, 'interactive');
/*!40000 ALTER TABLE `dataflow_profile` ENABLE KEYS */;


-- Dumping structure for table mag.dataflow_profile_history
DROP TABLE IF EXISTS `dataflow_profile_history`;
CREATE TABLE IF NOT EXISTS `dataflow_profile_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `action_code` varchar(64) DEFAULT NULL COMMENT 'Action Code',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User Id',
  `performed_at` timestamp NULL DEFAULT NULL COMMENT 'Performed At',
  PRIMARY KEY (`history_id`),
  KEY `IDX_DATAFLOW_PROFILE_HISTORY_PROFILE_ID` (`profile_id`),
  CONSTRAINT `FK_AEA06B0C500063D3CE6EA671AE776645` FOREIGN KEY (`profile_id`) REFERENCES `dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile History';

-- Dumping data for table mag.dataflow_profile_history: ~6 rows (approximately)
/*!40000 ALTER TABLE `dataflow_profile_history` DISABLE KEYS */;
INSERT INTO `dataflow_profile_history` (`history_id`, `profile_id`, `action_code`, `user_id`, `performed_at`) VALUES
	(1, 1, 'create', 0, '2014-10-10 10:03:06'),
	(2, 2, 'create', 0, '2014-10-10 10:03:06'),
	(3, 3, 'create', 0, '2014-10-10 10:03:06'),
	(4, 4, 'create', 0, '2014-10-10 10:03:06'),
	(5, 5, 'create', 0, '2014-10-10 10:03:06'),
	(6, 6, 'create', 0, '2014-10-10 10:03:06');
/*!40000 ALTER TABLE `dataflow_profile_history` ENABLE KEYS */;


-- Dumping structure for table mag.dataflow_session
DROP TABLE IF EXISTS `dataflow_session`;
CREATE TABLE IF NOT EXISTS `dataflow_session` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Session Id',
  `user_id` int(11) NOT NULL COMMENT 'User Id',
  `created_date` timestamp NULL DEFAULT NULL COMMENT 'Created Date',
  `file` varchar(255) DEFAULT NULL COMMENT 'File',
  `type` varchar(32) DEFAULT NULL COMMENT 'Type',
  `direction` varchar(32) DEFAULT NULL COMMENT 'Direction',
  `comment` varchar(255) DEFAULT NULL COMMENT 'Comment',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Session';

-- Dumping data for table mag.dataflow_session: ~0 rows (approximately)
/*!40000 ALTER TABLE `dataflow_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataflow_session` ENABLE KEYS */;


-- Dumping structure for table mag.design_change
DROP TABLE IF EXISTS `design_change`;
CREATE TABLE IF NOT EXISTS `design_change` (
  `design_change_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Design Change Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity',
  PRIMARY KEY (`design_change_id`),
  KEY `IDX_DESIGN_CHANGE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_DESIGN_CHANGE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Design Changes';

-- Dumping data for table mag.design_change: ~0 rows (approximately)
/*!40000 ALTER TABLE `design_change` DISABLE KEYS */;
/*!40000 ALTER TABLE `design_change` ENABLE KEYS */;


-- Dumping structure for table mag.directory_country
DROP TABLE IF EXISTS `directory_country`;
CREATE TABLE IF NOT EXISTS `directory_country` (
  `country_id` varchar(2) NOT NULL DEFAULT '' COMMENT 'Country Id in ISO-2',
  `iso2_code` varchar(2) DEFAULT NULL COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) DEFAULT NULL COMMENT 'Country ISO-3',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country';

-- Dumping data for table mag.directory_country: ~246 rows (approximately)
/*!40000 ALTER TABLE `directory_country` DISABLE KEYS */;
INSERT INTO `directory_country` (`country_id`, `iso2_code`, `iso3_code`) VALUES
	('AD', 'AD', 'AND'),
	('AE', 'AE', 'ARE'),
	('AF', 'AF', 'AFG'),
	('AG', 'AG', 'ATG'),
	('AI', 'AI', 'AIA'),
	('AL', 'AL', 'ALB'),
	('AM', 'AM', 'ARM'),
	('AN', 'AN', 'ANT'),
	('AO', 'AO', 'AGO'),
	('AQ', 'AQ', 'ATA'),
	('AR', 'AR', 'ARG'),
	('AS', 'AS', 'ASM'),
	('AT', 'AT', 'AUT'),
	('AU', 'AU', 'AUS'),
	('AW', 'AW', 'ABW'),
	('AX', 'AX', 'ALA'),
	('AZ', 'AZ', 'AZE'),
	('BA', 'BA', 'BIH'),
	('BB', 'BB', 'BRB'),
	('BD', 'BD', 'BGD'),
	('BE', 'BE', 'BEL'),
	('BF', 'BF', 'BFA'),
	('BG', 'BG', 'BGR'),
	('BH', 'BH', 'BHR'),
	('BI', 'BI', 'BDI'),
	('BJ', 'BJ', 'BEN'),
	('BL', 'BL', 'BLM'),
	('BM', 'BM', 'BMU'),
	('BN', 'BN', 'BRN'),
	('BO', 'BO', 'BOL'),
	('BR', 'BR', 'BRA'),
	('BS', 'BS', 'BHS'),
	('BT', 'BT', 'BTN'),
	('BV', 'BV', 'BVT'),
	('BW', 'BW', 'BWA'),
	('BY', 'BY', 'BLR'),
	('BZ', 'BZ', 'BLZ'),
	('CA', 'CA', 'CAN'),
	('CC', 'CC', 'CCK'),
	('CD', 'CD', 'COD'),
	('CF', 'CF', 'CAF'),
	('CG', 'CG', 'COG'),
	('CH', 'CH', 'CHE'),
	('CI', 'CI', 'CIV'),
	('CK', 'CK', 'COK'),
	('CL', 'CL', 'CHL'),
	('CM', 'CM', 'CMR'),
	('CN', 'CN', 'CHN'),
	('CO', 'CO', 'COL'),
	('CR', 'CR', 'CRI'),
	('CU', 'CU', 'CUB'),
	('CV', 'CV', 'CPV'),
	('CX', 'CX', 'CXR'),
	('CY', 'CY', 'CYP'),
	('CZ', 'CZ', 'CZE'),
	('DE', 'DE', 'DEU'),
	('DJ', 'DJ', 'DJI'),
	('DK', 'DK', 'DNK'),
	('DM', 'DM', 'DMA'),
	('DO', 'DO', 'DOM'),
	('DZ', 'DZ', 'DZA'),
	('EC', 'EC', 'ECU'),
	('EE', 'EE', 'EST'),
	('EG', 'EG', 'EGY'),
	('EH', 'EH', 'ESH'),
	('ER', 'ER', 'ERI'),
	('ES', 'ES', 'ESP'),
	('ET', 'ET', 'ETH'),
	('FI', 'FI', 'FIN'),
	('FJ', 'FJ', 'FJI'),
	('FK', 'FK', 'FLK'),
	('FM', 'FM', 'FSM'),
	('FO', 'FO', 'FRO'),
	('FR', 'FR', 'FRA'),
	('GA', 'GA', 'GAB'),
	('GB', 'GB', 'GBR'),
	('GD', 'GD', 'GRD'),
	('GE', 'GE', 'GEO'),
	('GF', 'GF', 'GUF'),
	('GG', 'GG', 'GGY'),
	('GH', 'GH', 'GHA'),
	('GI', 'GI', 'GIB'),
	('GL', 'GL', 'GRL'),
	('GM', 'GM', 'GMB'),
	('GN', 'GN', 'GIN'),
	('GP', 'GP', 'GLP'),
	('GQ', 'GQ', 'GNQ'),
	('GR', 'GR', 'GRC'),
	('GS', 'GS', 'SGS'),
	('GT', 'GT', 'GTM'),
	('GU', 'GU', 'GUM'),
	('GW', 'GW', 'GNB'),
	('GY', 'GY', 'GUY'),
	('HK', 'HK', 'HKG'),
	('HM', 'HM', 'HMD'),
	('HN', 'HN', 'HND'),
	('HR', 'HR', 'HRV'),
	('HT', 'HT', 'HTI'),
	('HU', 'HU', 'HUN'),
	('ID', 'ID', 'IDN'),
	('IE', 'IE', 'IRL'),
	('IL', 'IL', 'ISR'),
	('IM', 'IM', 'IMN'),
	('IN', 'IN', 'IND'),
	('IO', 'IO', 'IOT'),
	('IQ', 'IQ', 'IRQ'),
	('IR', 'IR', 'IRN'),
	('IS', 'IS', 'ISL'),
	('IT', 'IT', 'ITA'),
	('JE', 'JE', 'JEY'),
	('JM', 'JM', 'JAM'),
	('JO', 'JO', 'JOR'),
	('JP', 'JP', 'JPN'),
	('KE', 'KE', 'KEN'),
	('KG', 'KG', 'KGZ'),
	('KH', 'KH', 'KHM'),
	('KI', 'KI', 'KIR'),
	('KM', 'KM', 'COM'),
	('KN', 'KN', 'KNA'),
	('KP', 'KP', 'PRK'),
	('KR', 'KR', 'KOR'),
	('KW', 'KW', 'KWT'),
	('KY', 'KY', 'CYM'),
	('KZ', 'KZ', 'KAZ'),
	('LA', 'LA', 'LAO'),
	('LB', 'LB', 'LBN'),
	('LC', 'LC', 'LCA'),
	('LI', 'LI', 'LIE'),
	('LK', 'LK', 'LKA'),
	('LR', 'LR', 'LBR'),
	('LS', 'LS', 'LSO'),
	('LT', 'LT', 'LTU'),
	('LU', 'LU', 'LUX'),
	('LV', 'LV', 'LVA'),
	('LY', 'LY', 'LBY'),
	('MA', 'MA', 'MAR'),
	('MC', 'MC', 'MCO'),
	('MD', 'MD', 'MDA'),
	('ME', 'ME', 'MNE'),
	('MF', 'MF', 'MAF'),
	('MG', 'MG', 'MDG'),
	('MH', 'MH', 'MHL'),
	('MK', 'MK', 'MKD'),
	('ML', 'ML', 'MLI'),
	('MM', 'MM', 'MMR'),
	('MN', 'MN', 'MNG'),
	('MO', 'MO', 'MAC'),
	('MP', 'MP', 'MNP'),
	('MQ', 'MQ', 'MTQ'),
	('MR', 'MR', 'MRT'),
	('MS', 'MS', 'MSR'),
	('MT', 'MT', 'MLT'),
	('MU', 'MU', 'MUS'),
	('MV', 'MV', 'MDV'),
	('MW', 'MW', 'MWI'),
	('MX', 'MX', 'MEX'),
	('MY', 'MY', 'MYS'),
	('MZ', 'MZ', 'MOZ'),
	('NA', 'NA', 'NAM'),
	('NC', 'NC', 'NCL'),
	('NE', 'NE', 'NER'),
	('NF', 'NF', 'NFK'),
	('NG', 'NG', 'NGA'),
	('NI', 'NI', 'NIC'),
	('NL', 'NL', 'NLD'),
	('NO', 'NO', 'NOR'),
	('NP', 'NP', 'NPL'),
	('NR', 'NR', 'NRU'),
	('NU', 'NU', 'NIU'),
	('NZ', 'NZ', 'NZL'),
	('OM', 'OM', 'OMN'),
	('PA', 'PA', 'PAN'),
	('PE', 'PE', 'PER'),
	('PF', 'PF', 'PYF'),
	('PG', 'PG', 'PNG'),
	('PH', 'PH', 'PHL'),
	('PK', 'PK', 'PAK'),
	('PL', 'PL', 'POL'),
	('PM', 'PM', 'SPM'),
	('PN', 'PN', 'PCN'),
	('PR', 'PR', 'PRI'),
	('PS', 'PS', 'PSE'),
	('PT', 'PT', 'PRT'),
	('PW', 'PW', 'PLW'),
	('PY', 'PY', 'PRY'),
	('QA', 'QA', 'QAT'),
	('RE', 'RE', 'REU'),
	('RO', 'RO', 'ROU'),
	('RS', 'RS', 'SRB'),
	('RU', 'RU', 'RUS'),
	('RW', 'RW', 'RWA'),
	('SA', 'SA', 'SAU'),
	('SB', 'SB', 'SLB'),
	('SC', 'SC', 'SYC'),
	('SD', 'SD', 'SDN'),
	('SE', 'SE', 'SWE'),
	('SG', 'SG', 'SGP'),
	('SH', 'SH', 'SHN'),
	('SI', 'SI', 'SVN'),
	('SJ', 'SJ', 'SJM'),
	('SK', 'SK', 'SVK'),
	('SL', 'SL', 'SLE'),
	('SM', 'SM', 'SMR'),
	('SN', 'SN', 'SEN'),
	('SO', 'SO', 'SOM'),
	('SR', 'SR', 'SUR'),
	('ST', 'ST', 'STP'),
	('SV', 'SV', 'SLV'),
	('SY', 'SY', 'SYR'),
	('SZ', 'SZ', 'SWZ'),
	('TC', 'TC', 'TCA'),
	('TD', 'TD', 'TCD'),
	('TF', 'TF', 'ATF'),
	('TG', 'TG', 'TGO'),
	('TH', 'TH', 'THA'),
	('TJ', 'TJ', 'TJK'),
	('TK', 'TK', 'TKL'),
	('TL', 'TL', 'TLS'),
	('TM', 'TM', 'TKM'),
	('TN', 'TN', 'TUN'),
	('TO', 'TO', 'TON'),
	('TR', 'TR', 'TUR'),
	('TT', 'TT', 'TTO'),
	('TV', 'TV', 'TUV'),
	('TW', 'TW', 'TWN'),
	('TZ', 'TZ', 'TZA'),
	('UA', 'UA', 'UKR'),
	('UG', 'UG', 'UGA'),
	('UM', 'UM', 'UMI'),
	('US', 'US', 'USA'),
	('UY', 'UY', 'URY'),
	('UZ', 'UZ', 'UZB'),
	('VA', 'VA', 'VAT'),
	('VC', 'VC', 'VCT'),
	('VE', 'VE', 'VEN'),
	('VG', 'VG', 'VGB'),
	('VI', 'VI', 'VIR'),
	('VN', 'VN', 'VNM'),
	('VU', 'VU', 'VUT'),
	('WF', 'WF', 'WLF'),
	('WS', 'WS', 'WSM'),
	('YE', 'YE', 'YEM'),
	('YT', 'YT', 'MYT'),
	('ZA', 'ZA', 'ZAF'),
	('ZM', 'ZM', 'ZMB'),
	('ZW', 'ZW', 'ZWE');
/*!40000 ALTER TABLE `directory_country` ENABLE KEYS */;


-- Dumping structure for table mag.directory_country_format
DROP TABLE IF EXISTS `directory_country_format`;
CREATE TABLE IF NOT EXISTS `directory_country_format` (
  `country_format_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Country Format Id',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id in ISO-2',
  `type` varchar(30) DEFAULT NULL COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format',
  PRIMARY KEY (`country_format_id`),
  UNIQUE KEY `UNQ_DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Format';

-- Dumping data for table mag.directory_country_format: ~0 rows (approximately)
/*!40000 ALTER TABLE `directory_country_format` DISABLE KEYS */;
/*!40000 ALTER TABLE `directory_country_format` ENABLE KEYS */;


-- Dumping structure for table mag.directory_country_region
DROP TABLE IF EXISTS `directory_country_region`;
CREATE TABLE IF NOT EXISTS `directory_country_region` (
  `region_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Region Id',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country Id in ISO-2',
  `code` varchar(32) DEFAULT NULL COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`region_id`),
  KEY `IDX_DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=485 DEFAULT CHARSET=utf8 COMMENT='Directory Country Region';

-- Dumping data for table mag.directory_country_region: ~367 rows (approximately)
/*!40000 ALTER TABLE `directory_country_region` DISABLE KEYS */;
INSERT INTO `directory_country_region` (`region_id`, `country_id`, `code`, `default_name`) VALUES
	(1, 'US', 'AL', 'Alabama'),
	(2, 'US', 'AK', 'Alaska'),
	(3, 'US', 'AS', 'American Samoa'),
	(4, 'US', 'AZ', 'Arizona'),
	(5, 'US', 'AR', 'Arkansas'),
	(6, 'US', 'AF', 'Armed Forces Africa'),
	(7, 'US', 'AA', 'Armed Forces Americas'),
	(8, 'US', 'AC', 'Armed Forces Canada'),
	(9, 'US', 'AE', 'Armed Forces Europe'),
	(10, 'US', 'AM', 'Armed Forces Middle East'),
	(11, 'US', 'AP', 'Armed Forces Pacific'),
	(12, 'US', 'CA', 'California'),
	(13, 'US', 'CO', 'Colorado'),
	(14, 'US', 'CT', 'Connecticut'),
	(15, 'US', 'DE', 'Delaware'),
	(16, 'US', 'DC', 'District of Columbia'),
	(17, 'US', 'FM', 'Federated States Of Micronesia'),
	(18, 'US', 'FL', 'Florida'),
	(19, 'US', 'GA', 'Georgia'),
	(20, 'US', 'GU', 'Guam'),
	(21, 'US', 'HI', 'Hawaii'),
	(22, 'US', 'ID', 'Idaho'),
	(23, 'US', 'IL', 'Illinois'),
	(24, 'US', 'IN', 'Indiana'),
	(25, 'US', 'IA', 'Iowa'),
	(26, 'US', 'KS', 'Kansas'),
	(27, 'US', 'KY', 'Kentucky'),
	(28, 'US', 'LA', 'Louisiana'),
	(29, 'US', 'ME', 'Maine'),
	(30, 'US', 'MH', 'Marshall Islands'),
	(31, 'US', 'MD', 'Maryland'),
	(32, 'US', 'MA', 'Massachusetts'),
	(33, 'US', 'MI', 'Michigan'),
	(34, 'US', 'MN', 'Minnesota'),
	(35, 'US', 'MS', 'Mississippi'),
	(36, 'US', 'MO', 'Missouri'),
	(37, 'US', 'MT', 'Montana'),
	(38, 'US', 'NE', 'Nebraska'),
	(39, 'US', 'NV', 'Nevada'),
	(40, 'US', 'NH', 'New Hampshire'),
	(41, 'US', 'NJ', 'New Jersey'),
	(42, 'US', 'NM', 'New Mexico'),
	(43, 'US', 'NY', 'New York'),
	(44, 'US', 'NC', 'North Carolina'),
	(45, 'US', 'ND', 'North Dakota'),
	(46, 'US', 'MP', 'Northern Mariana Islands'),
	(47, 'US', 'OH', 'Ohio'),
	(48, 'US', 'OK', 'Oklahoma'),
	(49, 'US', 'OR', 'Oregon'),
	(50, 'US', 'PW', 'Palau'),
	(51, 'US', 'PA', 'Pennsylvania'),
	(52, 'US', 'PR', 'Puerto Rico'),
	(53, 'US', 'RI', 'Rhode Island'),
	(54, 'US', 'SC', 'South Carolina'),
	(55, 'US', 'SD', 'South Dakota'),
	(56, 'US', 'TN', 'Tennessee'),
	(57, 'US', 'TX', 'Texas'),
	(58, 'US', 'UT', 'Utah'),
	(59, 'US', 'VT', 'Vermont'),
	(60, 'US', 'VI', 'Virgin Islands'),
	(61, 'US', 'VA', 'Virginia'),
	(62, 'US', 'WA', 'Washington'),
	(63, 'US', 'WV', 'West Virginia'),
	(64, 'US', 'WI', 'Wisconsin'),
	(65, 'US', 'WY', 'Wyoming'),
	(66, 'CA', 'AB', 'Alberta'),
	(67, 'CA', 'BC', 'British Columbia'),
	(68, 'CA', 'MB', 'Manitoba'),
	(69, 'CA', 'NL', 'Newfoundland and Labrador'),
	(70, 'CA', 'NB', 'New Brunswick'),
	(71, 'CA', 'NS', 'Nova Scotia'),
	(72, 'CA', 'NT', 'Northwest Territories'),
	(73, 'CA', 'NU', 'Nunavut'),
	(74, 'CA', 'ON', 'Ontario'),
	(75, 'CA', 'PE', 'Prince Edward Island'),
	(76, 'CA', 'QC', 'Quebec'),
	(77, 'CA', 'SK', 'Saskatchewan'),
	(78, 'CA', 'YT', 'Yukon Territory'),
	(79, 'DE', 'NDS', 'Niedersachsen'),
	(80, 'DE', 'BAW', 'Baden-Württemberg'),
	(81, 'DE', 'BAY', 'Bayern'),
	(82, 'DE', 'BER', 'Berlin'),
	(83, 'DE', 'BRG', 'Brandenburg'),
	(84, 'DE', 'BRE', 'Bremen'),
	(85, 'DE', 'HAM', 'Hamburg'),
	(86, 'DE', 'HES', 'Hessen'),
	(87, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
	(88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
	(89, 'DE', 'RHE', 'Rheinland-Pfalz'),
	(90, 'DE', 'SAR', 'Saarland'),
	(91, 'DE', 'SAS', 'Sachsen'),
	(92, 'DE', 'SAC', 'Sachsen-Anhalt'),
	(93, 'DE', 'SCN', 'Schleswig-Holstein'),
	(94, 'DE', 'THE', 'Thüringen'),
	(95, 'AT', 'WI', 'Wien'),
	(96, 'AT', 'NO', 'Niederösterreich'),
	(97, 'AT', 'OO', 'Oberösterreich'),
	(98, 'AT', 'SB', 'Salzburg'),
	(99, 'AT', 'KN', 'Kärnten'),
	(100, 'AT', 'ST', 'Steiermark'),
	(101, 'AT', 'TI', 'Tirol'),
	(102, 'AT', 'BL', 'Burgenland'),
	(103, 'AT', 'VB', 'Voralberg'),
	(104, 'CH', 'AG', 'Aargau'),
	(105, 'CH', 'AI', 'Appenzell Innerrhoden'),
	(106, 'CH', 'AR', 'Appenzell Ausserrhoden'),
	(107, 'CH', 'BE', 'Bern'),
	(108, 'CH', 'BL', 'Basel-Landschaft'),
	(109, 'CH', 'BS', 'Basel-Stadt'),
	(110, 'CH', 'FR', 'Freiburg'),
	(111, 'CH', 'GE', 'Genf'),
	(112, 'CH', 'GL', 'Glarus'),
	(113, 'CH', 'GR', 'Graubünden'),
	(114, 'CH', 'JU', 'Jura'),
	(115, 'CH', 'LU', 'Luzern'),
	(116, 'CH', 'NE', 'Neuenburg'),
	(117, 'CH', 'NW', 'Nidwalden'),
	(118, 'CH', 'OW', 'Obwalden'),
	(119, 'CH', 'SG', 'St. Gallen'),
	(120, 'CH', 'SH', 'Schaffhausen'),
	(121, 'CH', 'SO', 'Solothurn'),
	(122, 'CH', 'SZ', 'Schwyz'),
	(123, 'CH', 'TG', 'Thurgau'),
	(124, 'CH', 'TI', 'Tessin'),
	(125, 'CH', 'UR', 'Uri'),
	(126, 'CH', 'VD', 'Waadt'),
	(127, 'CH', 'VS', 'Wallis'),
	(128, 'CH', 'ZG', 'Zug'),
	(129, 'CH', 'ZH', 'Zürich'),
	(130, 'ES', 'A Coruсa', 'A Coruña'),
	(131, 'ES', 'Alava', 'Alava'),
	(132, 'ES', 'Albacete', 'Albacete'),
	(133, 'ES', 'Alicante', 'Alicante'),
	(134, 'ES', 'Almeria', 'Almeria'),
	(135, 'ES', 'Asturias', 'Asturias'),
	(136, 'ES', 'Avila', 'Avila'),
	(137, 'ES', 'Badajoz', 'Badajoz'),
	(138, 'ES', 'Baleares', 'Baleares'),
	(139, 'ES', 'Barcelona', 'Barcelona'),
	(140, 'ES', 'Burgos', 'Burgos'),
	(141, 'ES', 'Caceres', 'Caceres'),
	(142, 'ES', 'Cadiz', 'Cadiz'),
	(143, 'ES', 'Cantabria', 'Cantabria'),
	(144, 'ES', 'Castellon', 'Castellon'),
	(145, 'ES', 'Ceuta', 'Ceuta'),
	(146, 'ES', 'Ciudad Real', 'Ciudad Real'),
	(147, 'ES', 'Cordoba', 'Cordoba'),
	(148, 'ES', 'Cuenca', 'Cuenca'),
	(149, 'ES', 'Girona', 'Girona'),
	(150, 'ES', 'Granada', 'Granada'),
	(151, 'ES', 'Guadalajara', 'Guadalajara'),
	(152, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
	(153, 'ES', 'Huelva', 'Huelva'),
	(154, 'ES', 'Huesca', 'Huesca'),
	(155, 'ES', 'Jaen', 'Jaen'),
	(156, 'ES', 'La Rioja', 'La Rioja'),
	(157, 'ES', 'Las Palmas', 'Las Palmas'),
	(158, 'ES', 'Leon', 'Leon'),
	(159, 'ES', 'Lleida', 'Lleida'),
	(160, 'ES', 'Lugo', 'Lugo'),
	(161, 'ES', 'Madrid', 'Madrid'),
	(162, 'ES', 'Malaga', 'Malaga'),
	(163, 'ES', 'Melilla', 'Melilla'),
	(164, 'ES', 'Murcia', 'Murcia'),
	(165, 'ES', 'Navarra', 'Navarra'),
	(166, 'ES', 'Ourense', 'Ourense'),
	(167, 'ES', 'Palencia', 'Palencia'),
	(168, 'ES', 'Pontevedra', 'Pontevedra'),
	(169, 'ES', 'Salamanca', 'Salamanca'),
	(170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
	(171, 'ES', 'Segovia', 'Segovia'),
	(172, 'ES', 'Sevilla', 'Sevilla'),
	(173, 'ES', 'Soria', 'Soria'),
	(174, 'ES', 'Tarragona', 'Tarragona'),
	(175, 'ES', 'Teruel', 'Teruel'),
	(176, 'ES', 'Toledo', 'Toledo'),
	(177, 'ES', 'Valencia', 'Valencia'),
	(178, 'ES', 'Valladolid', 'Valladolid'),
	(179, 'ES', 'Vizcaya', 'Vizcaya'),
	(180, 'ES', 'Zamora', 'Zamora'),
	(181, 'ES', 'Zaragoza', 'Zaragoza'),
	(182, 'FR', '1', 'Ain'),
	(183, 'FR', '2', 'Aisne'),
	(184, 'FR', '3', 'Allier'),
	(185, 'FR', '4', 'Alpes-de-Haute-Provence'),
	(186, 'FR', '5', 'Hautes-Alpes'),
	(187, 'FR', '6', 'Alpes-Maritimes'),
	(188, 'FR', '7', 'Ardèche'),
	(189, 'FR', '8', 'Ardennes'),
	(190, 'FR', '9', 'Ariège'),
	(191, 'FR', '10', 'Aube'),
	(192, 'FR', '11', 'Aude'),
	(193, 'FR', '12', 'Aveyron'),
	(194, 'FR', '13', 'Bouches-du-Rhône'),
	(195, 'FR', '14', 'Calvados'),
	(196, 'FR', '15', 'Cantal'),
	(197, 'FR', '16', 'Charente'),
	(198, 'FR', '17', 'Charente-Maritime'),
	(199, 'FR', '18', 'Cher'),
	(200, 'FR', '19', 'Corrèze'),
	(201, 'FR', '2A', 'Corse-du-Sud'),
	(202, 'FR', '2B', 'Haute-Corse'),
	(203, 'FR', '21', 'Côte-d\'Or'),
	(204, 'FR', '22', 'Côtes-d\'Armor'),
	(205, 'FR', '23', 'Creuse'),
	(206, 'FR', '24', 'Dordogne'),
	(207, 'FR', '25', 'Doubs'),
	(208, 'FR', '26', 'Drôme'),
	(209, 'FR', '27', 'Eure'),
	(210, 'FR', '28', 'Eure-et-Loir'),
	(211, 'FR', '29', 'Finistère'),
	(212, 'FR', '30', 'Gard'),
	(213, 'FR', '31', 'Haute-Garonne'),
	(214, 'FR', '32', 'Gers'),
	(215, 'FR', '33', 'Gironde'),
	(216, 'FR', '34', 'Hérault'),
	(217, 'FR', '35', 'Ille-et-Vilaine'),
	(218, 'FR', '36', 'Indre'),
	(219, 'FR', '37', 'Indre-et-Loire'),
	(220, 'FR', '38', 'Isère'),
	(221, 'FR', '39', 'Jura'),
	(222, 'FR', '40', 'Landes'),
	(223, 'FR', '41', 'Loir-et-Cher'),
	(224, 'FR', '42', 'Loire'),
	(225, 'FR', '43', 'Haute-Loire'),
	(226, 'FR', '44', 'Loire-Atlantique'),
	(227, 'FR', '45', 'Loiret'),
	(228, 'FR', '46', 'Lot'),
	(229, 'FR', '47', 'Lot-et-Garonne'),
	(230, 'FR', '48', 'Lozère'),
	(231, 'FR', '49', 'Maine-et-Loire'),
	(232, 'FR', '50', 'Manche'),
	(233, 'FR', '51', 'Marne'),
	(234, 'FR', '52', 'Haute-Marne'),
	(235, 'FR', '53', 'Mayenne'),
	(236, 'FR', '54', 'Meurthe-et-Moselle'),
	(237, 'FR', '55', 'Meuse'),
	(238, 'FR', '56', 'Morbihan'),
	(239, 'FR', '57', 'Moselle'),
	(240, 'FR', '58', 'Nièvre'),
	(241, 'FR', '59', 'Nord'),
	(242, 'FR', '60', 'Oise'),
	(243, 'FR', '61', 'Orne'),
	(244, 'FR', '62', 'Pas-de-Calais'),
	(245, 'FR', '63', 'Puy-de-Dôme'),
	(246, 'FR', '64', 'Pyrénées-Atlantiques'),
	(247, 'FR', '65', 'Hautes-Pyrénées'),
	(248, 'FR', '66', 'Pyrénées-Orientales'),
	(249, 'FR', '67', 'Bas-Rhin'),
	(250, 'FR', '68', 'Haut-Rhin'),
	(251, 'FR', '69', 'Rhône'),
	(252, 'FR', '70', 'Haute-Saône'),
	(253, 'FR', '71', 'Saône-et-Loire'),
	(254, 'FR', '72', 'Sarthe'),
	(255, 'FR', '73', 'Savoie'),
	(256, 'FR', '74', 'Haute-Savoie'),
	(257, 'FR', '75', 'Paris'),
	(258, 'FR', '76', 'Seine-Maritime'),
	(259, 'FR', '77', 'Seine-et-Marne'),
	(260, 'FR', '78', 'Yvelines'),
	(261, 'FR', '79', 'Deux-Sèvres'),
	(262, 'FR', '80', 'Somme'),
	(263, 'FR', '81', 'Tarn'),
	(264, 'FR', '82', 'Tarn-et-Garonne'),
	(265, 'FR', '83', 'Var'),
	(266, 'FR', '84', 'Vaucluse'),
	(267, 'FR', '85', 'Vendée'),
	(268, 'FR', '86', 'Vienne'),
	(269, 'FR', '87', 'Haute-Vienne'),
	(270, 'FR', '88', 'Vosges'),
	(271, 'FR', '89', 'Yonne'),
	(272, 'FR', '90', 'Territoire-de-Belfort'),
	(273, 'FR', '91', 'Essonne'),
	(274, 'FR', '92', 'Hauts-de-Seine'),
	(275, 'FR', '93', 'Seine-Saint-Denis'),
	(276, 'FR', '94', 'Val-de-Marne'),
	(277, 'FR', '95', 'Val-d\'Oise'),
	(278, 'RO', 'AB', 'Alba'),
	(279, 'RO', 'AR', 'Arad'),
	(280, 'RO', 'AG', 'Argeş'),
	(281, 'RO', 'BC', 'Bacău'),
	(282, 'RO', 'BH', 'Bihor'),
	(283, 'RO', 'BN', 'Bistriţa-Năsăud'),
	(284, 'RO', 'BT', 'Botoşani'),
	(285, 'RO', 'BV', 'Braşov'),
	(286, 'RO', 'BR', 'Brăila'),
	(287, 'RO', 'B', 'Bucureşti'),
	(288, 'RO', 'BZ', 'Buzău'),
	(289, 'RO', 'CS', 'Caraş-Severin'),
	(290, 'RO', 'CL', 'Călăraşi'),
	(291, 'RO', 'CJ', 'Cluj'),
	(292, 'RO', 'CT', 'Constanţa'),
	(293, 'RO', 'CV', 'Covasna'),
	(294, 'RO', 'DB', 'Dâmboviţa'),
	(295, 'RO', 'DJ', 'Dolj'),
	(296, 'RO', 'GL', 'Galaţi'),
	(297, 'RO', 'GR', 'Giurgiu'),
	(298, 'RO', 'GJ', 'Gorj'),
	(299, 'RO', 'HR', 'Harghita'),
	(300, 'RO', 'HD', 'Hunedoara'),
	(301, 'RO', 'IL', 'Ialomiţa'),
	(302, 'RO', 'IS', 'Iaşi'),
	(303, 'RO', 'IF', 'Ilfov'),
	(304, 'RO', 'MM', 'Maramureş'),
	(305, 'RO', 'MH', 'Mehedinţi'),
	(306, 'RO', 'MS', 'Mureş'),
	(307, 'RO', 'NT', 'Neamţ'),
	(308, 'RO', 'OT', 'Olt'),
	(309, 'RO', 'PH', 'Prahova'),
	(310, 'RO', 'SM', 'Satu-Mare'),
	(311, 'RO', 'SJ', 'Sălaj'),
	(312, 'RO', 'SB', 'Sibiu'),
	(313, 'RO', 'SV', 'Suceava'),
	(314, 'RO', 'TR', 'Teleorman'),
	(315, 'RO', 'TM', 'Timiş'),
	(316, 'RO', 'TL', 'Tulcea'),
	(317, 'RO', 'VS', 'Vaslui'),
	(318, 'RO', 'VL', 'Vâlcea'),
	(319, 'RO', 'VN', 'Vrancea'),
	(320, 'FI', 'Lappi', 'Lappi'),
	(321, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
	(322, 'FI', 'Kainuu', 'Kainuu'),
	(323, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
	(324, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
	(325, 'FI', 'Etelä-Savo', 'Etelä-Savo'),
	(326, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa'),
	(327, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
	(328, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
	(329, 'FI', 'Satakunta', 'Satakunta'),
	(330, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
	(331, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
	(332, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
	(333, 'FI', 'Etelä-Karjala', 'Etelä-Karjala'),
	(334, 'FI', 'Päijät-Häme', 'Päijät-Häme'),
	(335, 'FI', 'Kanta-Häme', 'Kanta-Häme'),
	(336, 'FI', 'Uusimaa', 'Uusimaa'),
	(337, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa'),
	(338, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
	(339, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
	(340, 'EE', 'EE-37', 'Harjumaa'),
	(341, 'EE', 'EE-39', 'Hiiumaa'),
	(342, 'EE', 'EE-44', 'Ida-Virumaa'),
	(343, 'EE', 'EE-49', 'Jõgevamaa'),
	(344, 'EE', 'EE-51', 'Järvamaa'),
	(345, 'EE', 'EE-57', 'Läänemaa'),
	(346, 'EE', 'EE-59', 'Lääne-Virumaa'),
	(347, 'EE', 'EE-65', 'Põlvamaa'),
	(348, 'EE', 'EE-67', 'Pärnumaa'),
	(349, 'EE', 'EE-70', 'Raplamaa'),
	(350, 'EE', 'EE-74', 'Saaremaa'),
	(351, 'EE', 'EE-78', 'Tartumaa'),
	(352, 'EE', 'EE-82', 'Valgamaa'),
	(353, 'EE', 'EE-84', 'Viljandimaa'),
	(354, 'EE', 'EE-86', 'Võrumaa'),
	(355, 'LV', 'LV-DGV', 'Daugavpils'),
	(356, 'LV', 'LV-JEL', 'Jelgava'),
	(357, 'LV', 'Jēkabpils', 'Jēkabpils'),
	(358, 'LV', 'LV-JUR', 'Jūrmala'),
	(359, 'LV', 'LV-LPX', 'Liepāja'),
	(360, 'LV', 'LV-LE', 'Liepājas novads'),
	(361, 'LV', 'LV-REZ', 'Rēzekne'),
	(362, 'LV', 'LV-RIX', 'Rīga'),
	(363, 'LV', 'LV-RI', 'Rīgas novads'),
	(364, 'LV', 'Valmiera', 'Valmiera'),
	(365, 'LV', 'LV-VEN', 'Ventspils'),
	(366, 'LV', 'Aglonas novads', 'Aglonas novads'),
	(367, 'LV', 'LV-AI', 'Aizkraukles novads'),
	(368, 'LV', 'Aizputes novads', 'Aizputes novads'),
	(369, 'LV', 'Aknīstes novads', 'Aknīstes novads'),
	(370, 'LV', 'Alojas novads', 'Alojas novads'),
	(371, 'LV', 'Alsungas novads', 'Alsungas novads'),
	(372, 'LV', 'LV-AL', 'Alūksnes novads'),
	(373, 'LV', 'Amatas novads', 'Amatas novads'),
	(374, 'LV', 'Apes novads', 'Apes novads'),
	(375, 'LV', 'Auces novads', 'Auces novads'),
	(376, 'LV', 'Babītes novads', 'Babītes novads'),
	(377, 'LV', 'Baldones novads', 'Baldones novads'),
	(378, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
	(379, 'LV', 'LV-BL', 'Balvu novads'),
	(380, 'LV', 'LV-BU', 'Bauskas novads'),
	(381, 'LV', 'Beverīnas novads', 'Beverīnas novads'),
	(382, 'LV', 'Brocēnu novads', 'Brocēnu novads'),
	(383, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
	(384, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
	(385, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
	(386, 'LV', 'Ciblas novads', 'Ciblas novads'),
	(387, 'LV', 'LV-CE', 'Cēsu novads'),
	(388, 'LV', 'Dagdas novads', 'Dagdas novads'),
	(389, 'LV', 'LV-DA', 'Daugavpils novads'),
	(390, 'LV', 'LV-DO', 'Dobeles novads'),
	(391, 'LV', 'Dundagas novads', 'Dundagas novads'),
	(392, 'LV', 'Durbes novads', 'Durbes novads'),
	(393, 'LV', 'Engures novads', 'Engures novads'),
	(394, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
	(395, 'LV', 'Grobiņas novads', 'Grobiņas novads'),
	(396, 'LV', 'LV-GU', 'Gulbenes novads'),
	(397, 'LV', 'Iecavas novads', 'Iecavas novads'),
	(398, 'LV', 'Ikšķiles novads', 'Ikšķiles novads'),
	(399, 'LV', 'Ilūkstes novads', 'Ilūkstes novads'),
	(400, 'LV', 'Inčukalna novads', 'Inčukalna novads'),
	(401, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
	(402, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
	(403, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
	(404, 'LV', 'LV-JL', 'Jelgavas novads'),
	(405, 'LV', 'LV-JK', 'Jēkabpils novads'),
	(406, 'LV', 'Kandavas novads', 'Kandavas novads'),
	(407, 'LV', 'Kokneses novads', 'Kokneses novads'),
	(408, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
	(409, 'LV', 'Krustpils novads', 'Krustpils novads'),
	(410, 'LV', 'LV-KR', 'Krāslavas novads'),
	(411, 'LV', 'LV-KU', 'Kuldīgas novads'),
	(412, 'LV', 'Kārsavas novads', 'Kārsavas novads'),
	(413, 'LV', 'Lielvārdes novads', 'Lielvārdes novads'),
	(414, 'LV', 'LV-LM', 'Limbažu novads'),
	(415, 'LV', 'Lubānas novads', 'Lubānas novads'),
	(416, 'LV', 'LV-LU', 'Ludzas novads'),
	(417, 'LV', 'Līgatnes novads', 'Līgatnes novads'),
	(418, 'LV', 'Līvānu novads', 'Līvānu novads'),
	(419, 'LV', 'LV-MA', 'Madonas novads'),
	(420, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
	(421, 'LV', 'Mālpils novads', 'Mālpils novads'),
	(422, 'LV', 'Mārupes novads', 'Mārupes novads'),
	(423, 'LV', 'Naukšēnu novads', 'Naukšēnu novads'),
	(424, 'LV', 'Neretas novads', 'Neretas novads'),
	(425, 'LV', 'Nīcas novads', 'Nīcas novads'),
	(426, 'LV', 'LV-OG', 'Ogres novads'),
	(427, 'LV', 'Olaines novads', 'Olaines novads'),
	(428, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
	(429, 'LV', 'LV-PR', 'Preiļu novads'),
	(430, 'LV', 'Priekules novads', 'Priekules novads'),
	(431, 'LV', 'Priekuļu novads', 'Priekuļu novads'),
	(432, 'LV', 'Pārgaujas novads', 'Pārgaujas novads'),
	(433, 'LV', 'Pāvilostas novads', 'Pāvilostas novads'),
	(434, 'LV', 'Pļaviņu novads', 'Pļaviņu novads'),
	(435, 'LV', 'Raunas novads', 'Raunas novads'),
	(436, 'LV', 'Riebiņu novads', 'Riebiņu novads'),
	(437, 'LV', 'Rojas novads', 'Rojas novads'),
	(438, 'LV', 'Ropažu novads', 'Ropažu novads'),
	(439, 'LV', 'Rucavas novads', 'Rucavas novads'),
	(440, 'LV', 'Rugāju novads', 'Rugāju novads'),
	(441, 'LV', 'Rundāles novads', 'Rundāles novads'),
	(442, 'LV', 'LV-RE', 'Rēzeknes novads'),
	(443, 'LV', 'Rūjienas novads', 'Rūjienas novads'),
	(444, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads'),
	(445, 'LV', 'Salas novads', 'Salas novads'),
	(446, 'LV', 'Salaspils novads', 'Salaspils novads'),
	(447, 'LV', 'LV-SA', 'Saldus novads'),
	(448, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
	(449, 'LV', 'Siguldas novads', 'Siguldas novads'),
	(450, 'LV', 'Skrundas novads', 'Skrundas novads'),
	(451, 'LV', 'Skrīveru novads', 'Skrīveru novads'),
	(452, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
	(453, 'LV', 'Stopiņu novads', 'Stopiņu novads'),
	(454, 'LV', 'Strenču novads', 'Strenču novads'),
	(455, 'LV', 'Sējas novads', 'Sējas novads'),
	(456, 'LV', 'LV-TA', 'Talsu novads'),
	(457, 'LV', 'LV-TU', 'Tukuma novads'),
	(458, 'LV', 'Tērvetes novads', 'Tērvetes novads'),
	(459, 'LV', 'Vaiņodes novads', 'Vaiņodes novads'),
	(460, 'LV', 'LV-VK', 'Valkas novads'),
	(461, 'LV', 'LV-VM', 'Valmieras novads'),
	(462, 'LV', 'Varakļānu novads', 'Varakļānu novads'),
	(463, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
	(464, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
	(465, 'LV', 'LV-VE', 'Ventspils novads'),
	(466, 'LV', 'Viesītes novads', 'Viesītes novads'),
	(467, 'LV', 'Viļakas novads', 'Viļakas novads'),
	(468, 'LV', 'Viļānu novads', 'Viļānu novads'),
	(469, 'LV', 'Vārkavas novads', 'Vārkavas novads'),
	(470, 'LV', 'Zilupes novads', 'Zilupes novads'),
	(471, 'LV', 'Ādažu novads', 'Ādažu novads'),
	(472, 'LV', 'Ērgļu novads', 'Ērgļu novads'),
	(473, 'LV', 'Ķeguma novads', 'Ķeguma novads'),
	(474, 'LV', 'Ķekavas novads', 'Ķekavas novads'),
	(475, 'LT', 'LT-AL', 'Alytaus Apskritis'),
	(476, 'LT', 'LT-KU', 'Kauno Apskritis'),
	(477, 'LT', 'LT-KL', 'Klaipėdos Apskritis'),
	(478, 'LT', 'LT-MR', 'Marijampolės Apskritis'),
	(479, 'LT', 'LT-PN', 'Panevėžio Apskritis'),
	(480, 'LT', 'LT-SA', 'Šiaulių Apskritis'),
	(481, 'LT', 'LT-TA', 'Tauragės Apskritis'),
	(482, 'LT', 'LT-TE', 'Telšių Apskritis'),
	(483, 'LT', 'LT-UT', 'Utenos Apskritis'),
	(484, 'LT', 'LT-VL', 'Vilniaus Apskritis');
/*!40000 ALTER TABLE `directory_country_region` ENABLE KEYS */;


-- Dumping structure for table mag.directory_country_region_name
DROP TABLE IF EXISTS `directory_country_region_name`;
CREATE TABLE IF NOT EXISTS `directory_country_region_name` (
  `locale` varchar(8) NOT NULL DEFAULT '' COMMENT 'Locale',
  `region_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Region Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`locale`,`region_id`),
  KEY `IDX_DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`),
  CONSTRAINT `FK_D7CFDEB379F775328EB6F62695E2B3E1` FOREIGN KEY (`region_id`) REFERENCES `directory_country_region` (`region_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region Name';

-- Dumping data for table mag.directory_country_region_name: ~381 rows (approximately)
/*!40000 ALTER TABLE `directory_country_region_name` DISABLE KEYS */;
INSERT INTO `directory_country_region_name` (`locale`, `region_id`, `name`) VALUES
	('en_US', 1, 'Alabama'),
	('en_US', 2, 'Alaska'),
	('en_US', 3, 'American Samoa'),
	('en_US', 4, 'Arizona'),
	('en_US', 5, 'Arkansas'),
	('en_US', 6, 'Armed Forces Africa'),
	('en_US', 7, 'Armed Forces Americas'),
	('en_US', 8, 'Armed Forces Canada'),
	('en_US', 9, 'Armed Forces Europe'),
	('en_US', 10, 'Armed Forces Middle East'),
	('en_US', 11, 'Armed Forces Pacific'),
	('en_US', 12, 'California'),
	('en_US', 13, 'Colorado'),
	('en_US', 14, 'Connecticut'),
	('en_US', 15, 'Delaware'),
	('en_US', 16, 'District of Columbia'),
	('en_US', 17, 'Federated States Of Micronesia'),
	('en_US', 18, 'Florida'),
	('en_US', 19, 'Georgia'),
	('en_US', 20, 'Guam'),
	('en_US', 21, 'Hawaii'),
	('en_US', 22, 'Idaho'),
	('en_US', 23, 'Illinois'),
	('en_US', 24, 'Indiana'),
	('en_US', 25, 'Iowa'),
	('en_US', 26, 'Kansas'),
	('en_US', 27, 'Kentucky'),
	('en_US', 28, 'Louisiana'),
	('en_US', 29, 'Maine'),
	('en_US', 30, 'Marshall Islands'),
	('en_US', 31, 'Maryland'),
	('en_US', 32, 'Massachusetts'),
	('en_US', 33, 'Michigan'),
	('en_US', 34, 'Minnesota'),
	('en_US', 35, 'Mississippi'),
	('en_US', 36, 'Missouri'),
	('en_US', 37, 'Montana'),
	('en_US', 38, 'Nebraska'),
	('en_US', 39, 'Nevada'),
	('en_US', 40, 'New Hampshire'),
	('en_US', 41, 'New Jersey'),
	('en_US', 42, 'New Mexico'),
	('en_US', 43, 'New York'),
	('en_US', 44, 'North Carolina'),
	('en_US', 45, 'North Dakota'),
	('en_US', 46, 'Northern Mariana Islands'),
	('en_US', 47, 'Ohio'),
	('en_US', 48, 'Oklahoma'),
	('en_US', 49, 'Oregon'),
	('en_US', 50, 'Palau'),
	('en_US', 51, 'Pennsylvania'),
	('en_US', 52, 'Puerto Rico'),
	('en_US', 53, 'Rhode Island'),
	('en_US', 54, 'South Carolina'),
	('en_US', 55, 'South Dakota'),
	('en_US', 56, 'Tennessee'),
	('en_US', 57, 'Texas'),
	('en_US', 58, 'Utah'),
	('en_US', 59, 'Vermont'),
	('en_US', 60, 'Virgin Islands'),
	('en_US', 61, 'Virginia'),
	('en_US', 62, 'Washington'),
	('en_US', 63, 'West Virginia'),
	('en_US', 64, 'Wisconsin'),
	('en_US', 65, 'Wyoming'),
	('en_US', 66, 'Alberta'),
	('en_US', 67, 'British Columbia'),
	('en_US', 68, 'Manitoba'),
	('en_US', 69, 'Newfoundland and Labrador'),
	('en_US', 70, 'New Brunswick'),
	('en_US', 71, 'Nova Scotia'),
	('en_US', 72, 'Northwest Territories'),
	('en_US', 73, 'Nunavut'),
	('en_US', 74, 'Ontario'),
	('en_US', 75, 'Prince Edward Island'),
	('en_US', 76, 'Quebec'),
	('en_US', 77, 'Saskatchewan'),
	('en_US', 78, 'Yukon Territory'),
	('en_US', 79, 'Niedersachsen'),
	('en_US', 80, 'Baden-Württemberg'),
	('en_US', 81, 'Bayern'),
	('en_US', 82, 'Berlin'),
	('en_US', 83, 'Brandenburg'),
	('en_US', 84, 'Bremen'),
	('en_US', 85, 'Hamburg'),
	('en_US', 86, 'Hessen'),
	('en_US', 87, 'Mecklenburg-Vorpommern'),
	('en_US', 88, 'Nordrhein-Westfalen'),
	('en_US', 89, 'Rheinland-Pfalz'),
	('en_US', 90, 'Saarland'),
	('en_US', 91, 'Sachsen'),
	('en_US', 92, 'Sachsen-Anhalt'),
	('en_US', 93, 'Schleswig-Holstein'),
	('en_US', 94, 'Thüringen'),
	('en_US', 95, 'Wien'),
	('en_US', 96, 'Niederösterreich'),
	('en_US', 97, 'Oberösterreich'),
	('en_US', 98, 'Salzburg'),
	('en_US', 99, 'Kärnten'),
	('en_US', 100, 'Steiermark'),
	('en_US', 101, 'Tirol'),
	('en_US', 102, 'Burgenland'),
	('en_US', 103, 'Voralberg'),
	('en_US', 104, 'Aargau'),
	('en_US', 105, 'Appenzell Innerrhoden'),
	('en_US', 106, 'Appenzell Ausserrhoden'),
	('en_US', 107, 'Bern'),
	('en_US', 108, 'Basel-Landschaft'),
	('en_US', 109, 'Basel-Stadt'),
	('en_US', 110, 'Freiburg'),
	('en_US', 111, 'Genf'),
	('en_US', 112, 'Glarus'),
	('en_US', 113, 'Graubünden'),
	('en_US', 114, 'Jura'),
	('en_US', 115, 'Luzern'),
	('en_US', 116, 'Neuenburg'),
	('en_US', 117, 'Nidwalden'),
	('en_US', 118, 'Obwalden'),
	('en_US', 119, 'St. Gallen'),
	('en_US', 120, 'Schaffhausen'),
	('en_US', 121, 'Solothurn'),
	('en_US', 122, 'Schwyz'),
	('en_US', 123, 'Thurgau'),
	('en_US', 124, 'Tessin'),
	('en_US', 125, 'Uri'),
	('en_US', 126, 'Waadt'),
	('en_US', 127, 'Wallis'),
	('en_US', 128, 'Zug'),
	('en_US', 129, 'Zürich'),
	('en_US', 130, 'A Coruña'),
	('en_US', 131, 'Alava'),
	('en_US', 132, 'Albacete'),
	('en_US', 133, 'Alicante'),
	('en_US', 134, 'Almeria'),
	('en_US', 135, 'Asturias'),
	('en_US', 136, 'Avila'),
	('en_US', 137, 'Badajoz'),
	('en_US', 138, 'Baleares'),
	('en_US', 139, 'Barcelona'),
	('en_US', 140, 'Burgos'),
	('en_US', 141, 'Caceres'),
	('en_US', 142, 'Cadiz'),
	('en_US', 143, 'Cantabria'),
	('en_US', 144, 'Castellon'),
	('en_US', 145, 'Ceuta'),
	('en_US', 146, 'Ciudad Real'),
	('en_US', 147, 'Cordoba'),
	('en_US', 148, 'Cuenca'),
	('en_US', 149, 'Girona'),
	('en_US', 150, 'Granada'),
	('en_US', 151, 'Guadalajara'),
	('en_US', 152, 'Guipuzcoa'),
	('en_US', 153, 'Huelva'),
	('en_US', 154, 'Huesca'),
	('en_US', 155, 'Jaen'),
	('en_US', 156, 'La Rioja'),
	('en_US', 157, 'Las Palmas'),
	('en_US', 158, 'Leon'),
	('en_US', 159, 'Lleida'),
	('en_US', 160, 'Lugo'),
	('en_US', 161, 'Madrid'),
	('en_US', 162, 'Malaga'),
	('en_US', 163, 'Melilla'),
	('en_US', 164, 'Murcia'),
	('en_US', 165, 'Navarra'),
	('en_US', 166, 'Ourense'),
	('en_US', 167, 'Palencia'),
	('en_US', 168, 'Pontevedra'),
	('en_US', 169, 'Salamanca'),
	('en_US', 170, 'Santa Cruz de Tenerife'),
	('en_US', 171, 'Segovia'),
	('en_US', 172, 'Sevilla'),
	('en_US', 173, 'Soria'),
	('en_US', 174, 'Tarragona'),
	('en_US', 175, 'Teruel'),
	('en_US', 176, 'Toledo'),
	('en_US', 177, 'Valencia'),
	('en_US', 178, 'Valladolid'),
	('en_US', 179, 'Vizcaya'),
	('en_US', 180, 'Zamora'),
	('en_US', 181, 'Zaragoza'),
	('en_US', 182, 'Ain'),
	('en_US', 183, 'Aisne'),
	('en_US', 184, 'Allier'),
	('en_US', 185, 'Alpes-de-Haute-Provence'),
	('en_US', 186, 'Hautes-Alpes'),
	('en_US', 187, 'Alpes-Maritimes'),
	('en_US', 188, 'Ardèche'),
	('en_US', 189, 'Ardennes'),
	('en_US', 190, 'Ariège'),
	('en_US', 191, 'Aube'),
	('en_US', 192, 'Aude'),
	('en_US', 193, 'Aveyron'),
	('en_US', 194, 'Bouches-du-Rhône'),
	('en_US', 195, 'Calvados'),
	('en_US', 196, 'Cantal'),
	('en_US', 197, 'Charente'),
	('en_US', 198, 'Charente-Maritime'),
	('en_US', 199, 'Cher'),
	('en_US', 200, 'Corrèze'),
	('en_US', 201, 'Corse-du-Sud'),
	('en_US', 202, 'Haute-Corse'),
	('en_US', 203, 'Côte-d\'Or'),
	('en_US', 204, 'Côtes-d\'Armor'),
	('en_US', 205, 'Creuse'),
	('en_US', 206, 'Dordogne'),
	('en_US', 207, 'Doubs'),
	('en_US', 208, 'Drôme'),
	('en_US', 209, 'Eure'),
	('en_US', 210, 'Eure-et-Loir'),
	('en_US', 211, 'Finistère'),
	('en_US', 212, 'Gard'),
	('en_US', 213, 'Haute-Garonne'),
	('en_US', 214, 'Gers'),
	('en_US', 215, 'Gironde'),
	('en_US', 216, 'Hérault'),
	('en_US', 217, 'Ille-et-Vilaine'),
	('en_US', 218, 'Indre'),
	('en_US', 219, 'Indre-et-Loire'),
	('en_US', 220, 'Isère'),
	('en_US', 221, 'Jura'),
	('en_US', 222, 'Landes'),
	('en_US', 223, 'Loir-et-Cher'),
	('en_US', 224, 'Loire'),
	('en_US', 225, 'Haute-Loire'),
	('en_US', 226, 'Loire-Atlantique'),
	('en_US', 227, 'Loiret'),
	('en_US', 228, 'Lot'),
	('en_US', 229, 'Lot-et-Garonne'),
	('en_US', 230, 'Lozère'),
	('en_US', 231, 'Maine-et-Loire'),
	('en_US', 232, 'Manche'),
	('en_US', 233, 'Marne'),
	('en_US', 234, 'Haute-Marne'),
	('en_US', 235, 'Mayenne'),
	('en_US', 236, 'Meurthe-et-Moselle'),
	('en_US', 237, 'Meuse'),
	('en_US', 238, 'Morbihan'),
	('en_US', 239, 'Moselle'),
	('en_US', 240, 'Nièvre'),
	('en_US', 241, 'Nord'),
	('en_US', 242, 'Oise'),
	('en_US', 243, 'Orne'),
	('en_US', 244, 'Pas-de-Calais'),
	('en_US', 245, 'Puy-de-Dôme'),
	('en_US', 246, 'Pyrénées-Atlantiques'),
	('en_US', 247, 'Hautes-Pyrénées'),
	('en_US', 248, 'Pyrénées-Orientales'),
	('en_US', 249, 'Bas-Rhin'),
	('en_US', 250, 'Haut-Rhin'),
	('en_US', 251, 'Rhône'),
	('en_US', 252, 'Haute-Saône'),
	('en_US', 253, 'Saône-et-Loire'),
	('en_US', 254, 'Sarthe'),
	('en_US', 255, 'Savoie'),
	('en_US', 256, 'Haute-Savoie'),
	('en_US', 257, 'Paris'),
	('en_US', 258, 'Seine-Maritime'),
	('en_US', 259, 'Seine-et-Marne'),
	('en_US', 260, 'Yvelines'),
	('en_US', 261, 'Deux-Sèvres'),
	('en_US', 262, 'Somme'),
	('en_US', 263, 'Tarn'),
	('en_US', 264, 'Tarn-et-Garonne'),
	('en_US', 265, 'Var'),
	('en_US', 266, 'Vaucluse'),
	('en_US', 267, 'Vendée'),
	('en_US', 268, 'Vienne'),
	('en_US', 269, 'Haute-Vienne'),
	('en_US', 270, 'Vosges'),
	('en_US', 271, 'Yonne'),
	('en_US', 272, 'Territoire-de-Belfort'),
	('en_US', 273, 'Essonne'),
	('en_US', 274, 'Hauts-de-Seine'),
	('en_US', 275, 'Seine-Saint-Denis'),
	('en_US', 276, 'Val-de-Marne'),
	('en_US', 277, 'Val-d\'Oise'),
	('en_US', 278, 'Alba'),
	('en_US', 279, 'Arad'),
	('en_US', 280, 'Argeş'),
	('en_US', 281, 'Bacău'),
	('en_US', 282, 'Bihor'),
	('en_US', 283, 'Bistriţa-Năsăud'),
	('en_US', 284, 'Botoşani'),
	('en_US', 285, 'Braşov'),
	('en_US', 286, 'Brăila'),
	('en_US', 287, 'Bucureşti'),
	('en_US', 288, 'Buzău'),
	('en_US', 289, 'Caraş-Severin'),
	('en_US', 290, 'Călăraşi'),
	('en_US', 291, 'Cluj'),
	('en_US', 292, 'Constanţa'),
	('en_US', 293, 'Covasna'),
	('en_US', 294, 'Dâmboviţa'),
	('en_US', 295, 'Dolj'),
	('en_US', 296, 'Galaţi'),
	('en_US', 297, 'Giurgiu'),
	('en_US', 298, 'Gorj'),
	('en_US', 299, 'Harghita'),
	('en_US', 300, 'Hunedoara'),
	('en_US', 301, 'Ialomiţa'),
	('en_US', 302, 'Iaşi'),
	('en_US', 303, 'Ilfov'),
	('en_US', 304, 'Maramureş'),
	('en_US', 305, 'Mehedinţi'),
	('en_US', 306, 'Mureş'),
	('en_US', 307, 'Neamţ'),
	('en_US', 308, 'Olt'),
	('en_US', 309, 'Prahova'),
	('en_US', 310, 'Satu-Mare'),
	('en_US', 311, 'Sălaj'),
	('en_US', 312, 'Sibiu'),
	('en_US', 313, 'Suceava'),
	('en_US', 314, 'Teleorman'),
	('en_US', 315, 'Timiş'),
	('en_US', 316, 'Tulcea'),
	('en_US', 317, 'Vaslui'),
	('en_US', 318, 'Vâlcea'),
	('en_US', 319, 'Vrancea'),
	('en_US', 320, 'Lappi'),
	('en_US', 321, 'Pohjois-Pohjanmaa'),
	('en_US', 322, 'Kainuu'),
	('en_US', 323, 'Pohjois-Karjala'),
	('en_US', 324, 'Pohjois-Savo'),
	('en_US', 325, 'Etelä-Savo'),
	('en_US', 326, 'Etelä-Pohjanmaa'),
	('en_US', 327, 'Pohjanmaa'),
	('en_US', 328, 'Pirkanmaa'),
	('en_US', 329, 'Satakunta'),
	('en_US', 330, 'Keski-Pohjanmaa'),
	('en_US', 331, 'Keski-Suomi'),
	('en_US', 332, 'Varsinais-Suomi'),
	('en_US', 333, 'Etelä-Karjala'),
	('en_US', 334, 'Päijät-Häme'),
	('en_US', 335, 'Kanta-Häme'),
	('en_US', 336, 'Uusimaa'),
	('en_US', 337, 'Itä-Uusimaa'),
	('en_US', 338, 'Kymenlaakso'),
	('en_US', 339, 'Ahvenanmaa'),
	('en_US', 340, 'Harjumaa'),
	('en_US', 341, 'Hiiumaa'),
	('en_US', 342, 'Ida-Virumaa'),
	('en_US', 343, 'Jõgevamaa'),
	('en_US', 344, 'Järvamaa'),
	('en_US', 345, 'Läänemaa'),
	('en_US', 346, 'Lääne-Virumaa'),
	('en_US', 347, 'Põlvamaa'),
	('en_US', 348, 'Pärnumaa'),
	('en_US', 349, 'Raplamaa'),
	('en_US', 350, 'Saaremaa'),
	('en_US', 351, 'Tartumaa'),
	('en_US', 352, 'Valgamaa'),
	('en_US', 353, 'Viljandimaa'),
	('en_US', 354, 'Võrumaa'),
	('en_US', 355, 'Daugavpils'),
	('en_US', 356, 'Jelgava'),
	('en_US', 357, 'Jēkabpils'),
	('en_US', 358, 'Jūrmala'),
	('en_US', 359, 'Liepāja'),
	('en_US', 360, 'Liepājas novads'),
	('en_US', 361, 'Rēzekne'),
	('en_US', 362, 'Rīga'),
	('en_US', 363, 'Rīgas novads'),
	('en_US', 364, 'Valmiera'),
	('en_US', 365, 'Ventspils'),
	('en_US', 366, 'Aglonas novads'),
	('en_US', 367, 'Aizkraukles novads'),
	('en_US', 368, 'Aizputes novads'),
	('en_US', 369, 'Aknīstes novads'),
	('en_US', 370, 'Alojas novads'),
	('en_US', 371, 'Alsungas novads'),
	('en_US', 372, 'Alūksnes novads'),
	('en_US', 373, 'Amatas novads'),
	('en_US', 374, 'Apes novads'),
	('en_US', 375, 'Auces novads'),
	('en_US', 376, 'Babītes novads'),
	('en_US', 377, 'Baldones novads'),
	('en_US', 378, 'Baltinavas novads'),
	('en_US', 379, 'Balvu novads'),
	('en_US', 380, 'Bauskas novads'),
	('en_US', 381, 'Beverīnas novads'),
	('en_US', 382, 'Brocēnu novads'),
	('en_US', 383, 'Burtnieku novads'),
	('en_US', 384, 'Carnikavas novads'),
	('en_US', 385, 'Cesvaines novads'),
	('en_US', 386, 'Ciblas novads'),
	('en_US', 387, 'Cēsu novads'),
	('en_US', 388, 'Dagdas novads'),
	('en_US', 389, 'Daugavpils novads'),
	('en_US', 390, 'Dobeles novads'),
	('en_US', 391, 'Dundagas novads'),
	('en_US', 392, 'Durbes novads'),
	('en_US', 393, 'Engures novads'),
	('en_US', 394, 'Garkalnes novads'),
	('en_US', 395, 'Grobiņas novads'),
	('en_US', 396, 'Gulbenes novads'),
	('en_US', 397, 'Iecavas novads'),
	('en_US', 398, 'Ikšķiles novads'),
	('en_US', 399, 'Ilūkstes novads'),
	('en_US', 400, 'Inčukalna novads'),
	('en_US', 401, 'Jaunjelgavas novads'),
	('en_US', 402, 'Jaunpiebalgas novads'),
	('en_US', 403, 'Jaunpils novads'),
	('en_US', 404, 'Jelgavas novads'),
	('en_US', 405, 'Jēkabpils novads'),
	('en_US', 406, 'Kandavas novads'),
	('en_US', 407, 'Kokneses novads'),
	('en_US', 408, 'Krimuldas novads'),
	('en_US', 409, 'Krustpils novads'),
	('en_US', 410, 'Krāslavas novads'),
	('en_US', 411, 'Kuldīgas novads'),
	('en_US', 412, 'Kārsavas novads'),
	('en_US', 413, 'Lielvārdes novads'),
	('en_US', 414, 'Limbažu novads'),
	('en_US', 415, 'Lubānas novads'),
	('en_US', 416, 'Ludzas novads'),
	('en_US', 417, 'Līgatnes novads'),
	('en_US', 418, 'Līvānu novads'),
	('en_US', 419, 'Madonas novads'),
	('en_US', 420, 'Mazsalacas novads'),
	('en_US', 421, 'Mālpils novads'),
	('en_US', 422, 'Mārupes novads'),
	('en_US', 423, 'Naukšēnu novads'),
	('en_US', 424, 'Neretas novads'),
	('en_US', 425, 'Nīcas novads'),
	('en_US', 426, 'Ogres novads'),
	('en_US', 427, 'Olaines novads'),
	('en_US', 428, 'Ozolnieku novads'),
	('en_US', 429, 'Preiļu novads'),
	('en_US', 430, 'Priekules novads'),
	('en_US', 431, 'Priekuļu novads'),
	('en_US', 432, 'Pārgaujas novads'),
	('en_US', 433, 'Pāvilostas novads'),
	('en_US', 434, 'Pļaviņu novads'),
	('en_US', 435, 'Raunas novads'),
	('en_US', 436, 'Riebiņu novads'),
	('en_US', 437, 'Rojas novads'),
	('en_US', 438, 'Ropažu novads'),
	('en_US', 439, 'Rucavas novads'),
	('en_US', 440, 'Rugāju novads'),
	('en_US', 441, 'Rundāles novads'),
	('en_US', 442, 'Rēzeknes novads'),
	('en_US', 443, 'Rūjienas novads'),
	('en_US', 444, 'Salacgrīvas novads'),
	('en_US', 445, 'Salas novads'),
	('en_US', 446, 'Salaspils novads'),
	('en_US', 447, 'Saldus novads'),
	('en_US', 448, 'Saulkrastu novads'),
	('en_US', 449, 'Siguldas novads'),
	('en_US', 450, 'Skrundas novads'),
	('en_US', 451, 'Skrīveru novads'),
	('en_US', 452, 'Smiltenes novads'),
	('en_US', 453, 'Stopiņu novads'),
	('en_US', 454, 'Strenču novads'),
	('en_US', 455, 'Sējas novads'),
	('en_US', 456, 'Talsu novads'),
	('en_US', 457, 'Tukuma novads'),
	('en_US', 458, 'Tērvetes novads'),
	('en_US', 459, 'Vaiņodes novads'),
	('en_US', 460, 'Valkas novads'),
	('en_US', 461, 'Valmieras novads'),
	('en_US', 462, 'Varakļānu novads'),
	('en_US', 463, 'Vecpiebalgas novads'),
	('en_US', 464, 'Vecumnieku novads'),
	('en_US', 465, 'Ventspils novads'),
	('en_US', 466, 'Viesītes novads'),
	('en_US', 467, 'Viļakas novads'),
	('en_US', 468, 'Viļānu novads'),
	('en_US', 469, 'Vārkavas novads'),
	('en_US', 470, 'Zilupes novads'),
	('en_US', 471, 'Ādažu novads'),
	('en_US', 472, 'Ērgļu novads'),
	('en_US', 473, 'Ķeguma novads'),
	('en_US', 474, 'Ķekavas novads'),
	('en_US', 475, 'Alytaus Apskritis'),
	('en_US', 476, 'Kauno Apskritis'),
	('en_US', 477, 'Klaipėdos Apskritis'),
	('en_US', 478, 'Marijampolės Apskritis'),
	('en_US', 479, 'Panevėžio Apskritis'),
	('en_US', 480, 'Šiaulių Apskritis'),
	('en_US', 481, 'Tauragės Apskritis'),
	('en_US', 482, 'Telšių Apskritis'),
	('en_US', 483, 'Utenos Apskritis'),
	('en_US', 484, 'Vilniaus Apskritis');
/*!40000 ALTER TABLE `directory_country_region_name` ENABLE KEYS */;


-- Dumping structure for table mag.directory_currency_rate
DROP TABLE IF EXISTS `directory_currency_rate`;
CREATE TABLE IF NOT EXISTS `directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate',
  PRIMARY KEY (`currency_from`,`currency_to`),
  KEY `IDX_DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Currency Rate';

-- Dumping data for table mag.directory_currency_rate: ~4 rows (approximately)
/*!40000 ALTER TABLE `directory_currency_rate` DISABLE KEYS */;
INSERT INTO `directory_currency_rate` (`currency_from`, `currency_to`, `rate`) VALUES
	('EUR', 'EUR', 1.000000000000),
	('EUR', 'USD', 1.415000000000),
	('USD', 'EUR', 0.706700000000),
	('USD', 'USD', 1.000000000000);
/*!40000 ALTER TABLE `directory_currency_rate` ENABLE KEYS */;


-- Dumping structure for table mag.downloadable_link
DROP TABLE IF EXISTS `downloadable_link`;
CREATE TABLE IF NOT EXISTS `downloadable_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  `number_of_downloads` int(11) DEFAULT NULL COMMENT 'Number of downloads',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(20) DEFAULT NULL COMMENT 'Link Type',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample Url',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample File',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  PRIMARY KEY (`link_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PRODUCT_ID` (`product_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PRODUCT_ID_SORT_ORDER` (`product_id`,`sort_order`),
  CONSTRAINT `FK_DOWNLOADABLE_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Table';

-- Dumping data for table mag.downloadable_link: ~0 rows (approximately)
/*!40000 ALTER TABLE `downloadable_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadable_link` ENABLE KEYS */;


-- Dumping structure for table mag.downloadable_link_price
DROP TABLE IF EXISTS `downloadable_link_price`;
CREATE TABLE IF NOT EXISTS `downloadable_link_price` (
  `price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Price ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  PRIMARY KEY (`price_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PRICE_LINK_ID` (`link_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_DOWNLOADABLE_LINK_PRICE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DOWNLOADABLE_LINK_PRICE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Price Table';

-- Dumping data for table mag.downloadable_link_price: ~0 rows (approximately)
/*!40000 ALTER TABLE `downloadable_link_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadable_link_price` ENABLE KEYS */;


-- Dumping structure for table mag.downloadable_link_purchased
DROP TABLE IF EXISTS `downloadable_link_purchased`;
CREATE TABLE IF NOT EXISTS `downloadable_link_purchased` (
  `purchased_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Purchased ID',
  `order_id` int(10) unsigned DEFAULT '0' COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Item ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of creation',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of modification',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product name',
  `product_sku` varchar(255) DEFAULT NULL COMMENT 'Product sku',
  `link_section_title` varchar(255) DEFAULT NULL COMMENT 'Link_section_title',
  PRIMARY KEY (`purchased_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ORDER_ID` (`order_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ORDER_ITEM_ID` (`order_item_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_CUSTOMER_ID` (`customer_id`),
  CONSTRAINT `FK_DL_LNK_PURCHASED_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_DL_LNK_PURCHASED_ORDER_ID_SALES_FLAT_ORDER_ENTT_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Table';

-- Dumping data for table mag.downloadable_link_purchased: ~0 rows (approximately)
/*!40000 ALTER TABLE `downloadable_link_purchased` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadable_link_purchased` ENABLE KEYS */;


-- Dumping structure for table mag.downloadable_link_purchased_item
DROP TABLE IF EXISTS `downloadable_link_purchased_item`;
CREATE TABLE IF NOT EXISTS `downloadable_link_purchased_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `purchased_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Purchased ID',
  `order_item_id` int(10) unsigned DEFAULT '0' COMMENT 'Order Item ID',
  `product_id` int(10) unsigned DEFAULT '0' COMMENT 'Product ID',
  `link_hash` varchar(255) DEFAULT NULL COMMENT 'Link hash',
  `number_of_downloads_bought` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads bought',
  `number_of_downloads_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads used',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `link_title` varchar(255) DEFAULT NULL COMMENT 'Link Title',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable Flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(255) DEFAULT NULL COMMENT 'Link Type',
  `status` varchar(50) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Update Time',
  PRIMARY KEY (`item_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_LINK_HASH` (`link_hash`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_ORDER_ITEM_ID` (`order_item_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_PURCHASED_ID` (`purchased_id`),
  CONSTRAINT `FK_46CC8E252307CE62F00A8F1887512A39` FOREIGN KEY (`purchased_id`) REFERENCES `downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_B219BF25756700DEE44550B21220ECCE` FOREIGN KEY (`order_item_id`) REFERENCES `sales_flat_order_item` (`item_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Item Table';

-- Dumping data for table mag.downloadable_link_purchased_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `downloadable_link_purchased_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadable_link_purchased_item` ENABLE KEYS */;


-- Dumping structure for table mag.downloadable_link_title
DROP TABLE IF EXISTS `downloadable_link_title`;
CREATE TABLE IF NOT EXISTS `downloadable_link_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `UNQ_DOWNLOADABLE_LINK_TITLE_LINK_ID_STORE_ID` (`link_id`,`store_id`),
  KEY `IDX_DOWNLOADABLE_LINK_TITLE_LINK_ID` (`link_id`),
  KEY `IDX_DOWNLOADABLE_LINK_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_DOWNLOADABLE_LINK_TITLE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DOWNLOADABLE_LINK_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Title Table';

-- Dumping data for table mag.downloadable_link_title: ~0 rows (approximately)
/*!40000 ALTER TABLE `downloadable_link_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadable_link_title` ENABLE KEYS */;


-- Dumping structure for table mag.downloadable_sample
DROP TABLE IF EXISTS `downloadable_sample`;
CREATE TABLE IF NOT EXISTS `downloadable_sample` (
  `sample_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sample ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample URL',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample file',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`sample_id`),
  KEY `IDX_DOWNLOADABLE_SAMPLE_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_DL_SAMPLE_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Table';

-- Dumping data for table mag.downloadable_sample: ~0 rows (approximately)
/*!40000 ALTER TABLE `downloadable_sample` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadable_sample` ENABLE KEYS */;


-- Dumping structure for table mag.downloadable_sample_title
DROP TABLE IF EXISTS `downloadable_sample_title`;
CREATE TABLE IF NOT EXISTS `downloadable_sample_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `sample_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sample ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `UNQ_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID_STORE_ID` (`sample_id`,`store_id`),
  KEY `IDX_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID` (`sample_id`),
  KEY `IDX_DOWNLOADABLE_SAMPLE_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_DL_SAMPLE_TTL_SAMPLE_ID_DL_SAMPLE_SAMPLE_ID` FOREIGN KEY (`sample_id`) REFERENCES `downloadable_sample` (`sample_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DOWNLOADABLE_SAMPLE_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Title Table';

-- Dumping data for table mag.downloadable_sample_title: ~0 rows (approximately)
/*!40000 ALTER TABLE `downloadable_sample_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadable_sample_title` ENABLE KEYS */;


-- Dumping structure for table mag.eav_attribute
DROP TABLE IF EXISTS `eav_attribute`;
CREATE TABLE IF NOT EXISTS `eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_code` varchar(255) DEFAULT NULL COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note',
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `UNQ_EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`),
  KEY `IDX_EAV_ATTRIBUTE_ENTITY_TYPE_ID` (`entity_type_id`),
  CONSTRAINT `FK_EAV_ATTRIBUTE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=823 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute';

-- Dumping data for table mag.eav_attribute: ~154 rows (approximately)
/*!40000 ALTER TABLE `eav_attribute` DISABLE KEYS */;
INSERT INTO `eav_attribute` (`attribute_id`, `entity_type_id`, `attribute_code`, `attribute_model`, `backend_model`, `backend_type`, `backend_table`, `frontend_model`, `frontend_input`, `frontend_label`, `frontend_class`, `source_model`, `is_required`, `is_user_defined`, `default_value`, `is_unique`, `note`) VALUES
	(1, 1, 'website_id', NULL, 'customer/customer_attribute_backend_website', 'static', NULL, NULL, 'select', 'Associate to Website', NULL, 'customer/customer_attribute_source_website', 1, 0, NULL, 0, NULL),
	(2, 1, 'store_id', NULL, 'customer/customer_attribute_backend_store', 'static', NULL, NULL, 'select', 'Create In', NULL, 'customer/customer_attribute_source_store', 1, 0, NULL, 0, NULL),
	(3, 1, 'created_in', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Created From', NULL, NULL, 0, 0, NULL, 0, NULL),
	(4, 1, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
	(5, 1, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
	(6, 1, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
	(7, 1, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
	(8, 1, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
	(9, 1, 'email', NULL, NULL, 'static', NULL, NULL, 'text', 'Email', NULL, NULL, 1, 0, NULL, 0, NULL),
	(10, 1, 'group_id', NULL, NULL, 'static', NULL, NULL, 'select', 'Group', NULL, 'customer/customer_attribute_source_group', 1, 0, NULL, 0, NULL),
	(11, 1, 'dob', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, 'eav/entity_attribute_frontend_datetime', 'date', 'Date Of Birth', NULL, NULL, 0, 0, NULL, 0, NULL),
	(12, 1, 'password_hash', NULL, 'customer/customer_attribute_backend_password', 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(13, 1, 'default_billing', NULL, 'customer/customer_attribute_backend_billing', 'int', NULL, NULL, 'text', 'Default Billing Address', NULL, NULL, 0, 0, NULL, 0, NULL),
	(14, 1, 'default_shipping', NULL, 'customer/customer_attribute_backend_shipping', 'int', NULL, NULL, 'text', 'Default Shipping Address', NULL, NULL, 0, 0, NULL, 0, NULL),
	(15, 1, 'taxvat', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Tax/VAT Number', NULL, NULL, 0, 0, NULL, 0, NULL),
	(16, 1, 'confirmation', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Is Confirmed', NULL, NULL, 0, 0, NULL, 0, NULL),
	(17, 1, 'created_at', NULL, NULL, 'static', NULL, NULL, 'datetime', 'Created At', NULL, NULL, 0, 0, NULL, 0, NULL),
	(18, 1, 'gender', NULL, NULL, 'int', NULL, NULL, 'select', 'Gender', NULL, 'eav/entity_attribute_source_table', 0, 0, NULL, 0, NULL),
	(19, 2, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
	(20, 2, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
	(21, 2, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
	(22, 2, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
	(23, 2, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
	(24, 2, 'company', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Company', NULL, NULL, 0, 0, NULL, 0, NULL),
	(25, 2, 'street', NULL, 'customer/entity_address_attribute_backend_street', 'text', NULL, NULL, 'multiline', 'Street Address', NULL, NULL, 1, 0, NULL, 0, NULL),
	(26, 2, 'city', NULL, NULL, 'varchar', NULL, NULL, 'text', 'City', NULL, NULL, 1, 0, NULL, 0, NULL),
	(27, 2, 'country_id', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country', NULL, 'customer/entity_address_attribute_source_country', 1, 0, NULL, 0, NULL),
	(28, 2, 'region', NULL, 'customer/entity_address_attribute_backend_region', 'varchar', NULL, NULL, 'text', 'State/Province', NULL, NULL, 0, 0, NULL, 0, NULL),
	(29, 2, 'region_id', NULL, NULL, 'int', NULL, NULL, 'hidden', 'State/Province', NULL, 'customer/entity_address_attribute_source_region', 0, 0, NULL, 0, NULL),
	(30, 2, 'postcode', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Zip/Postal Code', NULL, NULL, 1, 0, NULL, 0, NULL),
	(31, 2, 'telephone', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Telephone', NULL, NULL, 1, 0, NULL, 0, NULL),
	(32, 2, 'fax', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Fax', NULL, NULL, 0, 0, NULL, 0, NULL),
	(33, 1, 'rp_token', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(34, 1, 'rp_token_created_at', NULL, NULL, 'datetime', NULL, NULL, 'date', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(35, 1, 'disable_auto_group_change', NULL, 'customer/attribute_backend_data_boolean', 'static', NULL, NULL, 'boolean', 'Disable Automatic Group Change Based on VAT ID', NULL, NULL, 0, 0, NULL, 0, NULL),
	(36, 2, 'vat_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number', NULL, NULL, 0, 0, NULL, 0, NULL),
	(37, 2, 'vat_is_valid', NULL, NULL, 'int', NULL, NULL, 'text', 'VAT number validity', NULL, NULL, 0, 0, NULL, 0, NULL),
	(38, 2, 'vat_request_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number validation request ID', NULL, NULL, 0, 0, NULL, 0, NULL),
	(39, 2, 'vat_request_date', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number validation request date', NULL, NULL, 0, 0, NULL, 0, NULL),
	(40, 2, 'vat_request_success', NULL, NULL, 'int', NULL, NULL, 'text', 'VAT number validation request success', NULL, NULL, 0, 0, NULL, 0, NULL),
	(41, 3, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
	(42, 3, 'is_active', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Active', NULL, 'eav/entity_attribute_source_boolean', 1, 0, NULL, 0, NULL),
	(43, 3, 'url_key', NULL, 'catalog/category_attribute_backend_urlkey', 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
	(44, 3, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 0, 0, NULL, 0, NULL),
	(45, 3, 'image', NULL, 'catalog/category_attribute_backend_image', 'varchar', NULL, NULL, 'image', 'Image', NULL, NULL, 0, 0, NULL, 0, NULL),
	(46, 3, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Page Title', NULL, NULL, 0, 0, NULL, 0, NULL),
	(47, 3, 'meta_keywords', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
	(48, 3, 'meta_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, NULL),
	(49, 3, 'display_mode', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Mode', NULL, 'catalog/category_attribute_source_mode', 0, 0, NULL, 0, NULL),
	(50, 3, 'landing_page', NULL, NULL, 'int', NULL, NULL, 'select', 'CMS Block', NULL, 'catalog/category_attribute_source_page', 0, 0, NULL, 0, NULL),
	(51, 3, 'is_anchor', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Anchor', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
	(52, 3, 'path', NULL, NULL, 'static', NULL, NULL, 'text', 'Path', NULL, NULL, 0, 0, NULL, 0, NULL),
	(53, 3, 'position', NULL, NULL, 'static', NULL, NULL, 'text', 'Position', NULL, NULL, 0, 0, NULL, 0, NULL),
	(54, 3, 'all_children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(55, 3, 'path_in_store', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(56, 3, 'children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(57, 3, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(58, 3, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, NULL, 0, NULL),
	(59, 3, 'custom_design_from', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
	(60, 3, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
	(61, 3, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'catalog/category_attribute_source_layout', 0, 0, NULL, 0, NULL),
	(62, 3, 'custom_layout_update', NULL, 'catalog/attribute_backend_customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
	(63, 3, 'level', NULL, NULL, 'static', NULL, NULL, 'text', 'Level', NULL, NULL, 0, 0, NULL, 0, NULL),
	(64, 3, 'children_count', NULL, NULL, 'static', NULL, NULL, 'text', 'Children Count', NULL, NULL, 0, 0, NULL, 0, NULL),
	(65, 3, 'available_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'text', NULL, NULL, 'multiselect', 'Available Product Listing Sort By', NULL, 'catalog/category_attribute_source_sortby', 1, 0, NULL, 0, NULL),
	(66, 3, 'default_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'varchar', NULL, NULL, 'select', 'Default Product Listing Sort By', NULL, 'catalog/category_attribute_source_sortby', 1, 0, NULL, 0, NULL),
	(67, 3, 'include_in_menu', NULL, NULL, 'int', NULL, NULL, 'select', 'Include in Navigation Menu', NULL, 'eav/entity_attribute_source_boolean', 1, 0, '1', 0, NULL),
	(68, 3, 'custom_use_parent_settings', NULL, NULL, 'int', NULL, NULL, 'select', 'Use Parent Category Settings', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
	(69, 3, 'custom_apply_to_products', NULL, NULL, 'int', NULL, NULL, 'select', 'Apply To Products', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
	(70, 3, 'filter_price_range', NULL, NULL, 'decimal', NULL, NULL, 'text', 'Layered Navigation Price Step', NULL, NULL, 0, 0, NULL, 0, NULL),
	(71, 4, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
	(72, 4, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 1, 0, NULL, 0, NULL),
	(73, 4, 'short_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Short Description', NULL, NULL, 1, 0, NULL, 0, NULL),
	(74, 4, 'sku', NULL, 'catalog/product_attribute_backend_sku', 'static', NULL, NULL, 'text', 'SKU', NULL, NULL, 1, 0, NULL, 1, NULL),
	(75, 4, 'price', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Price', NULL, NULL, 1, 0, NULL, 0, NULL),
	(76, 4, 'special_price', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Special Price', NULL, NULL, 0, 0, NULL, 0, NULL),
	(77, 4, 'special_from_date', NULL, 'catalog/product_attribute_backend_startdate_specialprice', 'datetime', NULL, NULL, 'date', 'Special Price From Date', NULL, NULL, 0, 0, NULL, 0, NULL),
	(78, 4, 'special_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Special Price To Date', NULL, NULL, 0, 0, NULL, 0, NULL),
	(79, 4, 'cost', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Cost', NULL, NULL, 0, 1, NULL, 0, NULL),
	(80, 4, 'weight', NULL, NULL, 'decimal', NULL, NULL, 'weight', 'Weight', NULL, NULL, 1, 0, NULL, 0, NULL),
	(81, 4, 'manufacturer', NULL, NULL, 'int', NULL, NULL, 'select', 'Manufacturer', NULL, NULL, 0, 1, NULL, 0, NULL),
	(82, 4, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Meta Title', NULL, NULL, 0, 0, NULL, 0, NULL),
	(83, 4, 'meta_keyword', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
	(84, 4, 'meta_description', NULL, NULL, 'varchar', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, 'Maximum 255 chars'),
	(85, 4, 'image', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Base Image', NULL, NULL, 0, 0, NULL, 0, NULL),
	(86, 4, 'small_image', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Small Image', NULL, NULL, 0, 0, NULL, 0, NULL),
	(87, 4, 'thumbnail', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Thumbnail', NULL, NULL, 0, 0, NULL, 0, NULL),
	(88, 4, 'media_gallery', NULL, 'catalog/product_attribute_backend_media', 'varchar', NULL, NULL, 'gallery', 'Media Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
	(89, 4, 'old_id', NULL, NULL, 'int', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(90, 4, 'group_price', NULL, 'catalog/product_attribute_backend_groupprice', 'decimal', NULL, NULL, 'text', 'Group Price', NULL, NULL, 0, 0, NULL, 0, NULL),
	(91, 4, 'tier_price', NULL, 'catalog/product_attribute_backend_tierprice', 'decimal', NULL, NULL, 'text', 'Tier Price', NULL, NULL, 0, 0, NULL, 0, NULL),
	(92, 4, 'color', NULL, NULL, 'int', NULL, NULL, 'select', 'Color', NULL, NULL, 0, 1, NULL, 0, NULL),
	(93, 4, 'news_from_date', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Set Product as New from Date', NULL, NULL, 0, 0, NULL, 0, NULL),
	(94, 4, 'news_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Set Product as New to Date', NULL, NULL, 0, 0, NULL, 0, NULL),
	(95, 4, 'gallery', NULL, NULL, 'varchar', NULL, NULL, 'gallery', 'Image Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
	(96, 4, 'status', NULL, NULL, 'int', NULL, NULL, 'select', 'Status', NULL, 'catalog/product_status', 1, 0, NULL, 0, NULL),
	(97, 4, 'url_key', NULL, 'catalog/product_attribute_backend_urlkey', 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
	(98, 4, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(99, 4, 'minimal_price', NULL, NULL, 'decimal', NULL, NULL, 'price', 'Minimal Price', NULL, NULL, 0, 0, NULL, 0, NULL),
	(100, 4, 'is_recurring', NULL, NULL, 'int', NULL, NULL, 'select', 'Enable Recurring Profile', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, 'Products with recurring profile participate in catalog as nominal items.'),
	(101, 4, 'recurring_profile', NULL, 'catalog/product_attribute_backend_recurring', 'text', NULL, NULL, 'text', 'Recurring Payment Profile', NULL, NULL, 0, 0, NULL, 0, NULL),
	(102, 4, 'visibility', NULL, NULL, 'int', NULL, NULL, 'select', 'Visibility', NULL, 'catalog/product_visibility', 1, 0, '4', 0, NULL),
	(103, 4, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, NULL, 0, NULL),
	(104, 4, 'custom_design_from', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
	(105, 4, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
	(106, 4, 'custom_layout_update', NULL, 'catalog/attribute_backend_customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
	(107, 4, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'catalog/product_attribute_source_layout', 0, 0, NULL, 0, NULL),
	(108, 4, 'category_ids', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(109, 4, 'options_container', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Product Options In', NULL, 'catalog/entity_product_attribute_design_options_container', 0, 0, 'container1', 0, NULL),
	(110, 4, 'required_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(111, 4, 'has_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(112, 4, 'image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
	(113, 4, 'small_image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Small Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
	(114, 4, 'thumbnail_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Thumbnail Label', NULL, NULL, 0, 0, NULL, 0, NULL),
	(115, 4, 'created_at', NULL, 'eav/entity_attribute_backend_time_created', 'static', NULL, NULL, 'text', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
	(116, 4, 'updated_at', NULL, 'eav/entity_attribute_backend_time_updated', 'static', NULL, NULL, 'text', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
	(117, 4, 'country_of_manufacture', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country of Manufacture', NULL, 'catalog/product_attribute_source_countryofmanufacture', 0, 0, NULL, 0, NULL),
	(118, 4, 'msrp_enabled', NULL, 'catalog/product_attribute_backend_msrp', 'varchar', NULL, NULL, 'select', 'Apply MAP', NULL, 'catalog/product_attribute_source_msrp_type_enabled', 0, 0, '2', 0, NULL),
	(119, 4, 'msrp_display_actual_price_type', NULL, 'catalog/product_attribute_backend_boolean', 'varchar', NULL, NULL, 'select', 'Display Actual Price', NULL, 'catalog/product_attribute_source_msrp_type_price', 0, 0, '4', 0, NULL),
	(120, 4, 'msrp', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Manufacturer\'s Suggested Retail Price', NULL, NULL, 0, 0, NULL, 0, NULL),
	(121, 4, 'tax_class_id', NULL, NULL, 'int', NULL, NULL, 'select', 'Tax Class', NULL, 'tax/class_source_product', 1, 0, NULL, 0, NULL),
	(122, 4, 'gift_message_available', NULL, 'catalog/product_attribute_backend_boolean', 'varchar', NULL, NULL, 'select', 'Allow Gift Message', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
	(123, 4, 'price_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
	(124, 4, 'sku_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
	(125, 4, 'weight_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
	(126, 4, 'price_view', NULL, NULL, 'int', NULL, NULL, 'select', 'Price View', NULL, 'bundle/product_attribute_source_price_view', 1, 0, NULL, 0, NULL),
	(127, 4, 'shipment_type', NULL, NULL, 'int', NULL, NULL, NULL, 'Shipment', NULL, NULL, 1, 0, NULL, 0, NULL),
	(128, 4, 'links_purchased_separately', NULL, NULL, 'int', NULL, NULL, NULL, 'Links can be purchased separately', NULL, NULL, 1, 0, NULL, 0, NULL),
	(129, 4, 'samples_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Samples title', NULL, NULL, 1, 0, NULL, 0, NULL),
	(130, 4, 'links_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Links title', NULL, NULL, 1, 0, NULL, 0, NULL),
	(131, 4, 'links_exist', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0', 0, NULL),
	(132, 3, 'thumbnail', NULL, 'catalog/category_attribute_backend_image', 'varchar', NULL, NULL, 'image', 'Thumbnail Image', NULL, NULL, 0, 0, NULL, 0, NULL),
	(801, 4, 'c2c_exttext1', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Custom Field 1', NULL, NULL, 0, 1, NULL, 0, NULL),
	(802, 4, 'c2c_exttext2', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Custom Field 2', NULL, NULL, 0, 1, NULL, 0, NULL),
	(803, 4, 'c2c_exttext3', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Custom Field 3', NULL, NULL, 0, 1, NULL, 0, NULL),
	(804, 4, 'c2c_exttext4', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Custom Field 4', NULL, NULL, 0, 1, NULL, 0, NULL),
	(805, 4, 'c2c_exttext5', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Custom Field 5', NULL, NULL, 0, 1, NULL, 0, NULL),
	(806, 4, 'c2c_exttext6', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Custom Field 6', NULL, NULL, 0, 1, NULL, 0, NULL),
	(807, 4, 'c2c_length', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Length', NULL, NULL, 0, 1, NULL, 0, NULL),
	(808, 4, 'c2c_height', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Height', NULL, NULL, 0, 1, NULL, 0, NULL),
	(809, 4, 'c2c_width', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Width', NULL, NULL, 0, 1, NULL, 0, NULL),
	(810, 4, 'c2c_containercode', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Container', NULL, NULL, 0, 1, NULL, 0, NULL),
	(811, 4, 'c2c_upc', NULL, NULL, 'varchar', NULL, NULL, 'text', 'UPC', NULL, NULL, 0, 1, NULL, 0, NULL),
	(812, 4, 'c2c_mpn', NULL, NULL, 'varchar', NULL, NULL, 'text', 'MPN', NULL, NULL, 0, 1, NULL, 0, NULL),
	(813, 4, 'c2c_ean', NULL, NULL, 'varchar', NULL, NULL, 'text', 'EAN', NULL, NULL, 0, 1, NULL, 0, NULL),
	(814, 4, 'c2c_isbn', NULL, NULL, 'varchar', NULL, NULL, 'text', 'ISBN', NULL, NULL, 0, 1, NULL, 0, NULL),
	(815, 4, 'c2c_condition', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Condition', NULL, NULL, 0, 1, NULL, 0, NULL),
	(816, 4, 'c2c_productno', NULL, NULL, 'varchar', NULL, NULL, 'text', 'ProStores Product Number', NULL, NULL, 0, 1, NULL, 0, NULL),
	(817, 4, 'c2c_keywords', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Site Search Keywords', NULL, NULL, 0, 1, NULL, 0, NULL),
	(818, 4, 'c2c_googlecategory', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Google Category', NULL, NULL, 0, 1, NULL, 0, NULL),
	(819, 4, 'c2c_googleagegroup', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Google Age Group', NULL, NULL, 0, 1, NULL, 0, NULL),
	(820, 4, 'c2c_googlegender', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Google Gender', NULL, NULL, 0, 1, NULL, 0, NULL),
	(821, 4, 'c2c_googlecolor', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Google Color', NULL, NULL, 0, 1, NULL, 0, NULL),
	(822, 4, 'c2c_googlesize', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Google Size', NULL, NULL, 0, 1, NULL, 0, NULL);
/*!40000 ALTER TABLE `eav_attribute` ENABLE KEYS */;


-- Dumping structure for table mag.eav_attribute_group
DROP TABLE IF EXISTS `eav_attribute_group`;
CREATE TABLE IF NOT EXISTS `eav_attribute_group` (
  `attribute_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Default Id',
  PRIMARY KEY (`attribute_group_id`),
  UNIQUE KEY `UNQ_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  KEY `IDX_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  CONSTRAINT `FK_EAV_ATTR_GROUP_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=578 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group';

-- Dumping data for table mag.eav_attribute_group: ~395 rows (approximately)
/*!40000 ALTER TABLE `eav_attribute_group` DISABLE KEYS */;
INSERT INTO `eav_attribute_group` (`attribute_group_id`, `attribute_set_id`, `attribute_group_name`, `sort_order`, `default_id`) VALUES
	(1, 1, 'General', 1, 1),
	(2, 2, 'General', 1, 1),
	(3, 3, 'General', 10, 1),
	(4, 3, 'General Information', 2, 0),
	(5, 3, 'Display Settings', 20, 0),
	(6, 3, 'Custom Design', 30, 0),
	(7, 4, 'General', 1, 1),
	(8, 4, 'Prices', 2, 0),
	(9, 4, 'Meta Information', 3, 0),
	(10, 4, 'Images', 4, 0),
	(11, 4, 'Recurring Profile', 5, 0),
	(12, 4, 'Design', 6, 0),
	(13, 5, 'General', 1, 1),
	(14, 6, 'General', 1, 1),
	(15, 7, 'General', 1, 1),
	(16, 8, 'General', 1, 1),
	(17, 4, 'Gift Options', 7, 0),
	(18, 9, 'Design', 6, 0),
	(19, 9, 'General', 1, 1),
	(20, 9, 'Gift Options', 7, 0),
	(21, 9, 'Images', 4, 0),
	(22, 9, 'Meta Information', 3, 0),
	(23, 9, 'Prices', 2, 0),
	(24, 9, 'Recurring Profile', 5, 0),
	(25, 10, 'Design', 6, 0),
	(26, 10, 'General', 1, 1),
	(27, 10, 'Gift Options', 7, 0),
	(28, 10, 'Images', 4, 0),
	(29, 10, 'Meta Information', 3, 0),
	(30, 10, 'Prices', 2, 0),
	(31, 10, 'Recurring Profile', 5, 0),
	(32, 11, 'Design', 6, 0),
	(33, 11, 'General', 1, 1),
	(34, 11, 'Gift Options', 7, 0),
	(35, 11, 'Images', 4, 0),
	(36, 11, 'Meta Information', 3, 0),
	(37, 11, 'Prices', 2, 0),
	(38, 11, 'Recurring Profile', 5, 0),
	(39, 12, 'Design', 6, 0),
	(40, 12, 'General', 1, 1),
	(41, 12, 'Gift Options', 7, 0),
	(42, 12, 'Images', 4, 0),
	(43, 12, 'Meta Information', 3, 0),
	(44, 12, 'Prices', 2, 0),
	(45, 12, 'Recurring Profile', 5, 0),
	(46, 13, 'Design', 6, 0),
	(47, 13, 'General', 1, 1),
	(48, 13, 'Gift Options', 7, 0),
	(49, 13, 'Images', 4, 0),
	(50, 13, 'Meta Information', 3, 0),
	(51, 13, 'Prices', 2, 0),
	(52, 13, 'Recurring Profile', 5, 0),
	(53, 14, 'Design', 6, 0),
	(54, 14, 'General', 1, 1),
	(55, 14, 'Gift Options', 7, 0),
	(56, 14, 'Images', 4, 0),
	(57, 14, 'Meta Information', 3, 0),
	(58, 14, 'Prices', 2, 0),
	(59, 14, 'Recurring Profile', 5, 0),
	(60, 15, 'Design', 6, 0),
	(61, 15, 'General', 1, 1),
	(62, 15, 'Gift Options', 7, 0),
	(63, 15, 'Images', 4, 0),
	(64, 15, 'Meta Information', 3, 0),
	(65, 15, 'Prices', 2, 0),
	(66, 15, 'Recurring Profile', 5, 0),
	(67, 16, 'Design', 6, 0),
	(68, 16, 'General', 1, 1),
	(69, 16, 'Gift Options', 7, 0),
	(70, 16, 'Images', 4, 0),
	(71, 16, 'Meta Information', 3, 0),
	(72, 16, 'Prices', 2, 0),
	(73, 16, 'Recurring Profile', 5, 0),
	(74, 17, 'Design', 6, 0),
	(75, 17, 'General', 1, 1),
	(76, 17, 'Gift Options', 7, 0),
	(77, 17, 'Images', 4, 0),
	(78, 17, 'Meta Information', 3, 0),
	(79, 17, 'Prices', 2, 0),
	(80, 17, 'Recurring Profile', 5, 0),
	(81, 18, 'Design', 6, 0),
	(82, 18, 'General', 1, 1),
	(83, 18, 'Gift Options', 7, 0),
	(84, 18, 'Images', 4, 0),
	(85, 18, 'Meta Information', 3, 0),
	(86, 18, 'Prices', 2, 0),
	(87, 18, 'Recurring Profile', 5, 0),
	(88, 19, 'Design', 6, 0),
	(89, 19, 'General', 1, 1),
	(90, 19, 'Gift Options', 7, 0),
	(91, 19, 'Images', 4, 0),
	(92, 19, 'Meta Information', 3, 0),
	(93, 19, 'Prices', 2, 0),
	(94, 19, 'Recurring Profile', 5, 0),
	(95, 20, 'Design', 6, 0),
	(96, 20, 'General', 1, 1),
	(97, 20, 'Gift Options', 7, 0),
	(98, 20, 'Images', 4, 0),
	(99, 20, 'Meta Information', 3, 0),
	(100, 20, 'Prices', 2, 0),
	(101, 20, 'Recurring Profile', 5, 0),
	(102, 21, 'Design', 6, 0),
	(103, 21, 'General', 1, 1),
	(104, 21, 'Gift Options', 7, 0),
	(105, 21, 'Images', 4, 0),
	(106, 21, 'Meta Information', 3, 0),
	(107, 21, 'Prices', 2, 0),
	(108, 21, 'Recurring Profile', 5, 0),
	(109, 22, 'Design', 6, 0),
	(110, 22, 'General', 1, 1),
	(111, 22, 'Gift Options', 7, 0),
	(112, 22, 'Images', 4, 0),
	(113, 22, 'Meta Information', 3, 0),
	(114, 22, 'Prices', 2, 0),
	(115, 22, 'Recurring Profile', 5, 0),
	(116, 23, 'Design', 6, 0),
	(117, 23, 'General', 1, 1),
	(118, 23, 'Gift Options', 7, 0),
	(119, 23, 'Images', 4, 0),
	(120, 23, 'Meta Information', 3, 0),
	(121, 23, 'Prices', 2, 0),
	(122, 23, 'Recurring Profile', 5, 0),
	(123, 24, 'Design', 6, 0),
	(124, 24, 'General', 1, 1),
	(125, 24, 'Gift Options', 7, 0),
	(126, 24, 'Images', 4, 0),
	(127, 24, 'Meta Information', 3, 0),
	(128, 24, 'Prices', 2, 0),
	(129, 24, 'Recurring Profile', 5, 0),
	(130, 25, 'Design', 6, 0),
	(131, 25, 'General', 1, 1),
	(132, 25, 'Gift Options', 7, 0),
	(133, 25, 'Images', 4, 0),
	(134, 25, 'Meta Information', 3, 0),
	(135, 25, 'Prices', 2, 0),
	(136, 25, 'Recurring Profile', 5, 0),
	(137, 26, 'Design', 6, 0),
	(138, 26, 'General', 1, 1),
	(139, 26, 'Gift Options', 7, 0),
	(140, 26, 'Images', 4, 0),
	(141, 26, 'Meta Information', 3, 0),
	(142, 26, 'Prices', 2, 0),
	(143, 26, 'Recurring Profile', 5, 0),
	(144, 27, 'Design', 6, 0),
	(145, 27, 'General', 1, 1),
	(146, 27, 'Gift Options', 7, 0),
	(147, 27, 'Images', 4, 0),
	(148, 27, 'Meta Information', 3, 0),
	(149, 27, 'Prices', 2, 0),
	(150, 27, 'Recurring Profile', 5, 0),
	(151, 28, 'Design', 6, 0),
	(152, 28, 'General', 1, 1),
	(153, 28, 'Gift Options', 7, 0),
	(154, 28, 'Images', 4, 0),
	(155, 28, 'Meta Information', 3, 0),
	(156, 28, 'Prices', 2, 0),
	(157, 28, 'Recurring Profile', 5, 0),
	(158, 29, 'Design', 6, 0),
	(159, 29, 'General', 1, 1),
	(160, 29, 'Gift Options', 7, 0),
	(161, 29, 'Images', 4, 0),
	(162, 29, 'Meta Information', 3, 0),
	(163, 29, 'Prices', 2, 0),
	(164, 29, 'Recurring Profile', 5, 0),
	(165, 30, 'Design', 6, 0),
	(166, 30, 'General', 1, 1),
	(167, 30, 'Gift Options', 7, 0),
	(168, 30, 'Images', 4, 0),
	(169, 30, 'Meta Information', 3, 0),
	(170, 30, 'Prices', 2, 0),
	(171, 30, 'Recurring Profile', 5, 0),
	(172, 31, 'Design', 6, 0),
	(173, 31, 'General', 1, 1),
	(174, 31, 'Gift Options', 7, 0),
	(175, 31, 'Images', 4, 0),
	(176, 31, 'Meta Information', 3, 0),
	(177, 31, 'Prices', 2, 0),
	(178, 31, 'Recurring Profile', 5, 0),
	(179, 32, 'Design', 6, 0),
	(180, 32, 'General', 1, 1),
	(181, 32, 'Gift Options', 7, 0),
	(182, 32, 'Images', 4, 0),
	(183, 32, 'Meta Information', 3, 0),
	(184, 32, 'Prices', 2, 0),
	(185, 32, 'Recurring Profile', 5, 0),
	(186, 33, 'Design', 6, 0),
	(187, 33, 'General', 1, 1),
	(188, 33, 'Gift Options', 7, 0),
	(189, 33, 'Images', 4, 0),
	(190, 33, 'Meta Information', 3, 0),
	(191, 33, 'Prices', 2, 0),
	(192, 33, 'Recurring Profile', 5, 0),
	(193, 34, 'Design', 6, 0),
	(194, 34, 'General', 1, 1),
	(195, 34, 'Gift Options', 7, 0),
	(196, 34, 'Images', 4, 0),
	(197, 34, 'Meta Information', 3, 0),
	(198, 34, 'Prices', 2, 0),
	(199, 34, 'Recurring Profile', 5, 0),
	(200, 35, 'Design', 6, 0),
	(201, 35, 'General', 1, 1),
	(202, 35, 'Gift Options', 7, 0),
	(203, 35, 'Images', 4, 0),
	(204, 35, 'Meta Information', 3, 0),
	(205, 35, 'Prices', 2, 0),
	(206, 35, 'Recurring Profile', 5, 0),
	(207, 36, 'Design', 6, 0),
	(208, 36, 'General', 1, 1),
	(209, 36, 'Gift Options', 7, 0),
	(210, 36, 'Images', 4, 0),
	(211, 36, 'Meta Information', 3, 0),
	(212, 36, 'Prices', 2, 0),
	(213, 36, 'Recurring Profile', 5, 0),
	(214, 37, 'Design', 6, 0),
	(215, 37, 'General', 1, 1),
	(216, 37, 'Gift Options', 7, 0),
	(217, 37, 'Images', 4, 0),
	(218, 37, 'Meta Information', 3, 0),
	(219, 37, 'Prices', 2, 0),
	(220, 37, 'Recurring Profile', 5, 0),
	(221, 38, 'Design', 6, 0),
	(222, 38, 'General', 1, 1),
	(223, 38, 'Gift Options', 7, 0),
	(224, 38, 'Images', 4, 0),
	(225, 38, 'Meta Information', 3, 0),
	(226, 38, 'Prices', 2, 0),
	(227, 38, 'Recurring Profile', 5, 0),
	(228, 39, 'Design', 6, 0),
	(229, 39, 'General', 1, 1),
	(230, 39, 'Gift Options', 7, 0),
	(231, 39, 'Images', 4, 0),
	(232, 39, 'Meta Information', 3, 0),
	(233, 39, 'Prices', 2, 0),
	(234, 39, 'Recurring Profile', 5, 0),
	(235, 40, 'Design', 6, 0),
	(236, 40, 'General', 1, 1),
	(237, 40, 'Gift Options', 7, 0),
	(238, 40, 'Images', 4, 0),
	(239, 40, 'Meta Information', 3, 0),
	(240, 40, 'Prices', 2, 0),
	(241, 40, 'Recurring Profile', 5, 0),
	(242, 41, 'Design', 6, 0),
	(243, 41, 'General', 1, 1),
	(244, 41, 'Gift Options', 7, 0),
	(245, 41, 'Images', 4, 0),
	(246, 41, 'Meta Information', 3, 0),
	(247, 41, 'Prices', 2, 0),
	(248, 41, 'Recurring Profile', 5, 0),
	(249, 42, 'Design', 6, 0),
	(250, 42, 'General', 1, 1),
	(251, 42, 'Gift Options', 7, 0),
	(252, 42, 'Images', 4, 0),
	(253, 42, 'Meta Information', 3, 0),
	(254, 42, 'Prices', 2, 0),
	(255, 42, 'Recurring Profile', 5, 0),
	(256, 43, 'Design', 6, 0),
	(257, 43, 'General', 1, 1),
	(258, 43, 'Gift Options', 7, 0),
	(259, 43, 'Images', 4, 0),
	(260, 43, 'Meta Information', 3, 0),
	(261, 43, 'Prices', 2, 0),
	(262, 43, 'Recurring Profile', 5, 0),
	(263, 44, 'Design', 6, 0),
	(264, 44, 'General', 1, 1),
	(265, 44, 'Gift Options', 7, 0),
	(266, 44, 'Images', 4, 0),
	(267, 44, 'Meta Information', 3, 0),
	(268, 44, 'Prices', 2, 0),
	(269, 44, 'Recurring Profile', 5, 0),
	(270, 45, 'Design', 6, 0),
	(271, 45, 'General', 1, 1),
	(272, 45, 'Gift Options', 7, 0),
	(273, 45, 'Images', 4, 0),
	(274, 45, 'Meta Information', 3, 0),
	(275, 45, 'Prices', 2, 0),
	(276, 45, 'Recurring Profile', 5, 0),
	(277, 46, 'Design', 6, 0),
	(278, 46, 'General', 1, 1),
	(279, 46, 'Gift Options', 7, 0),
	(280, 46, 'Images', 4, 0),
	(281, 46, 'Meta Information', 3, 0),
	(282, 46, 'Prices', 2, 0),
	(283, 46, 'Recurring Profile', 5, 0),
	(284, 47, 'Design', 6, 0),
	(285, 47, 'General', 1, 1),
	(286, 47, 'Gift Options', 7, 0),
	(287, 47, 'Images', 4, 0),
	(288, 47, 'Meta Information', 3, 0),
	(289, 47, 'Prices', 2, 0),
	(290, 47, 'Recurring Profile', 5, 0),
	(291, 48, 'Design', 6, 0),
	(292, 48, 'General', 1, 1),
	(293, 48, 'Gift Options', 7, 0),
	(294, 48, 'Images', 4, 0),
	(295, 48, 'Meta Information', 3, 0),
	(296, 48, 'Prices', 2, 0),
	(297, 48, 'Recurring Profile', 5, 0),
	(298, 49, 'Design', 6, 0),
	(299, 49, 'General', 1, 1),
	(300, 49, 'Gift Options', 7, 0),
	(301, 49, 'Images', 4, 0),
	(302, 49, 'Meta Information', 3, 0),
	(303, 49, 'Prices', 2, 0),
	(304, 49, 'Recurring Profile', 5, 0),
	(305, 50, 'Design', 6, 0),
	(306, 50, 'General', 1, 1),
	(307, 50, 'Gift Options', 7, 0),
	(308, 50, 'Images', 4, 0),
	(309, 50, 'Meta Information', 3, 0),
	(310, 50, 'Prices', 2, 0),
	(311, 50, 'Recurring Profile', 5, 0),
	(312, 51, 'Design', 6, 0),
	(313, 51, 'General', 1, 1),
	(314, 51, 'Gift Options', 7, 0),
	(315, 51, 'Images', 4, 0),
	(316, 51, 'Meta Information', 3, 0),
	(317, 51, 'Prices', 2, 0),
	(318, 51, 'Recurring Profile', 5, 0),
	(319, 52, 'Design', 6, 0),
	(320, 52, 'General', 1, 1),
	(321, 52, 'Gift Options', 7, 0),
	(322, 52, 'Images', 4, 0),
	(323, 52, 'Meta Information', 3, 0),
	(324, 52, 'Prices', 2, 0),
	(325, 52, 'Recurring Profile', 5, 0),
	(333, 53, 'Design', 6, 0),
	(334, 53, 'General', 1, 1),
	(335, 53, 'Gift Options', 7, 0),
	(336, 53, 'Images', 4, 0),
	(337, 53, 'Meta Information', 3, 0),
	(338, 53, 'Prices', 2, 0),
	(339, 53, 'Recurring Profile', 5, 0),
	(340, 54, 'Design', 6, 0),
	(341, 54, 'General', 1, 1),
	(342, 54, 'Gift Options', 7, 0),
	(343, 54, 'Images', 4, 0),
	(344, 54, 'Meta Information', 3, 0),
	(345, 54, 'Prices', 2, 0),
	(346, 54, 'Recurring Profile', 5, 0),
	(347, 55, 'Design', 6, 0),
	(348, 55, 'General', 1, 1),
	(349, 55, 'Gift Options', 7, 0),
	(350, 55, 'Images', 4, 0),
	(351, 55, 'Meta Information', 3, 0),
	(352, 55, 'Prices', 2, 0),
	(353, 55, 'Recurring Profile', 5, 0),
	(354, 56, 'Design', 6, 0),
	(355, 56, 'General', 1, 1),
	(356, 56, 'Gift Options', 7, 0),
	(357, 56, 'Images', 4, 0),
	(358, 56, 'Meta Information', 3, 0),
	(359, 56, 'Prices', 2, 0),
	(360, 56, 'Recurring Profile', 5, 0),
	(361, 57, 'Design', 6, 0),
	(362, 57, 'General', 1, 1),
	(363, 57, 'Gift Options', 7, 0),
	(364, 57, 'Images', 4, 0),
	(365, 57, 'Meta Information', 3, 0),
	(366, 57, 'Prices', 2, 0),
	(367, 57, 'Recurring Profile', 5, 0),
	(368, 58, 'Design', 6, 0),
	(369, 58, 'General', 1, 1),
	(370, 58, 'Gift Options', 7, 0),
	(371, 58, 'Images', 4, 0),
	(372, 58, 'Meta Information', 3, 0),
	(373, 58, 'Prices', 2, 0),
	(374, 58, 'Recurring Profile', 5, 0),
	(375, 59, 'Design', 6, 0),
	(376, 59, 'General', 1, 1),
	(377, 59, 'Gift Options', 7, 0),
	(378, 59, 'Images', 4, 0),
	(379, 59, 'Meta Information', 3, 0),
	(380, 59, 'Prices', 2, 0),
	(381, 59, 'Recurring Profile', 5, 0),
	(382, 60, 'Design', 6, 0),
	(383, 60, 'General', 1, 1),
	(384, 60, 'Gift Options', 7, 0),
	(385, 60, 'Images', 4, 0),
	(386, 60, 'Meta Information', 3, 0),
	(387, 60, 'Prices', 2, 0),
	(388, 60, 'Recurring Profile', 5, 0),
	(389, 61, 'Design', 6, 0),
	(390, 61, 'General', 1, 1),
	(391, 61, 'Gift Options', 7, 0),
	(392, 61, 'Images', 4, 0),
	(393, 61, 'Meta Information', 3, 0),
	(394, 61, 'Prices', 2, 0),
	(395, 61, 'Recurring Profile', 5, 0),
	(396, 62, 'Design', 6, 0),
	(397, 62, 'General', 1, 1),
	(398, 62, 'Gift Options', 7, 0),
	(399, 62, 'Images', 4, 0),
	(400, 62, 'Meta Information', 3, 0),
	(401, 62, 'Prices', 2, 0),
	(402, 62, 'Recurring Profile', 5, 0),
	(403, 63, 'Design', 6, 0),
	(404, 63, 'General', 1, 1),
	(405, 63, 'Gift Options', 7, 0),
	(406, 63, 'Images', 4, 0),
	(407, 63, 'Meta Information', 3, 0),
	(408, 63, 'Prices', 2, 0),
	(409, 63, 'Recurring Profile', 5, 0),
	(410, 64, 'Design', 6, 0),
	(411, 64, 'General', 1, 1),
	(412, 64, 'Gift Options', 7, 0),
	(413, 64, 'Images', 4, 0),
	(414, 64, 'Meta Information', 3, 0),
	(415, 64, 'Prices', 2, 0),
	(416, 64, 'Recurring Profile', 5, 0),
	(417, 65, 'Design', 6, 0),
	(418, 65, 'General', 1, 1),
	(419, 65, 'Gift Options', 7, 0),
	(420, 65, 'Images', 4, 0),
	(421, 65, 'Meta Information', 3, 0),
	(422, 65, 'Prices', 2, 0),
	(423, 65, 'Recurring Profile', 5, 0),
	(424, 66, 'Design', 6, 0),
	(425, 66, 'General', 1, 1),
	(426, 66, 'Gift Options', 7, 0),
	(427, 66, 'Images', 4, 0),
	(428, 66, 'Meta Information', 3, 0),
	(429, 66, 'Prices', 2, 0),
	(430, 66, 'Recurring Profile', 5, 0),
	(438, 67, 'Design', 6, 0),
	(439, 67, 'General', 1, 1),
	(440, 67, 'Gift Options', 7, 0),
	(441, 67, 'Images', 4, 0),
	(442, 67, 'Meta Information', 3, 0),
	(443, 67, 'Prices', 2, 0),
	(444, 67, 'Recurring Profile', 5, 0),
	(452, 68, 'Design', 6, 0),
	(453, 68, 'General', 1, 1),
	(454, 68, 'Gift Options', 7, 0),
	(455, 68, 'Images', 4, 0),
	(456, 68, 'Meta Information', 3, 0),
	(457, 68, 'Prices', 2, 0),
	(458, 68, 'Recurring Profile', 5, 0),
	(459, 69, 'Design', 6, 0),
	(460, 69, 'General', 1, 1),
	(461, 69, 'Gift Options', 7, 0),
	(462, 69, 'Images', 4, 0),
	(463, 69, 'Meta Information', 3, 0),
	(464, 69, 'Prices', 2, 0),
	(465, 69, 'Recurring Profile', 5, 0),
	(466, 70, 'Design', 6, 0),
	(467, 70, 'General', 1, 1),
	(468, 70, 'Gift Options', 7, 0),
	(469, 70, 'Images', 4, 0),
	(470, 70, 'Meta Information', 3, 0),
	(471, 70, 'Prices', 2, 0),
	(472, 70, 'Recurring Profile', 5, 0),
	(473, 71, 'Design', 6, 0),
	(474, 71, 'General', 1, 1),
	(475, 71, 'Gift Options', 7, 0),
	(476, 71, 'Images', 4, 0),
	(477, 71, 'Meta Information', 3, 0),
	(478, 71, 'Prices', 2, 0),
	(479, 71, 'Recurring Profile', 5, 0),
	(480, 72, 'Design', 6, 0),
	(481, 72, 'General', 1, 1),
	(482, 72, 'Gift Options', 7, 0),
	(483, 72, 'Images', 4, 0),
	(484, 72, 'Meta Information', 3, 0),
	(485, 72, 'Prices', 2, 0),
	(486, 72, 'Recurring Profile', 5, 0),
	(487, 73, 'Design', 6, 0),
	(488, 73, 'General', 1, 1),
	(489, 73, 'Gift Options', 7, 0),
	(490, 73, 'Images', 4, 0),
	(491, 73, 'Meta Information', 3, 0),
	(492, 73, 'Prices', 2, 0),
	(493, 73, 'Recurring Profile', 5, 0),
	(494, 74, 'Design', 6, 0),
	(495, 74, 'General', 1, 1),
	(496, 74, 'Gift Options', 7, 0),
	(497, 74, 'Images', 4, 0),
	(498, 74, 'Meta Information', 3, 0),
	(499, 74, 'Prices', 2, 0),
	(500, 74, 'Recurring Profile', 5, 0),
	(501, 75, 'Design', 6, 0),
	(502, 75, 'General', 1, 1),
	(503, 75, 'Gift Options', 7, 0),
	(504, 75, 'Images', 4, 0),
	(505, 75, 'Meta Information', 3, 0),
	(506, 75, 'Prices', 2, 0),
	(507, 75, 'Recurring Profile', 5, 0),
	(508, 76, 'Design', 6, 0),
	(509, 76, 'General', 1, 1),
	(510, 76, 'Gift Options', 7, 0),
	(511, 76, 'Images', 4, 0),
	(512, 76, 'Meta Information', 3, 0),
	(513, 76, 'Prices', 2, 0),
	(514, 76, 'Recurring Profile', 5, 0),
	(515, 77, 'Design', 6, 0),
	(516, 77, 'General', 1, 1),
	(517, 77, 'Gift Options', 7, 0),
	(518, 77, 'Images', 4, 0),
	(519, 77, 'Meta Information', 3, 0),
	(520, 77, 'Prices', 2, 0),
	(521, 77, 'Recurring Profile', 5, 0),
	(522, 78, 'Design', 6, 0),
	(523, 78, 'General', 1, 1),
	(524, 78, 'Gift Options', 7, 0),
	(525, 78, 'Images', 4, 0),
	(526, 78, 'Meta Information', 3, 0),
	(527, 78, 'Prices', 2, 0),
	(528, 78, 'Recurring Profile', 5, 0),
	(529, 79, 'Design', 6, 0),
	(530, 79, 'General', 1, 1),
	(531, 79, 'Gift Options', 7, 0),
	(532, 79, 'Images', 4, 0),
	(533, 79, 'Meta Information', 3, 0),
	(534, 79, 'Prices', 2, 0),
	(535, 79, 'Recurring Profile', 5, 0),
	(536, 80, 'Design', 6, 0),
	(537, 80, 'General', 1, 1),
	(538, 80, 'Gift Options', 7, 0),
	(539, 80, 'Images', 4, 0),
	(540, 80, 'Meta Information', 3, 0),
	(541, 80, 'Prices', 2, 0),
	(542, 80, 'Recurring Profile', 5, 0),
	(543, 81, 'Design', 6, 0),
	(544, 81, 'General', 1, 1),
	(545, 81, 'Gift Options', 7, 0),
	(546, 81, 'Images', 4, 0),
	(547, 81, 'Meta Information', 3, 0),
	(548, 81, 'Prices', 2, 0),
	(549, 81, 'Recurring Profile', 5, 0),
	(550, 82, 'Design', 6, 0),
	(551, 82, 'General', 1, 1),
	(552, 82, 'Gift Options', 7, 0),
	(553, 82, 'Images', 4, 0),
	(554, 82, 'Meta Information', 3, 0),
	(555, 82, 'Prices', 2, 0),
	(556, 82, 'Recurring Profile', 5, 0),
	(557, 83, 'Design', 6, 0),
	(558, 83, 'General', 1, 1),
	(559, 83, 'Gift Options', 7, 0),
	(560, 83, 'Images', 4, 0),
	(561, 83, 'Meta Information', 3, 0),
	(562, 83, 'Prices', 2, 0),
	(563, 83, 'Recurring Profile', 5, 0),
	(564, 84, 'Design', 6, 0),
	(565, 84, 'General', 1, 1),
	(566, 84, 'Gift Options', 7, 0),
	(567, 84, 'Images', 4, 0),
	(568, 84, 'Meta Information', 3, 0),
	(569, 84, 'Prices', 2, 0),
	(570, 84, 'Recurring Profile', 5, 0),
	(571, 85, 'Design', 6, 0),
	(572, 85, 'General', 1, 1),
	(573, 85, 'Gift Options', 7, 0),
	(574, 85, 'Images', 4, 0),
	(575, 85, 'Meta Information', 3, 0),
	(576, 85, 'Prices', 2, 0),
	(577, 85, 'Recurring Profile', 5, 0);
/*!40000 ALTER TABLE `eav_attribute_group` ENABLE KEYS */;


-- Dumping structure for table mag.eav_attribute_label
DROP TABLE IF EXISTS `eav_attribute_label`;
CREATE TABLE IF NOT EXISTS `eav_attribute_label` (
  `attribute_label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`attribute_label_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`),
  CONSTRAINT `FK_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ATTRIBUTE_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1329 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label';

-- Dumping data for table mag.eav_attribute_label: ~44 rows (approximately)
/*!40000 ALTER TABLE `eav_attribute_label` DISABLE KEYS */;
INSERT INTO `eav_attribute_label` (`attribute_label_id`, `attribute_id`, `store_id`, `value`) VALUES
	(1285, 801, 0, 'Custom Field 1'),
	(1286, 801, 1, 'Custom Field 1'),
	(1287, 802, 0, 'Custom Field 2'),
	(1288, 802, 1, 'Custom Field 2'),
	(1289, 803, 0, 'Custom Field 3'),
	(1290, 803, 1, 'Custom Field 3'),
	(1291, 804, 0, 'Custom Field 4'),
	(1292, 804, 1, 'Custom Field 4'),
	(1293, 805, 0, 'Custom Field 5'),
	(1294, 805, 1, 'Custom Field 5'),
	(1295, 806, 0, 'Custom Field 6'),
	(1296, 806, 1, 'Custom Field 6'),
	(1297, 807, 0, 'Length'),
	(1298, 807, 1, 'Length'),
	(1299, 808, 0, 'Height'),
	(1300, 808, 1, 'Height'),
	(1301, 809, 0, 'Width'),
	(1302, 809, 1, 'Width'),
	(1303, 810, 0, 'Container'),
	(1304, 810, 1, 'Container'),
	(1305, 811, 0, 'UPC'),
	(1306, 811, 1, 'UPC'),
	(1307, 812, 0, 'MPN'),
	(1308, 812, 1, 'MPN'),
	(1309, 813, 0, 'EAN'),
	(1310, 813, 1, 'EAN'),
	(1311, 814, 0, 'ISBN'),
	(1312, 814, 1, 'ISBN'),
	(1313, 815, 0, 'Condition'),
	(1314, 815, 1, 'Condition'),
	(1315, 816, 0, 'ProStores Product Number'),
	(1316, 816, 1, 'ProStores Product Number'),
	(1317, 817, 0, 'Site Search Keywords'),
	(1318, 817, 1, 'Site Search Keywords'),
	(1319, 818, 0, 'Google Category'),
	(1320, 818, 1, 'Google Category'),
	(1321, 819, 0, 'Google Age Group'),
	(1322, 819, 1, 'Google Age Group'),
	(1323, 820, 0, 'Google Gender'),
	(1324, 820, 1, 'Google Gender'),
	(1325, 821, 0, 'Google Color'),
	(1326, 821, 1, 'Google Color'),
	(1327, 822, 0, 'Google Size'),
	(1328, 822, 1, 'Google Size');
/*!40000 ALTER TABLE `eav_attribute_label` ENABLE KEYS */;


-- Dumping structure for table mag.eav_attribute_option
DROP TABLE IF EXISTS `eav_attribute_option`;
CREATE TABLE IF NOT EXISTS `eav_attribute_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `IDX_EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `FK_EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option';

-- Dumping data for table mag.eav_attribute_option: ~6 rows (approximately)
/*!40000 ALTER TABLE `eav_attribute_option` DISABLE KEYS */;
INSERT INTO `eav_attribute_option` (`option_id`, `attribute_id`, `sort_order`) VALUES
	(1, 18, 0),
	(2, 18, 1),
	(3, 81, 0),
	(4, 81, 0),
	(5, 81, 0),
	(6, 81, 0);
/*!40000 ALTER TABLE `eav_attribute_option` ENABLE KEYS */;


-- Dumping structure for table mag.eav_attribute_option_value
DROP TABLE IF EXISTS `eav_attribute_option_value`;
CREATE TABLE IF NOT EXISTS `eav_attribute_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`),
  KEY `IDX_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ATTR_OPT_VAL_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=409 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option Value';

-- Dumping data for table mag.eav_attribute_option_value: ~6 rows (approximately)
/*!40000 ALTER TABLE `eav_attribute_option_value` DISABLE KEYS */;
INSERT INTO `eav_attribute_option_value` (`value_id`, `option_id`, `store_id`, `value`) VALUES
	(1, 1, 0, 'Male'),
	(2, 2, 0, 'Female'),
	(3, 3, 0, 'Evergreen Molding'),
	(4, 4, 0, 'FrameWorxz'),
	(5, 5, 0, 'House of Antique Hardware'),
	(6, 6, 0, 'Swanco');
/*!40000 ALTER TABLE `eav_attribute_option_value` ENABLE KEYS */;


-- Dumping structure for table mag.eav_attribute_set
DROP TABLE IF EXISTS `eav_attribute_set`;
CREATE TABLE IF NOT EXISTS `eav_attribute_set` (
  `attribute_set_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Set Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`attribute_set_id`),
  UNIQUE KEY `UNQ_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`),
  KEY `IDX_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`),
  CONSTRAINT `FK_EAV_ATTR_SET_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Set';

-- Dumping data for table mag.eav_attribute_set: ~9 rows (approximately)
/*!40000 ALTER TABLE `eav_attribute_set` DISABLE KEYS */;
INSERT INTO `eav_attribute_set` (`attribute_set_id`, `entity_type_id`, `attribute_set_name`, `sort_order`) VALUES
	(1, 1, 'Default', 1),
	(2, 2, 'Default', 1),
	(3, 3, 'Default', 1),
	(4, 4, 'Default', 1),
	(5, 5, 'Default', 1),
	(6, 6, 'Default', 1),
	(7, 7, 'Default', 1),
	(8, 8, 'Default', 1),
	(85, 4, 'C2c_8a13731495d4cc427c411104f5e8a81e', 0);
/*!40000 ALTER TABLE `eav_attribute_set` ENABLE KEYS */;


-- Dumping structure for table mag.eav_entity
DROP TABLE IF EXISTS `eav_entity`;
CREATE TABLE IF NOT EXISTS `eav_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_STORE_ID` (`store_id`),
  CONSTRAINT `FK_EAV_ENTITY_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTITY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity';

-- Dumping data for table mag.eav_entity: ~0 rows (approximately)
/*!40000 ALTER TABLE `eav_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `eav_entity` ENABLE KEYS */;


-- Dumping structure for table mag.eav_entity_attribute
DROP TABLE IF EXISTS `eav_entity_attribute`;
CREATE TABLE IF NOT EXISTS `eav_entity_attribute` (
  `entity_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`entity_attribute_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`),
  KEY `IDX_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  KEY `IDX_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `FK_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTT_ATTR_ATTR_GROUP_ID_EAV_ATTR_GROUP_ATTR_GROUP_ID` FOREIGN KEY (`attribute_group_id`) REFERENCES `eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6829 DEFAULT CHARSET=utf8 COMMENT='Eav Entity Attributes';

-- Dumping data for table mag.eav_entity_attribute: ~213 rows (approximately)
/*!40000 ALTER TABLE `eav_entity_attribute` DISABLE KEYS */;
INSERT INTO `eav_entity_attribute` (`entity_attribute_id`, `entity_type_id`, `attribute_set_id`, `attribute_group_id`, `attribute_id`, `sort_order`) VALUES
	(1, 1, 1, 1, 1, 10),
	(2, 1, 1, 1, 2, 0),
	(3, 1, 1, 1, 3, 20),
	(4, 1, 1, 1, 4, 30),
	(5, 1, 1, 1, 5, 40),
	(6, 1, 1, 1, 6, 50),
	(7, 1, 1, 1, 7, 60),
	(8, 1, 1, 1, 8, 70),
	(9, 1, 1, 1, 9, 80),
	(10, 1, 1, 1, 10, 25),
	(11, 1, 1, 1, 11, 90),
	(12, 1, 1, 1, 12, 0),
	(13, 1, 1, 1, 13, 0),
	(14, 1, 1, 1, 14, 0),
	(15, 1, 1, 1, 15, 100),
	(16, 1, 1, 1, 16, 0),
	(17, 1, 1, 1, 17, 86),
	(18, 1, 1, 1, 18, 110),
	(19, 2, 2, 2, 19, 10),
	(20, 2, 2, 2, 20, 20),
	(21, 2, 2, 2, 21, 30),
	(22, 2, 2, 2, 22, 40),
	(23, 2, 2, 2, 23, 50),
	(24, 2, 2, 2, 24, 60),
	(25, 2, 2, 2, 25, 70),
	(26, 2, 2, 2, 26, 80),
	(27, 2, 2, 2, 27, 90),
	(28, 2, 2, 2, 28, 100),
	(29, 2, 2, 2, 29, 100),
	(30, 2, 2, 2, 30, 110),
	(31, 2, 2, 2, 31, 120),
	(32, 2, 2, 2, 32, 130),
	(33, 1, 1, 1, 33, 111),
	(34, 1, 1, 1, 34, 112),
	(35, 1, 1, 1, 35, 28),
	(36, 2, 2, 2, 36, 140),
	(37, 2, 2, 2, 37, 132),
	(38, 2, 2, 2, 38, 133),
	(39, 2, 2, 2, 39, 134),
	(40, 2, 2, 2, 40, 135),
	(41, 3, 3, 4, 41, 1),
	(42, 3, 3, 4, 42, 2),
	(43, 3, 3, 4, 43, 3),
	(44, 3, 3, 4, 44, 4),
	(45, 3, 3, 4, 45, 5),
	(46, 3, 3, 4, 46, 6),
	(47, 3, 3, 4, 47, 7),
	(48, 3, 3, 4, 48, 8),
	(49, 3, 3, 5, 49, 10),
	(50, 3, 3, 5, 50, 20),
	(51, 3, 3, 5, 51, 30),
	(52, 3, 3, 4, 52, 12),
	(53, 3, 3, 4, 53, 13),
	(54, 3, 3, 4, 54, 14),
	(55, 3, 3, 4, 55, 15),
	(56, 3, 3, 4, 56, 16),
	(57, 3, 3, 4, 57, 17),
	(58, 3, 3, 6, 58, 10),
	(59, 3, 3, 6, 59, 30),
	(60, 3, 3, 6, 60, 40),
	(61, 3, 3, 6, 61, 50),
	(62, 3, 3, 6, 62, 60),
	(63, 3, 3, 4, 63, 24),
	(64, 3, 3, 4, 64, 25),
	(65, 3, 3, 5, 65, 40),
	(66, 3, 3, 5, 66, 50),
	(67, 3, 3, 4, 67, 10),
	(68, 3, 3, 6, 68, 5),
	(69, 3, 3, 6, 69, 6),
	(70, 3, 3, 5, 70, 51),
	(71, 4, 4, 7, 71, 1),
	(72, 4, 4, 7, 72, 2),
	(73, 4, 4, 7, 73, 3),
	(74, 4, 4, 7, 74, 4),
	(75, 4, 4, 8, 75, 1),
	(76, 4, 4, 8, 76, 3),
	(77, 4, 4, 8, 77, 4),
	(78, 4, 4, 8, 78, 5),
	(79, 4, 4, 8, 79, 6),
	(80, 4, 4, 7, 80, 5),
	(81, 4, 4, 9, 82, 1),
	(82, 4, 4, 9, 83, 2),
	(83, 4, 4, 9, 84, 3),
	(84, 4, 4, 10, 85, 1),
	(85, 4, 4, 10, 86, 2),
	(86, 4, 4, 10, 87, 3),
	(87, 4, 4, 10, 88, 4),
	(88, 4, 4, 7, 89, 6),
	(89, 4, 4, 8, 90, 2),
	(90, 4, 4, 8, 91, 7),
	(91, 4, 4, 7, 93, 7),
	(92, 4, 4, 7, 94, 8),
	(93, 4, 4, 10, 95, 5),
	(94, 4, 4, 7, 96, 9),
	(95, 4, 4, 7, 97, 10),
	(96, 4, 4, 7, 98, 11),
	(97, 4, 4, 8, 99, 8),
	(98, 4, 4, 11, 100, 1),
	(99, 4, 4, 11, 101, 2),
	(100, 4, 4, 7, 102, 12),
	(101, 4, 4, 12, 103, 1),
	(102, 4, 4, 12, 104, 2),
	(103, 4, 4, 12, 105, 3),
	(104, 4, 4, 12, 106, 4),
	(105, 4, 4, 12, 107, 5),
	(106, 4, 4, 7, 108, 13),
	(107, 4, 4, 12, 109, 6),
	(108, 4, 4, 7, 110, 14),
	(109, 4, 4, 7, 111, 15),
	(110, 4, 4, 7, 112, 16),
	(111, 4, 4, 7, 113, 17),
	(112, 4, 4, 7, 114, 18),
	(113, 4, 4, 7, 115, 19),
	(114, 4, 4, 7, 116, 20),
	(115, 4, 4, 7, 117, 21),
	(116, 4, 4, 8, 118, 9),
	(117, 4, 4, 8, 119, 10),
	(118, 4, 4, 8, 120, 11),
	(119, 4, 4, 8, 121, 12),
	(120, 4, 4, 17, 122, 1),
	(121, 4, 4, 7, 123, 22),
	(122, 4, 4, 7, 124, 23),
	(123, 4, 4, 7, 125, 24),
	(124, 4, 4, 8, 126, 13),
	(125, 4, 4, 7, 127, 25),
	(126, 4, 4, 7, 128, 26),
	(127, 4, 4, 7, 129, 27),
	(128, 4, 4, 7, 130, 28),
	(129, 4, 4, 7, 131, 29),
	(130, 3, 3, 4, 132, 4),
	(1095, 4, 4, 7, 81, 61),
	(6747, 4, 85, 572, 71, 1),
	(6748, 4, 85, 572, 72, 2),
	(6749, 4, 85, 572, 73, 3),
	(6750, 4, 85, 572, 74, 4),
	(6751, 4, 85, 576, 75, 1),
	(6752, 4, 85, 576, 76, 3),
	(6753, 4, 85, 576, 77, 4),
	(6754, 4, 85, 576, 78, 5),
	(6755, 4, 85, 576, 79, 6),
	(6756, 4, 85, 572, 80, 5),
	(6757, 4, 85, 572, 81, 61),
	(6758, 4, 85, 575, 82, 1),
	(6759, 4, 85, 575, 83, 2),
	(6760, 4, 85, 575, 84, 3),
	(6761, 4, 85, 574, 85, 1),
	(6762, 4, 85, 574, 86, 2),
	(6763, 4, 85, 574, 87, 3),
	(6764, 4, 85, 574, 88, 4),
	(6765, 4, 85, 572, 89, 6),
	(6766, 4, 85, 576, 90, 2),
	(6767, 4, 85, 576, 91, 7),
	(6768, 4, 85, 572, 93, 7),
	(6769, 4, 85, 572, 94, 8),
	(6770, 4, 85, 574, 95, 5),
	(6771, 4, 85, 572, 96, 9),
	(6772, 4, 85, 572, 97, 10),
	(6773, 4, 85, 572, 98, 11),
	(6774, 4, 85, 576, 99, 8),
	(6775, 4, 85, 577, 100, 1),
	(6776, 4, 85, 577, 101, 2),
	(6777, 4, 85, 572, 102, 12),
	(6778, 4, 85, 571, 103, 1),
	(6779, 4, 85, 571, 104, 2),
	(6780, 4, 85, 571, 105, 3),
	(6781, 4, 85, 571, 106, 4),
	(6782, 4, 85, 571, 107, 5),
	(6783, 4, 85, 572, 108, 13),
	(6784, 4, 85, 571, 109, 6),
	(6785, 4, 85, 572, 110, 14),
	(6786, 4, 85, 572, 111, 15),
	(6787, 4, 85, 572, 112, 16),
	(6788, 4, 85, 572, 113, 17),
	(6789, 4, 85, 572, 114, 18),
	(6790, 4, 85, 572, 115, 19),
	(6791, 4, 85, 572, 116, 20),
	(6792, 4, 85, 572, 117, 21),
	(6793, 4, 85, 576, 118, 9),
	(6794, 4, 85, 576, 119, 10),
	(6795, 4, 85, 576, 120, 11),
	(6796, 4, 85, 576, 121, 12),
	(6797, 4, 85, 573, 122, 1),
	(6798, 4, 85, 572, 123, 22),
	(6799, 4, 85, 572, 124, 23),
	(6800, 4, 85, 572, 125, 24),
	(6801, 4, 85, 576, 126, 13),
	(6802, 4, 85, 572, 127, 25),
	(6803, 4, 85, 572, 128, 26),
	(6804, 4, 85, 572, 129, 27),
	(6805, 4, 85, 572, 130, 28),
	(6806, 4, 85, 572, 131, 29),
	(6807, 4, 85, 572, 801, 101),
	(6808, 4, 85, 572, 802, 102),
	(6809, 4, 85, 572, 803, 103),
	(6810, 4, 85, 572, 804, 104),
	(6811, 4, 85, 572, 805, 105),
	(6812, 4, 85, 572, 806, 106),
	(6813, 4, 85, 572, 807, 107),
	(6814, 4, 85, 572, 808, 108),
	(6815, 4, 85, 572, 809, 109),
	(6816, 4, 85, 572, 810, 110),
	(6817, 4, 85, 572, 811, 111),
	(6818, 4, 85, 572, 812, 112),
	(6819, 4, 85, 572, 813, 113),
	(6820, 4, 85, 572, 814, 114),
	(6821, 4, 85, 572, 815, 115),
	(6822, 4, 85, 572, 816, 116),
	(6823, 4, 85, 572, 817, 117),
	(6824, 4, 85, 572, 818, 118),
	(6825, 4, 85, 572, 819, 119),
	(6826, 4, 85, 572, 820, 120),
	(6827, 4, 85, 572, 821, 121),
	(6828, 4, 85, 572, 822, 122);
/*!40000 ALTER TABLE `eav_entity_attribute` ENABLE KEYS */;


-- Dumping structure for table mag.eav_entity_datetime
DROP TABLE IF EXISTS `eav_entity_datetime`;
CREATE TABLE IF NOT EXISTS `eav_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`),
  CONSTRAINT `FK_EAV_ENTITY_DATETIME_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- Dumping data for table mag.eav_entity_datetime: ~0 rows (approximately)
/*!40000 ALTER TABLE `eav_entity_datetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `eav_entity_datetime` ENABLE KEYS */;


-- Dumping structure for table mag.eav_entity_decimal
DROP TABLE IF EXISTS `eav_entity_decimal`;
CREATE TABLE IF NOT EXISTS `eav_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`),
  CONSTRAINT `FK_EAV_ENTITY_DECIMAL_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- Dumping data for table mag.eav_entity_decimal: ~0 rows (approximately)
/*!40000 ALTER TABLE `eav_entity_decimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `eav_entity_decimal` ENABLE KEYS */;


-- Dumping structure for table mag.eav_entity_int
DROP TABLE IF EXISTS `eav_entity_int`;
CREATE TABLE IF NOT EXISTS `eav_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`),
  CONSTRAINT `FK_EAV_ENTITY_INT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTITY_INT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- Dumping data for table mag.eav_entity_int: ~0 rows (approximately)
/*!40000 ALTER TABLE `eav_entity_int` DISABLE KEYS */;
/*!40000 ALTER TABLE `eav_entity_int` ENABLE KEYS */;


-- Dumping structure for table mag.eav_entity_store
DROP TABLE IF EXISTS `eav_entity_store`;
CREATE TABLE IF NOT EXISTS `eav_entity_store` (
  `entity_store_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Store Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented Id',
  PRIMARY KEY (`entity_store_id`),
  KEY `IDX_EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_EAV_ENTITY_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTT_STORE_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Store';

-- Dumping data for table mag.eav_entity_store: ~0 rows (approximately)
/*!40000 ALTER TABLE `eav_entity_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `eav_entity_store` ENABLE KEYS */;


-- Dumping structure for table mag.eav_entity_text
DROP TABLE IF EXISTS `eav_entity_text`;
CREATE TABLE IF NOT EXISTS `eav_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_TEXT_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  CONSTRAINT `FK_EAV_ENTITY_TEXT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTITY_TEXT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- Dumping data for table mag.eav_entity_text: ~0 rows (approximately)
/*!40000 ALTER TABLE `eav_entity_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `eav_entity_text` ENABLE KEYS */;


-- Dumping structure for table mag.eav_entity_type
DROP TABLE IF EXISTS `eav_entity_type`;
CREATE TABLE IF NOT EXISTS `eav_entity_type` (
  `entity_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Type Id',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity Id Field',
  `is_data_sharing` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set Id',
  `increment_model` varchar(255) DEFAULT '' COMMENT 'Increment Model',
  `increment_per_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) unsigned NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT '' COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT NULL COMMENT 'Entity Attribute Collection',
  PRIMARY KEY (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type';

-- Dumping data for table mag.eav_entity_type: ~8 rows (approximately)
/*!40000 ALTER TABLE `eav_entity_type` DISABLE KEYS */;
INSERT INTO `eav_entity_type` (`entity_type_id`, `entity_type_code`, `entity_model`, `attribute_model`, `entity_table`, `value_table_prefix`, `entity_id_field`, `is_data_sharing`, `data_sharing_key`, `default_attribute_set_id`, `increment_model`, `increment_per_store`, `increment_pad_length`, `increment_pad_char`, `additional_attribute_table`, `entity_attribute_collection`) VALUES
	(1, 'customer', 'customer/customer', 'customer/attribute', 'customer/entity', NULL, NULL, 1, 'default', 1, 'eav/entity_increment_numeric', 0, 8, '0', 'customer/eav_attribute', 'customer/attribute_collection'),
	(2, 'customer_address', 'customer/address', 'customer/attribute', 'customer/address_entity', NULL, NULL, 1, 'default', 2, NULL, 0, 8, '0', 'customer/eav_attribute', 'customer/address_attribute_collection'),
	(3, 'catalog_category', 'catalog/category', 'catalog/resource_eav_attribute', 'catalog/category', NULL, NULL, 1, 'default', 3, NULL, 0, 8, '0', 'catalog/eav_attribute', 'catalog/category_attribute_collection'),
	(4, 'catalog_product', 'catalog/product', 'catalog/resource_eav_attribute', 'catalog/product', NULL, NULL, 1, 'default', 4, NULL, 0, 8, '0', 'catalog/eav_attribute', 'catalog/product_attribute_collection'),
	(5, 'order', 'sales/order', NULL, 'sales/order', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
	(6, 'invoice', 'sales/order_invoice', NULL, 'sales/invoice', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
	(7, 'creditmemo', 'sales/order_creditmemo', NULL, 'sales/creditmemo', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
	(8, 'shipment', 'sales/order_shipment', NULL, 'sales/shipment', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL);
/*!40000 ALTER TABLE `eav_entity_type` ENABLE KEYS */;


-- Dumping structure for table mag.eav_entity_varchar
DROP TABLE IF EXISTS `eav_entity_varchar`;
CREATE TABLE IF NOT EXISTS `eav_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`),
  CONSTRAINT `FK_EAV_ENTITY_VARCHAR_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTITY_VARCHAR_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- Dumping data for table mag.eav_entity_varchar: ~0 rows (approximately)
/*!40000 ALTER TABLE `eav_entity_varchar` DISABLE KEYS */;
/*!40000 ALTER TABLE `eav_entity_varchar` ENABLE KEYS */;


-- Dumping structure for table mag.eav_form_element
DROP TABLE IF EXISTS `eav_form_element`;
CREATE TABLE IF NOT EXISTS `eav_form_element` (
  `element_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Element Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `fieldset_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Fieldset Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`element_id`),
  UNIQUE KEY `UNQ_EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`),
  KEY `IDX_EAV_FORM_ELEMENT_TYPE_ID` (`type_id`),
  KEY `IDX_EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`),
  KEY `IDX_EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `FK_EAV_FORM_ELEMENT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_FORM_ELEMENT_FIELDSET_ID_EAV_FORM_FIELDSET_FIELDSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_FORM_ELEMENT_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='Eav Form Element';

-- Dumping data for table mag.eav_form_element: ~52 rows (approximately)
/*!40000 ALTER TABLE `eav_form_element` DISABLE KEYS */;
INSERT INTO `eav_form_element` (`element_id`, `type_id`, `fieldset_id`, `attribute_id`, `sort_order`) VALUES
	(1, 1, NULL, 20, 0),
	(2, 1, NULL, 22, 1),
	(3, 1, NULL, 24, 2),
	(4, 1, NULL, 9, 3),
	(5, 1, NULL, 25, 4),
	(6, 1, NULL, 26, 5),
	(7, 1, NULL, 28, 6),
	(8, 1, NULL, 30, 7),
	(9, 1, NULL, 27, 8),
	(10, 1, NULL, 31, 9),
	(11, 1, NULL, 32, 10),
	(12, 2, NULL, 20, 0),
	(13, 2, NULL, 22, 1),
	(14, 2, NULL, 24, 2),
	(15, 2, NULL, 9, 3),
	(16, 2, NULL, 25, 4),
	(17, 2, NULL, 26, 5),
	(18, 2, NULL, 28, 6),
	(19, 2, NULL, 30, 7),
	(20, 2, NULL, 27, 8),
	(21, 2, NULL, 31, 9),
	(22, 2, NULL, 32, 10),
	(23, 3, NULL, 20, 0),
	(24, 3, NULL, 22, 1),
	(25, 3, NULL, 24, 2),
	(26, 3, NULL, 25, 3),
	(27, 3, NULL, 26, 4),
	(28, 3, NULL, 28, 5),
	(29, 3, NULL, 30, 6),
	(30, 3, NULL, 27, 7),
	(31, 3, NULL, 31, 8),
	(32, 3, NULL, 32, 9),
	(33, 4, NULL, 20, 0),
	(34, 4, NULL, 22, 1),
	(35, 4, NULL, 24, 2),
	(36, 4, NULL, 25, 3),
	(37, 4, NULL, 26, 4),
	(38, 4, NULL, 28, 5),
	(39, 4, NULL, 30, 6),
	(40, 4, NULL, 27, 7),
	(41, 4, NULL, 31, 8),
	(42, 4, NULL, 32, 9),
	(43, 5, 1, 5, 0),
	(44, 5, 1, 7, 1),
	(45, 5, 1, 9, 2),
	(46, 5, 2, 24, 0),
	(47, 5, 2, 31, 1),
	(48, 5, 2, 25, 2),
	(49, 5, 2, 26, 3),
	(50, 5, 2, 28, 4),
	(51, 5, 2, 30, 5),
	(52, 5, 2, 27, 6);
/*!40000 ALTER TABLE `eav_form_element` ENABLE KEYS */;


-- Dumping structure for table mag.eav_form_fieldset
DROP TABLE IF EXISTS `eav_form_fieldset`;
CREATE TABLE IF NOT EXISTS `eav_form_fieldset` (
  `fieldset_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Fieldset Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `UNQ_EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`),
  KEY `IDX_EAV_FORM_FIELDSET_TYPE_ID` (`type_id`),
  CONSTRAINT `FK_EAV_FORM_FIELDSET_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset';

-- Dumping data for table mag.eav_form_fieldset: ~2 rows (approximately)
/*!40000 ALTER TABLE `eav_form_fieldset` DISABLE KEYS */;
INSERT INTO `eav_form_fieldset` (`fieldset_id`, `type_id`, `code`, `sort_order`) VALUES
	(1, 5, 'general', 1),
	(2, 5, 'address', 2);
/*!40000 ALTER TABLE `eav_form_fieldset` ENABLE KEYS */;


-- Dumping structure for table mag.eav_form_fieldset_label
DROP TABLE IF EXISTS `eav_form_fieldset_label`;
CREATE TABLE IF NOT EXISTS `eav_form_fieldset_label` (
  `fieldset_id` smallint(5) unsigned NOT NULL COMMENT 'Fieldset Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`fieldset_id`,`store_id`),
  KEY `IDX_EAV_FORM_FIELDSET_LABEL_FIELDSET_ID` (`fieldset_id`),
  KEY `IDX_EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`),
  CONSTRAINT `FK_EAV_FORM_FIELDSET_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_FORM_FSET_LBL_FSET_ID_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset Label';

-- Dumping data for table mag.eav_form_fieldset_label: ~2 rows (approximately)
/*!40000 ALTER TABLE `eav_form_fieldset_label` DISABLE KEYS */;
INSERT INTO `eav_form_fieldset_label` (`fieldset_id`, `store_id`, `label`) VALUES
	(1, 0, 'Personal Information'),
	(2, 0, 'Address Information');
/*!40000 ALTER TABLE `eav_form_fieldset_label` ENABLE KEYS */;


-- Dumping structure for table mag.eav_form_type
DROP TABLE IF EXISTS `eav_form_type`;
CREATE TABLE IF NOT EXISTS `eav_form_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `UNQ_EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`),
  KEY `IDX_EAV_FORM_TYPE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_EAV_FORM_TYPE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Eav Form Type';

-- Dumping data for table mag.eav_form_type: ~5 rows (approximately)
/*!40000 ALTER TABLE `eav_form_type` DISABLE KEYS */;
INSERT INTO `eav_form_type` (`type_id`, `code`, `label`, `is_system`, `theme`, `store_id`) VALUES
	(1, 'checkout_onepage_register', 'checkout_onepage_register', 1, '', 0),
	(2, 'checkout_onepage_register_guest', 'checkout_onepage_register_guest', 1, '', 0),
	(3, 'checkout_onepage_billing_address', 'checkout_onepage_billing_address', 1, '', 0),
	(4, 'checkout_onepage_shipping_address', 'checkout_onepage_shipping_address', 1, '', 0),
	(5, 'checkout_multishipping_register', 'checkout_multishipping_register', 1, '', 0);
/*!40000 ALTER TABLE `eav_form_type` ENABLE KEYS */;


-- Dumping structure for table mag.eav_form_type_entity
DROP TABLE IF EXISTS `eav_form_type_entity`;
CREATE TABLE IF NOT EXISTS `eav_form_type_entity` (
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`type_id`,`entity_type_id`),
  KEY `IDX_EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  CONSTRAINT `FK_EAV_FORM_TYPE_ENTITY_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_FORM_TYPE_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type Entity';

-- Dumping data for table mag.eav_form_type_entity: ~8 rows (approximately)
/*!40000 ALTER TABLE `eav_form_type_entity` DISABLE KEYS */;
INSERT INTO `eav_form_type_entity` (`type_id`, `entity_type_id`) VALUES
	(1, 1),
	(1, 2),
	(2, 1),
	(2, 2),
	(3, 2),
	(4, 2),
	(5, 1),
	(5, 2);
/*!40000 ALTER TABLE `eav_form_type_entity` ENABLE KEYS */;


-- Dumping structure for table mag.gift_message
DROP TABLE IF EXISTS `gift_message`;
CREATE TABLE IF NOT EXISTS `gift_message` (
  `gift_message_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'GiftMessage Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `sender` varchar(255) DEFAULT NULL COMMENT 'Sender',
  `recipient` varchar(255) DEFAULT NULL COMMENT 'Recipient',
  `message` text COMMENT 'Message',
  PRIMARY KEY (`gift_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gift Message';

-- Dumping data for table mag.gift_message: ~0 rows (approximately)
/*!40000 ALTER TABLE `gift_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_message` ENABLE KEYS */;


-- Dumping structure for table mag.importexport_importdata
DROP TABLE IF EXISTS `importexport_importdata`;
CREATE TABLE IF NOT EXISTS `importexport_importdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `entity` varchar(50) NOT NULL COMMENT 'Entity',
  `behavior` varchar(10) NOT NULL DEFAULT 'append' COMMENT 'Behavior',
  `data` longtext COMMENT 'Data',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import Data Table';

-- Dumping data for table mag.importexport_importdata: ~0 rows (approximately)
/*!40000 ALTER TABLE `importexport_importdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `importexport_importdata` ENABLE KEYS */;


-- Dumping structure for table mag.index_event
DROP TABLE IF EXISTS `index_event`;
CREATE TABLE IF NOT EXISTS `index_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `type` varchar(64) NOT NULL COMMENT 'Type',
  `entity` varchar(64) NOT NULL COMMENT 'Entity',
  `entity_pk` bigint(20) DEFAULT NULL COMMENT 'Entity Primary Key',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `old_data` mediumtext COMMENT 'Old Data',
  `new_data` mediumtext COMMENT 'New Data',
  PRIMARY KEY (`event_id`),
  UNIQUE KEY `UNQ_INDEX_EVENT_TYPE_ENTITY_ENTITY_PK` (`type`,`entity`,`entity_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='Index Event';

-- Dumping data for table mag.index_event: ~14 rows (approximately)
/*!40000 ALTER TABLE `index_event` DISABLE KEYS */;
INSERT INTO `index_event` (`event_id`, `type`, `entity`, `entity_pk`, `created_at`, `old_data`, `new_data`) VALUES
	(1, 'save', 'catalog_category', 1, '2014-10-10 10:03:08', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
	(2, 'save', 'catalog_category', 2, '2014-10-10 10:03:08', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
	(3, 'save', 'cataloginventory_stock_item', 43, '2014-10-10 14:27:18', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
	(4, 'save', 'catalog_product', 43, '2014-10-10 14:27:18', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
	(5, 'catalog_reindex_price', 'catalog_product', 43, '2014-10-10 14:27:18', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
	(6, 'save', 'cataloginventory_stock_item', 26, '2014-10-10 14:29:17', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
	(7, 'save', 'catalog_product', 26, '2014-10-10 14:29:17', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
	(8, 'catalog_reindex_price', 'catalog_product', 26, '2014-10-10 14:29:17', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
	(9, 'save', 'cataloginventory_stock_item', 25, '2014-10-10 14:29:27', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
	(10, 'save', 'catalog_product', 25, '2014-10-10 14:29:27', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
	(11, 'catalog_reindex_price', 'catalog_product', 25, '2014-10-10 14:29:27', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
	(12, 'save', 'cataloginventory_stock_item', 24, '2014-10-10 14:29:35', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
	(13, 'save', 'catalog_product', 24, '2014-10-10 14:29:36', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
	(14, 'catalog_reindex_price', 'catalog_product', 24, '2014-10-10 14:29:36', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}');
/*!40000 ALTER TABLE `index_event` ENABLE KEYS */;


-- Dumping structure for table mag.index_process
DROP TABLE IF EXISTS `index_process`;
CREATE TABLE IF NOT EXISTS `index_process` (
  `process_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Process Id',
  `indexer_code` varchar(32) NOT NULL COMMENT 'Indexer Code',
  `status` varchar(15) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `started_at` timestamp NULL DEFAULT NULL COMMENT 'Started At',
  `ended_at` timestamp NULL DEFAULT NULL COMMENT 'Ended At',
  `mode` varchar(9) NOT NULL DEFAULT 'real_time' COMMENT 'Mode',
  PRIMARY KEY (`process_id`),
  UNIQUE KEY `UNQ_INDEX_PROCESS_INDEXER_CODE` (`indexer_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Index Process';

-- Dumping data for table mag.index_process: ~9 rows (approximately)
/*!40000 ALTER TABLE `index_process` DISABLE KEYS */;
INSERT INTO `index_process` (`process_id`, `indexer_code`, `status`, `started_at`, `ended_at`, `mode`) VALUES
	(1, 'catalog_product_attribute', 'pending', '2014-10-17 11:59:14', '2014-10-17 11:59:15', 'real_time'),
	(2, 'catalog_product_price', 'pending', '2014-10-17 11:59:15', '2014-10-17 11:59:15', 'real_time'),
	(3, 'catalog_url', 'pending', '2014-10-17 11:59:15', '2014-10-17 11:59:15', 'real_time'),
	(4, 'catalog_product_flat', 'pending', '2014-10-10 11:03:47', '2014-10-10 11:03:47', 'real_time'),
	(5, 'catalog_category_flat', 'pending', '2014-10-14 16:21:53', '2014-10-14 16:21:53', 'real_time'),
	(6, 'catalog_category_product', 'pending', '2014-10-17 11:59:15', '2014-10-17 11:59:15', 'real_time'),
	(7, 'catalogsearch_fulltext', 'pending', '2014-10-17 11:59:15', '2014-10-17 11:59:15', 'real_time'),
	(8, 'cataloginventory_stock', 'pending', '2014-10-17 11:59:14', '2014-10-17 11:59:14', 'real_time'),
	(9, 'tag_summary', 'pending', '2014-10-17 11:59:15', '2014-10-17 11:59:15', 'real_time');
/*!40000 ALTER TABLE `index_process` ENABLE KEYS */;


-- Dumping structure for table mag.index_process_event
DROP TABLE IF EXISTS `index_process_event`;
CREATE TABLE IF NOT EXISTS `index_process_event` (
  `process_id` int(10) unsigned NOT NULL COMMENT 'Process Id',
  `event_id` bigint(20) unsigned NOT NULL COMMENT 'Event Id',
  `status` varchar(7) NOT NULL DEFAULT 'new' COMMENT 'Status',
  PRIMARY KEY (`process_id`,`event_id`),
  KEY `IDX_INDEX_PROCESS_EVENT_EVENT_ID` (`event_id`),
  CONSTRAINT `FK_INDEX_PROCESS_EVENT_EVENT_ID_INDEX_EVENT_EVENT_ID` FOREIGN KEY (`event_id`) REFERENCES `index_event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_INDEX_PROCESS_EVENT_PROCESS_ID_INDEX_PROCESS_PROCESS_ID` FOREIGN KEY (`process_id`) REFERENCES `index_process` (`process_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Index Process Event';

-- Dumping data for table mag.index_process_event: ~0 rows (approximately)
/*!40000 ALTER TABLE `index_process_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_process_event` ENABLE KEYS */;


-- Dumping structure for table mag.log_customer
DROP TABLE IF EXISTS `log_customer`;
CREATE TABLE IF NOT EXISTS `log_customer` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `customer_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `login_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Login Time',
  `logout_at` timestamp NULL DEFAULT NULL COMMENT 'Logout Time',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`log_id`),
  KEY `IDX_LOG_CUSTOMER_VISITOR_ID` (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Customers Table';

-- Dumping data for table mag.log_customer: ~0 rows (approximately)
/*!40000 ALTER TABLE `log_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_customer` ENABLE KEYS */;


-- Dumping structure for table mag.log_quote
DROP TABLE IF EXISTS `log_quote`;
CREATE TABLE IF NOT EXISTS `log_quote` (
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Deletion Time',
  PRIMARY KEY (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Quotes Table';

-- Dumping data for table mag.log_quote: ~1 rows (approximately)
/*!40000 ALTER TABLE `log_quote` DISABLE KEYS */;
INSERT INTO `log_quote` (`quote_id`, `visitor_id`, `created_at`, `deleted_at`) VALUES
	(1, 16, '2014-10-10 14:56:13', NULL);
/*!40000 ALTER TABLE `log_quote` ENABLE KEYS */;


-- Dumping structure for table mag.log_summary
DROP TABLE IF EXISTS `log_summary`;
CREATE TABLE IF NOT EXISTS `log_summary` (
  `summary_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Summary ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `type_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Type ID',
  `visitor_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Visitor Count',
  `customer_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer Count',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date',
  PRIMARY KEY (`summary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Summary Table';

-- Dumping data for table mag.log_summary: ~0 rows (approximately)
/*!40000 ALTER TABLE `log_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_summary` ENABLE KEYS */;


-- Dumping structure for table mag.log_summary_type
DROP TABLE IF EXISTS `log_summary_type`;
CREATE TABLE IF NOT EXISTS `log_summary_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type ID',
  `type_code` varchar(64) DEFAULT NULL COMMENT 'Type Code',
  `period` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Period',
  `period_type` varchar(6) NOT NULL DEFAULT 'MINUTE' COMMENT 'Period Type',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Log Summary Types Table';

-- Dumping data for table mag.log_summary_type: ~2 rows (approximately)
/*!40000 ALTER TABLE `log_summary_type` DISABLE KEYS */;
INSERT INTO `log_summary_type` (`type_id`, `type_code`, `period`, `period_type`) VALUES
	(1, 'hour', 1, 'HOUR'),
	(2, 'day', 1, 'DAY');
/*!40000 ALTER TABLE `log_summary_type` ENABLE KEYS */;


-- Dumping structure for table mag.log_url
DROP TABLE IF EXISTS `log_url`;
CREATE TABLE IF NOT EXISTS `log_url` (
  `url_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'URL ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `visit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Visit Time',
  KEY `IDX_LOG_URL_VISITOR_ID` (`visitor_id`),
  KEY `url_id` (`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log URL Table';

-- Dumping data for table mag.log_url: ~431 rows (approximately)
/*!40000 ALTER TABLE `log_url` DISABLE KEYS */;
INSERT INTO `log_url` (`url_id`, `visitor_id`, `visit_time`) VALUES
	(1, 1, '2014-10-10 10:05:32'),
	(2, 2, '2014-10-10 10:06:05'),
	(3, 3, '2014-10-10 10:33:07'),
	(4, 4, '2014-10-10 11:02:18'),
	(5, 5, '2014-10-10 11:02:41'),
	(6, 6, '2014-10-10 11:02:54'),
	(7, 7, '2014-10-10 11:03:25'),
	(8, 8, '2014-10-10 14:04:42'),
	(9, 9, '2014-10-10 14:04:50'),
	(10, 10, '2014-10-10 14:04:56'),
	(11, 11, '2014-10-10 14:05:10'),
	(12, 12, '2014-10-10 14:23:56'),
	(13, 13, '2014-10-10 14:24:02'),
	(14, 14, '2014-10-10 14:24:09'),
	(15, 15, '2014-10-10 14:24:24'),
	(16, 16, '2014-10-10 14:28:46'),
	(17, 16, '2014-10-10 14:29:42'),
	(18, 17, '2014-10-10 14:54:04'),
	(19, 18, '2014-10-10 14:54:10'),
	(20, 19, '2014-10-10 14:54:11'),
	(21, 20, '2014-10-10 14:54:11'),
	(22, 21, '2014-10-10 14:54:12'),
	(23, 22, '2014-10-10 14:54:13'),
	(24, 23, '2014-10-10 14:54:19'),
	(25, 24, '2014-10-10 14:54:31'),
	(26, 25, '2014-10-10 14:54:31'),
	(27, 26, '2014-10-10 14:54:32'),
	(28, 27, '2014-10-10 14:54:33'),
	(29, 28, '2014-10-10 14:54:36'),
	(30, 16, '2014-10-10 14:55:48'),
	(31, 16, '2014-10-10 14:55:53'),
	(32, 16, '2014-10-10 14:56:13'),
	(33, 16, '2014-10-10 14:56:14'),
	(34, 16, '2014-10-10 14:56:37'),
	(35, 16, '2014-10-10 14:56:38'),
	(36, 16, '2014-10-10 14:56:40'),
	(37, 16, '2014-10-10 14:56:40'),
	(38, 16, '2014-10-10 14:56:41'),
	(39, 16, '2014-10-10 14:56:42'),
	(40, 16, '2014-10-10 14:56:43'),
	(41, 16, '2014-10-10 14:56:43'),
	(42, 16, '2014-10-10 14:57:40'),
	(43, 16, '2014-10-10 14:57:42'),
	(44, 16, '2014-10-10 14:57:43'),
	(45, 16, '2014-10-10 14:57:44'),
	(46, 16, '2014-10-10 14:57:44'),
	(47, 16, '2014-10-10 14:57:45'),
	(48, 16, '2014-10-10 14:57:45'),
	(49, 16, '2014-10-10 14:57:46'),
	(50, 16, '2014-10-10 14:57:46'),
	(51, 16, '2014-10-10 14:57:46'),
	(52, 16, '2014-10-10 14:57:47'),
	(53, 16, '2014-10-10 14:57:47'),
	(54, 16, '2014-10-10 14:57:48'),
	(55, 16, '2014-10-10 14:57:48'),
	(56, 16, '2014-10-10 14:57:54'),
	(57, 29, '2014-10-10 15:59:33'),
	(58, 30, '2014-10-10 15:59:42'),
	(59, 31, '2014-10-10 15:59:45'),
	(60, 32, '2014-10-10 15:59:47'),
	(61, 33, '2014-10-10 15:59:49'),
	(62, 34, '2014-10-10 15:59:50'),
	(63, 35, '2014-10-10 15:59:56'),
	(64, 30, '2014-10-10 16:00:06'),
	(65, 30, '2014-10-10 16:00:08'),
	(66, 36, '2014-10-10 16:00:10'),
	(67, 30, '2014-10-10 16:00:17'),
	(68, 30, '2014-10-10 16:00:18'),
	(69, 30, '2014-10-10 16:00:20'),
	(70, 30, '2014-10-10 16:00:21'),
	(71, 30, '2014-10-10 16:00:22'),
	(72, 30, '2014-10-10 16:00:23'),
	(73, 30, '2014-10-10 16:00:24'),
	(74, 30, '2014-10-10 16:00:25'),
	(75, 30, '2014-10-10 16:00:25'),
	(76, 30, '2014-10-10 16:00:26'),
	(77, 30, '2014-10-10 16:00:27'),
	(78, 37, '2014-10-10 16:00:27'),
	(79, 30, '2014-10-10 16:00:28'),
	(80, 38, '2014-10-10 16:00:29'),
	(81, 30, '2014-10-10 16:00:29'),
	(82, 30, '2014-10-10 16:00:30'),
	(83, 30, '2014-10-10 16:00:30'),
	(84, 39, '2014-10-10 16:00:31'),
	(85, 40, '2014-10-10 16:00:32'),
	(86, 30, '2014-10-10 16:00:32'),
	(87, 30, '2014-10-10 16:00:33'),
	(88, 41, '2014-10-10 16:00:33'),
	(89, 30, '2014-10-10 16:00:35'),
	(90, 30, '2014-10-10 16:00:36'),
	(91, 30, '2014-10-10 16:00:37'),
	(92, 30, '2014-10-10 16:00:37'),
	(93, 30, '2014-10-10 16:00:39'),
	(94, 30, '2014-10-10 16:00:40'),
	(95, 30, '2014-10-10 16:00:45'),
	(96, 42, '2014-10-10 16:03:49'),
	(97, 43, '2014-10-10 16:03:59'),
	(98, 44, '2014-10-10 16:04:00'),
	(99, 45, '2014-10-10 16:04:02'),
	(100, 46, '2014-10-10 16:04:03'),
	(101, 47, '2014-10-10 16:04:05'),
	(102, 48, '2014-10-10 16:04:16'),
	(103, 49, '2014-10-10 16:04:44'),
	(104, 50, '2014-10-10 16:04:45'),
	(105, 51, '2014-10-10 16:04:47'),
	(106, 52, '2014-10-10 16:04:48'),
	(107, 53, '2014-10-10 16:04:49'),
	(108, 30, '2014-10-10 16:05:11'),
	(109, 30, '2014-10-10 16:05:14'),
	(110, 30, '2014-10-10 16:05:16'),
	(111, 30, '2014-10-10 16:05:19'),
	(112, 54, '2014-10-10 16:11:28'),
	(113, 55, '2014-10-10 16:11:37'),
	(114, 56, '2014-10-10 16:11:38'),
	(115, 57, '2014-10-10 16:11:39'),
	(116, 58, '2014-10-10 16:11:40'),
	(117, 59, '2014-10-10 16:11:42'),
	(118, 60, '2014-10-10 16:11:52'),
	(119, 61, '2014-10-10 16:12:16'),
	(120, 62, '2014-10-10 16:12:17'),
	(121, 63, '2014-10-10 16:12:18'),
	(122, 64, '2014-10-10 16:12:19'),
	(123, 65, '2014-10-10 16:12:20'),
	(124, 30, '2014-10-10 16:12:30'),
	(125, 30, '2014-10-10 16:13:52'),
	(126, 30, '2014-10-10 16:13:52'),
	(127, 30, '2014-10-10 16:13:52'),
	(128, 30, '2014-10-10 16:13:55'),
	(129, 30, '2014-10-10 16:13:55'),
	(130, 30, '2014-10-10 16:13:55'),
	(131, 30, '2014-10-10 16:14:54'),
	(132, 66, '2014-10-10 16:17:57'),
	(133, 67, '2014-10-10 16:18:06'),
	(134, 68, '2014-10-10 16:18:07'),
	(135, 69, '2014-10-10 16:18:08'),
	(136, 70, '2014-10-10 16:18:09'),
	(137, 71, '2014-10-10 16:18:10'),
	(138, 72, '2014-10-10 16:18:20'),
	(139, 73, '2014-10-10 16:18:45'),
	(140, 74, '2014-10-10 16:18:46'),
	(141, 75, '2014-10-10 16:18:47'),
	(142, 76, '2014-10-10 16:18:48'),
	(143, 77, '2014-10-10 16:18:50'),
	(144, 30, '2014-10-10 16:19:24'),
	(145, 78, '2014-10-11 10:56:35'),
	(146, 78, '2014-10-11 10:56:36'),
	(147, 78, '2014-10-11 10:56:38'),
	(148, 78, '2014-10-11 10:57:46'),
	(149, 79, '2014-10-11 11:35:33'),
	(150, 80, '2014-10-11 11:35:44'),
	(151, 81, '2014-10-11 11:35:45'),
	(152, 82, '2014-10-11 11:35:47'),
	(153, 83, '2014-10-11 11:35:54'),
	(154, 84, '2014-10-11 11:35:58'),
	(155, 85, '2014-10-11 11:36:07'),
	(156, 86, '2014-10-11 11:36:23'),
	(157, 87, '2014-10-11 11:36:24'),
	(158, 88, '2014-10-11 11:36:27'),
	(159, 89, '2014-10-11 11:36:28'),
	(160, 90, '2014-10-11 11:36:29'),
	(161, 91, '2014-10-11 11:42:42'),
	(162, 92, '2014-10-11 11:42:50'),
	(163, 93, '2014-10-11 11:42:51'),
	(164, 94, '2014-10-11 11:42:53'),
	(165, 95, '2014-10-11 11:42:54'),
	(166, 96, '2014-10-11 11:42:56'),
	(167, 97, '2014-10-11 11:43:08'),
	(168, 98, '2014-10-11 11:43:25'),
	(169, 99, '2014-10-11 11:43:26'),
	(170, 100, '2014-10-11 11:43:27'),
	(171, 101, '2014-10-11 11:43:30'),
	(172, 102, '2014-10-11 11:43:39'),
	(173, 103, '2014-10-11 11:45:15'),
	(174, 104, '2014-10-11 11:45:35'),
	(175, 105, '2014-10-11 11:45:51'),
	(176, 106, '2014-10-11 11:45:52'),
	(177, 107, '2014-10-11 11:45:54'),
	(178, 108, '2014-10-11 11:45:57'),
	(179, 109, '2014-10-11 11:46:20'),
	(180, 110, '2014-10-11 11:46:37'),
	(181, 111, '2014-10-11 11:46:39'),
	(182, 112, '2014-10-11 11:46:43'),
	(183, 113, '2014-10-11 11:46:46'),
	(184, 114, '2014-10-11 11:46:48'),
	(185, 115, '2014-10-11 11:48:29'),
	(186, 116, '2014-10-11 11:55:09'),
	(187, 117, '2014-10-11 11:55:24'),
	(188, 118, '2014-10-11 11:55:25'),
	(189, 119, '2014-10-11 11:55:26'),
	(190, 120, '2014-10-11 11:55:27'),
	(191, 121, '2014-10-11 11:55:30'),
	(192, 122, '2014-10-11 11:55:38'),
	(193, 123, '2014-10-11 11:55:53'),
	(194, 124, '2014-10-11 11:55:54'),
	(195, 125, '2014-10-11 11:55:55'),
	(196, 126, '2014-10-11 11:55:56'),
	(197, 127, '2014-10-11 11:55:57'),
	(198, 115, '2014-10-11 11:56:20'),
	(199, 115, '2014-10-11 11:56:36'),
	(200, 128, '2014-10-11 11:58:08'),
	(201, 129, '2014-10-11 11:58:17'),
	(202, 130, '2014-10-11 11:58:18'),
	(203, 131, '2014-10-11 11:58:19'),
	(204, 132, '2014-10-11 11:58:20'),
	(205, 133, '2014-10-11 11:58:23'),
	(206, 134, '2014-10-11 11:58:36'),
	(207, 135, '2014-10-11 11:58:53'),
	(208, 136, '2014-10-11 11:58:55'),
	(209, 137, '2014-10-11 11:58:56'),
	(210, 138, '2014-10-11 11:58:57'),
	(211, 139, '2014-10-11 11:59:00'),
	(212, 140, '2014-10-11 12:00:24'),
	(213, 141, '2014-10-11 12:00:33'),
	(214, 142, '2014-10-11 12:00:35'),
	(215, 143, '2014-10-11 12:00:36'),
	(216, 144, '2014-10-11 12:00:37'),
	(217, 145, '2014-10-11 12:00:39'),
	(218, 146, '2014-10-11 12:00:50'),
	(219, 147, '2014-10-11 12:01:12'),
	(220, 148, '2014-10-11 12:01:14'),
	(221, 149, '2014-10-11 12:01:15'),
	(222, 150, '2014-10-11 12:01:16'),
	(223, 151, '2014-10-11 12:01:17'),
	(224, 152, '2014-10-11 12:40:41'),
	(225, 152, '2014-10-11 12:40:46'),
	(226, 152, '2014-10-11 12:56:37'),
	(227, 153, '2014-10-11 12:59:31'),
	(228, 154, '2014-10-11 12:59:41'),
	(229, 155, '2014-10-11 12:59:42'),
	(230, 156, '2014-10-11 12:59:43'),
	(231, 157, '2014-10-11 12:59:44'),
	(232, 158, '2014-10-11 12:59:46'),
	(233, 159, '2014-10-11 12:59:54'),
	(234, 160, '2014-10-11 13:00:11'),
	(235, 161, '2014-10-11 13:00:13'),
	(236, 162, '2014-10-11 13:00:14'),
	(237, 163, '2014-10-11 13:00:15'),
	(238, 164, '2014-10-11 13:00:17'),
	(239, 152, '2014-10-11 13:02:27'),
	(240, 152, '2014-10-11 13:02:43'),
	(241, 152, '2014-10-11 13:02:43'),
	(242, 152, '2014-10-11 13:02:43'),
	(243, 152, '2014-10-11 13:02:44'),
	(244, 152, '2014-10-11 13:03:27'),
	(245, 152, '2014-10-11 13:03:36'),
	(246, 152, '2014-10-11 13:04:07'),
	(247, 152, '2014-10-11 13:04:08'),
	(248, 165, '2014-10-11 13:07:37'),
	(249, 166, '2014-10-11 13:18:06'),
	(250, 167, '2014-10-11 13:18:15'),
	(251, 168, '2014-10-11 13:18:16'),
	(252, 169, '2014-10-11 13:18:17'),
	(253, 170, '2014-10-11 13:18:18'),
	(254, 171, '2014-10-11 13:18:20'),
	(255, 172, '2014-10-11 13:18:29'),
	(256, 173, '2014-10-11 13:18:46'),
	(257, 174, '2014-10-11 13:18:47'),
	(258, 175, '2014-10-11 13:18:49'),
	(259, 176, '2014-10-11 13:18:50'),
	(260, 177, '2014-10-11 13:18:51'),
	(261, 152, '2014-10-11 13:19:14'),
	(262, 152, '2014-10-11 13:19:19'),
	(263, 178, '2014-10-11 13:28:19'),
	(264, 179, '2014-10-11 13:29:28'),
	(265, 180, '2014-10-11 13:30:06'),
	(266, 181, '2014-10-13 11:31:44'),
	(267, 182, '2014-10-13 11:33:14'),
	(268, 183, '2014-10-13 11:34:17'),
	(269, 184, '2014-10-13 11:34:44'),
	(270, 185, '2014-10-13 11:35:04'),
	(271, 186, '2014-10-13 11:35:27'),
	(272, 187, '2014-10-13 11:35:48'),
	(273, 188, '2014-10-13 11:35:53'),
	(274, 189, '2014-10-13 11:35:54'),
	(275, 190, '2014-10-13 11:36:12'),
	(276, 191, '2014-10-13 11:37:44'),
	(277, 192, '2014-10-13 11:58:01'),
	(278, 193, '2014-10-13 11:58:17'),
	(279, 194, '2014-10-13 11:58:27'),
	(280, 195, '2014-10-13 11:58:44'),
	(281, 196, '2014-10-13 13:46:06'),
	(282, 197, '2014-10-13 13:48:12'),
	(283, 198, '2014-10-13 13:49:29'),
	(284, 199, '2014-10-13 13:54:32'),
	(285, 200, '2014-10-13 13:56:27'),
	(286, 201, '2014-10-13 13:58:17'),
	(287, 202, '2014-10-13 14:01:53'),
	(288, 203, '2014-10-13 14:30:03'),
	(289, 204, '2014-10-13 14:31:19'),
	(290, 205, '2014-10-13 14:32:24'),
	(291, 206, '2014-10-13 14:33:45'),
	(292, 207, '2014-10-13 14:34:58'),
	(293, 208, '2014-10-13 14:36:03'),
	(294, 209, '2014-10-13 14:39:28'),
	(295, 210, '2014-10-13 14:39:49'),
	(296, 211, '2014-10-13 14:51:10'),
	(297, 212, '2014-10-13 14:53:05'),
	(298, 213, '2014-10-13 14:55:42'),
	(299, 214, '2014-10-13 14:55:54'),
	(300, 215, '2014-10-13 14:58:06'),
	(301, 216, '2014-10-13 14:58:41'),
	(302, 217, '2014-10-13 15:00:05'),
	(303, 218, '2014-10-13 15:00:24'),
	(304, 219, '2014-10-14 10:28:00'),
	(305, 220, '2014-10-14 10:29:09'),
	(306, 221, '2014-10-14 11:56:00'),
	(307, 222, '2014-10-14 15:23:56'),
	(308, 223, '2014-10-14 15:24:32'),
	(309, 224, '2014-10-14 16:11:59'),
	(310, 225, '2014-10-14 16:12:49'),
	(311, 226, '2014-10-14 16:13:32'),
	(312, 227, '2014-10-14 16:13:54'),
	(313, 228, '2014-10-14 16:14:03'),
	(314, 229, '2014-10-14 16:15:06'),
	(315, 230, '2014-10-14 16:15:54'),
	(316, 231, '2014-10-14 16:20:51'),
	(317, 232, '2014-10-14 16:21:13'),
	(318, 233, '2014-10-14 16:21:23'),
	(319, 234, '2014-10-14 16:21:52'),
	(320, 235, '2014-10-17 09:30:58'),
	(321, 236, '2014-10-17 09:37:05'),
	(322, 237, '2014-10-17 09:37:25'),
	(323, 238, '2014-10-17 09:37:26'),
	(324, 239, '2014-10-17 09:37:28'),
	(325, 240, '2014-10-17 09:37:29'),
	(326, 241, '2014-10-17 09:37:31'),
	(327, 242, '2014-10-17 09:37:42'),
	(328, 243, '2014-10-17 09:38:14'),
	(329, 244, '2014-10-17 09:38:16'),
	(330, 245, '2014-10-17 09:38:17'),
	(331, 246, '2014-10-17 09:38:18'),
	(332, 247, '2014-10-17 09:38:20'),
	(333, 248, '2014-10-17 09:51:01'),
	(334, 249, '2014-10-17 09:51:07'),
	(335, 250, '2014-10-17 09:51:09'),
	(336, 251, '2014-10-17 09:51:17'),
	(337, 252, '2014-10-17 09:51:18'),
	(338, 253, '2014-10-17 09:51:19'),
	(339, 254, '2014-10-17 09:51:20'),
	(340, 255, '2014-10-17 09:51:22'),
	(341, 256, '2014-10-17 09:51:32'),
	(342, 257, '2014-10-17 09:51:45'),
	(343, 258, '2014-10-17 09:51:46'),
	(344, 259, '2014-10-17 09:51:48'),
	(345, 260, '2014-10-17 09:51:49'),
	(346, 261, '2014-10-17 09:51:50'),
	(347, 262, '2014-10-17 11:16:06'),
	(348, 263, '2014-10-17 11:48:27'),
	(349, 264, '2014-10-17 11:48:36'),
	(350, 265, '2014-10-17 11:48:38'),
	(351, 266, '2014-10-17 11:48:47'),
	(352, 267, '2014-10-17 11:48:48'),
	(353, 268, '2014-10-17 11:48:49'),
	(354, 269, '2014-10-17 11:48:50'),
	(355, 270, '2014-10-17 11:48:52'),
	(356, 271, '2014-10-17 11:53:29'),
	(357, 272, '2014-10-17 11:53:36'),
	(358, 273, '2014-10-17 11:53:37'),
	(359, 274, '2014-10-17 11:53:45'),
	(360, 275, '2014-10-17 11:53:47'),
	(361, 276, '2014-10-17 11:53:48'),
	(362, 277, '2014-10-17 11:53:49'),
	(363, 278, '2014-10-17 11:53:51'),
	(364, 279, '2014-10-17 11:54:01'),
	(365, 280, '2014-10-17 11:54:14'),
	(366, 281, '2014-10-17 11:54:15'),
	(367, 282, '2014-10-17 11:54:16'),
	(368, 283, '2014-10-17 11:54:17'),
	(369, 284, '2014-10-17 11:54:19'),
	(370, 285, '2014-10-17 11:58:45'),
	(371, 285, '2014-10-17 11:58:50'),
	(372, 285, '2014-10-17 11:59:01'),
	(373, 285, '2014-10-17 11:59:03'),
	(374, 285, '2014-10-17 11:59:05'),
	(375, 285, '2014-10-17 11:59:06'),
	(376, 285, '2014-10-17 11:59:07'),
	(377, 285, '2014-10-17 11:59:17'),
	(378, 285, '2014-10-17 11:59:18'),
	(379, 285, '2014-10-17 11:59:19'),
	(380, 285, '2014-10-17 11:59:20'),
	(381, 285, '2014-10-17 11:59:21'),
	(382, 286, '2014-10-17 12:05:49');
/*!40000 ALTER TABLE `log_url` ENABLE KEYS */;


-- Dumping structure for table mag.log_url_info
DROP TABLE IF EXISTS `log_url_info`;
CREATE TABLE IF NOT EXISTS `log_url_info` (
  `url_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'URL ID',
  `url` varchar(255) DEFAULT NULL COMMENT 'URL',
  `referer` varchar(255) DEFAULT NULL COMMENT 'Referrer',
  PRIMARY KEY (`url_id`)
) ENGINE=InnoDB AUTO_INCREMENT=383 DEFAULT CHARSET=utf8 COMMENT='Log URL Info Table';

-- Dumping data for table mag.log_url_info: ~274 rows (approximately)
/*!40000 ALTER TABLE `log_url_info` DISABLE KEYS */;
INSERT INTO `log_url_info` (`url_id`, `url`, `referer`) VALUES
	(1, 'http://tst/magento/index.php/', 'http://tst/magento/index.php/install/wizard/end/'),
	(2, 'http://tst/magento/index.php/', 'http://tst/magento/index.php/install/wizard/administrator/'),
	(3, 'http://tst/magento/', NULL),
	(4, 'http://tst/magento/', NULL),
	(5, 'http://tst/magento/index.php/catalog/product/view/id/6', NULL),
	(6, 'http://tst/magento/index.php/catalog/product/view/id/16', NULL),
	(7, 'http://tst/magento/index.php/catalog/product/view/id/27', NULL),
	(8, 'http://tst/magento/', NULL),
	(9, 'http://tst/magento/index.php/catalog/product/view/id/2', NULL),
	(10, 'http://tst/magento/index.php/catalog/product/view/id/4', NULL),
	(11, 'http://tst/magento/index.php/catalog/product/view/id/7', NULL),
	(12, 'http://tst/magento/', NULL),
	(13, 'http://tst/magento/index.php/catalog/product/view/id/6', NULL),
	(14, 'http://tst/magento/index.php/catalog/product/view/id/16', NULL),
	(15, 'http://tst/magento/index.php/catalog/product/view/id/27', NULL),
	(16, 'http://tst/magento/index.php/catalog/product/view/id/43', NULL),
	(17, 'http://tst/magento/index.php/catalog/product/view/id/43', NULL),
	(18, 'http://tst/magento/', NULL),
	(19, 'http://tst/magento/index.php/catalog/product/view/id/6', NULL),
	(20, 'http://tst/magento/index.php/catalog/product/view/id/7', NULL),
	(21, 'http://tst/magento/index.php/catalog/product/view/id/8', NULL),
	(22, 'http://tst/magento/index.php/catalog/product/view/id/9', NULL),
	(23, 'http://tst/magento/index.php/catalog/product/view/id/10', NULL),
	(24, 'http://tst/magento/index.php/catalog/product/view/id/16', NULL),
	(25, 'http://tst/magento/index.php/catalog/product/view/id/27', NULL),
	(26, 'http://tst/magento/index.php/catalog/product/view/id/28', NULL),
	(27, 'http://tst/magento/index.php/catalog/product/view/id/29', NULL),
	(28, 'http://tst/magento/index.php/catalog/product/view/id/30', NULL),
	(29, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(30, 'http://tst/magento/index.php/test-group.html', NULL),
	(31, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(32, 'http://tst/magento/index.php/checkout/cart/add/uenc/aHR0cDovL3RzdC9tYWdlbnRvL2luZGV4LnBocC9tZXJsb3QtZm9ybWFsLWRpbmluZy1zZXQuaHRtbD9fX19TSUQ9VQ,,/product/31/form_key/DSQqxJVcwrtnEkhs/', 'http://tst/magento/index.php/merlot-formal-dining-set.html'),
	(33, 'http://tst/magento/index.php/checkout/cart/', 'http://tst/magento/index.php/merlot-formal-dining-set.html'),
	(34, 'http://tst/magento/index.php/checkout/cart/delete/id/1/uenc/aHR0cDovL3RzdC9tYWdlbnRvL2luZGV4LnBocC9jaGVja291dC9jYXJ0Lw,,/', 'http://tst/magento/index.php/checkout/cart/'),
	(35, 'http://tst/magento/index.php/checkout/cart/', 'http://tst/magento/index.php/checkout/cart/'),
	(36, 'http://tst/magento/index.php/checkout/cart/delete/id/3/uenc/aHR0cDovL3RzdC9tYWdlbnRvL2luZGV4LnBocC9jaGVja291dC9jYXJ0Lw,,/', 'http://tst/magento/index.php/checkout/cart/'),
	(37, 'http://tst/magento/index.php/checkout/cart/', 'http://tst/magento/index.php/checkout/cart/'),
	(38, 'http://tst/magento/index.php/checkout/cart/delete/id/2/uenc/aHR0cDovL3RzdC9tYWdlbnRvL2luZGV4LnBocC9jaGVja291dC9jYXJ0Lw,,/', 'http://tst/magento/index.php/checkout/cart/'),
	(39, 'http://tst/magento/index.php/checkout/cart/', 'http://tst/magento/index.php/checkout/cart/'),
	(40, 'http://tst/magento/index.php/checkout/cart/delete/id/4/uenc/aHR0cDovL3RzdC9tYWdlbnRvL2luZGV4LnBocC9jaGVja291dC9jYXJ0Lw,,/', 'http://tst/magento/index.php/checkout/cart/'),
	(41, 'http://tst/magento/index.php/checkout/cart/', 'http://tst/magento/index.php/checkout/cart/'),
	(42, 'http://tst/magento/index.php/checkout/cart/', 'http://tst/magento/index.php/checkout/cart/'),
	(43, 'http://tst/magento/index.php/checkout/cart/', 'http://tst/magento/index.php/checkout/cart/'),
	(44, 'http://tst/magento/index.php/checkout/cart/', 'http://tst/magento/index.php/checkout/cart/'),
	(45, 'http://tst/magento/index.php/checkout/cart/', 'http://tst/magento/index.php/merlot-formal-dining-set.html'),
	(46, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(47, 'http://tst/magento/index.php/test-group.html', NULL),
	(48, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(49, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(50, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(51, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(52, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(53, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(54, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(55, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(56, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(57, 'http://tst/magento/', NULL),
	(58, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(59, 'http://tst/magento/index.php/catalog/product/view/id/6', NULL),
	(60, 'http://tst/magento/index.php/catalog/product/view/id/7', NULL),
	(61, 'http://tst/magento/index.php/catalog/product/view/id/8', NULL),
	(62, 'http://tst/magento/index.php/catalog/product/view/id/9', NULL),
	(63, 'http://tst/magento/index.php/catalog/product/view/id/10', NULL),
	(64, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(65, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(66, 'http://tst/magento/index.php/catalog/product/view/id/16', NULL),
	(67, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(68, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(69, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(70, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(71, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(72, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(73, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(74, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(75, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(76, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(77, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(78, 'http://tst/magento/index.php/catalog/product/view/id/27', NULL),
	(79, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(80, 'http://tst/magento/index.php/catalog/product/view/id/28', NULL),
	(81, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(82, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(83, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(84, 'http://tst/magento/index.php/catalog/product/view/id/29', NULL),
	(85, 'http://tst/magento/index.php/catalog/product/view/id/30', NULL),
	(86, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(87, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(88, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(89, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(90, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(91, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(92, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(93, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(94, 'http://tst/magento/index.php/merlot-formal-dining-set.html', NULL),
	(95, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(96, 'http://tst/magento/', NULL),
	(97, 'http://tst/magento/index.php/catalog/product/view/id/6', NULL),
	(98, 'http://tst/magento/index.php/catalog/product/view/id/7', NULL),
	(99, 'http://tst/magento/index.php/catalog/product/view/id/8', NULL),
	(100, 'http://tst/magento/index.php/catalog/product/view/id/9', NULL),
	(101, 'http://tst/magento/index.php/catalog/product/view/id/10', NULL),
	(102, 'http://tst/magento/index.php/catalog/product/view/id/16', NULL),
	(103, 'http://tst/magento/index.php/catalog/product/view/id/27', NULL),
	(104, 'http://tst/magento/index.php/catalog/product/view/id/28', NULL),
	(105, 'http://tst/magento/index.php/catalog/product/view/id/29', NULL),
	(106, 'http://tst/magento/index.php/catalog/product/view/id/30', NULL),
	(107, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(108, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(109, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(110, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(111, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(112, 'http://tst/magento/', NULL),
	(113, 'http://tst/magento/index.php/catalog/product/view/id/6', NULL),
	(114, 'http://tst/magento/index.php/catalog/product/view/id/7', NULL),
	(115, 'http://tst/magento/index.php/catalog/product/view/id/8', NULL),
	(116, 'http://tst/magento/index.php/catalog/product/view/id/9', NULL),
	(117, 'http://tst/magento/index.php/catalog/product/view/id/10', NULL),
	(118, 'http://tst/magento/index.php/catalog/product/view/id/16', NULL),
	(119, 'http://tst/magento/index.php/catalog/product/view/id/27', NULL),
	(120, 'http://tst/magento/index.php/catalog/product/view/id/28', NULL),
	(121, 'http://tst/magento/index.php/catalog/product/view/id/29', NULL),
	(122, 'http://tst/magento/index.php/catalog/product/view/id/30', NULL),
	(123, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(124, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(125, 'http://tst/magento/index.php/catalog/product/view/id/26', NULL),
	(126, 'http://tst/magento/index.php/catalog/product/view/id/26', NULL),
	(127, 'http://tst/magento/index.php/catalog/product/view/id/26', NULL),
	(128, 'http://tst/magento/index.php/catalog/product/view/id/26', NULL),
	(129, 'http://tst/magento/index.php/catalog/product/view/id/26', NULL),
	(130, 'http://tst/magento/index.php/catalog/product/view/id/26', NULL),
	(131, 'http://tst/magento/index.php/catalog/product/view/id/10', NULL),
	(132, 'http://tst/magento/', NULL),
	(133, 'http://tst/magento/index.php/catalog/product/view/id/6', NULL),
	(134, 'http://tst/magento/index.php/catalog/product/view/id/7', NULL),
	(135, 'http://tst/magento/index.php/catalog/product/view/id/8', NULL),
	(136, 'http://tst/magento/index.php/catalog/product/view/id/9', NULL),
	(137, 'http://tst/magento/index.php/catalog/product/view/id/10', NULL),
	(138, 'http://tst/magento/index.php/catalog/product/view/id/16', NULL),
	(139, 'http://tst/magento/index.php/catalog/product/view/id/27', NULL),
	(140, 'http://tst/magento/index.php/catalog/product/view/id/28', NULL),
	(141, 'http://tst/magento/index.php/catalog/product/view/id/29', NULL),
	(142, 'http://tst/magento/index.php/catalog/product/view/id/30', NULL),
	(143, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(144, 'http://tst/magento/index.php/catalog/product/view/id/10', NULL),
	(145, 'http://tst/magento/index.php/catalog/product/view/id/15', NULL),
	(146, 'http://tst/magento/index.php/catalog/product/view/id/15', NULL),
	(147, 'http://tst/magento/index.php/catalog/product/view/id/15', NULL),
	(148, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(149, 'http://tst/magento/', NULL),
	(150, 'http://tst/magento/index.php/catalog/product/view/id/6', NULL),
	(151, 'http://tst/magento/index.php/catalog/product/view/id/7', NULL),
	(152, 'http://tst/magento/index.php/catalog/product/view/id/8', NULL),
	(153, 'http://tst/magento/index.php/catalog/product/view/id/9', NULL),
	(154, 'http://tst/magento/index.php/catalog/product/view/id/10', NULL),
	(155, 'http://tst/magento/index.php/catalog/product/view/id/16', NULL),
	(156, 'http://tst/magento/index.php/catalog/product/view/id/27', NULL),
	(157, 'http://tst/magento/index.php/catalog/product/view/id/28', NULL),
	(158, 'http://tst/magento/index.php/catalog/product/view/id/29', NULL),
	(159, 'http://tst/magento/index.php/catalog/product/view/id/30', NULL),
	(160, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(161, 'http://tst/magento/', NULL),
	(162, 'http://tst/magento/index.php/catalog/product/view/id/6', NULL),
	(163, 'http://tst/magento/index.php/catalog/product/view/id/7', NULL),
	(164, 'http://tst/magento/index.php/catalog/product/view/id/8', NULL),
	(165, 'http://tst/magento/index.php/catalog/product/view/id/9', NULL),
	(166, 'http://tst/magento/index.php/catalog/product/view/id/10', NULL),
	(167, 'http://tst/magento/index.php/catalog/product/view/id/16', NULL),
	(168, 'http://tst/magento/index.php/catalog/product/view/id/27', NULL),
	(169, 'http://tst/magento/index.php/catalog/product/view/id/28', NULL),
	(170, 'http://tst/magento/index.php/catalog/product/view/id/29', NULL),
	(171, 'http://tst/magento/index.php/catalog/product/view/id/30', NULL),
	(172, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(173, 'http://tst/magento/', NULL),
	(174, 'http://tst/magento/index.php/catalog/product/view/id/6', NULL),
	(175, 'http://tst/magento/index.php/catalog/product/view/id/7', NULL),
	(176, 'http://tst/magento/index.php/catalog/product/view/id/8', NULL),
	(177, 'http://tst/magento/index.php/catalog/product/view/id/9', NULL),
	(178, 'http://tst/magento/index.php/catalog/product/view/id/10', NULL),
	(179, 'http://tst/magento/index.php/catalog/product/view/id/16', NULL),
	(180, 'http://tst/magento/index.php/catalog/product/view/id/27', NULL),
	(181, 'http://tst/magento/index.php/catalog/product/view/id/28', NULL),
	(182, 'http://tst/magento/index.php/catalog/product/view/id/29', NULL),
	(183, 'http://tst/magento/index.php/catalog/product/view/id/30', NULL),
	(184, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(185, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(186, 'http://tst/magento/', NULL),
	(187, 'http://tst/magento/index.php/catalog/product/view/id/6', NULL),
	(188, 'http://tst/magento/index.php/catalog/product/view/id/7', NULL),
	(189, 'http://tst/magento/index.php/catalog/product/view/id/8', NULL),
	(190, 'http://tst/magento/index.php/catalog/product/view/id/9', NULL),
	(191, 'http://tst/magento/index.php/catalog/product/view/id/10', NULL),
	(192, 'http://tst/magento/index.php/catalog/product/view/id/16', NULL),
	(193, 'http://tst/magento/index.php/catalog/product/view/id/27', NULL),
	(194, 'http://tst/magento/index.php/catalog/product/view/id/28', NULL),
	(195, 'http://tst/magento/index.php/catalog/product/view/id/29', NULL),
	(196, 'http://tst/magento/index.php/catalog/product/view/id/30', NULL),
	(197, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(198, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(199, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(200, 'http://tst/magento/', NULL),
	(201, 'http://tst/magento/index.php/catalog/product/view/id/6', NULL),
	(202, 'http://tst/magento/index.php/catalog/product/view/id/7', NULL),
	(203, 'http://tst/magento/index.php/catalog/product/view/id/8', NULL),
	(204, 'http://tst/magento/index.php/catalog/product/view/id/9', NULL),
	(205, 'http://tst/magento/index.php/catalog/product/view/id/10', NULL),
	(206, 'http://tst/magento/index.php/catalog/product/view/id/16', NULL),
	(207, 'http://tst/magento/index.php/catalog/product/view/id/27', NULL),
	(208, 'http://tst/magento/index.php/catalog/product/view/id/28', NULL),
	(209, 'http://tst/magento/index.php/catalog/product/view/id/29', NULL),
	(210, 'http://tst/magento/index.php/catalog/product/view/id/30', NULL),
	(211, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(212, 'http://tst/magento/', NULL),
	(213, 'http://tst/magento/index.php/catalog/product/view/id/6', NULL),
	(214, 'http://tst/magento/index.php/catalog/product/view/id/7', NULL),
	(215, 'http://tst/magento/index.php/catalog/product/view/id/8', NULL),
	(216, 'http://tst/magento/index.php/catalog/product/view/id/9', NULL),
	(217, 'http://tst/magento/index.php/catalog/product/view/id/10', NULL),
	(218, 'http://tst/magento/index.php/catalog/product/view/id/16', NULL),
	(219, 'http://tst/magento/index.php/catalog/product/view/id/27', NULL),
	(220, 'http://tst/magento/index.php/catalog/product/view/id/28', NULL),
	(221, 'http://tst/magento/index.php/catalog/product/view/id/29', NULL),
	(222, 'http://tst/magento/index.php/catalog/product/view/id/30', NULL),
	(223, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(224, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(225, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(226, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(227, 'http://tst/magento/', NULL),
	(228, 'http://tst/magento/index.php/catalog/product/view/id/6', NULL),
	(229, 'http://tst/magento/index.php/catalog/product/view/id/7', NULL),
	(230, 'http://tst/magento/index.php/catalog/product/view/id/8', NULL),
	(231, 'http://tst/magento/index.php/catalog/product/view/id/9', NULL),
	(232, 'http://tst/magento/index.php/catalog/product/view/id/10', NULL),
	(233, 'http://tst/magento/index.php/catalog/product/view/id/16', NULL),
	(234, 'http://tst/magento/index.php/catalog/product/view/id/27', NULL),
	(235, 'http://tst/magento/index.php/catalog/product/view/id/28', NULL),
	(236, 'http://tst/magento/index.php/catalog/product/view/id/29', NULL),
	(237, 'http://tst/magento/index.php/catalog/product/view/id/30', NULL),
	(238, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(239, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(240, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(241, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(242, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(243, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(244, 'http://tst/magento/index.php/catalog/product/view/id/28', NULL),
	(245, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(246, 'http://tst/magento/index.php/catalog/product/view/id/28', NULL),
	(247, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(248, 'http://tst/magento/', NULL),
	(249, 'http://tst/magento/', NULL),
	(250, 'http://tst/magento/index.php/catalog/product/view/id/6', NULL),
	(251, 'http://tst/magento/index.php/catalog/product/view/id/7', NULL),
	(252, 'http://tst/magento/index.php/catalog/product/view/id/8', NULL),
	(253, 'http://tst/magento/index.php/catalog/product/view/id/9', NULL),
	(254, 'http://tst/magento/index.php/catalog/product/view/id/10', NULL),
	(255, 'http://tst/magento/index.php/catalog/product/view/id/16', NULL),
	(256, 'http://tst/magento/index.php/catalog/product/view/id/27', NULL),
	(257, 'http://tst/magento/index.php/catalog/product/view/id/28', NULL),
	(258, 'http://tst/magento/index.php/catalog/product/view/id/29', NULL),
	(259, 'http://tst/magento/index.php/catalog/product/view/id/30', NULL),
	(260, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(261, 'http://tst/magento/index.php/catalog/product/view/id/28', NULL),
	(262, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(263, 'http://tst/magento/', NULL),
	(264, 'http://tst/magento/', NULL),
	(265, 'http://tst/magento/', NULL),
	(266, 'http://tst/magento/', NULL),
	(267, 'http://tst/magento/', NULL),
	(268, 'http://tst/magento/index.php/catalog/product/view/id/24', NULL),
	(269, 'http://tst/magento/index.php/catalog/product/view/id/40', NULL),
	(270, 'http://tst/magento/index.php/catalog/product/view/id/61', NULL),
	(271, 'http://tst/magento/index.php/catalog/product/view/id/82', NULL),
	(272, 'http://tst/magento/index.php/catalog/product/view/id/103', NULL),
	(273, 'http://tst/magento/index.php/catalog/product/view/id/118', NULL),
	(274, 'http://tst/magento/index.php/catalog/product/view/id/119', NULL),
	(275, 'http://tst/magento/', NULL),
	(276, 'http://tst/magento/', NULL),
	(277, 'http://tst/magento/', NULL),
	(278, 'http://tst/magento/', NULL),
	(279, 'http://tst/magento/index.php/catalog/product/view/id/1', NULL),
	(280, 'http://tst/magento/', NULL),
	(281, 'http://tst/magento/', NULL),
	(282, 'http://tst/magento/', NULL),
	(283, 'http://tst/magento/', NULL),
	(284, 'http://tst/magento/', NULL),
	(285, 'http://tst/magento/', NULL),
	(286, 'http://tst/magento/', NULL),
	(287, 'http://tst/magento/', NULL),
	(288, 'http://tst/magento/', NULL),
	(289, 'http://tst/magento/', NULL),
	(290, 'http://tst/magento/', NULL),
	(291, 'http://tst/magento/', NULL),
	(292, 'http://tst/magento/', NULL),
	(293, 'http://tst/magento/', NULL),
	(294, 'http://tst/magento/', NULL),
	(295, 'http://tst/magento/', NULL),
	(296, 'http://tst/magento/', NULL),
	(297, 'http://tst/magento/', NULL),
	(298, 'http://tst/magento/', NULL),
	(299, 'http://tst/magento/index.php/catalog/product/view/id/1', NULL),
	(300, 'http://tst/magento/', NULL),
	(301, 'http://tst/magento/', NULL),
	(302, 'http://tst/magento/', NULL),
	(303, 'http://tst/magento/index.php/catalog/product/view/id/1', NULL),
	(304, 'http://tst/magento/', NULL),
	(305, 'http://tst/magento/', NULL),
	(306, 'http://tst/magento/', NULL),
	(307, 'http://tst/magento/', NULL),
	(308, 'http://tst/magento/index.php/catalog/product/view/id/1', NULL),
	(309, 'http://tst/magento/', NULL),
	(310, 'http://tst/magento/', NULL),
	(311, 'http://tst/magento/', NULL),
	(312, 'http://tst/magento/index.php/catalog/product/view/id/1', NULL),
	(313, 'http://tst/magento/index.php/catalog/product/view/id/8', NULL),
	(314, 'http://tst/magento/index.php/catalog/product/view/id/19', NULL),
	(315, 'http://tst/magento/', NULL),
	(316, 'http://tst/magento/', NULL),
	(317, 'http://tst/magento/index.php/catalog/product/view/id/1', NULL),
	(318, 'http://tst/magento/index.php/catalog/product/view/id/8', NULL),
	(319, 'http://tst/magento/index.php/catalog/product/view/id/19', NULL),
	(320, 'http://tst/magento/', NULL),
	(321, 'http://tst/magento/', NULL),
	(322, 'http://tst/magento/index.php/catalog/product/view/id/6', NULL),
	(323, 'http://tst/magento/index.php/catalog/product/view/id/7', NULL),
	(324, 'http://tst/magento/index.php/catalog/product/view/id/8', NULL),
	(325, 'http://tst/magento/index.php/catalog/product/view/id/9', NULL),
	(326, 'http://tst/magento/index.php/catalog/product/view/id/10', NULL),
	(327, 'http://tst/magento/index.php/catalog/product/view/id/16', NULL),
	(328, 'http://tst/magento/index.php/catalog/product/view/id/27', NULL),
	(329, 'http://tst/magento/index.php/catalog/product/view/id/28', NULL),
	(330, 'http://tst/magento/index.php/catalog/product/view/id/29', NULL),
	(331, 'http://tst/magento/index.php/catalog/product/view/id/30', NULL),
	(332, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(333, 'http://tst/magento/', NULL),
	(334, 'http://tst/magento/index.php/catalog/product/view/id/3', NULL),
	(335, 'http://tst/magento/index.php/catalog/product/view/id/4', NULL),
	(336, 'http://tst/magento/index.php/catalog/product/view/id/10', NULL),
	(337, 'http://tst/magento/index.php/catalog/product/view/id/11', NULL),
	(338, 'http://tst/magento/index.php/catalog/product/view/id/12', NULL),
	(339, 'http://tst/magento/index.php/catalog/product/view/id/13', NULL),
	(340, 'http://tst/magento/index.php/catalog/product/view/id/14', NULL),
	(341, 'http://tst/magento/index.php/catalog/product/view/id/20', NULL),
	(342, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(343, 'http://tst/magento/index.php/catalog/product/view/id/32', NULL),
	(344, 'http://tst/magento/index.php/catalog/product/view/id/33', NULL),
	(345, 'http://tst/magento/index.php/catalog/product/view/id/34', NULL),
	(346, 'http://tst/magento/index.php/catalog/product/view/id/35', NULL),
	(347, 'http://tst/magento/', NULL),
	(348, 'http://tst/magento/', NULL),
	(349, 'http://tst/magento/index.php/catalog/product/view/id/3', NULL),
	(350, 'http://tst/magento/index.php/catalog/product/view/id/4', NULL),
	(351, 'http://tst/magento/index.php/catalog/product/view/id/10', NULL),
	(352, 'http://tst/magento/index.php/catalog/product/view/id/11', NULL),
	(353, 'http://tst/magento/index.php/catalog/product/view/id/12', NULL),
	(354, 'http://tst/magento/index.php/catalog/product/view/id/13', NULL),
	(355, 'http://tst/magento/index.php/catalog/product/view/id/14', NULL),
	(356, 'http://tst/magento/', NULL),
	(357, 'http://tst/magento/index.php/catalog/product/view/id/3', NULL),
	(358, 'http://tst/magento/index.php/catalog/product/view/id/4', NULL),
	(359, 'http://tst/magento/index.php/catalog/product/view/id/10', NULL),
	(360, 'http://tst/magento/index.php/catalog/product/view/id/11', NULL),
	(361, 'http://tst/magento/index.php/catalog/product/view/id/12', NULL),
	(362, 'http://tst/magento/index.php/catalog/product/view/id/13', NULL),
	(363, 'http://tst/magento/index.php/catalog/product/view/id/14', NULL),
	(364, 'http://tst/magento/index.php/catalog/product/view/id/20', NULL),
	(365, 'http://tst/magento/index.php/catalog/product/view/id/31', NULL),
	(366, 'http://tst/magento/index.php/catalog/product/view/id/32', NULL),
	(367, 'http://tst/magento/index.php/catalog/product/view/id/33', NULL),
	(368, 'http://tst/magento/index.php/catalog/product/view/id/34', NULL),
	(369, 'http://tst/magento/index.php/catalog/product/view/id/35', NULL),
	(370, 'http://tst/magento/closeout-set-villa-park-platform-bedroom-set', NULL),
	(371, 'http://tst/magento/catalog/product/view/id/4', NULL),
	(372, 'http://tst/magento/index.php/catalog/category/view/s/casing/id/97/', 'http://tst/magento/closeout-set-villa-park-platform-bedroom-set.html'),
	(373, 'http://tst/magento/index.php/catalog/category/view/id/98', 'http://tst/magento/index.php/catalog/category/view/s/casing/id/97/'),
	(374, 'http://tst/magento/index.php/catalog/category/view/id/99', 'http://tst/magento/index.php/picture-frame-molding.html'),
	(375, 'http://tst/magento/index.php/catalog/category/view/id/100', 'http://tst/magento/index.php/picture-frames.html'),
	(376, 'http://tst/magento/index.php/catalog/category/view/id/101', 'http://tst/magento/index.php/rosettes-medallions.html'),
	(377, 'http://tst/magento/index.php/catalog/category/view/id/97', 'http://tst/magento/index.php/base-molding.html'),
	(378, 'http://tst/magento/index.php/catalog/category/view/id/98', 'http://tst/magento/index.php/casing.html'),
	(379, 'http://tst/magento/index.php/catalog/category/view/id/99', 'http://tst/magento/index.php/picture-frame-molding.html'),
	(380, 'http://tst/magento/index.php/catalog/category/view/id/100', 'http://tst/magento/index.php/picture-frames.html'),
	(381, 'http://tst/magento/index.php/catalog/category/view/id/101', 'http://tst/magento/index.php/rosettes-medallions.html'),
	(382, 'http://tst/magento/', NULL);
/*!40000 ALTER TABLE `log_url_info` ENABLE KEYS */;


-- Dumping structure for table mag.log_visitor
DROP TABLE IF EXISTS `log_visitor`;
CREATE TABLE IF NOT EXISTS `log_visitor` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `session_id` varchar(64) DEFAULT NULL COMMENT 'Session ID',
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last Visit Time',
  `last_url_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Last URL ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8 COMMENT='Log Visitors Table';

-- Dumping data for table mag.log_visitor: ~381 rows (approximately)
/*!40000 ALTER TABLE `log_visitor` DISABLE KEYS */;
INSERT INTO `log_visitor` (`visitor_id`, `session_id`, `first_visit_at`, `last_visit_at`, `last_url_id`, `store_id`) VALUES
	(1, 'fbd162376dcaf702edd268ce4348067c', '2014-10-10 10:05:31', '2014-10-10 10:05:32', 1, 1),
	(2, '4845001541d9ee5350a2f920d7144082', '2014-10-10 10:06:05', '2014-10-10 10:06:05', 2, 1),
	(3, '67bf3dad10e439f48c984d457400ed30', '2014-10-10 10:33:07', '2014-10-10 10:33:07', 3, 1),
	(4, '4fc18f29061cae03756ce10939c44a87', '2014-10-10 11:02:17', '2014-10-10 11:02:18', 4, 1),
	(5, 'cb5bbbc9cf66a12ce4edcb5d61e75c1c', '2014-10-10 11:02:39', '2014-10-10 11:02:41', 5, 1),
	(6, '804a2a7bb41ae57c7eebd67c58a2f6b9', '2014-10-10 11:02:53', '2014-10-10 11:02:54', 6, 1),
	(7, '68027a9807275f1f7da327be4595f009', '2014-10-10 11:03:25', '2014-10-10 11:03:25', 7, 1),
	(8, '796d0ab17b785be0c272bc1213618ee5', '2014-10-10 14:04:41', '2014-10-10 14:04:42', 8, 1),
	(9, 'b30cbd77d6a663d49055389ee2485950', '2014-10-10 14:04:48', '2014-10-10 14:04:50', 9, 1),
	(10, '3fee90c8dfdf4c48e02cf89e98ad81c3', '2014-10-10 14:04:56', '2014-10-10 14:04:56', 10, 1),
	(11, '3ce8dd5e02a0bdf80935a7f6f79b6005', '2014-10-10 14:05:10', '2014-10-10 14:05:10', 11, 1),
	(12, '554dd331e5be2ce3368a72df4ab871a5', '2014-10-10 14:23:55', '2014-10-10 14:23:56', 12, 1),
	(13, '2e37b650a8864e51953c3ad615e8695e', '2014-10-10 14:24:02', '2014-10-10 14:24:02', 13, 1),
	(14, 'df0d4c9d6a407789c231aaf7ba1c0f02', '2014-10-10 14:24:08', '2014-10-10 14:24:09', 14, 1),
	(15, 'a8b99add2d9b2b92ff32bf5361f289d9', '2014-10-10 14:24:24', '2014-10-10 14:24:24', 15, 1),
	(16, 'c0ab2716fb11df90ef9bb8691d8ba591', '2014-10-10 14:28:46', '2014-10-10 14:57:54', 56, 1),
	(17, '60ade7b37e8e704e6fead6f79b3a7bf2', '2014-10-10 14:54:03', '2014-10-10 14:54:04', 18, 1),
	(18, '03c51db2472fdd1c47e3ee8ebad10d8f', '2014-10-10 14:54:09', '2014-10-10 14:54:10', 19, 1),
	(19, '588aa0af28757cebf319162c9501b890', '2014-10-10 14:54:10', '2014-10-10 14:54:11', 20, 1),
	(20, '41fb8a511e15c1c691ce44cad20cae9d', '2014-10-10 14:54:11', '2014-10-10 14:54:11', 21, 1),
	(21, '484168fc94a216dcaf53191880a6d303', '2014-10-10 14:54:12', '2014-10-10 14:54:12', 22, 1),
	(22, '46a135ca1aeaf8ef764757b876fb868e', '2014-10-10 14:54:13', '2014-10-10 14:54:13', 23, 1),
	(23, '25fcec61dd116027f1d0c4bf6c6dc36f', '2014-10-10 14:54:19', '2014-10-10 14:54:19', 24, 1),
	(24, '336ec132df3836a68cec2941aabfb068', '2014-10-10 14:54:30', '2014-10-10 14:54:31', 25, 1),
	(25, '824c2aef00958eb07defed774dd79f66', '2014-10-10 14:54:31', '2014-10-10 14:54:31', 26, 1),
	(26, '6c1d7e95677f353c36517bb06b35b874', '2014-10-10 14:54:32', '2014-10-10 14:54:32', 27, 1),
	(27, '23cb6f0060f12954048122e3576dd0c1', '2014-10-10 14:54:33', '2014-10-10 14:54:33', 28, 1),
	(28, 'c4f6ae1bc00a9ab8d6178b0b20666f96', '2014-10-10 14:54:35', '2014-10-10 14:54:36', 29, 1),
	(29, '2bd2d24f6f1dcf843b157e6652c6f5c6', '2014-10-10 15:59:32', '2014-10-10 15:59:33', 57, 1),
	(30, 'ebca283915608478d57459937e50f173', '2014-10-10 15:59:42', '2014-10-10 16:19:24', 144, 1),
	(31, '6acf2006004e38f0e23eddfcda511b96', '2014-10-10 15:59:42', '2014-10-10 15:59:45', 59, 1),
	(32, '8ce9456d3a91a4eba59ebb1ff7312f59', '2014-10-10 15:59:47', '2014-10-10 15:59:47', 60, 1),
	(33, 'a9a890096d6bcf89987dcdc458b27409', '2014-10-10 15:59:48', '2014-10-10 15:59:49', 61, 1),
	(34, '9ea0578c5b24634de3833435200bc0ff', '2014-10-10 15:59:50', '2014-10-10 15:59:50', 62, 1),
	(35, '958b9ce0bd7d1120fdeed95af8f150aa', '2014-10-10 15:59:54', '2014-10-10 15:59:56', 63, 1),
	(36, '91f97aa1c0548f20576104932b4b49e9', '2014-10-10 16:00:10', '2014-10-10 16:00:10', 66, 1),
	(37, '1a08f519a455116c5835f252fa909680', '2014-10-10 16:00:27', '2014-10-10 16:00:27', 78, 1),
	(38, '251c464758ab88b5af602e031089f86e', '2014-10-10 16:00:28', '2014-10-10 16:00:29', 80, 1),
	(39, '638d8b0aede9be59533c60dd08a340b8', '2014-10-10 16:00:30', '2014-10-10 16:00:31', 84, 1),
	(40, 'd706307c2e56429cf7db63266539fa2c', '2014-10-10 16:00:31', '2014-10-10 16:00:32', 85, 1),
	(41, '7947c0f88ab7f63600294e94083d141b', '2014-10-10 16:00:33', '2014-10-10 16:00:33', 88, 1),
	(42, '2261abf8de7e2f3d7eca16b88bfdbccc', '2014-10-10 16:03:48', '2014-10-10 16:03:49', 96, 1),
	(43, 'e01fab38fc5c88dbaeb88e650dcee56e', '2014-10-10 16:03:58', '2014-10-10 16:03:59', 97, 1),
	(44, 'a78207938f7eeba5f9ea4049e8d3350e', '2014-10-10 16:04:00', '2014-10-10 16:04:00', 98, 1),
	(45, 'e4c76ba90c54568a442019001bd4169f', '2014-10-10 16:04:01', '2014-10-10 16:04:02', 99, 1),
	(46, '54f223854b1355cb533541b52c14a92a', '2014-10-10 16:04:03', '2014-10-10 16:04:03', 100, 1),
	(47, 'cbd84941c8cc22598c0ecfa8e4f07423', '2014-10-10 16:04:04', '2014-10-10 16:04:05', 101, 1),
	(48, '05e7a3f18e501153b2c18e4209d96fab', '2014-10-10 16:04:16', '2014-10-10 16:04:16', 102, 1),
	(49, 'c7283bbefd3ce4818247b15f8ac5215a', '2014-10-10 16:04:44', '2014-10-10 16:04:44', 103, 1),
	(50, 'f31b901f37c49ed3cdf47863504817ae', '2014-10-10 16:04:45', '2014-10-10 16:04:45', 104, 1),
	(51, '62d65e395062e2c75e73fcdfa66bf316', '2014-10-10 16:04:46', '2014-10-10 16:04:47', 105, 1),
	(52, '73bd7136c5d000cdd9b89a09f83379a4', '2014-10-10 16:04:48', '2014-10-10 16:04:48', 106, 1),
	(53, 'ce85341734310d4f51cff731cf9a4eba', '2014-10-10 16:04:49', '2014-10-10 16:04:49', 107, 1),
	(54, '1b21a6474443f99dc08a1b2f34d8bc5d', '2014-10-10 16:11:28', '2014-10-10 16:11:28', 112, 1),
	(55, 'a2f9d3c0f8477ee266b04776ad7451f0', '2014-10-10 16:11:36', '2014-10-10 16:11:37', 113, 1),
	(56, 'fb32211ca06ac5257d1a8b4c7e7c0a3d', '2014-10-10 16:11:37', '2014-10-10 16:11:38', 114, 1),
	(57, '8bbb770ffbea9bb8c53a064425fbcba8', '2014-10-10 16:11:38', '2014-10-10 16:11:39', 115, 1),
	(58, '623c20ab2c34b2f7249a1ae80e9e1253', '2014-10-10 16:11:39', '2014-10-10 16:11:40', 116, 1),
	(59, '3a4af5cc64801aeb4fd552cb487da5e5', '2014-10-10 16:11:41', '2014-10-10 16:11:42', 117, 1),
	(60, '9f91a8b9a5e39213086b0a3e9c6d2fe3', '2014-10-10 16:11:52', '2014-10-10 16:11:52', 118, 1),
	(61, 'df106a01b67d9ec0dc81e94b131eb226', '2014-10-10 16:12:16', '2014-10-10 16:12:16', 119, 1),
	(62, '44d9fe12a3a6e009687529b7df5bdc0f', '2014-10-10 16:12:17', '2014-10-10 16:12:17', 120, 1),
	(63, 'f17c9b02bff81df41d31accae47c7191', '2014-10-10 16:12:18', '2014-10-10 16:12:18', 121, 1),
	(64, '816cd137d807ef8603376f634918bc82', '2014-10-10 16:12:19', '2014-10-10 16:12:19', 122, 1),
	(65, 'bb42f1c1d91e71badccea67b7fa45a01', '2014-10-10 16:12:20', '2014-10-10 16:12:20', 123, 1),
	(66, '95140c1d53f750393acca49d67e19d20', '2014-10-10 16:17:57', '2014-10-10 16:17:57', 132, 1),
	(67, '348b0404fd54d8fae9a0812f9151dcba', '2014-10-10 16:18:05', '2014-10-10 16:18:06', 133, 1),
	(68, '3235ca482c851f6dc088fec7b435fdb1', '2014-10-10 16:18:06', '2014-10-10 16:18:07', 134, 1),
	(69, '1206c2bba240e2ec5f5f0416e1783f69', '2014-10-10 16:18:07', '2014-10-10 16:18:08', 135, 1),
	(70, 'c1f579911023d945f376b4a4a90fc50f', '2014-10-10 16:18:08', '2014-10-10 16:18:09', 136, 1),
	(71, '261e1540ba8d8e2a186537e0e003913c', '2014-10-10 16:18:10', '2014-10-10 16:18:10', 137, 1),
	(72, '4831a2a1202a695ee8a7f4c668a6d98d', '2014-10-10 16:18:20', '2014-10-10 16:18:20', 138, 1),
	(73, '015d3619075eb78a23aa97ab23920746', '2014-10-10 16:18:45', '2014-10-10 16:18:45', 139, 1),
	(74, 'd8790aff89f26ae8d916dd528eb9113d', '2014-10-10 16:18:46', '2014-10-10 16:18:46', 140, 1),
	(75, '41b4546341788704defcbbdeaffe919a', '2014-10-10 16:18:47', '2014-10-10 16:18:47', 141, 1),
	(76, 'd6b832d6388a1d7d91e2a78b2d57cc5a', '2014-10-10 16:18:48', '2014-10-10 16:18:48', 142, 1),
	(77, 'e2fc9f9e4538a0e20042d4e61a819e9f', '2014-10-10 16:18:49', '2014-10-10 16:18:50', 143, 1),
	(78, 'b1f3a215a059a127a5c83c0cbbc0bf9f', '2014-10-11 10:56:35', '2014-10-11 10:57:46', 148, 1),
	(79, '24945dd65ff518db985d71f4b74bad4a', '2014-10-11 11:35:31', '2014-10-11 11:35:33', 149, 1),
	(80, '9aa7b3c0c8098a3be1d19031d2653e6d', '2014-10-11 11:35:41', '2014-10-11 11:35:44', 150, 1),
	(81, '39ef1eae555f5214edba0521b5b9daad', '2014-10-11 11:35:45', '2014-10-11 11:35:45', 151, 1),
	(82, '7525a1987aeeeb1519858a9a28534e48', '2014-10-11 11:35:46', '2014-10-11 11:35:47', 152, 1),
	(83, '196893fa3e64031b6e3406dc79b81aec', '2014-10-11 11:35:49', '2014-10-11 11:35:54', 153, 1),
	(84, 'a6451ad60ab1341c60e15564e5dc28e4', '2014-10-11 11:35:56', '2014-10-11 11:35:58', 154, 1),
	(85, '19df0079a0cc2987d8b2536e4f80080b', '2014-10-11 11:36:07', '2014-10-11 11:36:07', 155, 1),
	(86, '33e5998ae920bba5c89e8ba48349a80f', '2014-10-11 11:36:23', '2014-10-11 11:36:23', 156, 1),
	(87, '73bb1c180cb5f3d6aa4fc8c110cc5d41', '2014-10-11 11:36:24', '2014-10-11 11:36:24', 157, 1),
	(88, '6ba8de4eba12a15a76978b1670136ce2', '2014-10-11 11:36:26', '2014-10-11 11:36:27', 158, 1),
	(89, '78d14499df3e0f928f60e664aaa2acd7', '2014-10-11 11:36:27', '2014-10-11 11:36:28', 159, 1),
	(90, 'ac2cd7a4050fe1a996946904ef231e35', '2014-10-11 11:36:29', '2014-10-11 11:36:29', 160, 1),
	(91, 'b51ba6ed7052ccba279c69d19cf274a3', '2014-10-11 11:42:40', '2014-10-11 11:42:42', 161, 1),
	(92, '30bb6aeb9b13200fce788080bd591bbf', '2014-10-11 11:42:49', '2014-10-11 11:42:50', 162, 1),
	(93, '144a56c85f1077cc6b66649bc95d8abe', '2014-10-11 11:42:51', '2014-10-11 11:42:51', 163, 1),
	(94, 'edcc4aae766c31ee84f6fdb13deb7ff8', '2014-10-11 11:42:52', '2014-10-11 11:42:53', 164, 1),
	(95, '96a261ec80990775fc1de05ae59a6d32', '2014-10-11 11:42:53', '2014-10-11 11:42:54', 165, 1),
	(96, 'd3792f64dd1656702e1c78490172e351', '2014-10-11 11:42:55', '2014-10-11 11:42:56', 166, 1),
	(97, 'cda1ecfd34544972a3d26858a7d98945', '2014-10-11 11:43:07', '2014-10-11 11:43:08', 167, 1),
	(98, 'bdff655fdaee674e4b46b4d3f38710eb', '2014-10-11 11:43:24', '2014-10-11 11:43:25', 168, 1),
	(99, '7ce70ab84d9c0f5e5d60c8f1eccb9546', '2014-10-11 11:43:25', '2014-10-11 11:43:26', 169, 1),
	(100, 'a7e8a7c67ab2e9ed20a64f2dc086b770', '2014-10-11 11:43:26', '2014-10-11 11:43:27', 170, 1),
	(101, '209a15d48bf2212d289b7bd1c57a3e93', '2014-10-11 11:43:30', '2014-10-11 11:43:30', 171, 1),
	(102, 'f0f4b883bf729a29bee1ca759ec2b998', '2014-10-11 11:43:38', '2014-10-11 11:43:39', 172, 1),
	(103, 'a0ab5cb0ed6650de6aeebba5a5429c5b', '2014-10-11 11:45:15', '2014-10-11 11:45:15', 173, 1),
	(104, '07e1eab80c69f81cc621c1ad06e30e08', '2014-10-11 11:45:28', '2014-10-11 11:45:35', 174, 1),
	(105, '897ab54ca7be62889bb96f70458c8bc3', '2014-10-11 11:45:44', '2014-10-11 11:45:51', 175, 1),
	(106, '5f0abf59f014935d4c6cc24be194d36c', '2014-10-11 11:45:52', '2014-10-11 11:45:52', 176, 1),
	(107, '6063afd4b9492a801df842d4125127e6', '2014-10-11 11:45:53', '2014-10-11 11:45:54', 177, 1),
	(108, 'e5340c673758a04a4d101242bd91e23b', '2014-10-11 11:45:55', '2014-10-11 11:45:57', 178, 1),
	(109, '6cdf1d597bfde9177e00839a49c45ef9', '2014-10-11 11:46:20', '2014-10-11 11:46:20', 179, 1),
	(110, 'ff87ff8126929471a3d35b0cd7d5f2a6', '2014-10-11 11:46:37', '2014-10-11 11:46:37', 180, 1),
	(111, '6826a6e048a1a19250ab16a13388f93e', '2014-10-11 11:46:39', '2014-10-11 11:46:39', 181, 1),
	(112, '66ecd2c3a2e156bada235efe77799bdb', '2014-10-11 11:46:42', '2014-10-11 11:46:43', 182, 1),
	(113, '9742e5178583ca3aafdc6521c13984aa', '2014-10-11 11:46:46', '2014-10-11 11:46:46', 183, 1),
	(114, 'd66e3904b85df7dccf31991477692654', '2014-10-11 11:46:48', '2014-10-11 11:46:48', 184, 1),
	(115, 'b1f3a215a059a127a5c83c0cbbc0bf9f', '2014-10-11 11:48:28', '2014-10-11 11:56:36', 199, 1),
	(116, 'a1a5706f7ec9a5a3e23157d5f229195c', '2014-10-11 11:55:01', '2014-10-11 11:55:08', 186, 1),
	(117, 'ada218357069cde0bf95dd5ff4c78b7e', '2014-10-11 11:55:21', '2014-10-11 11:55:24', 187, 1),
	(118, 'c38976918d8eb489a8ec90d38074a96e', '2014-10-11 11:55:25', '2014-10-11 11:55:25', 188, 1),
	(119, 'e19fda75cac781716814b244f95c073c', '2014-10-11 11:55:26', '2014-10-11 11:55:26', 189, 1),
	(120, 'a43aff54fb7ec61f2cd0b7e9f83e70a6', '2014-10-11 11:55:27', '2014-10-11 11:55:27', 190, 1),
	(121, '86f849d1eb9f110fdf86e0dfa9c49854', '2014-10-11 11:55:28', '2014-10-11 11:55:30', 191, 1),
	(122, 'c036c9f8f45d65ebb6ed302b7e239ded', '2014-10-11 11:55:37', '2014-10-11 11:55:38', 192, 1),
	(123, '43f28d856cd8d7c43914a0a4c11e4039', '2014-10-11 11:55:52', '2014-10-11 11:55:53', 193, 1),
	(124, 'eb355e4e7756c21dd62f523b0ba13561', '2014-10-11 11:55:53', '2014-10-11 11:55:54', 194, 1),
	(125, '7d004df59f4da66135c5088ed6c76ad8', '2014-10-11 11:55:54', '2014-10-11 11:55:55', 195, 1),
	(126, 'c7889d3d993e3fa06494821aa4e1b5fe', '2014-10-11 11:55:56', '2014-10-11 11:55:56', 196, 1),
	(127, 'e5d8e98e7f0c54b1bd67efe7896c10c4', '2014-10-11 11:55:57', '2014-10-11 11:55:57', 197, 1),
	(128, '1c31e92d17bfda63812af82fb16f69a8', '2014-10-11 11:58:06', '2014-10-11 11:58:08', 200, 1),
	(129, '205d9e27a02d96fc32f8caa2e0ed9400', '2014-10-11 11:58:16', '2014-10-11 11:58:17', 201, 1),
	(130, '19ed26501a1421fa6dfb736c0d37dec7', '2014-10-11 11:58:18', '2014-10-11 11:58:18', 202, 1),
	(131, 'af1c63ea8152583d4d6863c15d87bfa1', '2014-10-11 11:58:19', '2014-10-11 11:58:19', 203, 1),
	(132, 'd1fb1ac6e2b17d539172616441517273', '2014-10-11 11:58:20', '2014-10-11 11:58:20', 204, 1),
	(133, '5c210a4b98206930c85157d7d8077d92', '2014-10-11 11:58:22', '2014-10-11 11:58:23', 205, 1),
	(134, 'fbaf158c7fe36eba1d83e4a2a34a2c48', '2014-10-11 11:58:36', '2014-10-11 11:58:36', 206, 1),
	(135, 'caf32949bca111715659da04d010828d', '2014-10-11 11:58:53', '2014-10-11 11:58:53', 207, 1),
	(136, 'a6f656d0c2f59097f1db8e14e8b7287b', '2014-10-11 11:58:55', '2014-10-11 11:58:55', 208, 1),
	(137, 'd7529aeb3df281b3c66fec64be94e41b', '2014-10-11 11:58:56', '2014-10-11 11:58:56', 209, 1),
	(138, '5b929e4210795bf87a200a8508a1cb26', '2014-10-11 11:58:57', '2014-10-11 11:58:57', 210, 1),
	(139, '6f81df33765d610f140260f27839ebbb', '2014-10-11 11:59:00', '2014-10-11 11:59:00', 211, 1),
	(140, 'ea35edd0240474e3d0fc8a63441da9b4', '2014-10-11 12:00:22', '2014-10-11 12:00:23', 212, 1),
	(141, '46cee9e3af16b582b25a3621a5bf4159', '2014-10-11 12:00:32', '2014-10-11 12:00:33', 213, 1),
	(142, 'c704778a188212a12f0678d7c9a9f598', '2014-10-11 12:00:34', '2014-10-11 12:00:35', 214, 1),
	(143, 'da13a299b13d97b5aef9b1ebeed54a65', '2014-10-11 12:00:35', '2014-10-11 12:00:36', 215, 1),
	(144, 'aabaa8aae551242119d724427bbb3192', '2014-10-11 12:00:37', '2014-10-11 12:00:37', 216, 1),
	(145, '796f4f954c40ea4d35541ccbde699f9d', '2014-10-11 12:00:38', '2014-10-11 12:00:39', 217, 1),
	(146, '70d21a8d879b1e7b461a03cd7d8c8ab3', '2014-10-11 12:00:49', '2014-10-11 12:00:50', 218, 1),
	(147, 'f0549c9549f373f56b808e9391232783', '2014-10-11 12:01:12', '2014-10-11 12:01:12', 219, 1),
	(148, '575f5c02cb5ffad8e6f912516bc56829', '2014-10-11 12:01:13', '2014-10-11 12:01:14', 220, 1),
	(149, '9b109590b528cb1d0ea36326730bd02c', '2014-10-11 12:01:14', '2014-10-11 12:01:15', 221, 1),
	(150, '97e8640f87d699702c6e4960b7bf0ef7', '2014-10-11 12:01:16', '2014-10-11 12:01:16', 222, 1),
	(151, '7b28bbcbacc84d8967da33acec40f1bf', '2014-10-11 12:01:17', '2014-10-11 12:01:17', 223, 1),
	(152, '573d364b38b8db5644130b2d4ccfef57', '2014-10-11 12:40:37', '2014-10-11 13:19:19', 262, 1),
	(153, '8cbeb32ab0904bc578eb872969f72b15', '2014-10-11 12:59:31', '2014-10-11 12:59:31', 227, 1),
	(154, '9c5495e836fe14dbaf3ccd34c64da93c', '2014-10-11 12:59:40', '2014-10-11 12:59:41', 228, 1),
	(155, '7f46127723b51518d9b8676d0206f6be', '2014-10-11 12:59:42', '2014-10-11 12:59:42', 229, 1),
	(156, '258747ab3337c79f5baf890b85baee4a', '2014-10-11 12:59:43', '2014-10-11 12:59:43', 230, 1),
	(157, '3ae05520f201403161483a159cf6952c', '2014-10-11 12:59:44', '2014-10-11 12:59:44', 231, 1),
	(158, '42ea54fa62fa6cb40272a28a2df36da3', '2014-10-11 12:59:45', '2014-10-11 12:59:46', 232, 1),
	(159, '3c5bc02a348301e21513a019d77e083d', '2014-10-11 12:59:54', '2014-10-11 12:59:54', 233, 1),
	(160, 'edf7152a17a6fb88b1f6e96021627d3e', '2014-10-11 13:00:11', '2014-10-11 13:00:11', 234, 1),
	(161, '152923e2377820b1655e133ed2568017', '2014-10-11 13:00:12', '2014-10-11 13:00:13', 235, 1),
	(162, 'fd682337e3a0b00570fe6b744b515318', '2014-10-11 13:00:14', '2014-10-11 13:00:14', 236, 1),
	(163, '928f9bdfc3df4dee4cf7008cdb3eeab8', '2014-10-11 13:00:15', '2014-10-11 13:00:15', 237, 1),
	(164, '9566ff238ef3654c9d339d1469b4a458', '2014-10-11 13:00:17', '2014-10-11 13:00:17', 238, 1),
	(165, 'cd487c7c00753591fbbf6bc6b84a8d6f', '2014-10-11 13:07:37', '2014-10-11 13:07:37', 248, 1),
	(166, '9540156c2033ad190c9dab711c19aebc', '2014-10-11 13:18:05', '2014-10-11 13:18:06', 249, 1),
	(167, '14634eb02e684dcd003d8c5cdff651e6', '2014-10-11 13:18:14', '2014-10-11 13:18:15', 250, 1),
	(168, 'ec98d028109db6d0d6d512bb4e0231ab', '2014-10-11 13:18:15', '2014-10-11 13:18:16', 251, 1),
	(169, '8a868f66b2a429e04a8d5c55f27f4b0e', '2014-10-11 13:18:17', '2014-10-11 13:18:17', 252, 1),
	(170, 'f7ec3f36a9d59eda69ac51f8667149f7', '2014-10-11 13:18:18', '2014-10-11 13:18:18', 253, 1),
	(171, '65a51032de5b961dfcd193a92ad64e5c', '2014-10-11 13:18:19', '2014-10-11 13:18:20', 254, 1),
	(172, 'e60da931a80ecd6a833be7eb1b1acee2', '2014-10-11 13:18:29', '2014-10-11 13:18:29', 255, 1),
	(173, '9befc4e94b96712abd7637c5e94688c6', '2014-10-11 13:18:46', '2014-10-11 13:18:46', 256, 1),
	(174, 'dc8909f3051fcce59f85ce281be033a1', '2014-10-11 13:18:47', '2014-10-11 13:18:47', 257, 1),
	(175, '76c694525ce0ee62d1e970e90f47ec6f', '2014-10-11 13:18:48', '2014-10-11 13:18:49', 258, 1),
	(176, 'ad2bcb1a0403595e639a4493daf6551e', '2014-10-11 13:18:49', '2014-10-11 13:18:50', 259, 1),
	(177, 'da48cf6e57f81b3fd48fcb27e42aac4a', '2014-10-11 13:18:51', '2014-10-11 13:18:51', 260, 1),
	(178, '81e83b025fe914153611bb165800872d', '2014-10-11 13:28:19', '2014-10-11 13:28:19', 263, 1),
	(179, '309291910f25b8a5bf815cb712856375', '2014-10-11 13:29:28', '2014-10-11 13:29:28', 264, 1),
	(180, '693fbc8b83a7944272da7d6d37c40763', '2014-10-11 13:30:06', '2014-10-11 13:30:06', 265, 1),
	(181, '41016d9c5c1206bc6612bea6511f0ed8', '2014-10-13 11:31:41', '2014-10-13 11:31:44', 266, 1),
	(182, 'a5ab5793461014a4edc93a864e5557e8', '2014-10-13 11:33:13', '2014-10-13 11:33:14', 267, 1),
	(183, 'b780fbd101fb1331a7de91cee6103919', '2014-10-13 11:34:13', '2014-10-13 11:34:17', 268, 1),
	(184, '5d70b1af9df18fb34bdd84c80410e757', '2014-10-13 11:34:43', '2014-10-13 11:34:44', 269, 1),
	(185, 'fde387012e8f029f2ba1f7aa727fd69b', '2014-10-13 11:35:03', '2014-10-13 11:35:04', 270, 1),
	(186, 'c95f65adc3ab625978f27c5f6cb92ad9', '2014-10-13 11:35:26', '2014-10-13 11:35:27', 271, 1),
	(187, '2757a8e8f107254900bd37d4329d9cba', '2014-10-13 11:35:48', '2014-10-13 11:35:48', 272, 1),
	(188, '57f5bd9463376407ce43d2ca175b857c', '2014-10-13 11:35:53', '2014-10-13 11:35:53', 273, 1),
	(189, 'b5f4b53f24db313154c2c719c5800e8e', '2014-10-13 11:35:54', '2014-10-13 11:35:54', 274, 1),
	(190, '8e1f6cb8c2908402faa3c711e77a2048', '2014-10-13 11:36:12', '2014-10-13 11:36:12', 275, 1),
	(191, '729aef52615ca7c708af35f6709d0c01', '2014-10-13 11:37:44', '2014-10-13 11:37:44', 276, 1),
	(192, '74b58f9f85d1b7cc7910e4ca1b4fe82e', '2014-10-13 11:58:01', '2014-10-13 11:58:01', 277, 1),
	(193, '31acf0d22f17dd1853d6645e25eaad08', '2014-10-13 11:58:17', '2014-10-13 11:58:17', 278, 1),
	(194, '723517c4dce717cd33cb33d79df881fe', '2014-10-13 11:58:26', '2014-10-13 11:58:27', 279, 1),
	(195, '0add5d4e16ef11424217ed8f5b4e6a09', '2014-10-13 11:58:44', '2014-10-13 11:58:44', 280, 1),
	(196, '815f4ab7a8de5e30f7e4e2a88a4cdbad', '2014-10-13 13:46:05', '2014-10-13 13:46:06', 281, 1),
	(197, 'd2e9ae921eef657fb3f027e1c29c74e4', '2014-10-13 13:48:11', '2014-10-13 13:48:12', 282, 1),
	(198, '6e465e53708da3ac7bda94394fef9c9c', '2014-10-13 13:49:29', '2014-10-13 13:49:29', 283, 1),
	(199, '9693e5201f5c6ed5b05bf7da97f772fa', '2014-10-13 13:54:32', '2014-10-13 13:54:32', 284, 1),
	(200, '6b0969f161106fd0fe2668cabdec06a3', '2014-10-13 13:56:27', '2014-10-13 13:56:27', 285, 1),
	(201, 'ab45c29471f0d3bfb4d097a5f6689a33', '2014-10-13 13:58:17', '2014-10-13 13:58:17', 286, 1),
	(202, 'dc85cbd3cbde4aa9ef4598a2485cd08d', '2014-10-13 14:01:53', '2014-10-13 14:01:53', 287, 1),
	(203, '8b1241928c7b4c55cc3b8d89d491bd1d', '2014-10-13 14:30:03', '2014-10-13 14:30:03', 288, 1),
	(204, 'dcf00d636d24a0bfc3d6e4d45c99bee4', '2014-10-13 14:31:19', '2014-10-13 14:31:19', 289, 1),
	(205, 'ed9b6157f2ff91f8d08f5aa3f4111006', '2014-10-13 14:32:24', '2014-10-13 14:32:24', 290, 1),
	(206, 'c5b340d0f68e7c8b80502655c7d88cc8', '2014-10-13 14:33:45', '2014-10-13 14:33:45', 291, 1),
	(207, 'da586796d2845f00f6e441f6825b0d81', '2014-10-13 14:34:58', '2014-10-13 14:34:58', 292, 1),
	(208, 'caf83faea28061d493156380f3a2e62f', '2014-10-13 14:36:03', '2014-10-13 14:36:03', 293, 1),
	(209, 'f40419485f4232f268d4b57463c9df5c', '2014-10-13 14:39:28', '2014-10-13 14:39:28', 294, 1),
	(210, '1e265f165f8d7622ef7e8360d336ed5d', '2014-10-13 14:39:49', '2014-10-13 14:39:49', 295, 1),
	(211, '31289bca21581c4b47dae1e44a7c0d0b', '2014-10-13 14:51:10', '2014-10-13 14:51:10', 296, 1),
	(212, 'aba59725254b88977cd22217deb7a3d1', '2014-10-13 14:53:05', '2014-10-13 14:53:05', 297, 1),
	(213, 'f0f5b6812d678017a4dca8c543be830a', '2014-10-13 14:55:42', '2014-10-13 14:55:42', 298, 1),
	(214, 'da518377e6a94347f20efab3d4d34457', '2014-10-13 14:55:51', '2014-10-13 14:55:54', 299, 1),
	(215, '2071fc8c7c3a2baf562bdedb9fa3f621', '2014-10-13 14:58:06', '2014-10-13 14:58:06', 300, 1),
	(216, 'b8b27bfb78612f1e5cdf18387c9436ca', '2014-10-13 14:58:40', '2014-10-13 14:58:41', 301, 1),
	(217, '6a50e4406ff7e77de9061540a254886b', '2014-10-13 15:00:05', '2014-10-13 15:00:05', 302, 1),
	(218, '58fbf86229f5a1353f95e60db245b4fa', '2014-10-13 15:00:24', '2014-10-13 15:00:24', 303, 1),
	(219, '4423c69acb5b02288760facde673c3eb', '2014-10-14 10:27:57', '2014-10-14 10:28:00', 304, 1),
	(220, '8dfe39ca78e56a144f8f5f1c587a1566', '2014-10-14 10:29:09', '2014-10-14 10:29:09', 305, 1),
	(221, 'a454c3210086fdb946aa179c3a970025', '2014-10-14 11:55:59', '2014-10-14 11:56:00', 306, 1),
	(222, '700510163a604037cfdd4592bc5aa3ec', '2014-10-14 15:23:49', '2014-10-14 15:23:56', 307, 1),
	(223, '2d37931491dafd1a23705045b46295cd', '2014-10-14 15:24:27', '2014-10-14 15:24:32', 308, 1),
	(224, 'ee1ae9bff4c847a2a7a76a3affb40df2', '2014-10-14 16:11:56', '2014-10-14 16:11:59', 309, 1),
	(225, '796f678755f8f8518655906717f04524', '2014-10-14 16:12:47', '2014-10-14 16:12:49', 310, 1),
	(226, '59443cb06205e9695421eebc6ba701e7', '2014-10-14 16:13:32', '2014-10-14 16:13:32', 311, 1),
	(227, '4d1eae70ee1abf8c12d68269bf18eb5f', '2014-10-14 16:13:52', '2014-10-14 16:13:54', 312, 1),
	(228, '13582f2ac953056ebedb8708b7473f19', '2014-10-14 16:14:02', '2014-10-14 16:14:03', 313, 1),
	(229, '3629ed6b44e4ca64d2a4c5059b617a48', '2014-10-14 16:14:51', '2014-10-14 16:15:06', 314, 1),
	(230, 'd2ffebf179969348ebf10cce2567ddde', '2014-10-14 16:15:50', '2014-10-14 16:15:54', 315, 1),
	(231, '1be7e86bbc6047633803bb74b6ba8e6a', '2014-10-14 16:20:50', '2014-10-14 16:20:51', 316, 1),
	(232, '4f6cb99d6427d92fea7afa73537a0afb', '2014-10-14 16:21:12', '2014-10-14 16:21:13', 317, 1),
	(233, '37ef1ae1cb960c44172921070b30319a', '2014-10-14 16:21:23', '2014-10-14 16:21:23', 318, 1),
	(234, '8253fd9e550d517bb17fcb83cb9af19d', '2014-10-14 16:21:51', '2014-10-14 16:21:52', 319, 1),
	(235, '0b53023d151dfcdded37bc1a4a6531e4', '2014-10-17 09:30:55', '2014-10-17 09:30:58', 320, 1),
	(236, 'c904289d76032a5fa17f112a752ef334', '2014-10-17 09:37:04', '2014-10-17 09:37:05', 321, 1),
	(237, '6ea349727b51d88e633a03b8b540e3d2', '2014-10-17 09:37:15', '2014-10-17 09:37:25', 322, 1),
	(238, '2eb0dff6ff9f8183f8ddb8e2faa6805b', '2014-10-17 09:37:26', '2014-10-17 09:37:26', 323, 1),
	(239, 'bf356ba1b5d8ab24a588c27b0fa4ad6a', '2014-10-17 09:37:28', '2014-10-17 09:37:28', 324, 1),
	(240, 'b3cacf96eefad11f65ecbe79cc24a5a0', '2014-10-17 09:37:29', '2014-10-17 09:37:29', 325, 1),
	(241, 'c9ef91fe6c84204ae2302fb6eb9027c0', '2014-10-17 09:37:30', '2014-10-17 09:37:31', 326, 1),
	(242, 'f373dd5533296558f5f8e19315852942', '2014-10-17 09:37:42', '2014-10-17 09:37:42', 327, 1),
	(243, 'ea62d1988eaa706aedf37b96be2df2d9', '2014-10-17 09:38:14', '2014-10-17 09:38:14', 328, 1),
	(244, '422e7d6ff382adf701d5c330e9568592', '2014-10-17 09:38:15', '2014-10-17 09:38:16', 329, 1),
	(245, 'ec90b6dc7df0cf298d3266099765b1c1', '2014-10-17 09:38:17', '2014-10-17 09:38:17', 330, 1),
	(246, '88af1e8ee832345deac89f63d65bf45d', '2014-10-17 09:38:18', '2014-10-17 09:38:18', 331, 1),
	(247, 'c6597de91bb656546f662180f1d35869', '2014-10-17 09:38:20', '2014-10-17 09:38:20', 332, 1),
	(248, '5ed7921ee34d62ed5fa8183bb0e5b629', '2014-10-17 09:51:00', '2014-10-17 09:51:01', 333, 1),
	(249, '506c0944d706ac23a854679e43eaa7e2', '2014-10-17 09:51:07', '2014-10-17 09:51:07', 334, 1),
	(250, 'd8f9129afcc61544bcd5e004e82a8164', '2014-10-17 09:51:08', '2014-10-17 09:51:09', 335, 1),
	(251, '907b723759c9e4a6ffb1919883689f38', '2014-10-17 09:51:17', '2014-10-17 09:51:17', 336, 1),
	(252, '5a810b94f39f7a7cd23f5d1f0993c35e', '2014-10-17 09:51:18', '2014-10-17 09:51:18', 337, 1),
	(253, '7f620130748b302922dd8bdb32361c37', '2014-10-17 09:51:19', '2014-10-17 09:51:19', 338, 1),
	(254, 'bfaaff481c0e6d908c5cc49751e31c65', '2014-10-17 09:51:20', '2014-10-17 09:51:20', 339, 1),
	(255, '3825285b2fbd3f421e3706893aaea708', '2014-10-17 09:51:22', '2014-10-17 09:51:22', 340, 1),
	(256, 'a599158246ff6fd2f7d22e27c4df5030', '2014-10-17 09:51:31', '2014-10-17 09:51:32', 341, 1),
	(257, '93a04a4a2fa66d3754c9669de2ce2baf', '2014-10-17 09:51:44', '2014-10-17 09:51:45', 342, 1),
	(258, 'b33c2767a9412116c29900e54ed6d1d6', '2014-10-17 09:51:46', '2014-10-17 09:51:46', 343, 1),
	(259, 'e075bc9cd42c5d63d3c932d0c4339c24', '2014-10-17 09:51:47', '2014-10-17 09:51:48', 344, 1),
	(260, 'aa4cc6514e663d76ea4ddf80f0f48de7', '2014-10-17 09:51:48', '2014-10-17 09:51:49', 345, 1),
	(261, '516487af11fb38ae59771872b348affc', '2014-10-17 09:51:50', '2014-10-17 09:51:50', 346, 1),
	(262, 'c5fe343bbe4b57cfb1944d44d14a226c', '2014-10-17 11:16:05', '2014-10-17 11:16:06', 347, 1),
	(263, '6b6472de53c1d95ee5acd87c1ba52ad2', '2014-10-17 11:48:26', '2014-10-17 11:48:27', 348, 1),
	(264, 'fa8297b011a755683ccb015efeebad72', '2014-10-17 11:48:34', '2014-10-17 11:48:36', 349, 1),
	(265, '78d17a0c197ffc05d9191f5f68caedc9', '2014-10-17 11:48:38', '2014-10-17 11:48:38', 350, 1),
	(266, '763e45977b6ed2542be67d4433209fdd', '2014-10-17 11:48:47', '2014-10-17 11:48:47', 351, 1),
	(267, 'bb5518462a2e6febb21d0d309faf17cf', '2014-10-17 11:48:48', '2014-10-17 11:48:48', 352, 1),
	(268, 'c22cfe42fa919195c1569f183f628f96', '2014-10-17 11:48:49', '2014-10-17 11:48:49', 353, 1),
	(269, '9bc04d590c28f00e41db0d4b5b421ddd', '2014-10-17 11:48:50', '2014-10-17 11:48:50', 354, 1),
	(270, '9286c7c4592fe4463a29de11f1f021c4', '2014-10-17 11:48:52', '2014-10-17 11:48:52', 355, 1),
	(271, '89af74aed0dd261bb788223a31155bdb', '2014-10-17 11:53:29', '2014-10-17 11:53:29', 356, 1),
	(272, '711ed6b02f026f55653a7c95816adb7c', '2014-10-17 11:53:35', '2014-10-17 11:53:36', 357, 1),
	(273, 'ff31370f3e24b7ddfdd4c9a6ec5777b1', '2014-10-17 11:53:37', '2014-10-17 11:53:37', 358, 1),
	(274, 'e8dbc12d17d1dccbd3d23b5a29abde2f', '2014-10-17 11:53:45', '2014-10-17 11:53:45', 359, 1),
	(275, '280e5e8549fe030a8dc37547ddf75145', '2014-10-17 11:53:46', '2014-10-17 11:53:47', 360, 1),
	(276, '110a34bd5e725fb9d2a3cfc6a1781016', '2014-10-17 11:53:48', '2014-10-17 11:53:48', 361, 1),
	(277, '552f3042c5046750f48253c295811473', '2014-10-17 11:53:49', '2014-10-17 11:53:49', 362, 1),
	(278, '624fd46f52ae25ae4a10856f1b0a1a4a', '2014-10-17 11:53:50', '2014-10-17 11:53:51', 363, 1),
	(279, '3b83104cfe5dba2b438747fe3e3b0e64', '2014-10-17 11:54:00', '2014-10-17 11:54:01', 364, 1),
	(280, 'aa5ca4be1a1c8e8dcbf5caae2fcff21d', '2014-10-17 11:54:13', '2014-10-17 11:54:14', 365, 1),
	(281, '596d04426d49ff32e1796d7c50b5670c', '2014-10-17 11:54:15', '2014-10-17 11:54:15', 366, 1),
	(282, '6a7c6362dae82f54aec2b72ba3148548', '2014-10-17 11:54:16', '2014-10-17 11:54:16', 367, 1),
	(283, '45a301bce00e3314a422ad31b98ce046', '2014-10-17 11:54:17', '2014-10-17 11:54:17', 368, 1),
	(284, 'a29ff75077fba42aa013efb3e2bbcf95', '2014-10-17 11:54:18', '2014-10-17 11:54:19', 369, 1),
	(285, '216bfd38354ee13004199042c375ac80', '2014-10-17 11:58:45', '2014-10-17 11:59:21', 381, 1),
	(286, '39a5a0a2c4040abeef19c057260a9219', '2014-10-17 12:05:49', '2014-10-17 12:05:49', 382, 1);
/*!40000 ALTER TABLE `log_visitor` ENABLE KEYS */;


-- Dumping structure for table mag.log_visitor_info
DROP TABLE IF EXISTS `log_visitor_info`;
CREATE TABLE IF NOT EXISTS `log_visitor_info` (
  `visitor_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `http_referer` varchar(255) DEFAULT NULL COMMENT 'HTTP Referrer',
  `http_user_agent` varchar(255) DEFAULT NULL COMMENT 'HTTP User-Agent',
  `http_accept_charset` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Charset',
  `http_accept_language` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Language',
  `server_addr` bigint(20) DEFAULT NULL COMMENT 'Server Address',
  `remote_addr` bigint(20) DEFAULT NULL COMMENT 'Remote Address',
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Info Table';

-- Dumping data for table mag.log_visitor_info: ~353 rows (approximately)
/*!40000 ALTER TABLE `log_visitor_info` DISABLE KEYS */;
INSERT INTO `log_visitor_info` (`visitor_id`, `http_referer`, `http_user_agent`, `http_accept_charset`, `http_accept_language`, `server_addr`, `remote_addr`) VALUES
	(1, 'http://tst/magento/index.php/install/wizard/end/', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.94 Safari/537.36', NULL, 'uk,en-US;q=0.8,en;q=0.6,ru;q=0.4', 2130706435, 2130706433),
	(2, 'http://tst/magento/index.php/install/wizard/administrator/', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.94 Safari/537.36', NULL, 'uk,en-US;q=0.8,en;q=0.6,ru;q=0.4', 2130706435, 2130706433),
	(3, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(4, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(5, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(6, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(7, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(8, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(9, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(10, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(11, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(12, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(13, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(14, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(15, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(16, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.94 Safari/537.36', NULL, 'uk,en-US;q=0.8,en;q=0.6,ru;q=0.4', 2130706435, 2130706433),
	(17, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(18, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(19, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(20, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(21, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(22, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(23, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(24, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(25, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(26, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(27, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(28, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(29, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(30, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.94 Safari/537.36', NULL, 'uk,en-US;q=0.8,en;q=0.6,ru;q=0.4', 2130706435, 2130706433),
	(31, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(32, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(33, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(34, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(35, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(36, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(37, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(38, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(39, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(40, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(41, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(42, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(43, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(44, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(45, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(46, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(47, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(48, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(49, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(50, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(51, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(52, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(53, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(54, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(55, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(56, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(57, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(58, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(59, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(60, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(61, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(62, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(63, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(64, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(65, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(66, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(67, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(68, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(69, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(70, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(71, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(72, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(73, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(74, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(75, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(76, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(77, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(78, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.94 Safari/537.36', NULL, 'uk,en-US;q=0.8,en;q=0.6,ru;q=0.4', 2130706435, 2130706433),
	(79, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(80, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(81, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(82, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(83, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(84, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(85, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(86, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(87, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(88, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(89, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(90, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(91, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(92, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(93, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(94, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(95, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(96, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(97, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(98, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(99, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(100, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(101, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(102, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(103, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(104, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(105, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(106, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(107, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(108, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(109, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(110, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(111, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(112, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(113, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(114, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(115, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.94 Safari/537.36', NULL, 'uk,en-US;q=0.8,en;q=0.6,ru;q=0.4', 2130706435, 2130706433),
	(116, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(117, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(118, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(119, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(120, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(121, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(122, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(123, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(124, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(125, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(126, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(127, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(128, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(129, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(130, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(131, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(132, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(133, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(134, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(135, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(136, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(137, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(138, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(139, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(140, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(141, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(142, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(143, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(144, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(145, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(146, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(147, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(148, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(149, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(150, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(151, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(152, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.94 Safari/537.36', NULL, 'uk,en-US;q=0.8,en;q=0.6,ru;q=0.4', 2130706435, 2130706433),
	(153, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(154, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(155, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(156, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(157, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(158, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(159, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(160, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(161, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(162, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(163, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(164, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(165, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(166, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(167, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(168, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(169, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(170, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(171, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(172, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(173, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(174, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(175, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(176, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(177, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(178, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(179, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(180, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(181, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(182, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(183, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(184, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(185, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(186, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(187, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(188, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(189, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(190, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(191, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(192, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(193, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(194, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(195, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(196, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(197, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(198, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(199, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(200, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(201, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(202, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(203, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(204, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(205, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(206, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(207, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(208, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(209, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(210, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(211, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(212, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(213, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(214, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(215, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(216, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(217, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(218, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(219, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(220, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(221, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(222, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(223, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(224, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(225, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(226, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(227, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(228, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(229, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(230, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(231, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(232, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(233, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(234, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(235, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(236, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(237, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(238, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(239, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(240, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(241, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(242, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(243, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(244, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(245, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(246, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(247, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(248, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(249, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(250, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(251, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(252, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(253, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(254, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(255, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(256, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(257, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(258, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(259, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(260, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(261, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(262, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(263, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(264, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(265, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(266, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(267, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(268, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(269, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(270, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(271, NULL, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1', NULL, NULL, 2130706435, 2130706433),
	(272, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(273, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(274, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(275, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(276, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(277, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(278, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(279, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(280, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(281, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(282, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(283, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(284, NULL, NULL, NULL, NULL, 2130706435, 2130706433),
	(285, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.94 Safari/537.36', NULL, 'uk,en-US;q=0.8,en;q=0.6,ru;q=0.4', 2130706435, 2130706433),
	(286, NULL, NULL, NULL, NULL, 2130706435, 2130706433);
/*!40000 ALTER TABLE `log_visitor_info` ENABLE KEYS */;


-- Dumping structure for table mag.log_visitor_online
DROP TABLE IF EXISTS `log_visitor_online`;
CREATE TABLE IF NOT EXISTS `log_visitor_online` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `visitor_type` varchar(1) NOT NULL COMMENT 'Visitor Type',
  `remote_addr` bigint(20) NOT NULL COMMENT 'Remote Address',
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NULL DEFAULT NULL COMMENT 'Last Visit Time',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `last_url` varchar(255) DEFAULT NULL COMMENT 'Last URL',
  PRIMARY KEY (`visitor_id`),
  KEY `IDX_LOG_VISITOR_ONLINE_VISITOR_TYPE` (`visitor_type`),
  KEY `IDX_LOG_VISITOR_ONLINE_FIRST_VISIT_AT_LAST_VISIT_AT` (`first_visit_at`,`last_visit_at`),
  KEY `IDX_LOG_VISITOR_ONLINE_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Online Table';

-- Dumping data for table mag.log_visitor_online: ~0 rows (approximately)
/*!40000 ALTER TABLE `log_visitor_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_visitor_online` ENABLE KEYS */;


-- Dumping structure for table mag.newsletter_problem
DROP TABLE IF EXISTS `newsletter_problem`;
CREATE TABLE IF NOT EXISTS `newsletter_problem` (
  `problem_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Problem Id',
  `subscriber_id` int(10) unsigned DEFAULT NULL COMMENT 'Subscriber Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `problem_error_code` int(10) unsigned DEFAULT '0' COMMENT 'Problem Error Code',
  `problem_error_text` varchar(200) DEFAULT NULL COMMENT 'Problem Error Text',
  PRIMARY KEY (`problem_id`),
  KEY `IDX_NEWSLETTER_PROBLEM_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `IDX_NEWSLETTER_PROBLEM_QUEUE_ID` (`queue_id`),
  CONSTRAINT `FK_NEWSLETTER_PROBLEM_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_NLTTR_PROBLEM_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Problems';

-- Dumping data for table mag.newsletter_problem: ~0 rows (approximately)
/*!40000 ALTER TABLE `newsletter_problem` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter_problem` ENABLE KEYS */;


-- Dumping structure for table mag.newsletter_queue
DROP TABLE IF EXISTS `newsletter_queue`;
CREATE TABLE IF NOT EXISTS `newsletter_queue` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Id',
  `template_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Template Id',
  `newsletter_type` int(11) DEFAULT NULL COMMENT 'Newsletter Type',
  `newsletter_text` text COMMENT 'Newsletter Text',
  `newsletter_styles` text COMMENT 'Newsletter Styles',
  `newsletter_subject` varchar(200) DEFAULT NULL COMMENT 'Newsletter Subject',
  `newsletter_sender_name` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Name',
  `newsletter_sender_email` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Email',
  `queue_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Status',
  `queue_start_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Start At',
  `queue_finish_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Finish At',
  PRIMARY KEY (`queue_id`),
  KEY `IDX_NEWSLETTER_QUEUE_TEMPLATE_ID` (`template_id`),
  CONSTRAINT `FK_NEWSLETTER_QUEUE_TEMPLATE_ID_NEWSLETTER_TEMPLATE_TEMPLATE_ID` FOREIGN KEY (`template_id`) REFERENCES `newsletter_template` (`template_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue';

-- Dumping data for table mag.newsletter_queue: ~0 rows (approximately)
/*!40000 ALTER TABLE `newsletter_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter_queue` ENABLE KEYS */;


-- Dumping structure for table mag.newsletter_queue_link
DROP TABLE IF EXISTS `newsletter_queue_link`;
CREATE TABLE IF NOT EXISTS `newsletter_queue_link` (
  `queue_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Link Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `subscriber_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subscriber Id',
  `letter_sent_at` timestamp NULL DEFAULT NULL COMMENT 'Letter Sent At',
  PRIMARY KEY (`queue_link_id`),
  KEY `IDX_NEWSLETTER_QUEUE_LINK_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `IDX_NEWSLETTER_QUEUE_LINK_QUEUE_ID` (`queue_id`),
  KEY `IDX_NEWSLETTER_QUEUE_LINK_QUEUE_ID_LETTER_SENT_AT` (`queue_id`,`letter_sent_at`),
  CONSTRAINT `FK_NEWSLETTER_QUEUE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_NLTTR_QUEUE_LNK_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Link';

-- Dumping data for table mag.newsletter_queue_link: ~0 rows (approximately)
/*!40000 ALTER TABLE `newsletter_queue_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter_queue_link` ENABLE KEYS */;


-- Dumping structure for table mag.newsletter_queue_store_link
DROP TABLE IF EXISTS `newsletter_queue_store_link`;
CREATE TABLE IF NOT EXISTS `newsletter_queue_store_link` (
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`queue_id`,`store_id`),
  KEY `IDX_NEWSLETTER_QUEUE_STORE_LINK_STORE_ID` (`store_id`),
  CONSTRAINT `FK_NEWSLETTER_QUEUE_STORE_LINK_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_NLTTR_QUEUE_STORE_LNK_QUEUE_ID_NLTTR_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Store Link';

-- Dumping data for table mag.newsletter_queue_store_link: ~0 rows (approximately)
/*!40000 ALTER TABLE `newsletter_queue_store_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter_queue_store_link` ENABLE KEYS */;


-- Dumping structure for table mag.newsletter_subscriber
DROP TABLE IF EXISTS `newsletter_subscriber`;
CREATE TABLE IF NOT EXISTS `newsletter_subscriber` (
  `subscriber_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Subscriber Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `change_status_at` timestamp NULL DEFAULT NULL COMMENT 'Change Status At',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `subscriber_email` varchar(150) DEFAULT NULL COMMENT 'Subscriber Email',
  `subscriber_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Subscriber Status',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL' COMMENT 'Subscriber Confirm Code',
  PRIMARY KEY (`subscriber_id`),
  KEY `IDX_NEWSLETTER_SUBSCRIBER_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_NEWSLETTER_SUBSCRIBER_STORE_ID` (`store_id`),
  CONSTRAINT `FK_NEWSLETTER_SUBSCRIBER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Subscriber';

-- Dumping data for table mag.newsletter_subscriber: ~0 rows (approximately)
/*!40000 ALTER TABLE `newsletter_subscriber` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter_subscriber` ENABLE KEYS */;


-- Dumping structure for table mag.newsletter_template
DROP TABLE IF EXISTS `newsletter_template`;
CREATE TABLE IF NOT EXISTS `newsletter_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `template_code` varchar(150) DEFAULT NULL COMMENT 'Template Code',
  `template_text` text COMMENT 'Template Text',
  `template_text_preprocessed` text COMMENT 'Template Text Preprocessed',
  `template_styles` text COMMENT 'Template Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) DEFAULT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `template_actual` smallint(5) unsigned DEFAULT '1' COMMENT 'Template Actual',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Added At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  PRIMARY KEY (`template_id`),
  KEY `IDX_NEWSLETTER_TEMPLATE_TEMPLATE_ACTUAL` (`template_actual`),
  KEY `IDX_NEWSLETTER_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `IDX_NEWSLETTER_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Template';

-- Dumping data for table mag.newsletter_template: ~0 rows (approximately)
/*!40000 ALTER TABLE `newsletter_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter_template` ENABLE KEYS */;


-- Dumping structure for table mag.oauth_consumer
DROP TABLE IF EXISTS `oauth_consumer`;
CREATE TABLE IF NOT EXISTS `oauth_consumer` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `name` varchar(255) NOT NULL COMMENT 'Name of consumer',
  `key` varchar(32) NOT NULL COMMENT 'Key code',
  `secret` varchar(32) NOT NULL COMMENT 'Secret code',
  `callback_url` varchar(255) DEFAULT NULL COMMENT 'Callback URL',
  `rejected_callback_url` varchar(255) NOT NULL COMMENT 'Rejected callback URL',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_OAUTH_CONSUMER_KEY` (`key`),
  UNIQUE KEY `UNQ_OAUTH_CONSUMER_SECRET` (`secret`),
  KEY `IDX_OAUTH_CONSUMER_CREATED_AT` (`created_at`),
  KEY `IDX_OAUTH_CONSUMER_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Consumers';

-- Dumping data for table mag.oauth_consumer: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_consumer` ENABLE KEYS */;


-- Dumping structure for table mag.oauth_nonce
DROP TABLE IF EXISTS `oauth_nonce`;
CREATE TABLE IF NOT EXISTS `oauth_nonce` (
  `nonce` varchar(32) NOT NULL COMMENT 'Nonce String',
  `timestamp` int(10) unsigned NOT NULL COMMENT 'Nonce Timestamp',
  UNIQUE KEY `UNQ_OAUTH_NONCE_NONCE` (`nonce`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='oauth_nonce';

-- Dumping data for table mag.oauth_nonce: 0 rows
/*!40000 ALTER TABLE `oauth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_nonce` ENABLE KEYS */;


-- Dumping structure for table mag.oauth_token
DROP TABLE IF EXISTS `oauth_token`;
CREATE TABLE IF NOT EXISTS `oauth_token` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `consumer_id` int(10) unsigned NOT NULL COMMENT 'Consumer ID',
  `admin_id` int(10) unsigned DEFAULT NULL COMMENT 'Admin user ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer user ID',
  `type` varchar(16) NOT NULL COMMENT 'Token Type',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `secret` varchar(32) NOT NULL COMMENT 'Token Secret',
  `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
  `callback_url` varchar(255) NOT NULL COMMENT 'Token Callback URL',
  `revoked` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_OAUTH_TOKEN_TOKEN` (`token`),
  KEY `IDX_OAUTH_TOKEN_CONSUMER_ID` (`consumer_id`),
  KEY `FK_OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` (`admin_id`),
  KEY `FK_OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`),
  CONSTRAINT `FK_OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_OAUTH_TOKEN_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Tokens';

-- Dumping data for table mag.oauth_token: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_token` ENABLE KEYS */;


-- Dumping structure for table mag.paypal_cert
DROP TABLE IF EXISTS `paypal_cert`;
CREATE TABLE IF NOT EXISTS `paypal_cert` (
  `cert_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Cert Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `content` text COMMENT 'Content',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`cert_id`),
  KEY `IDX_PAYPAL_CERT_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_PAYPAL_CERT_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Certificate Table';

-- Dumping data for table mag.paypal_cert: ~0 rows (approximately)
/*!40000 ALTER TABLE `paypal_cert` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_cert` ENABLE KEYS */;


-- Dumping structure for table mag.paypal_payment_transaction
DROP TABLE IF EXISTS `paypal_payment_transaction`;
CREATE TABLE IF NOT EXISTS `paypal_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `UNQ_PAYPAL_PAYMENT_TRANSACTION_TXN_ID` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PayPal Payflow Link Payment Transaction';

-- Dumping data for table mag.paypal_payment_transaction: ~0 rows (approximately)
/*!40000 ALTER TABLE `paypal_payment_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_payment_transaction` ENABLE KEYS */;


-- Dumping structure for table mag.paypal_settlement_report
DROP TABLE IF EXISTS `paypal_settlement_report`;
CREATE TABLE IF NOT EXISTS `paypal_settlement_report` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Report Id',
  `report_date` timestamp NULL DEFAULT NULL COMMENT 'Report Date',
  `account_id` varchar(64) DEFAULT NULL COMMENT 'Account Id',
  `filename` varchar(24) DEFAULT NULL COMMENT 'Filename',
  `last_modified` timestamp NULL DEFAULT NULL COMMENT 'Last Modified',
  PRIMARY KEY (`report_id`),
  UNIQUE KEY `UNQ_PAYPAL_SETTLEMENT_REPORT_REPORT_DATE_ACCOUNT_ID` (`report_date`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Table';

-- Dumping data for table mag.paypal_settlement_report: ~0 rows (approximately)
/*!40000 ALTER TABLE `paypal_settlement_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_settlement_report` ENABLE KEYS */;


-- Dumping structure for table mag.paypal_settlement_report_row
DROP TABLE IF EXISTS `paypal_settlement_report_row`;
CREATE TABLE IF NOT EXISTS `paypal_settlement_report_row` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Row Id',
  `report_id` int(10) unsigned NOT NULL COMMENT 'Report Id',
  `transaction_id` varchar(19) DEFAULT NULL COMMENT 'Transaction Id',
  `invoice_id` varchar(127) DEFAULT NULL COMMENT 'Invoice Id',
  `paypal_reference_id` varchar(19) DEFAULT NULL COMMENT 'Paypal Reference Id',
  `paypal_reference_id_type` varchar(3) DEFAULT NULL COMMENT 'Paypal Reference Id Type',
  `transaction_event_code` varchar(5) DEFAULT NULL COMMENT 'Transaction Event Code',
  `transaction_initiation_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Initiation Date',
  `transaction_completion_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Completion Date',
  `transaction_debit_or_credit` varchar(2) NOT NULL DEFAULT 'CR' COMMENT 'Transaction Debit Or Credit',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Gross Transaction Amount',
  `gross_transaction_currency` varchar(3) DEFAULT '' COMMENT 'Gross Transaction Currency',
  `fee_debit_or_credit` varchar(2) DEFAULT NULL COMMENT 'Fee Debit Or Credit',
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Fee Amount',
  `fee_currency` varchar(3) DEFAULT NULL COMMENT 'Fee Currency',
  `custom_field` varchar(255) DEFAULT NULL COMMENT 'Custom Field',
  `consumer_id` varchar(127) DEFAULT NULL COMMENT 'Consumer Id',
  `payment_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Payment Tracking ID',
  `store_id` varchar(50) DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`row_id`),
  KEY `IDX_PAYPAL_SETTLEMENT_REPORT_ROW_REPORT_ID` (`report_id`),
  CONSTRAINT `FK_E183E488F593E0DE10C6EBFFEBAC9B55` FOREIGN KEY (`report_id`) REFERENCES `paypal_settlement_report` (`report_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Row Table';

-- Dumping data for table mag.paypal_settlement_report_row: ~0 rows (approximately)
/*!40000 ALTER TABLE `paypal_settlement_report_row` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_settlement_report_row` ENABLE KEYS */;


-- Dumping structure for table mag.persistent_session
DROP TABLE IF EXISTS `persistent_session`;
CREATE TABLE IF NOT EXISTS `persistent_session` (
  `persistent_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Session id',
  `key` varchar(50) NOT NULL COMMENT 'Unique cookie key',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `info` text COMMENT 'Session Data',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`persistent_id`),
  UNIQUE KEY `IDX_PERSISTENT_SESSION_KEY` (`key`),
  UNIQUE KEY `IDX_PERSISTENT_SESSION_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_PERSISTENT_SESSION_UPDATED_AT` (`updated_at`),
  KEY `FK_PERSISTENT_SESSION_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_PERSISTENT_SESSION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_PERSISTENT_SESSION_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Persistent Session';

-- Dumping data for table mag.persistent_session: ~0 rows (approximately)
/*!40000 ALTER TABLE `persistent_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `persistent_session` ENABLE KEYS */;


-- Dumping structure for table mag.poll
DROP TABLE IF EXISTS `poll`;
CREATE TABLE IF NOT EXISTS `poll` (
  `poll_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Poll Id',
  `poll_title` varchar(255) DEFAULT NULL COMMENT 'Poll title',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  `date_posted` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date posted',
  `date_closed` timestamp NULL DEFAULT NULL COMMENT 'Date closed',
  `active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is active',
  `closed` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is closed',
  `answers_display` smallint(6) DEFAULT NULL COMMENT 'Answers display',
  PRIMARY KEY (`poll_id`),
  KEY `IDX_POLL_STORE_ID` (`store_id`),
  CONSTRAINT `FK_POLL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Poll';

-- Dumping data for table mag.poll: ~1 rows (approximately)
/*!40000 ALTER TABLE `poll` DISABLE KEYS */;
INSERT INTO `poll` (`poll_id`, `poll_title`, `votes_count`, `store_id`, `date_posted`, `date_closed`, `active`, `closed`, `answers_display`) VALUES
	(1, 'What is your favorite color', 7, 0, '2014-10-10 10:03:10', NULL, 1, 0, NULL);
/*!40000 ALTER TABLE `poll` ENABLE KEYS */;


-- Dumping structure for table mag.poll_answer
DROP TABLE IF EXISTS `poll_answer`;
CREATE TABLE IF NOT EXISTS `poll_answer` (
  `answer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Answer Id',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `answer_title` varchar(255) DEFAULT NULL COMMENT 'Answer title',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `answer_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Answers display',
  PRIMARY KEY (`answer_id`),
  KEY `IDX_POLL_ANSWER_POLL_ID` (`poll_id`),
  CONSTRAINT `FK_POLL_ANSWER_POLL_ID_POLL_POLL_ID` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Poll Answers';

-- Dumping data for table mag.poll_answer: ~4 rows (approximately)
/*!40000 ALTER TABLE `poll_answer` DISABLE KEYS */;
INSERT INTO `poll_answer` (`answer_id`, `poll_id`, `answer_title`, `votes_count`, `answer_order`) VALUES
	(1, 1, 'Green', 4, 0),
	(2, 1, 'Red', 1, 0),
	(3, 1, 'Black', 0, 0),
	(4, 1, 'Magenta', 2, 0);
/*!40000 ALTER TABLE `poll_answer` ENABLE KEYS */;


-- Dumping structure for table mag.poll_store
DROP TABLE IF EXISTS `poll_store`;
CREATE TABLE IF NOT EXISTS `poll_store` (
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`poll_id`,`store_id`),
  KEY `IDX_POLL_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_POLL_STORE_POLL_ID_POLL_POLL_ID` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_POLL_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Store';

-- Dumping data for table mag.poll_store: ~1 rows (approximately)
/*!40000 ALTER TABLE `poll_store` DISABLE KEYS */;
INSERT INTO `poll_store` (`poll_id`, `store_id`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `poll_store` ENABLE KEYS */;


-- Dumping structure for table mag.poll_vote
DROP TABLE IF EXISTS `poll_vote`;
CREATE TABLE IF NOT EXISTS `poll_vote` (
  `vote_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote Id',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `poll_answer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll answer id',
  `ip_address` bigint(20) DEFAULT NULL COMMENT 'Poll answer id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer id',
  `vote_time` timestamp NULL DEFAULT NULL COMMENT 'Date closed',
  PRIMARY KEY (`vote_id`),
  KEY `IDX_POLL_VOTE_POLL_ANSWER_ID` (`poll_answer_id`),
  CONSTRAINT `FK_POLL_VOTE_POLL_ANSWER_ID_POLL_ANSWER_ANSWER_ID` FOREIGN KEY (`poll_answer_id`) REFERENCES `poll_answer` (`answer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Vote';

-- Dumping data for table mag.poll_vote: ~0 rows (approximately)
/*!40000 ALTER TABLE `poll_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll_vote` ENABLE KEYS */;


-- Dumping structure for table mag.product_alert_price
DROP TABLE IF EXISTS `product_alert_price`;
CREATE TABLE IF NOT EXISTS `product_alert_price` (
  `alert_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert price id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price amount',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Product alert add date',
  `last_send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert last send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert send count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_price_id`),
  KEY `IDX_PRODUCT_ALERT_PRICE_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_PRODUCT_ALERT_PRICE_PRODUCT_ID` (`product_id`),
  KEY `IDX_PRODUCT_ALERT_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_PRD_ALERT_PRICE_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_PRODUCT_ALERT_PRICE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_PRODUCT_ALERT_PRICE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Price';

-- Dumping data for table mag.product_alert_price: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_alert_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_alert_price` ENABLE KEYS */;


-- Dumping structure for table mag.product_alert_stock
DROP TABLE IF EXISTS `product_alert_stock`;
CREATE TABLE IF NOT EXISTS `product_alert_stock` (
  `alert_stock_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert stock id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Product alert add date',
  `send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Send Count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_stock_id`),
  KEY `IDX_PRODUCT_ALERT_STOCK_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_PRODUCT_ALERT_STOCK_PRODUCT_ID` (`product_id`),
  KEY `IDX_PRODUCT_ALERT_STOCK_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_PRD_ALERT_STOCK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_PRODUCT_ALERT_STOCK_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_PRODUCT_ALERT_STOCK_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Stock';

-- Dumping data for table mag.product_alert_stock: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_alert_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_alert_stock` ENABLE KEYS */;


-- Dumping structure for table mag.rating
DROP TABLE IF EXISTS `rating`;
CREATE TABLE IF NOT EXISTS `rating` (
  `rating_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Id',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `rating_code` varchar(64) NOT NULL COMMENT 'Rating Code',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Position On Frontend',
  PRIMARY KEY (`rating_id`),
  UNIQUE KEY `UNQ_RATING_RATING_CODE` (`rating_code`),
  KEY `IDX_RATING_ENTITY_ID` (`entity_id`),
  CONSTRAINT `FK_RATING_ENTITY_ID_RATING_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `rating_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Ratings';

-- Dumping data for table mag.rating: ~3 rows (approximately)
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` (`rating_id`, `entity_id`, `rating_code`, `position`) VALUES
	(1, 1, 'Quality', 0),
	(2, 1, 'Value', 0),
	(3, 1, 'Price', 0);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;


-- Dumping structure for table mag.rating_entity
DROP TABLE IF EXISTS `rating_entity`;
CREATE TABLE IF NOT EXISTS `rating_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_code` varchar(64) NOT NULL COMMENT 'Entity Code',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_RATING_ENTITY_ENTITY_CODE` (`entity_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Rating entities';

-- Dumping data for table mag.rating_entity: ~3 rows (approximately)
/*!40000 ALTER TABLE `rating_entity` DISABLE KEYS */;
INSERT INTO `rating_entity` (`entity_id`, `entity_code`) VALUES
	(1, 'product'),
	(2, 'product_review'),
	(3, 'review');
/*!40000 ALTER TABLE `rating_entity` ENABLE KEYS */;


-- Dumping structure for table mag.rating_option
DROP TABLE IF EXISTS `rating_option`;
CREATE TABLE IF NOT EXISTS `rating_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Option Id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `code` varchar(32) NOT NULL COMMENT 'Rating Option Code',
  `value` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Option Value',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Ration option position on frontend',
  PRIMARY KEY (`option_id`),
  KEY `IDX_RATING_OPTION_RATING_ID` (`rating_id`),
  CONSTRAINT `FK_RATING_OPTION_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Rating options';

-- Dumping data for table mag.rating_option: ~15 rows (approximately)
/*!40000 ALTER TABLE `rating_option` DISABLE KEYS */;
INSERT INTO `rating_option` (`option_id`, `rating_id`, `code`, `value`, `position`) VALUES
	(1, 1, '1', 1, 1),
	(2, 1, '2', 2, 2),
	(3, 1, '3', 3, 3),
	(4, 1, '4', 4, 4),
	(5, 1, '5', 5, 5),
	(6, 2, '1', 1, 1),
	(7, 2, '2', 2, 2),
	(8, 2, '3', 3, 3),
	(9, 2, '4', 4, 4),
	(10, 2, '5', 5, 5),
	(11, 3, '1', 1, 1),
	(12, 3, '2', 2, 2),
	(13, 3, '3', 3, 3),
	(14, 3, '4', 4, 4),
	(15, 3, '5', 5, 5);
/*!40000 ALTER TABLE `rating_option` ENABLE KEYS */;


-- Dumping structure for table mag.rating_option_vote
DROP TABLE IF EXISTS `rating_option_vote`;
CREATE TABLE IF NOT EXISTS `rating_option_vote` (
  `vote_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote option id',
  `remote_ip` varchar(16) NOT NULL COMMENT 'Customer IP',
  `remote_ip_long` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Customer IP converted to long integer format',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `review_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Review id',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Percent amount',
  `value` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote option value',
  PRIMARY KEY (`vote_id`),
  KEY `IDX_RATING_OPTION_VOTE_OPTION_ID` (`option_id`),
  KEY `FK_RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` (`review_id`),
  CONSTRAINT `FK_RATING_OPTION_VOTE_OPTION_ID_RATING_OPTION_OPTION_ID` FOREIGN KEY (`option_id`) REFERENCES `rating_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating option values';

-- Dumping data for table mag.rating_option_vote: ~0 rows (approximately)
/*!40000 ALTER TABLE `rating_option_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating_option_vote` ENABLE KEYS */;


-- Dumping structure for table mag.rating_option_vote_aggregated
DROP TABLE IF EXISTS `rating_option_vote_aggregated`;
CREATE TABLE IF NOT EXISTS `rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Vote aggregation id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote dty',
  `vote_value_sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'General vote sum',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote percent',
  `percent_approved` smallint(6) DEFAULT '0' COMMENT 'Vote percent approved by admin',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`primary_id`),
  KEY `IDX_RATING_OPTION_VOTE_AGGREGATED_RATING_ID` (`rating_id`),
  KEY `IDX_RATING_OPTION_VOTE_AGGREGATED_STORE_ID` (`store_id`),
  CONSTRAINT `FK_RATING_OPTION_VOTE_AGGREGATED_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_RATING_OPTION_VOTE_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating vote aggregated';

-- Dumping data for table mag.rating_option_vote_aggregated: ~0 rows (approximately)
/*!40000 ALTER TABLE `rating_option_vote_aggregated` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating_option_vote_aggregated` ENABLE KEYS */;


-- Dumping structure for table mag.rating_store
DROP TABLE IF EXISTS `rating_store`;
CREATE TABLE IF NOT EXISTS `rating_store` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `IDX_RATING_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_RATING_STORE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_RATING_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Store';

-- Dumping data for table mag.rating_store: ~0 rows (approximately)
/*!40000 ALTER TABLE `rating_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating_store` ENABLE KEYS */;


-- Dumping structure for table mag.rating_title
DROP TABLE IF EXISTS `rating_title`;
CREATE TABLE IF NOT EXISTS `rating_title` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Rating Label',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `IDX_RATING_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_RATING_TITLE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_RATING_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Title';

-- Dumping data for table mag.rating_title: ~0 rows (approximately)
/*!40000 ALTER TABLE `rating_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating_title` ENABLE KEYS */;


-- Dumping structure for table mag.report_compared_product_index
DROP TABLE IF EXISTS `report_compared_product_index`;
CREATE TABLE IF NOT EXISTS `report_compared_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `UNQ_REPORT_COMPARED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `UNQ_REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_REPORT_CMPD_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REPORT_CMPD_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REPORT_COMPARED_PRODUCT_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Compared Product Index Table';

-- Dumping data for table mag.report_compared_product_index: ~0 rows (approximately)
/*!40000 ALTER TABLE `report_compared_product_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_compared_product_index` ENABLE KEYS */;


-- Dumping structure for table mag.report_event
DROP TABLE IF EXISTS `report_event`;
CREATE TABLE IF NOT EXISTS `report_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `logged_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Logged At',
  `event_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Type Id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Object Id',
  `subject_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subject Id',
  `subtype` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Subtype',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`event_id`),
  KEY `IDX_REPORT_EVENT_EVENT_TYPE_ID` (`event_type_id`),
  KEY `IDX_REPORT_EVENT_SUBJECT_ID` (`subject_id`),
  KEY `IDX_REPORT_EVENT_OBJECT_ID` (`object_id`),
  KEY `IDX_REPORT_EVENT_SUBTYPE` (`subtype`),
  KEY `IDX_REPORT_EVENT_STORE_ID` (`store_id`),
  CONSTRAINT `FK_REPORT_EVENT_EVENT_TYPE_ID_REPORT_EVENT_TYPES_EVENT_TYPE_ID` FOREIGN KEY (`event_type_id`) REFERENCES `report_event_types` (`event_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REPORT_EVENT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8 COMMENT='Reports Event Table';

-- Dumping data for table mag.report_event: ~257 rows (approximately)
/*!40000 ALTER TABLE `report_event` DISABLE KEYS */;
INSERT INTO `report_event` (`event_id`, `logged_at`, `event_type_id`, `object_id`, `subject_id`, `subtype`, `store_id`) VALUES
	(1, '2014-10-10 11:02:40', 1, 6, 5, 1, 1),
	(2, '2014-10-10 11:02:54', 1, 16, 6, 1, 1),
	(3, '2014-10-10 11:03:25', 1, 27, 7, 1, 1),
	(4, '2014-10-10 14:04:48', 1, 2, 9, 1, 1),
	(5, '2014-10-10 14:04:56', 1, 4, 10, 1, 1),
	(6, '2014-10-10 14:05:10', 1, 7, 11, 1, 1),
	(7, '2014-10-10 14:24:02', 1, 6, 13, 1, 1),
	(8, '2014-10-10 14:24:09', 1, 16, 14, 1, 1),
	(9, '2014-10-10 14:24:24', 1, 27, 15, 1, 1),
	(10, '2014-10-10 14:28:46', 1, 43, 16, 1, 1),
	(11, '2014-10-10 14:29:41', 1, 43, 16, 1, 1),
	(12, '2014-10-10 14:54:09', 1, 6, 18, 1, 1),
	(13, '2014-10-10 14:54:10', 1, 7, 19, 1, 1),
	(14, '2014-10-10 14:54:11', 1, 8, 20, 1, 1),
	(15, '2014-10-10 14:54:12', 1, 9, 21, 1, 1),
	(16, '2014-10-10 14:54:13', 1, 10, 22, 1, 1),
	(17, '2014-10-10 14:54:19', 1, 16, 23, 1, 1),
	(18, '2014-10-10 14:54:30', 1, 27, 24, 1, 1),
	(19, '2014-10-10 14:54:31', 1, 28, 25, 1, 1),
	(20, '2014-10-10 14:54:32', 1, 29, 26, 1, 1),
	(21, '2014-10-10 14:54:33', 1, 30, 27, 1, 1),
	(22, '2014-10-10 14:54:35', 1, 31, 28, 1, 1),
	(23, '2014-10-10 14:55:53', 1, 31, 16, 1, 1),
	(24, '2014-10-10 14:56:13', 4, 28, 16, 1, 1),
	(25, '2014-10-10 14:56:13', 4, 29, 16, 1, 1),
	(26, '2014-10-10 14:56:13', 4, 30, 16, 1, 1),
	(27, '2014-10-10 14:56:13', 4, 27, 16, 1, 1),
	(28, '2014-10-10 14:57:44', 1, 31, 16, 1, 1),
	(29, '2014-10-10 14:57:45', 1, 31, 16, 1, 1),
	(30, '2014-10-10 14:57:45', 1, 31, 16, 1, 1),
	(31, '2014-10-10 14:57:46', 1, 31, 16, 1, 1),
	(32, '2014-10-10 14:57:46', 1, 31, 16, 1, 1),
	(33, '2014-10-10 14:57:46', 1, 31, 16, 1, 1),
	(34, '2014-10-10 14:57:47', 1, 31, 16, 1, 1),
	(35, '2014-10-10 14:57:47', 1, 31, 16, 1, 1),
	(36, '2014-10-10 14:57:48', 1, 31, 16, 1, 1),
	(37, '2014-10-10 14:57:54', 1, 31, 16, 1, 1),
	(38, '2014-10-10 15:59:43', 1, 6, 31, 1, 1),
	(39, '2014-10-10 15:59:47', 1, 7, 32, 1, 1),
	(40, '2014-10-10 15:59:49', 1, 8, 33, 1, 1),
	(41, '2014-10-10 15:59:50', 1, 9, 34, 1, 1),
	(42, '2014-10-10 15:59:55', 1, 10, 35, 1, 1),
	(43, '2014-10-10 16:00:10', 1, 16, 36, 1, 1),
	(44, '2014-10-10 16:00:27', 1, 27, 37, 1, 1),
	(45, '2014-10-10 16:00:28', 1, 28, 38, 1, 1),
	(46, '2014-10-10 16:00:30', 1, 29, 39, 1, 1),
	(47, '2014-10-10 16:00:31', 1, 30, 40, 1, 1),
	(48, '2014-10-10 16:00:33', 1, 31, 41, 1, 1),
	(49, '2014-10-10 16:00:45', 1, 31, 30, 1, 1),
	(50, '2014-10-10 16:03:58', 1, 6, 43, 1, 1),
	(51, '2014-10-10 16:04:00', 1, 7, 44, 1, 1),
	(52, '2014-10-10 16:04:02', 1, 8, 45, 1, 1),
	(53, '2014-10-10 16:04:03', 1, 9, 46, 1, 1),
	(54, '2014-10-10 16:04:04', 1, 10, 47, 1, 1),
	(55, '2014-10-10 16:04:16', 1, 16, 48, 1, 1),
	(56, '2014-10-10 16:04:44', 1, 27, 49, 1, 1),
	(57, '2014-10-10 16:04:45', 1, 28, 50, 1, 1),
	(58, '2014-10-10 16:04:47', 1, 29, 51, 1, 1),
	(59, '2014-10-10 16:04:48', 1, 30, 52, 1, 1),
	(60, '2014-10-10 16:04:49', 1, 31, 53, 1, 1),
	(61, '2014-10-10 16:05:10', 1, 31, 30, 1, 1),
	(62, '2014-10-10 16:05:14', 1, 31, 30, 1, 1),
	(63, '2014-10-10 16:05:16', 1, 31, 30, 1, 1),
	(64, '2014-10-10 16:05:19', 1, 31, 30, 1, 1),
	(65, '2014-10-10 16:11:36', 1, 6, 55, 1, 1),
	(66, '2014-10-10 16:11:38', 1, 7, 56, 1, 1),
	(67, '2014-10-10 16:11:39', 1, 8, 57, 1, 1),
	(68, '2014-10-10 16:11:40', 1, 9, 58, 1, 1),
	(69, '2014-10-10 16:11:41', 1, 10, 59, 1, 1),
	(70, '2014-10-10 16:11:52', 1, 16, 60, 1, 1),
	(71, '2014-10-10 16:12:16', 1, 27, 61, 1, 1),
	(72, '2014-10-10 16:12:17', 1, 28, 62, 1, 1),
	(73, '2014-10-10 16:12:18', 1, 29, 63, 1, 1),
	(74, '2014-10-10 16:12:19', 1, 30, 64, 1, 1),
	(75, '2014-10-10 16:12:20', 1, 31, 65, 1, 1),
	(76, '2014-10-10 16:12:30', 1, 31, 30, 1, 1),
	(77, '2014-10-10 16:14:54', 1, 10, 30, 1, 1),
	(78, '2014-10-10 16:18:05', 1, 6, 67, 1, 1),
	(79, '2014-10-10 16:18:06', 1, 7, 68, 1, 1),
	(80, '2014-10-10 16:18:07', 1, 8, 69, 1, 1),
	(81, '2014-10-10 16:18:08', 1, 9, 70, 1, 1),
	(82, '2014-10-10 16:18:10', 1, 10, 71, 1, 1),
	(83, '2014-10-10 16:18:20', 1, 16, 72, 1, 1),
	(84, '2014-10-10 16:18:45', 1, 27, 73, 1, 1),
	(85, '2014-10-10 16:18:46', 1, 28, 74, 1, 1),
	(86, '2014-10-10 16:18:47', 1, 29, 75, 1, 1),
	(87, '2014-10-10 16:18:48', 1, 30, 76, 1, 1),
	(88, '2014-10-10 16:18:49', 1, 31, 77, 1, 1),
	(89, '2014-10-10 16:19:23', 1, 10, 30, 1, 1),
	(90, '2014-10-11 10:57:45', 1, 31, 78, 1, 1),
	(91, '2014-10-11 11:35:42', 1, 6, 80, 1, 1),
	(92, '2014-10-11 11:35:45', 1, 7, 81, 1, 1),
	(93, '2014-10-11 11:35:46', 1, 8, 82, 1, 1),
	(94, '2014-10-11 11:35:50', 1, 9, 83, 1, 1),
	(95, '2014-10-11 11:35:57', 1, 10, 84, 1, 1),
	(96, '2014-10-11 11:36:07', 1, 16, 85, 1, 1),
	(97, '2014-10-11 11:36:23', 1, 27, 86, 1, 1),
	(98, '2014-10-11 11:36:24', 1, 28, 87, 1, 1),
	(99, '2014-10-11 11:36:26', 1, 29, 88, 1, 1),
	(100, '2014-10-11 11:36:27', 1, 30, 89, 1, 1),
	(101, '2014-10-11 11:36:29', 1, 31, 90, 1, 1),
	(102, '2014-10-11 11:42:49', 1, 6, 92, 1, 1),
	(103, '2014-10-11 11:42:51', 1, 7, 93, 1, 1),
	(104, '2014-10-11 11:42:52', 1, 8, 94, 1, 1),
	(105, '2014-10-11 11:42:53', 1, 9, 95, 1, 1),
	(106, '2014-10-11 11:42:55', 1, 10, 96, 1, 1),
	(107, '2014-10-11 11:43:07', 1, 16, 97, 1, 1),
	(108, '2014-10-11 11:43:24', 1, 27, 98, 1, 1),
	(109, '2014-10-11 11:43:25', 1, 28, 99, 1, 1),
	(110, '2014-10-11 11:43:26', 1, 29, 100, 1, 1),
	(111, '2014-10-11 11:43:30', 1, 30, 101, 1, 1),
	(112, '2014-10-11 11:43:38', 1, 31, 102, 1, 1),
	(113, '2014-10-11 11:45:32', 1, 6, 104, 1, 1),
	(114, '2014-10-11 11:45:48', 1, 7, 105, 1, 1),
	(115, '2014-10-11 11:45:52', 1, 8, 106, 1, 1),
	(116, '2014-10-11 11:45:53', 1, 9, 107, 1, 1),
	(117, '2014-10-11 11:45:55', 1, 10, 108, 1, 1),
	(118, '2014-10-11 11:46:20', 1, 16, 109, 1, 1),
	(119, '2014-10-11 11:46:37', 1, 27, 110, 1, 1),
	(120, '2014-10-11 11:46:39', 1, 28, 111, 1, 1),
	(121, '2014-10-11 11:46:43', 1, 29, 112, 1, 1),
	(122, '2014-10-11 11:46:46', 1, 30, 113, 1, 1),
	(123, '2014-10-11 11:46:48', 1, 31, 114, 1, 1),
	(124, '2014-10-11 11:48:29', 1, 31, 115, 1, 1),
	(125, '2014-10-11 11:55:22', 1, 6, 117, 1, 1),
	(126, '2014-10-11 11:55:25', 1, 7, 118, 1, 1),
	(127, '2014-10-11 11:55:26', 1, 8, 119, 1, 1),
	(128, '2014-10-11 11:55:27', 1, 9, 120, 1, 1),
	(129, '2014-10-11 11:55:28', 1, 10, 121, 1, 1),
	(130, '2014-10-11 11:55:37', 1, 16, 122, 1, 1),
	(131, '2014-10-11 11:55:52', 1, 27, 123, 1, 1),
	(132, '2014-10-11 11:55:53', 1, 28, 124, 1, 1),
	(133, '2014-10-11 11:55:55', 1, 29, 125, 1, 1),
	(134, '2014-10-11 11:55:56', 1, 30, 126, 1, 1),
	(135, '2014-10-11 11:55:57', 1, 31, 127, 1, 1),
	(136, '2014-10-11 11:56:19', 1, 31, 115, 1, 1),
	(137, '2014-10-11 11:56:36', 1, 31, 115, 1, 1),
	(138, '2014-10-11 11:58:17', 1, 6, 129, 1, 1),
	(139, '2014-10-11 11:58:18', 1, 7, 130, 1, 1),
	(140, '2014-10-11 11:58:19', 1, 8, 131, 1, 1),
	(141, '2014-10-11 11:58:20', 1, 9, 132, 1, 1),
	(142, '2014-10-11 11:58:22', 1, 10, 133, 1, 1),
	(143, '2014-10-11 11:58:36', 1, 16, 134, 1, 1),
	(144, '2014-10-11 11:58:53', 1, 27, 135, 1, 1),
	(145, '2014-10-11 11:58:55', 1, 28, 136, 1, 1),
	(146, '2014-10-11 11:58:56', 1, 29, 137, 1, 1),
	(147, '2014-10-11 11:58:57', 1, 30, 138, 1, 1),
	(148, '2014-10-11 11:59:00', 1, 31, 139, 1, 1),
	(149, '2014-10-11 12:00:33', 1, 6, 141, 1, 1),
	(150, '2014-10-11 12:00:34', 1, 7, 142, 1, 1),
	(151, '2014-10-11 12:00:36', 1, 8, 143, 1, 1),
	(152, '2014-10-11 12:00:37', 1, 9, 144, 1, 1),
	(153, '2014-10-11 12:00:38', 1, 10, 145, 1, 1),
	(154, '2014-10-11 12:00:49', 1, 16, 146, 1, 1),
	(155, '2014-10-11 12:01:12', 1, 27, 147, 1, 1),
	(156, '2014-10-11 12:01:13', 1, 28, 148, 1, 1),
	(157, '2014-10-11 12:01:15', 1, 29, 149, 1, 1),
	(158, '2014-10-11 12:01:16', 1, 30, 150, 1, 1),
	(159, '2014-10-11 12:01:17', 1, 31, 151, 1, 1),
	(160, '2014-10-11 12:40:39', 1, 31, 152, 1, 1),
	(161, '2014-10-11 12:40:45', 1, 31, 152, 1, 1),
	(162, '2014-10-11 12:56:35', 1, 31, 152, 1, 1),
	(163, '2014-10-11 12:59:40', 1, 6, 154, 1, 1),
	(164, '2014-10-11 12:59:42', 1, 7, 155, 1, 1),
	(165, '2014-10-11 12:59:43', 1, 8, 156, 1, 1),
	(166, '2014-10-11 12:59:44', 1, 9, 157, 1, 1),
	(167, '2014-10-11 12:59:46', 1, 10, 158, 1, 1),
	(168, '2014-10-11 12:59:54', 1, 16, 159, 1, 1),
	(169, '2014-10-11 13:00:11', 1, 27, 160, 1, 1),
	(170, '2014-10-11 13:00:13', 1, 28, 161, 1, 1),
	(171, '2014-10-11 13:00:14', 1, 29, 162, 1, 1),
	(172, '2014-10-11 13:00:15', 1, 30, 163, 1, 1),
	(173, '2014-10-11 13:00:17', 1, 31, 164, 1, 1),
	(174, '2014-10-11 13:02:27', 1, 31, 152, 1, 1),
	(175, '2014-10-11 13:02:42', 1, 31, 152, 1, 1),
	(176, '2014-10-11 13:02:43', 1, 31, 152, 1, 1),
	(177, '2014-10-11 13:02:43', 1, 31, 152, 1, 1),
	(178, '2014-10-11 13:02:43', 1, 31, 152, 1, 1),
	(179, '2014-10-11 13:03:26', 1, 28, 152, 1, 1),
	(180, '2014-10-11 13:03:35', 1, 31, 152, 1, 1),
	(181, '2014-10-11 13:04:06', 1, 28, 152, 1, 1),
	(182, '2014-10-11 13:04:07', 1, 31, 152, 1, 1),
	(183, '2014-10-11 13:18:14', 1, 6, 167, 1, 1),
	(184, '2014-10-11 13:18:16', 1, 7, 168, 1, 1),
	(185, '2014-10-11 13:18:17', 1, 8, 169, 1, 1),
	(186, '2014-10-11 13:18:18', 1, 9, 170, 1, 1),
	(187, '2014-10-11 13:18:20', 1, 10, 171, 1, 1),
	(188, '2014-10-11 13:18:29', 1, 16, 172, 1, 1),
	(189, '2014-10-11 13:18:46', 1, 27, 173, 1, 1),
	(190, '2014-10-11 13:18:47', 1, 28, 174, 1, 1),
	(191, '2014-10-11 13:18:48', 1, 29, 175, 1, 1),
	(192, '2014-10-11 13:18:50', 1, 30, 176, 1, 1),
	(193, '2014-10-11 13:18:51', 1, 31, 177, 1, 1),
	(194, '2014-10-11 13:19:14', 1, 28, 152, 1, 1),
	(195, '2014-10-11 13:19:19', 1, 31, 152, 1, 1),
	(196, '2014-10-13 11:34:14', 1, 24, 183, 1, 1),
	(197, '2014-10-13 11:34:43', 1, 40, 184, 1, 1),
	(198, '2014-10-13 11:35:03', 1, 61, 185, 1, 1),
	(199, '2014-10-13 11:35:26', 1, 82, 186, 1, 1),
	(200, '2014-10-13 11:35:48', 1, 103, 187, 1, 1),
	(201, '2014-10-13 11:35:53', 1, 118, 188, 1, 1),
	(202, '2014-10-13 11:35:54', 1, 119, 189, 1, 1),
	(203, '2014-10-13 11:58:26', 1, 1, 194, 1, 1),
	(204, '2014-10-13 14:55:52', 1, 1, 214, 1, 1),
	(205, '2014-10-13 15:00:24', 1, 1, 218, 1, 1),
	(206, '2014-10-14 15:24:29', 1, 1, 223, 1, 1),
	(207, '2014-10-14 16:13:53', 1, 1, 227, 1, 1),
	(208, '2014-10-14 16:14:02', 1, 8, 228, 1, 1),
	(209, '2014-10-14 16:14:52', 1, 19, 229, 1, 1),
	(210, '2014-10-14 16:21:12', 1, 1, 232, 1, 1),
	(211, '2014-10-14 16:21:23', 1, 8, 233, 1, 1),
	(212, '2014-10-14 16:21:51', 1, 19, 234, 1, 1),
	(213, '2014-10-17 09:37:17', 1, 6, 237, 1, 1),
	(214, '2014-10-17 09:37:26', 1, 7, 238, 1, 1),
	(215, '2014-10-17 09:37:28', 1, 8, 239, 1, 1),
	(216, '2014-10-17 09:37:29', 1, 9, 240, 1, 1),
	(217, '2014-10-17 09:37:31', 1, 10, 241, 1, 1),
	(218, '2014-10-17 09:37:42', 1, 16, 242, 1, 1),
	(219, '2014-10-17 09:38:14', 1, 27, 243, 1, 1),
	(220, '2014-10-17 09:38:15', 1, 28, 244, 1, 1),
	(221, '2014-10-17 09:38:17', 1, 29, 245, 1, 1),
	(222, '2014-10-17 09:38:18', 1, 30, 246, 1, 1),
	(223, '2014-10-17 09:38:20', 1, 31, 247, 1, 1),
	(224, '2014-10-17 09:51:07', 1, 3, 249, 1, 1),
	(225, '2014-10-17 09:51:08', 1, 4, 250, 1, 1),
	(226, '2014-10-17 09:51:17', 1, 10, 251, 1, 1),
	(227, '2014-10-17 09:51:18', 1, 11, 252, 1, 1),
	(228, '2014-10-17 09:51:19', 1, 12, 253, 1, 1),
	(229, '2014-10-17 09:51:20', 1, 13, 254, 1, 1),
	(230, '2014-10-17 09:51:22', 1, 14, 255, 1, 1),
	(231, '2014-10-17 09:51:32', 1, 20, 256, 1, 1),
	(232, '2014-10-17 09:51:45', 1, 31, 257, 1, 1),
	(233, '2014-10-17 09:51:46', 1, 32, 258, 1, 1),
	(234, '2014-10-17 09:51:47', 1, 33, 259, 1, 1),
	(235, '2014-10-17 09:51:49', 1, 34, 260, 1, 1),
	(236, '2014-10-17 09:51:50', 1, 35, 261, 1, 1),
	(237, '2014-10-17 11:48:34', 1, 3, 264, 1, 1),
	(238, '2014-10-17 11:48:38', 1, 4, 265, 1, 1),
	(239, '2014-10-17 11:48:47', 1, 10, 266, 1, 1),
	(240, '2014-10-17 11:48:48', 1, 11, 267, 1, 1),
	(241, '2014-10-17 11:48:49', 1, 12, 268, 1, 1),
	(242, '2014-10-17 11:48:50', 1, 13, 269, 1, 1),
	(243, '2014-10-17 11:48:52', 1, 14, 270, 1, 1),
	(244, '2014-10-17 11:53:36', 1, 3, 272, 1, 1),
	(245, '2014-10-17 11:53:37', 1, 4, 273, 1, 1),
	(246, '2014-10-17 11:53:45', 1, 10, 274, 1, 1),
	(247, '2014-10-17 11:53:46', 1, 11, 275, 1, 1),
	(248, '2014-10-17 11:53:48', 1, 12, 276, 1, 1),
	(249, '2014-10-17 11:53:49', 1, 13, 277, 1, 1),
	(250, '2014-10-17 11:53:51', 1, 14, 278, 1, 1),
	(251, '2014-10-17 11:54:00', 1, 20, 279, 1, 1),
	(252, '2014-10-17 11:54:13', 1, 31, 280, 1, 1),
	(253, '2014-10-17 11:54:15', 1, 32, 281, 1, 1),
	(254, '2014-10-17 11:54:16', 1, 33, 282, 1, 1),
	(255, '2014-10-17 11:54:17', 1, 34, 283, 1, 1),
	(256, '2014-10-17 11:54:19', 1, 35, 284, 1, 1),
	(257, '2014-10-17 11:58:50', 1, 4, 285, 1, 1);
/*!40000 ALTER TABLE `report_event` ENABLE KEYS */;


-- Dumping structure for table mag.report_event_types
DROP TABLE IF EXISTS `report_event_types`;
CREATE TABLE IF NOT EXISTS `report_event_types` (
  `event_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Type Id',
  `event_name` varchar(64) NOT NULL COMMENT 'Event Name',
  `customer_login` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Login',
  PRIMARY KEY (`event_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Reports Event Type Table';

-- Dumping data for table mag.report_event_types: ~6 rows (approximately)
/*!40000 ALTER TABLE `report_event_types` DISABLE KEYS */;
INSERT INTO `report_event_types` (`event_type_id`, `event_name`, `customer_login`) VALUES
	(1, 'catalog_product_view', 0),
	(2, 'sendfriend_product', 0),
	(3, 'catalog_product_compare_add_product', 0),
	(4, 'checkout_cart_add_product', 0),
	(5, 'wishlist_add_product', 0),
	(6, 'wishlist_share', 0);
/*!40000 ALTER TABLE `report_event_types` ENABLE KEYS */;


-- Dumping structure for table mag.report_viewed_product_aggregated_daily
DROP TABLE IF EXISTS `report_viewed_product_aggregated_daily`;
CREATE TABLE IF NOT EXISTS `report_viewed_product_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRD_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_DAILY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Daily';

-- Dumping data for table mag.report_viewed_product_aggregated_daily: ~0 rows (approximately)
/*!40000 ALTER TABLE `report_viewed_product_aggregated_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_viewed_product_aggregated_daily` ENABLE KEYS */;


-- Dumping structure for table mag.report_viewed_product_aggregated_monthly
DROP TABLE IF EXISTS `report_viewed_product_aggregated_monthly`;
CREATE TABLE IF NOT EXISTS `report_viewed_product_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRD_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_MONTHLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Monthly';

-- Dumping data for table mag.report_viewed_product_aggregated_monthly: ~0 rows (approximately)
/*!40000 ALTER TABLE `report_viewed_product_aggregated_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_viewed_product_aggregated_monthly` ENABLE KEYS */;


-- Dumping structure for table mag.report_viewed_product_aggregated_yearly
DROP TABLE IF EXISTS `report_viewed_product_aggregated_yearly`;
CREATE TABLE IF NOT EXISTS `report_viewed_product_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRD_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_YEARLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Yearly';

-- Dumping data for table mag.report_viewed_product_aggregated_yearly: ~0 rows (approximately)
/*!40000 ALTER TABLE `report_viewed_product_aggregated_yearly` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_viewed_product_aggregated_yearly` ENABLE KEYS */;


-- Dumping structure for table mag.report_viewed_product_index
DROP TABLE IF EXISTS `report_viewed_product_index`;
CREATE TABLE IF NOT EXISTS `report_viewed_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_REPORT_VIEWED_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REPORT_VIEWED_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REPORT_VIEWED_PRODUCT_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='Reports Viewed Product Index Table';

-- Dumping data for table mag.report_viewed_product_index: ~14 rows (approximately)
/*!40000 ALTER TABLE `report_viewed_product_index` DISABLE KEYS */;
INSERT INTO `report_viewed_product_index` (`index_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`, `added_at`) VALUES
	(1, 272, NULL, 3, 1, '2014-10-17 11:53:36'),
	(2, 273, NULL, 4, 1, '2014-10-17 11:53:37'),
	(3, 274, NULL, 10, 1, '2014-10-17 11:53:45'),
	(4, 275, NULL, 11, 1, '2014-10-17 11:53:46'),
	(5, 276, NULL, 12, 1, '2014-10-17 11:53:48'),
	(6, 277, NULL, 13, 1, '2014-10-17 11:53:49'),
	(7, 278, NULL, 14, 1, '2014-10-17 11:53:51'),
	(8, 279, NULL, 20, 1, '2014-10-17 11:54:00'),
	(9, 280, NULL, 31, 1, '2014-10-17 11:54:13'),
	(10, 281, NULL, 32, 1, '2014-10-17 11:54:15'),
	(11, 282, NULL, 33, 1, '2014-10-17 11:54:16'),
	(12, 283, NULL, 34, 1, '2014-10-17 11:54:17'),
	(13, 284, NULL, 35, 1, '2014-10-17 11:54:19'),
	(14, 285, NULL, 4, 1, '2014-10-17 11:58:50');
/*!40000 ALTER TABLE `report_viewed_product_index` ENABLE KEYS */;


-- Dumping structure for table mag.review
DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `review_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Review create date',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity id',
  `entity_pk_value` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `status_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status code',
  PRIMARY KEY (`review_id`),
  KEY `IDX_REVIEW_ENTITY_ID` (`entity_id`),
  KEY `IDX_REVIEW_STATUS_ID` (`status_id`),
  KEY `IDX_REVIEW_ENTITY_PK_VALUE` (`entity_pk_value`),
  CONSTRAINT `FK_REVIEW_ENTITY_ID_REVIEW_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `review_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REVIEW_STATUS_ID_REVIEW_STATUS_STATUS_ID` FOREIGN KEY (`status_id`) REFERENCES `review_status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review base information';

-- Dumping data for table mag.review: ~0 rows (approximately)
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;


-- Dumping structure for table mag.review_detail
DROP TABLE IF EXISTS `review_detail`;
CREATE TABLE IF NOT EXISTS `review_detail` (
  `detail_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review detail id',
  `review_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Review id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store id',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `detail` text NOT NULL COMMENT 'Detail description',
  `nickname` varchar(128) NOT NULL COMMENT 'User nickname',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  PRIMARY KEY (`detail_id`),
  KEY `IDX_REVIEW_DETAIL_REVIEW_ID` (`review_id`),
  KEY `IDX_REVIEW_DETAIL_STORE_ID` (`store_id`),
  KEY `IDX_REVIEW_DETAIL_CUSTOMER_ID` (`customer_id`),
  CONSTRAINT `FK_REVIEW_DETAIL_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_REVIEW_DETAIL_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REVIEW_DETAIL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review detail information';

-- Dumping data for table mag.review_detail: ~0 rows (approximately)
/*!40000 ALTER TABLE `review_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_detail` ENABLE KEYS */;


-- Dumping structure for table mag.review_entity
DROP TABLE IF EXISTS `review_entity`;
CREATE TABLE IF NOT EXISTS `review_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review entity id',
  `entity_code` varchar(32) NOT NULL COMMENT 'Review entity code',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Review entities';

-- Dumping data for table mag.review_entity: ~3 rows (approximately)
/*!40000 ALTER TABLE `review_entity` DISABLE KEYS */;
INSERT INTO `review_entity` (`entity_id`, `entity_code`) VALUES
	(1, 'product'),
	(2, 'customer'),
	(3, 'category');
/*!40000 ALTER TABLE `review_entity` ENABLE KEYS */;


-- Dumping structure for table mag.review_entity_summary
DROP TABLE IF EXISTS `review_entity_summary`;
CREATE TABLE IF NOT EXISTS `review_entity_summary` (
  `primary_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Summary review entity id',
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Product id',
  `entity_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Entity type id',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Qty of reviews',
  `rating_summary` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Summarized rating',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`primary_id`),
  KEY `IDX_REVIEW_ENTITY_SUMMARY_STORE_ID` (`store_id`),
  CONSTRAINT `FK_REVIEW_ENTITY_SUMMARY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review aggregates';

-- Dumping data for table mag.review_entity_summary: ~0 rows (approximately)
/*!40000 ALTER TABLE `review_entity_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_entity_summary` ENABLE KEYS */;


-- Dumping structure for table mag.review_status
DROP TABLE IF EXISTS `review_status`;
CREATE TABLE IF NOT EXISTS `review_status` (
  `status_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Status id',
  `status_code` varchar(32) NOT NULL COMMENT 'Status code',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Review statuses';

-- Dumping data for table mag.review_status: ~3 rows (approximately)
/*!40000 ALTER TABLE `review_status` DISABLE KEYS */;
INSERT INTO `review_status` (`status_id`, `status_code`) VALUES
	(1, 'Approved'),
	(2, 'Pending'),
	(3, 'Not Approved');
/*!40000 ALTER TABLE `review_status` ENABLE KEYS */;


-- Dumping structure for table mag.review_store
DROP TABLE IF EXISTS `review_store`;
CREATE TABLE IF NOT EXISTS `review_store` (
  `review_id` bigint(20) unsigned NOT NULL COMMENT 'Review Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`review_id`,`store_id`),
  KEY `IDX_REVIEW_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_REVIEW_STORE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REVIEW_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review Store';

-- Dumping data for table mag.review_store: ~0 rows (approximately)
/*!40000 ALTER TABLE `review_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_store` ENABLE KEYS */;


-- Dumping structure for table mag.salesrule
DROP TABLE IF EXISTS `salesrule`;
CREATE TABLE IF NOT EXISTS `salesrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `uses_per_customer` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `is_advanced` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Advanced',
  `product_ids` text COMMENT 'Product Ids',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `discount_qty` decimal(12,4) DEFAULT NULL COMMENT 'Discount Qty',
  `discount_step` int(10) unsigned NOT NULL COMMENT 'Discount Step',
  `simple_free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Simple Free Shipping',
  `apply_to_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `is_rss` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Rss',
  `coupon_type` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
  `use_auto_generation` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Use Auto Generation',
  `uses_per_coupon` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Coupon',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule';

-- Dumping data for table mag.salesrule: ~0 rows (approximately)
/*!40000 ALTER TABLE `salesrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesrule` ENABLE KEYS */;


-- Dumping structure for table mag.salesrule_coupon
DROP TABLE IF EXISTS `salesrule_coupon`;
CREATE TABLE IF NOT EXISTS `salesrule_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Coupon Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int(10) unsigned DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int(10) unsigned DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` timestamp NULL DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Primary',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Coupon Code Creation Date',
  `type` smallint(6) DEFAULT '0' COMMENT 'Coupon Code Type',
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `UNQ_SALESRULE_COUPON_CODE` (`code`),
  UNIQUE KEY `UNQ_SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
  KEY `IDX_SALESRULE_COUPON_RULE_ID` (`rule_id`),
  CONSTRAINT `FK_SALESRULE_COUPON_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon';

-- Dumping data for table mag.salesrule_coupon: ~0 rows (approximately)
/*!40000 ALTER TABLE `salesrule_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesrule_coupon` ENABLE KEYS */;


-- Dumping structure for table mag.salesrule_coupon_usage
DROP TABLE IF EXISTS `salesrule_coupon_usage`;
CREATE TABLE IF NOT EXISTS `salesrule_coupon_usage` (
  `coupon_id` int(10) unsigned NOT NULL COMMENT 'Coupon Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`coupon_id`,`customer_id`),
  KEY `IDX_SALESRULE_COUPON_USAGE_COUPON_ID` (`coupon_id`),
  KEY `IDX_SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`),
  CONSTRAINT `FK_SALESRULE_COUPON_USAGE_COUPON_ID_SALESRULE_COUPON_COUPON_ID` FOREIGN KEY (`coupon_id`) REFERENCES `salesrule_coupon` (`coupon_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALESRULE_COUPON_USAGE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Usage';

-- Dumping data for table mag.salesrule_coupon_usage: ~0 rows (approximately)
/*!40000 ALTER TABLE `salesrule_coupon_usage` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesrule_coupon_usage` ENABLE KEYS */;


-- Dumping structure for table mag.salesrule_customer
DROP TABLE IF EXISTS `salesrule_customer`;
CREATE TABLE IF NOT EXISTS `salesrule_customer` (
  `rule_customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `times_used` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`rule_customer_id`),
  KEY `IDX_SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`),
  KEY `IDX_SALESRULE_CUSTOMER_CUSTOMER_ID_RULE_ID` (`customer_id`,`rule_id`),
  CONSTRAINT `FK_SALESRULE_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALESRULE_CUSTOMER_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Customer';

-- Dumping data for table mag.salesrule_customer: ~0 rows (approximately)
/*!40000 ALTER TABLE `salesrule_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesrule_customer` ENABLE KEYS */;


-- Dumping structure for table mag.salesrule_customer_group
DROP TABLE IF EXISTS `salesrule_customer_group`;
CREATE TABLE IF NOT EXISTS `salesrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `IDX_SALESRULE_CUSTOMER_GROUP_RULE_ID` (`rule_id`),
  KEY `IDX_SALESRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  CONSTRAINT `FK_SALESRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALESRULE_CUSTOMER_GROUP_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Customer Groups Relations';

-- Dumping data for table mag.salesrule_customer_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `salesrule_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesrule_customer_group` ENABLE KEYS */;


-- Dumping structure for table mag.salesrule_label
DROP TABLE IF EXISTS `salesrule_label`;
CREATE TABLE IF NOT EXISTS `salesrule_label` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Label Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `UNQ_SALESRULE_LABEL_RULE_ID_STORE_ID` (`rule_id`,`store_id`),
  KEY `IDX_SALESRULE_LABEL_STORE_ID` (`store_id`),
  KEY `IDX_SALESRULE_LABEL_RULE_ID` (`rule_id`),
  CONSTRAINT `FK_SALESRULE_LABEL_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALESRULE_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Label';

-- Dumping data for table mag.salesrule_label: ~0 rows (approximately)
/*!40000 ALTER TABLE `salesrule_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesrule_label` ENABLE KEYS */;


-- Dumping structure for table mag.salesrule_product_attribute
DROP TABLE IF EXISTS `salesrule_product_attribute`;
CREATE TABLE IF NOT EXISTS `salesrule_product_attribute` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`rule_id`,`website_id`,`customer_group_id`,`attribute_id`),
  KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID` (`website_id`),
  KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `FK_SALESRULE_PRD_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_SALESRULE_PRD_ATTR_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_SALESRULE_PRD_ATTR_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_SALESRULE_PRODUCT_ATTRIBUTE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Product Attribute';

-- Dumping data for table mag.salesrule_product_attribute: ~0 rows (approximately)
/*!40000 ALTER TABLE `salesrule_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesrule_product_attribute` ENABLE KEYS */;


-- Dumping structure for table mag.salesrule_website
DROP TABLE IF EXISTS `salesrule_website`;
CREATE TABLE IF NOT EXISTS `salesrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `IDX_SALESRULE_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_SALESRULE_WEBSITE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_SALESRULE_WEBSITE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALESRULE_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Websites Relations';

-- Dumping data for table mag.salesrule_website: ~0 rows (approximately)
/*!40000 ALTER TABLE `salesrule_website` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesrule_website` ENABLE KEYS */;


-- Dumping structure for table mag.sales_bestsellers_aggregated_daily
DROP TABLE IF EXISTS `sales_bestsellers_aggregated_daily`;
CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_DAILY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily';

-- Dumping data for table mag.sales_bestsellers_aggregated_daily: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_bestsellers_aggregated_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_bestsellers_aggregated_daily` ENABLE KEYS */;


-- Dumping structure for table mag.sales_bestsellers_aggregated_monthly
DROP TABLE IF EXISTS `sales_bestsellers_aggregated_monthly`;
CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_MONTHLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly';

-- Dumping data for table mag.sales_bestsellers_aggregated_monthly: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_bestsellers_aggregated_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_bestsellers_aggregated_monthly` ENABLE KEYS */;


-- Dumping structure for table mag.sales_bestsellers_aggregated_yearly
DROP TABLE IF EXISTS `sales_bestsellers_aggregated_yearly`;
CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_YEARLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Yearly';

-- Dumping data for table mag.sales_bestsellers_aggregated_yearly: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_bestsellers_aggregated_yearly` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_bestsellers_aggregated_yearly` ENABLE KEYS */;


-- Dumping structure for table mag.sales_billing_agreement
DROP TABLE IF EXISTS `sales_billing_agreement`;
CREATE TABLE IF NOT EXISTS `sales_billing_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `reference_id` varchar(32) NOT NULL COMMENT 'Reference Id',
  `status` varchar(20) NOT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `agreement_label` varchar(255) DEFAULT NULL COMMENT 'Agreement Label',
  PRIMARY KEY (`agreement_id`),
  KEY `IDX_SALES_BILLING_AGREEMENT_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_SALES_BILLING_AGREEMENT_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_BILLING_AGREEMENT_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_BILLING_AGREEMENT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement';

-- Dumping data for table mag.sales_billing_agreement: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_billing_agreement` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_billing_agreement` ENABLE KEYS */;


-- Dumping structure for table mag.sales_billing_agreement_order
DROP TABLE IF EXISTS `sales_billing_agreement_order`;
CREATE TABLE IF NOT EXISTS `sales_billing_agreement_order` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  PRIMARY KEY (`agreement_id`,`order_id`),
  KEY `IDX_SALES_BILLING_AGREEMENT_ORDER_ORDER_ID` (`order_id`),
  CONSTRAINT `FK_SALES_BILLING_AGRT_ORDER_AGRT_ID_SALES_BILLING_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `sales_billing_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_BILLING_AGRT_ORDER_ORDER_ID_SALES_FLAT_ORDER_ENTT_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement Order';

-- Dumping data for table mag.sales_billing_agreement_order: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_billing_agreement_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_billing_agreement_order` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_creditmemo
DROP TABLE IF EXISTS `sales_flat_creditmemo`;
CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_CREDITMEMO_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_STATE` (`state`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_CREATED_AT` (`created_at`),
  CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo';

-- Dumping data for table mag.sales_flat_creditmemo: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_creditmemo` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_creditmemo` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_creditmemo_comment
DROP TABLE IF EXISTS `sales_flat_creditmemo_comment`;
CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_COMMENT_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_B0FCB0B5467075BE63D474F2CD5F7804` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Comment';

-- Dumping data for table mag.sales_flat_creditmemo_comment: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_creditmemo_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_creditmemo_comment` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_creditmemo_grid
DROP TABLE IF EXISTS `sales_flat_creditmemo_grid`;
CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_CREDITMEMO_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_STATE` (`state`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_BILLING_NAME` (`billing_name`),
  CONSTRAINT `FK_78C711B225167A11CC077B03D1C8E1CC` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Grid';

-- Dumping data for table mag.sales_flat_creditmemo_grid: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_creditmemo_grid` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_creditmemo_grid` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_creditmemo_item
DROP TABLE IF EXISTS `sales_flat_creditmemo_item`;
CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_ITEM_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_306DAC836C699F0B5E13BE486557AC8A` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Item';

-- Dumping data for table mag.sales_flat_creditmemo_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_creditmemo_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_creditmemo_item` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_invoice
DROP TABLE IF EXISTS `sales_flat_invoice`;
CREATE TABLE IF NOT EXISTS `sales_flat_invoice` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `is_used_for_refund` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Used For Refund',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `can_void_flag` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Void Flag',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_INVOICE_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_INVOICE_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_SALES_FLAT_INVOICE_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_INVOICE_STATE` (`state`),
  KEY `IDX_SALES_FLAT_INVOICE_CREATED_AT` (`created_at`),
  CONSTRAINT `FK_SALES_FLAT_INVOICE_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_INVOICE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice';

-- Dumping data for table mag.sales_flat_invoice: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_invoice` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_invoice_comment
DROP TABLE IF EXISTS `sales_flat_invoice_comment`;
CREATE TABLE IF NOT EXISTS `sales_flat_invoice_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_INVOICE_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_INVOICE_COMMENT_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_5C4B36BBE5231A76AB8018B281ED50BC` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Comment';

-- Dumping data for table mag.sales_flat_invoice_comment: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_invoice_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_invoice_comment` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_invoice_grid
DROP TABLE IF EXISTS `sales_flat_invoice_grid`;
CREATE TABLE IF NOT EXISTS `sales_flat_invoice_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_INVOICE_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_STATE` (`state`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_BILLING_NAME` (`billing_name`),
  CONSTRAINT `FK_SALES_FLAT_INVOICE_GRID_ENTT_ID_SALES_FLAT_INVOICE_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_INVOICE_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Grid';

-- Dumping data for table mag.sales_flat_invoice_grid: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_invoice_grid` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_invoice_grid` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_invoice_item
DROP TABLE IF EXISTS `sales_flat_invoice_item`;
CREATE TABLE IF NOT EXISTS `sales_flat_invoice_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_INVOICE_ITEM_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_SALES_FLAT_INVOICE_ITEM_PARENT_ID_SALES_FLAT_INVOICE_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Item';

-- Dumping data for table mag.sales_flat_invoice_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_invoice_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_invoice_item` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_order
DROP TABLE IF EXISTS `sales_flat_order`;
CREATE TABLE IF NOT EXISTS `sales_flat_order` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `state` varchar(32) DEFAULT NULL COMMENT 'State',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `protect_code` varchar(255) DEFAULT NULL COMMENT 'Protect Code',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Canceled',
  `base_discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Invoiced',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `base_shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Canceled',
  `base_shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Invoiced',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Refunded',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `base_subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Canceled',
  `base_subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Invoiced',
  `base_subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Refunded',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Canceled',
  `base_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Invoiced',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `base_total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Canceled',
  `base_total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced',
  `base_total_invoiced_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced Cost',
  `base_total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Offline Refunded',
  `base_total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Online Refunded',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Qty Ordered',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Canceled',
  `discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Invoiced',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Canceled',
  `shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Invoiced',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Refunded',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Canceled',
  `subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Invoiced',
  `subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Refunded',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Tax Invoiced',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Total Canceled',
  `total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Total Invoiced',
  `total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Offline Refunded',
  `total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Online Refunded',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty Ordered',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  `can_ship_partially` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially',
  `can_ship_partially_item` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially Item',
  `customer_is_guest` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Is Guest',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `edit_increment` int(11) DEFAULT NULL COMMENT 'Edit Increment',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `forced_shipment_with_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Forced Do Shipment With Invoice',
  `payment_auth_expiration` int(11) DEFAULT NULL COMMENT 'Payment Authorization Expiration',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `quote_id` int(11) DEFAULT NULL COMMENT 'Quote Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `base_total_due` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Due',
  `payment_authorization_amount` decimal(12,4) DEFAULT NULL COMMENT 'Payment Authorization Amount',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `total_due` decimal(12,4) DEFAULT NULL COMMENT 'Total Due',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_middlename` varchar(255) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_prefix` varchar(255) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_suffix` varchar(255) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `ext_customer_id` varchar(255) DEFAULT NULL COMMENT 'Ext Customer Id',
  `ext_order_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Id',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `hold_before_state` varchar(255) DEFAULT NULL COMMENT 'Hold Before State',
  `hold_before_status` varchar(255) DEFAULT NULL COMMENT 'Hold Before Status',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `original_increment_id` varchar(50) DEFAULT NULL COMMENT 'Original Increment Id',
  `relation_child_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Id',
  `relation_child_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Real Id',
  `relation_parent_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Id',
  `relation_parent_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Real Id',
  `remote_ip` varchar(255) DEFAULT NULL COMMENT 'Remote Ip',
  `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `x_forwarded_for` varchar(255) DEFAULT NULL COMMENT 'X Forwarded For',
  `customer_note` text COMMENT 'Customer Note',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `total_item_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Total Item Count',
  `customer_gender` int(11) DEFAULT NULL COMMENT 'Customer Gender',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Invoiced',
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Invoiced',
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Refunded',
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Refunded',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `coupon_rule_name` varchar(255) DEFAULT NULL COMMENT 'Coupon Sales Rule Name',
  `paypal_ipn_customer_notified` int(11) DEFAULT '0' COMMENT 'Paypal Ipn Customer Notified',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_ORDER_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_ORDER_STATUS` (`status`),
  KEY `IDX_SALES_FLAT_ORDER_STATE` (`state`),
  KEY `IDX_SALES_FLAT_ORDER_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_ORDER_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_ORDER_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_SALES_FLAT_ORDER_EXT_ORDER_ID` (`ext_order_id`),
  KEY `IDX_SALES_FLAT_ORDER_QUOTE_ID` (`quote_id`),
  KEY `IDX_SALES_FLAT_ORDER_UPDATED_AT` (`updated_at`),
  CONSTRAINT `FK_SALES_FLAT_ORDER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order';

-- Dumping data for table mag.sales_flat_order: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_order` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_order_address
DROP TABLE IF EXISTS `sales_flat_order_address`;
CREATE TABLE IF NOT EXISTS `sales_flat_order_address` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `customer_address_id` int(11) DEFAULT NULL COMMENT 'Customer Address Id',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `region_id` int(11) DEFAULT NULL COMMENT 'Region Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `prefix` varchar(255) DEFAULT NULL COMMENT 'Prefix',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middlename',
  `suffix` varchar(255) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_ORDER_ADDRESS_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_SALES_FLAT_ORDER_ADDRESS_PARENT_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Address';

-- Dumping data for table mag.sales_flat_order_address: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_order_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_order_address` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_order_grid
DROP TABLE IF EXISTS `sales_flat_order_grid`;
CREATE TABLE IF NOT EXISTS `sales_flat_order_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_ORDER_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_STATUS` (`status`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_BASE_TOTAL_PAID` (`base_total_paid`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_TOTAL_PAID` (`total_paid`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_SHIPPING_NAME` (`shipping_name`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_BILLING_NAME` (`billing_name`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_UPDATED_AT` (`updated_at`),
  CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_ENTITY_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Grid';

-- Dumping data for table mag.sales_flat_order_grid: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_order_grid` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_order_grid` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_order_item
DROP TABLE IF EXISTS `sales_flat_order_item`;
CREATE TABLE IF NOT EXISTS `sales_flat_order_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Quote Item Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `product_options` text COMMENT 'Product Options',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'No Discount',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Backordered',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Canceled',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Invoiced',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Refunded',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Shipped',
  `base_cost` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Cost',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `original_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `base_original_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Original Price',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Invoiced',
  `base_tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Invoiced',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Invoiced',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Invoiced',
  `amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Amount Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Amount Refunded',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Invoiced',
  `base_row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Invoiced',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `ext_order_item_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Item Id',
  `locked_do_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Invoice',
  `locked_do_ship` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Ship',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Invoiced',
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Invoiced',
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Refunded',
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Refunded',
  `is_nominal` int(11) NOT NULL DEFAULT '0' COMMENT 'Is Nominal',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `hidden_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Canceled',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `gift_message_available` int(11) DEFAULT NULL COMMENT 'Gift Message Available',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`item_id`),
  KEY `IDX_SALES_FLAT_ORDER_ITEM_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_ORDER_ITEM_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_FLAT_ORDER_ITEM_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_ORDER_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Item';

-- Dumping data for table mag.sales_flat_order_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_order_item` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_order_payment
DROP TABLE IF EXISTS `sales_flat_order_payment`;
CREATE TABLE IF NOT EXISTS `sales_flat_order_payment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Captured',
  `shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Captured',
  `amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Amount Refunded',
  `base_amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid',
  `amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Amount Canceled',
  `base_amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Authorized',
  `base_amount_paid_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid Online',
  `base_amount_refunded_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded Online',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Amount Paid',
  `amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Amount Authorized',
  `base_amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Ordered',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded',
  `amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Amount Ordered',
  `base_amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Canceled',
  `quote_payment_id` int(11) DEFAULT NULL COMMENT 'Quote Payment Id',
  `additional_data` text COMMENT 'Additional Data',
  `cc_exp_month` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_ss_start_year` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Start Year',
  `echeck_bank_name` varchar(255) DEFAULT NULL COMMENT 'Echeck Bank Name',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_debug_request_body` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Request Body',
  `cc_secure_verify` varchar(255) DEFAULT NULL COMMENT 'Cc Secure Verify',
  `protection_eligibility` varchar(255) DEFAULT NULL COMMENT 'Protection Eligibility',
  `cc_approval` varchar(255) DEFAULT NULL COMMENT 'Cc Approval',
  `cc_last4` varchar(255) DEFAULT NULL COMMENT 'Cc Last4',
  `cc_status_description` varchar(255) DEFAULT NULL COMMENT 'Cc Status Description',
  `echeck_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Type',
  `cc_debug_response_serialized` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Response Serialized',
  `cc_ss_start_month` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Start Month',
  `echeck_account_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Type',
  `last_trans_id` varchar(255) DEFAULT NULL COMMENT 'Last Trans Id',
  `cc_cid_status` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Status',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `cc_exp_year` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Year',
  `cc_status` varchar(255) DEFAULT NULL COMMENT 'Cc Status',
  `echeck_routing_number` varchar(255) DEFAULT NULL COMMENT 'Echeck Routing Number',
  `account_status` varchar(255) DEFAULT NULL COMMENT 'Account Status',
  `anet_trans_method` varchar(255) DEFAULT NULL COMMENT 'Anet Trans Method',
  `cc_debug_response_body` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Response Body',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `echeck_account_name` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Name',
  `cc_avs_status` varchar(255) DEFAULT NULL COMMENT 'Cc Avs Status',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_trans_id` varchar(255) DEFAULT NULL COMMENT 'Cc Trans Id',
  `paybox_request_number` varchar(255) DEFAULT NULL COMMENT 'Paybox Request Number',
  `address_status` varchar(255) DEFAULT NULL COMMENT 'Address Status',
  `additional_information` text COMMENT 'Additional Information',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_ORDER_PAYMENT_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_SALES_FLAT_ORDER_PAYMENT_PARENT_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Payment';

-- Dumping data for table mag.sales_flat_order_payment: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_order_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_order_payment` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_order_status_history
DROP TABLE IF EXISTS `sales_flat_order_status_history`;
CREATE TABLE IF NOT EXISTS `sales_flat_order_status_history` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `entity_name` varchar(32) DEFAULT NULL COMMENT 'Shows what entity history is bind to.',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_ORDER_STATUS_HISTORY_PARENT_ID` (`parent_id`),
  KEY `IDX_SALES_FLAT_ORDER_STATUS_HISTORY_CREATED_AT` (`created_at`),
  CONSTRAINT `FK_CE7C71E74CB74DDACED337CEE6753D5E` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Status History';

-- Dumping data for table mag.sales_flat_order_status_history: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_order_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_order_status_history` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_quote
DROP TABLE IF EXISTS `sales_flat_quote`;
CREATE TABLE IF NOT EXISTS `sales_flat_quote` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint(5) unsigned DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int(10) unsigned DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int(10) unsigned DEFAULT '0' COMMENT 'Orig Order Id',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `customer_tax_class_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Tax Class Id',
  `customer_group_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Group Id',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` varchar(255) DEFAULT NULL COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint(5) unsigned DEFAULT '0' COMMENT 'Customer Is Guest',
  `remote_ip` varchar(32) DEFAULT NULL COMMENT 'Remote Ip',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order Id',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `is_changed` int(10) unsigned DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `is_persistent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Quote Persistent',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`),
  KEY `IDX_SALES_FLAT_QUOTE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_FLAT_QUOTE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote';

-- Dumping data for table mag.sales_flat_quote: ~1 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_quote` DISABLE KEYS */;
INSERT INTO `sales_flat_quote` (`entity_id`, `store_id`, `created_at`, `updated_at`, `converted_at`, `is_active`, `is_virtual`, `is_multi_shipping`, `items_count`, `items_qty`, `orig_order_id`, `store_to_base_rate`, `store_to_quote_rate`, `base_currency_code`, `store_currency_code`, `quote_currency_code`, `grand_total`, `base_grand_total`, `checkout_method`, `customer_id`, `customer_tax_class_id`, `customer_group_id`, `customer_email`, `customer_prefix`, `customer_firstname`, `customer_middlename`, `customer_lastname`, `customer_suffix`, `customer_dob`, `customer_note`, `customer_note_notify`, `customer_is_guest`, `remote_ip`, `applied_rule_ids`, `reserved_order_id`, `password_hash`, `coupon_code`, `global_currency_code`, `base_to_global_rate`, `base_to_quote_rate`, `customer_taxvat`, `customer_gender`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `is_changed`, `trigger_recollect`, `ext_shipping_info`, `gift_message_id`, `is_persistent`) VALUES
	(1, 1, '2014-10-10 14:56:13', '2014-10-10 14:56:43', NULL, 1, 0, 0, 0, 0.0000, 0, 1.0000, 1.0000, 'USD', 'USD', 'USD', 0.0000, 0.0000, NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, NULL, NULL, NULL, 'USD', 1.0000, 1.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 1, 0, NULL, NULL, 0);
/*!40000 ALTER TABLE `sales_flat_quote` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_quote_address
DROP TABLE IF EXISTS `sales_flat_quote_address`;
CREATE TABLE IF NOT EXISTS `sales_flat_quote_address` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `save_in_address_book` smallint(6) DEFAULT '0' COMMENT 'Save In Address Book',
  `customer_address_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Address Id',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `middlename` varchar(40) DEFAULT NULL COMMENT 'Middlename',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `region_id` int(10) unsigned DEFAULT NULL COMMENT 'Region Id',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `country_id` varchar(255) DEFAULT NULL COMMENT 'Country Id',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `same_as_billing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Same As Billing',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `collect_shipping_rates` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Collect Shipping Rates',
  `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Weight',
  `subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal With Discount',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Shipping Amount',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Shipping Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `customer_notes` text COMMENT 'Customer Notes',
  `applied_taxes` text COMMENT 'Applied Taxes',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_QUOTE_ID` (`quote_id`),
  CONSTRAINT `FK_SALES_FLAT_QUOTE_ADDRESS_QUOTE_ID_SALES_FLAT_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address';

-- Dumping data for table mag.sales_flat_quote_address: ~2 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_quote_address` DISABLE KEYS */;
INSERT INTO `sales_flat_quote_address` (`address_id`, `quote_id`, `created_at`, `updated_at`, `customer_id`, `save_in_address_book`, `customer_address_id`, `address_type`, `email`, `prefix`, `firstname`, `middlename`, `lastname`, `suffix`, `company`, `street`, `city`, `region`, `region_id`, `postcode`, `country_id`, `telephone`, `fax`, `same_as_billing`, `free_shipping`, `collect_shipping_rates`, `shipping_method`, `shipping_description`, `weight`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `tax_amount`, `base_tax_amount`, `shipping_amount`, `base_shipping_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `discount_amount`, `base_discount_amount`, `grand_total`, `base_grand_total`, `customer_notes`, `applied_taxes`, `discount_description`, `shipping_discount_amount`, `base_shipping_discount_amount`, `subtotal_incl_tax`, `base_subtotal_total_incl_tax`, `hidden_tax_amount`, `base_hidden_tax_amount`, `shipping_hidden_tax_amount`, `base_shipping_hidden_tax_amnt`, `shipping_incl_tax`, `base_shipping_incl_tax`, `vat_id`, `vat_is_valid`, `vat_request_id`, `vat_request_date`, `vat_request_success`, `gift_message_id`) VALUES
	(1, 1, '2014-10-10 14:56:13', '2014-10-10 14:56:43', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 'a:0:{}', NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 1, '2014-10-10 14:56:13', '2014-10-10 14:56:43', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 'a:0:{}', NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `sales_flat_quote_address` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_quote_address_item
DROP TABLE IF EXISTS `sales_flat_quote_address_item`;
CREATE TABLE IF NOT EXISTS `sales_flat_quote_address_item` (
  `address_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Item Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Address Id',
  `quote_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Item Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `super_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Super Product Id',
  `parent_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Product Id',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `free_shipping` int(10) unsigned DEFAULT NULL COMMENT 'Free Shipping',
  `is_qty_decimal` int(10) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `discount_percent` decimal(12,4) DEFAULT NULL COMMENT 'Discount Percent',
  `no_discount` int(10) unsigned DEFAULT NULL COMMENT 'No Discount',
  `tax_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tax Percent',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_item_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID` (`quote_address_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID` (`quote_item_id`),
  CONSTRAINT `FK_2EF8E28181D666D94D4E30DC2B0F80BF` FOREIGN KEY (`quote_item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_A345FC758F20C314169CE27DCE53477F` FOREIGN KEY (`parent_item_id`) REFERENCES `sales_flat_quote_address_item` (`address_item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_B521389746C00700D1B2B76EBBE53854` FOREIGN KEY (`quote_address_id`) REFERENCES `sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address Item';

-- Dumping data for table mag.sales_flat_quote_address_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_quote_address_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_quote_address_item` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_quote_item
DROP TABLE IF EXISTS `sales_flat_quote_item`;
CREATE TABLE IF NOT EXISTS `sales_flat_quote_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned DEFAULT '0' COMMENT 'No Discount',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Custom Price',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `original_custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Custom Price',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT 'Redirect Url',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  PRIMARY KEY (`item_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_QUOTE_ID` (`quote_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_STORE_ID` (`store_id`),
  CONSTRAINT `FK_B201DEB5DE51B791AF5C5BF87053C5A7` FOREIGN KEY (`parent_item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_QUOTE_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_QUOTE_ITEM_QUOTE_ID_SALES_FLAT_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_QUOTE_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item';

-- Dumping data for table mag.sales_flat_quote_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_quote_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_quote_item` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_quote_item_option
DROP TABLE IF EXISTS `sales_flat_quote_item_option`;
CREATE TABLE IF NOT EXISTS `sales_flat_quote_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`),
  CONSTRAINT `FK_5F20E478CA64B6891EA8A9D6C2735739` FOREIGN KEY (`item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item Option';

-- Dumping data for table mag.sales_flat_quote_item_option: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_quote_item_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_quote_item_option` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_quote_payment
DROP TABLE IF EXISTS `sales_flat_quote_payment`;
CREATE TABLE IF NOT EXISTS `sales_flat_quote_payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Payment Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_last4` varchar(255) DEFAULT NULL COMMENT 'Cc Last4',
  `cc_cid_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Enc',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_exp_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Month',
  `cc_exp_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Year',
  `cc_ss_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Owner',
  `cc_ss_start_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Month',
  `cc_ss_start_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Year',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `additional_data` text COMMENT 'Additional Data',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `additional_information` text COMMENT 'Additional Information',
  `paypal_payer_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Id',
  `paypal_payer_status` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Status',
  `paypal_correlation_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Correlation Id',
  PRIMARY KEY (`payment_id`),
  KEY `IDX_SALES_FLAT_QUOTE_PAYMENT_QUOTE_ID` (`quote_id`),
  CONSTRAINT `FK_SALES_FLAT_QUOTE_PAYMENT_QUOTE_ID_SALES_FLAT_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Payment';

-- Dumping data for table mag.sales_flat_quote_payment: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_quote_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_quote_payment` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_quote_shipping_rate
DROP TABLE IF EXISTS `sales_flat_quote_shipping_rate`;
CREATE TABLE IF NOT EXISTS `sales_flat_quote_shipping_rate` (
  `rate_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rate Id',
  `address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Address Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `carrier` varchar(255) DEFAULT NULL COMMENT 'Carrier',
  `carrier_title` varchar(255) DEFAULT NULL COMMENT 'Carrier Title',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `method_description` text COMMENT 'Method Description',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `error_message` text COMMENT 'Error Message',
  `method_title` text COMMENT 'Method Title',
  PRIMARY KEY (`rate_id`),
  KEY `IDX_SALES_FLAT_QUOTE_SHIPPING_RATE_ADDRESS_ID` (`address_id`),
  CONSTRAINT `FK_B1F177EFB73D3EDF5322BA64AC48D150` FOREIGN KEY (`address_id`) REFERENCES `sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Shipping Rate';

-- Dumping data for table mag.sales_flat_quote_shipping_rate: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_quote_shipping_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_quote_shipping_rate` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_shipment
DROP TABLE IF EXISTS `sales_flat_shipment`;
CREATE TABLE IF NOT EXISTS `sales_flat_shipment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_weight` decimal(12,4) DEFAULT NULL COMMENT 'Total Weight',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `packages` text COMMENT 'Packed Products in Packages',
  `shipping_label` mediumblob COMMENT 'Shipping Label Content',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_SHIPMENT_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_TOTAL_QTY` (`total_qty`),
  KEY `IDX_SALES_FLAT_SHIPMENT_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_SHIPMENT_UPDATED_AT` (`updated_at`),
  CONSTRAINT `FK_SALES_FLAT_SHIPMENT_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_SHIPMENT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment';

-- Dumping data for table mag.sales_flat_shipment: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_shipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_shipment` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_shipment_comment
DROP TABLE IF EXISTS `sales_flat_shipment_comment`;
CREATE TABLE IF NOT EXISTS `sales_flat_shipment_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_SHIPMENT_COMMENT_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_C2D69CC1FB03D2B2B794B0439F6650CF` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Comment';

-- Dumping data for table mag.sales_flat_shipment_comment: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_shipment_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_shipment_comment` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_shipment_grid
DROP TABLE IF EXISTS `sales_flat_shipment_grid`;
CREATE TABLE IF NOT EXISTS `sales_flat_shipment_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_SHIPMENT_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_TOTAL_QTY` (`total_qty`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_SHIPMENT_STATUS` (`shipment_status`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_SHIPPING_NAME` (`shipping_name`),
  CONSTRAINT `FK_SALES_FLAT_SHIPMENT_GRID_ENTT_ID_SALES_FLAT_SHIPMENT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_SHIPMENT_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Grid';

-- Dumping data for table mag.sales_flat_shipment_grid: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_shipment_grid` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_shipment_grid` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_shipment_item
DROP TABLE IF EXISTS `sales_flat_shipment_item`;
CREATE TABLE IF NOT EXISTS `sales_flat_shipment_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_ITEM_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_3AECE5007D18F159231B87E8306FC02A` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Item';

-- Dumping data for table mag.sales_flat_shipment_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_shipment_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_shipment_item` ENABLE KEYS */;


-- Dumping structure for table mag.sales_flat_shipment_track
DROP TABLE IF EXISTS `sales_flat_shipment_track`;
CREATE TABLE IF NOT EXISTS `sales_flat_shipment_track` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `track_number` text COMMENT 'Number',
  `description` text COMMENT 'Description',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `carrier_code` varchar(32) DEFAULT NULL COMMENT 'Carrier Code',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_PARENT_ID` (`parent_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_CREATED_AT` (`created_at`),
  CONSTRAINT `FK_BCD2FA28717D29F37E10A153E6F2F841` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Track';

-- Dumping data for table mag.sales_flat_shipment_track: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_shipment_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_shipment_track` ENABLE KEYS */;


-- Dumping structure for table mag.sales_invoiced_aggregated
DROP TABLE IF EXISTS `sales_invoiced_aggregated`;
CREATE TABLE IF NOT EXISTS `sales_invoiced_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_INVOICED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_INVOICED_AGGREGATED_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_INVOICED_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated';

-- Dumping data for table mag.sales_invoiced_aggregated: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_invoiced_aggregated` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_invoiced_aggregated` ENABLE KEYS */;


-- Dumping structure for table mag.sales_invoiced_aggregated_order
DROP TABLE IF EXISTS `sales_invoiced_aggregated_order`;
CREATE TABLE IF NOT EXISTS `sales_invoiced_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_INVOICED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_INVOICED_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_INVOICED_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated Order';

-- Dumping data for table mag.sales_invoiced_aggregated_order: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_invoiced_aggregated_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_invoiced_aggregated_order` ENABLE KEYS */;


-- Dumping structure for table mag.sales_order_aggregated_created
DROP TABLE IF EXISTS `sales_order_aggregated_created`;
CREATE TABLE IF NOT EXISTS `sales_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_ORDER_AGGREGATED_CREATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_ORDER_AGGREGATED_CREATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Created';

-- Dumping data for table mag.sales_order_aggregated_created: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_order_aggregated_created` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_order_aggregated_created` ENABLE KEYS */;


-- Dumping structure for table mag.sales_order_aggregated_updated
DROP TABLE IF EXISTS `sales_order_aggregated_updated`;
CREATE TABLE IF NOT EXISTS `sales_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_ORDER_AGGREGATED_UPDATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_ORDER_AGGREGATED_UPDATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Updated';

-- Dumping data for table mag.sales_order_aggregated_updated: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_order_aggregated_updated` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_order_aggregated_updated` ENABLE KEYS */;


-- Dumping structure for table mag.sales_order_status
DROP TABLE IF EXISTS `sales_order_status`;
CREATE TABLE IF NOT EXISTS `sales_order_status` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

-- Dumping data for table mag.sales_order_status: ~12 rows (approximately)
/*!40000 ALTER TABLE `sales_order_status` DISABLE KEYS */;
INSERT INTO `sales_order_status` (`status`, `label`) VALUES
	('canceled', 'Canceled'),
	('closed', 'Closed'),
	('complete', 'Complete'),
	('fraud', 'Suspected Fraud'),
	('holded', 'On Hold'),
	('payment_review', 'Payment Review'),
	('paypal_canceled_reversal', 'PayPal Canceled Reversal'),
	('paypal_reversed', 'PayPal Reversed'),
	('pending', 'Pending'),
	('pending_payment', 'Pending Payment'),
	('pending_paypal', 'Pending PayPal'),
	('processing', 'Processing');
/*!40000 ALTER TABLE `sales_order_status` ENABLE KEYS */;


-- Dumping structure for table mag.sales_order_status_label
DROP TABLE IF EXISTS `sales_order_status_label`;
CREATE TABLE IF NOT EXISTS `sales_order_status_label` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`,`store_id`),
  KEY `IDX_SALES_ORDER_STATUS_LABEL_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_ORDER_STATUS_LABEL_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_ORDER_STATUS_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Label Table';

-- Dumping data for table mag.sales_order_status_label: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_order_status_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_order_status_label` ENABLE KEYS */;


-- Dumping structure for table mag.sales_order_status_state
DROP TABLE IF EXISTS `sales_order_status_state`;
CREATE TABLE IF NOT EXISTS `sales_order_status_state` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `state` varchar(32) NOT NULL COMMENT 'Label',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  PRIMARY KEY (`status`,`state`),
  CONSTRAINT `FK_SALES_ORDER_STATUS_STATE_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

-- Dumping data for table mag.sales_order_status_state: ~9 rows (approximately)
/*!40000 ALTER TABLE `sales_order_status_state` DISABLE KEYS */;
INSERT INTO `sales_order_status_state` (`status`, `state`, `is_default`) VALUES
	('canceled', 'canceled', 1),
	('closed', 'closed', 1),
	('complete', 'complete', 1),
	('fraud', 'payment_review', 0),
	('holded', 'holded', 1),
	('payment_review', 'payment_review', 1),
	('pending', 'new', 1),
	('pending_payment', 'pending_payment', 1),
	('processing', 'processing', 1);
/*!40000 ALTER TABLE `sales_order_status_state` ENABLE KEYS */;


-- Dumping structure for table mag.sales_order_tax
DROP TABLE IF EXISTS `sales_order_tax`;
CREATE TABLE IF NOT EXISTS `sales_order_tax` (
  `tax_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `percent` decimal(12,4) DEFAULT NULL COMMENT 'Percent',
  `amount` decimal(12,4) DEFAULT NULL COMMENT 'Amount',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `base_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount',
  `process` smallint(6) NOT NULL COMMENT 'Process',
  `base_real_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Real Amount',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Hidden',
  PRIMARY KEY (`tax_id`),
  KEY `IDX_SALES_ORDER_TAX_ORDER_ID_PRIORITY_POSITION` (`order_id`,`priority`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Table';

-- Dumping data for table mag.sales_order_tax: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_order_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_order_tax` ENABLE KEYS */;


-- Dumping structure for table mag.sales_order_tax_item
DROP TABLE IF EXISTS `sales_order_tax_item`;
CREATE TABLE IF NOT EXISTS `sales_order_tax_item` (
  `tax_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Item Id',
  `tax_id` int(10) unsigned NOT NULL COMMENT 'Tax Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `tax_percent` decimal(12,4) NOT NULL COMMENT 'Real Tax Percent For Item',
  PRIMARY KEY (`tax_item_id`),
  UNIQUE KEY `UNQ_SALES_ORDER_TAX_ITEM_TAX_ID_ITEM_ID` (`tax_id`,`item_id`),
  KEY `IDX_SALES_ORDER_TAX_ITEM_TAX_ID` (`tax_id`),
  KEY `IDX_SALES_ORDER_TAX_ITEM_ITEM_ID` (`item_id`),
  CONSTRAINT `FK_SALES_ORDER_TAX_ITEM_ITEM_ID_SALES_FLAT_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `sales_flat_order_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_ORDER_TAX_ITEM_TAX_ID_SALES_ORDER_TAX_TAX_ID` FOREIGN KEY (`tax_id`) REFERENCES `sales_order_tax` (`tax_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Item';

-- Dumping data for table mag.sales_order_tax_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_order_tax_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_order_tax_item` ENABLE KEYS */;


-- Dumping structure for table mag.sales_payment_transaction
DROP TABLE IF EXISTS `sales_payment_transaction`;
CREATE TABLE IF NOT EXISTS `sales_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Transaction Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `payment_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Payment Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `parent_txn_id` varchar(100) DEFAULT NULL COMMENT 'Parent Txn Id',
  `txn_type` varchar(15) DEFAULT NULL COMMENT 'Txn Type',
  `is_closed` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Closed',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `UNQ_SALES_PAYMENT_TRANSACTION_ORDER_ID_PAYMENT_ID_TXN_ID` (`order_id`,`payment_id`,`txn_id`),
  KEY `IDX_SALES_PAYMENT_TRANSACTION_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_PAYMENT_TRANSACTION_PARENT_ID` (`parent_id`),
  KEY `IDX_SALES_PAYMENT_TRANSACTION_PAYMENT_ID` (`payment_id`),
  CONSTRAINT `FK_B99FF1A06402D725EBDB0F3A7ECD47A2` FOREIGN KEY (`parent_id`) REFERENCES `sales_payment_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DA51A10B2405B64A4DAEF77A64F0DAAD` FOREIGN KEY (`payment_id`) REFERENCES `sales_flat_order_payment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_PAYMENT_TRANSACTION_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Payment Transaction';

-- Dumping data for table mag.sales_payment_transaction: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_payment_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_payment_transaction` ENABLE KEYS */;


-- Dumping structure for table mag.sales_recurring_profile
DROP TABLE IF EXISTS `sales_recurring_profile`;
CREATE TABLE IF NOT EXISTS `sales_recurring_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Profile Id',
  `state` varchar(20) NOT NULL COMMENT 'State',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `reference_id` varchar(32) DEFAULT NULL COMMENT 'Reference Id',
  `subscriber_name` varchar(150) DEFAULT NULL COMMENT 'Subscriber Name',
  `start_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Start Datetime',
  `internal_reference_id` varchar(42) NOT NULL COMMENT 'Internal Reference Id',
  `schedule_description` varchar(255) NOT NULL COMMENT 'Schedule Description',
  `suspension_threshold` smallint(5) unsigned DEFAULT NULL COMMENT 'Suspension Threshold',
  `bill_failed_later` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Bill Failed Later',
  `period_unit` varchar(20) NOT NULL COMMENT 'Period Unit',
  `period_frequency` smallint(5) unsigned DEFAULT NULL COMMENT 'Period Frequency',
  `period_max_cycles` smallint(5) unsigned DEFAULT NULL COMMENT 'Period Max Cycles',
  `billing_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Billing Amount',
  `trial_period_unit` varchar(20) DEFAULT NULL COMMENT 'Trial Period Unit',
  `trial_period_frequency` smallint(5) unsigned DEFAULT NULL COMMENT 'Trial Period Frequency',
  `trial_period_max_cycles` smallint(5) unsigned DEFAULT NULL COMMENT 'Trial Period Max Cycles',
  `trial_billing_amount` text COMMENT 'Trial Billing Amount',
  `currency_code` varchar(3) NOT NULL COMMENT 'Currency Code',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `init_amount` decimal(12,4) DEFAULT NULL COMMENT 'Init Amount',
  `init_may_fail` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Init May Fail',
  `order_info` text NOT NULL COMMENT 'Order Info',
  `order_item_info` text NOT NULL COMMENT 'Order Item Info',
  `billing_address_info` text NOT NULL COMMENT 'Billing Address Info',
  `shipping_address_info` text COMMENT 'Shipping Address Info',
  `profile_vendor_info` text COMMENT 'Profile Vendor Info',
  `additional_info` text COMMENT 'Additional Info',
  PRIMARY KEY (`profile_id`),
  UNIQUE KEY `UNQ_SALES_RECURRING_PROFILE_INTERNAL_REFERENCE_ID` (`internal_reference_id`),
  KEY `IDX_SALES_RECURRING_PROFILE_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_SALES_RECURRING_PROFILE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_RECURRING_PROFILE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_RECURRING_PROFILE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Recurring Profile';

-- Dumping data for table mag.sales_recurring_profile: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_recurring_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_recurring_profile` ENABLE KEYS */;


-- Dumping structure for table mag.sales_recurring_profile_order
DROP TABLE IF EXISTS `sales_recurring_profile_order`;
CREATE TABLE IF NOT EXISTS `sales_recurring_profile_order` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_SALES_RECURRING_PROFILE_ORDER_PROFILE_ID_ORDER_ID` (`profile_id`,`order_id`),
  KEY `IDX_SALES_RECURRING_PROFILE_ORDER_ORDER_ID` (`order_id`),
  CONSTRAINT `FK_7FF85741C66DCD37A4FBE3E3255A5A01` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_B8A7A5397B67455786E55461748C59F4` FOREIGN KEY (`profile_id`) REFERENCES `sales_recurring_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Recurring Profile Order';

-- Dumping data for table mag.sales_recurring_profile_order: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_recurring_profile_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_recurring_profile_order` ENABLE KEYS */;


-- Dumping structure for table mag.sales_refunded_aggregated
DROP TABLE IF EXISTS `sales_refunded_aggregated`;
CREATE TABLE IF NOT EXISTS `sales_refunded_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_REFUNDED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_REFUNDED_AGGREGATED_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_REFUNDED_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated';

-- Dumping data for table mag.sales_refunded_aggregated: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_refunded_aggregated` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_refunded_aggregated` ENABLE KEYS */;


-- Dumping structure for table mag.sales_refunded_aggregated_order
DROP TABLE IF EXISTS `sales_refunded_aggregated_order`;
CREATE TABLE IF NOT EXISTS `sales_refunded_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_REFUNDED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated Order';

-- Dumping data for table mag.sales_refunded_aggregated_order: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_refunded_aggregated_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_refunded_aggregated_order` ENABLE KEYS */;


-- Dumping structure for table mag.sales_shipping_aggregated
DROP TABLE IF EXISTS `sales_shipping_aggregated`;
CREATE TABLE IF NOT EXISTS `sales_shipping_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_SHPP_AGGRED_PERIOD_STORE_ID_ORDER_STS_SHPP_DESCRIPTION` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `IDX_SALES_SHIPPING_AGGREGATED_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_SHIPPING_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated';

-- Dumping data for table mag.sales_shipping_aggregated: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_shipping_aggregated` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_shipping_aggregated` ENABLE KEYS */;


-- Dumping structure for table mag.sales_shipping_aggregated_order
DROP TABLE IF EXISTS `sales_shipping_aggregated_order`;
CREATE TABLE IF NOT EXISTS `sales_shipping_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `C05FAE47282EEA68654D0924E946761F` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `IDX_SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated Order';

-- Dumping data for table mag.sales_shipping_aggregated_order: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_shipping_aggregated_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_shipping_aggregated_order` ENABLE KEYS */;


-- Dumping structure for table mag.sendfriend_log
DROP TABLE IF EXISTS `sendfriend_log`;
CREATE TABLE IF NOT EXISTS `sendfriend_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer IP address',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log time',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`log_id`),
  KEY `IDX_SENDFRIEND_LOG_IP` (`ip`),
  KEY `IDX_SENDFRIEND_LOG_TIME` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Send to friend function log storage table';

-- Dumping data for table mag.sendfriend_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `sendfriend_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sendfriend_log` ENABLE KEYS */;


-- Dumping structure for table mag.shipping_tablerate
DROP TABLE IF EXISTS `shipping_tablerate`;
CREATE TABLE IF NOT EXISTS `shipping_tablerate` (
  `pk` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `website_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Destination coutry ISO/2 or ISO/3 code',
  `dest_region_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Destination Region Id',
  `dest_zip` varchar(10) NOT NULL DEFAULT '*' COMMENT 'Destination Post Code (Zip)',
  `condition_name` varchar(20) NOT NULL COMMENT 'Rate Condition name',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rate condition value',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cost',
  PRIMARY KEY (`pk`),
  UNIQUE KEY `D60821CDB2AFACEE1566CFC02D0D4CAA` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shipping Tablerate';

-- Dumping data for table mag.shipping_tablerate: ~0 rows (approximately)
/*!40000 ALTER TABLE `shipping_tablerate` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_tablerate` ENABLE KEYS */;


-- Dumping structure for table mag.sitemap
DROP TABLE IF EXISTS `sitemap`;
CREATE TABLE IF NOT EXISTS `sitemap` (
  `sitemap_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sitemap Id',
  `sitemap_type` varchar(32) DEFAULT NULL COMMENT 'Sitemap Type',
  `sitemap_filename` varchar(32) DEFAULT NULL COMMENT 'Sitemap Filename',
  `sitemap_path` varchar(255) DEFAULT NULL COMMENT 'Sitemap Path',
  `sitemap_time` timestamp NULL DEFAULT NULL COMMENT 'Sitemap Time',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`sitemap_id`),
  KEY `IDX_SITEMAP_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SITEMAP_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Sitemap';

-- Dumping data for table mag.sitemap: ~0 rows (approximately)
/*!40000 ALTER TABLE `sitemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `sitemap` ENABLE KEYS */;


-- Dumping structure for table mag.tag
DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tag Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Status',
  `first_customer_id` int(10) unsigned DEFAULT NULL COMMENT 'First Customer Id',
  `first_store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'First Store Id',
  PRIMARY KEY (`tag_id`),
  KEY `FK_TAG_FIRST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`first_customer_id`),
  KEY `FK_TAG_FIRST_STORE_ID_CORE_STORE_STORE_ID` (`first_store_id`),
  CONSTRAINT `FK_TAG_FIRST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`first_customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `FK_TAG_FIRST_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`first_store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag';

-- Dumping data for table mag.tag: ~0 rows (approximately)
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;


-- Dumping structure for table mag.tag_properties
DROP TABLE IF EXISTS `tag_properties`;
CREATE TABLE IF NOT EXISTS `tag_properties` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `base_popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Base Popularity',
  PRIMARY KEY (`tag_id`,`store_id`),
  KEY `IDX_TAG_PROPERTIES_STORE_ID` (`store_id`),
  CONSTRAINT `FK_TAG_PROPERTIES_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TAG_PROPERTIES_TAG_ID_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Properties';

-- Dumping data for table mag.tag_properties: ~0 rows (approximately)
/*!40000 ALTER TABLE `tag_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_properties` ENABLE KEYS */;


-- Dumping structure for table mag.tag_relation
DROP TABLE IF EXISTS `tag_relation`;
CREATE TABLE IF NOT EXISTS `tag_relation` (
  `tag_relation_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tag Relation Id',
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Store Id',
  `active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Active',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`tag_relation_id`),
  UNIQUE KEY `UNQ_TAG_RELATION_TAG_ID_CUSTOMER_ID_PRODUCT_ID_STORE_ID` (`tag_id`,`customer_id`,`product_id`,`store_id`),
  KEY `IDX_TAG_RELATION_PRODUCT_ID` (`product_id`),
  KEY `IDX_TAG_RELATION_TAG_ID` (`tag_id`),
  KEY `IDX_TAG_RELATION_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_TAG_RELATION_STORE_ID` (`store_id`),
  CONSTRAINT `FK_TAG_RELATION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TAG_RELATION_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TAG_RELATION_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TAG_RELATION_TAG_ID_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Relation';

-- Dumping data for table mag.tag_relation: ~0 rows (approximately)
/*!40000 ALTER TABLE `tag_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_relation` ENABLE KEYS */;


-- Dumping structure for table mag.tag_summary
DROP TABLE IF EXISTS `tag_summary`;
CREATE TABLE IF NOT EXISTS `tag_summary` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `customers` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customers',
  `products` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Products',
  `uses` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Uses',
  `historical_uses` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Historical Uses',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `base_popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Base Popularity',
  PRIMARY KEY (`tag_id`,`store_id`),
  KEY `IDX_TAG_SUMMARY_STORE_ID` (`store_id`),
  KEY `IDX_TAG_SUMMARY_TAG_ID` (`tag_id`),
  CONSTRAINT `FK_TAG_SUMMARY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TAG_SUMMARY_TAG_ID_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Summary';

-- Dumping data for table mag.tag_summary: ~0 rows (approximately)
/*!40000 ALTER TABLE `tag_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_summary` ENABLE KEYS */;


-- Dumping structure for table mag.tax_calculation
DROP TABLE IF EXISTS `tax_calculation`;
CREATE TABLE IF NOT EXISTS `tax_calculation` (
  `tax_calculation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `customer_tax_class_id` smallint(6) NOT NULL COMMENT 'Customer Tax Class Id',
  `product_tax_class_id` smallint(6) NOT NULL COMMENT 'Product Tax Class Id',
  PRIMARY KEY (`tax_calculation_id`),
  KEY `IDX_TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`),
  KEY `IDX_TAX_CALCULATION_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`),
  KEY `IDX_TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID` (`customer_tax_class_id`),
  KEY `IDX_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`product_tax_class_id`),
  KEY `IDX_TAX_CALC_TAX_CALC_RATE_ID_CSTR_TAX_CLASS_ID_PRD_TAX_CLASS_ID` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`),
  CONSTRAINT `FK_TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`product_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TAX_CALC_TAX_CALC_RATE_ID_TAX_CALC_RATE_TAX_CALC_RATE_ID` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TAX_CALC_TAX_CALC_RULE_ID_TAX_CALC_RULE_TAX_CALC_RULE_ID` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Tax Calculation';

-- Dumping data for table mag.tax_calculation: ~1 rows (approximately)
/*!40000 ALTER TABLE `tax_calculation` DISABLE KEYS */;
INSERT INTO `tax_calculation` (`tax_calculation_id`, `tax_calculation_rate_id`, `tax_calculation_rule_id`, `customer_tax_class_id`, `product_tax_class_id`) VALUES
	(1, 1, 1, 3, 5);
/*!40000 ALTER TABLE `tax_calculation` ENABLE KEYS */;


-- Dumping structure for table mag.tax_calculation_rate
DROP TABLE IF EXISTS `tax_calculation_rate`;
CREATE TABLE IF NOT EXISTS `tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Id',
  `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country Id',
  `tax_region_id` int(11) NOT NULL COMMENT 'Tax Region Id',
  `tax_postcode` varchar(21) DEFAULT NULL COMMENT 'Tax Postcode',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `rate` decimal(12,4) NOT NULL COMMENT 'Rate',
  `zip_is_range` smallint(6) DEFAULT NULL COMMENT 'Zip Is Range',
  `zip_from` int(10) unsigned DEFAULT NULL COMMENT 'Zip From',
  `zip_to` int(10) unsigned DEFAULT NULL COMMENT 'Zip To',
  PRIMARY KEY (`tax_calculation_rate_id`),
  KEY `IDX_TAX_CALC_RATE_TAX_COUNTRY_ID_TAX_REGION_ID_TAX_POSTCODE` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  KEY `IDX_TAX_CALCULATION_RATE_CODE` (`code`),
  KEY `CA799F1E2CB843495F601E56C84A626D` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate';

-- Dumping data for table mag.tax_calculation_rate: ~1 rows (approximately)
/*!40000 ALTER TABLE `tax_calculation_rate` DISABLE KEYS */;
INSERT INTO `tax_calculation_rate` (`tax_calculation_rate_id`, `tax_country_id`, `tax_region_id`, `tax_postcode`, `code`, `rate`, `zip_is_range`, `zip_from`, `zip_to`) VALUES
	(1, 'US', 0, '*', 'US--*-Taxable Goods', 0.0000, NULL, NULL, NULL);
/*!40000 ALTER TABLE `tax_calculation_rate` ENABLE KEYS */;


-- Dumping structure for table mag.tax_calculation_rate_title
DROP TABLE IF EXISTS `tax_calculation_rate_title`;
CREATE TABLE IF NOT EXISTS `tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Title Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`tax_calculation_rate_title_id`),
  KEY `IDX_TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID_STORE_ID` (`tax_calculation_rate_id`,`store_id`),
  KEY `IDX_TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`),
  KEY `IDX_TAX_CALCULATION_RATE_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_37FB965F786AD5897BB3AE90470C42AB` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TAX_CALCULATION_RATE_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate Title';

-- Dumping data for table mag.tax_calculation_rate_title: ~0 rows (approximately)
/*!40000 ALTER TABLE `tax_calculation_rate_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax_calculation_rate_title` ENABLE KEYS */;


-- Dumping structure for table mag.tax_calculation_rule
DROP TABLE IF EXISTS `tax_calculation_rule`;
CREATE TABLE IF NOT EXISTS `tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `calculate_subtotal` int(11) NOT NULL COMMENT 'Calculate off subtotal option',
  PRIMARY KEY (`tax_calculation_rule_id`),
  KEY `IDX_TAX_CALC_RULE_PRIORITY_POSITION_TAX_CALC_RULE_ID` (`priority`,`position`,`tax_calculation_rule_id`),
  KEY `IDX_TAX_CALCULATION_RULE_CODE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rule';

-- Dumping data for table mag.tax_calculation_rule: ~1 rows (approximately)
/*!40000 ALTER TABLE `tax_calculation_rule` DISABLE KEYS */;
INSERT INTO `tax_calculation_rule` (`tax_calculation_rule_id`, `code`, `priority`, `position`, `calculate_subtotal`) VALUES
	(1, 'Taxable Goods-Rate 1', 1, 0, 0);
/*!40000 ALTER TABLE `tax_calculation_rule` ENABLE KEYS */;


-- Dumping structure for table mag.tax_class
DROP TABLE IF EXISTS `tax_class`;
CREATE TABLE IF NOT EXISTS `tax_class` (
  `class_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Class Id',
  `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
  `class_type` varchar(8) NOT NULL DEFAULT 'CUSTOMER' COMMENT 'Class Type',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Tax Class';

-- Dumping data for table mag.tax_class: ~2 rows (approximately)
/*!40000 ALTER TABLE `tax_class` DISABLE KEYS */;
INSERT INTO `tax_class` (`class_id`, `class_name`, `class_type`) VALUES
	(3, 'Retail Customer', 'CUSTOMER'),
	(5, 'Taxable Goods', 'PRODUCT');
/*!40000 ALTER TABLE `tax_class` ENABLE KEYS */;


-- Dumping structure for table mag.tax_order_aggregated_created
DROP TABLE IF EXISTS `tax_order_aggregated_created`;
CREATE TABLE IF NOT EXISTS `tax_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `FCA5E2C02689EB2641B30580D7AACF12` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `IDX_TAX_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`),
  CONSTRAINT `FK_TAX_ORDER_AGGREGATED_CREATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregation';

-- Dumping data for table mag.tax_order_aggregated_created: ~0 rows (approximately)
/*!40000 ALTER TABLE `tax_order_aggregated_created` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax_order_aggregated_created` ENABLE KEYS */;


-- Dumping structure for table mag.tax_order_aggregated_updated
DROP TABLE IF EXISTS `tax_order_aggregated_updated`;
CREATE TABLE IF NOT EXISTS `tax_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `DB0AF14011199AA6CD31D5078B90AA8D` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `IDX_TAX_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  CONSTRAINT `FK_TAX_ORDER_AGGREGATED_UPDATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregated Updated';

-- Dumping data for table mag.tax_order_aggregated_updated: ~0 rows (approximately)
/*!40000 ALTER TABLE `tax_order_aggregated_updated` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax_order_aggregated_updated` ENABLE KEYS */;


-- Dumping structure for table mag.weee_discount
DROP TABLE IF EXISTS `weee_discount`;
CREATE TABLE IF NOT EXISTS `weee_discount` (
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  KEY `IDX_WEEE_DISCOUNT_WEBSITE_ID` (`website_id`),
  KEY `IDX_WEEE_DISCOUNT_ENTITY_ID` (`entity_id`),
  KEY `IDX_WEEE_DISCOUNT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  CONSTRAINT `FK_WEEE_DISCOUNT_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_WEEE_DISCOUNT_ENTITY_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_WEEE_DISCOUNT_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Discount';

-- Dumping data for table mag.weee_discount: ~0 rows (approximately)
/*!40000 ALTER TABLE `weee_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `weee_discount` ENABLE KEYS */;


-- Dumping structure for table mag.weee_tax
DROP TABLE IF EXISTS `weee_tax`;
CREATE TABLE IF NOT EXISTS `weee_tax` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `country` varchar(2) DEFAULT NULL COMMENT 'Country',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `state` varchar(255) NOT NULL DEFAULT '*' COMMENT 'State',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`value_id`),
  KEY `IDX_WEEE_TAX_WEBSITE_ID` (`website_id`),
  KEY `IDX_WEEE_TAX_ENTITY_ID` (`entity_id`),
  KEY `IDX_WEEE_TAX_COUNTRY` (`country`),
  KEY `IDX_WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `FK_WEEE_TAX_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_WEEE_TAX_COUNTRY_DIRECTORY_COUNTRY_COUNTRY_ID` FOREIGN KEY (`country`) REFERENCES `directory_country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_WEEE_TAX_ENTITY_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_WEEE_TAX_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Tax';

-- Dumping data for table mag.weee_tax: ~0 rows (approximately)
/*!40000 ALTER TABLE `weee_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `weee_tax` ENABLE KEYS */;


-- Dumping structure for table mag.widget
DROP TABLE IF EXISTS `widget`;
CREATE TABLE IF NOT EXISTS `widget` (
  `widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Widget Id',
  `widget_code` varchar(255) DEFAULT NULL COMMENT 'Widget code for template directive',
  `widget_type` varchar(255) DEFAULT NULL COMMENT 'Widget Type',
  `parameters` text COMMENT 'Parameters',
  PRIMARY KEY (`widget_id`),
  KEY `IDX_WIDGET_WIDGET_CODE` (`widget_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets';

-- Dumping data for table mag.widget: ~0 rows (approximately)
/*!40000 ALTER TABLE `widget` DISABLE KEYS */;
/*!40000 ALTER TABLE `widget` ENABLE KEYS */;


-- Dumping structure for table mag.widget_instance
DROP TABLE IF EXISTS `widget_instance`;
CREATE TABLE IF NOT EXISTS `widget_instance` (
  `instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Instance Id',
  `instance_type` varchar(255) DEFAULT NULL COMMENT 'Instance Type',
  `package_theme` varchar(255) DEFAULT NULL COMMENT 'Package Theme',
  `title` varchar(255) DEFAULT NULL COMMENT 'Widget Title',
  `store_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Store ids',
  `widget_parameters` text COMMENT 'Widget parameters',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instances of Widget for Package Theme';

-- Dumping data for table mag.widget_instance: ~0 rows (approximately)
/*!40000 ALTER TABLE `widget_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `widget_instance` ENABLE KEYS */;


-- Dumping structure for table mag.widget_instance_page
DROP TABLE IF EXISTS `widget_instance_page`;
CREATE TABLE IF NOT EXISTS `widget_instance_page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Page Id',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Id',
  `page_group` varchar(25) DEFAULT NULL COMMENT 'Block Group Type',
  `layout_handle` varchar(255) DEFAULT NULL COMMENT 'Layout Handle',
  `block_reference` varchar(255) DEFAULT NULL COMMENT 'Block Reference',
  `page_for` varchar(25) DEFAULT NULL COMMENT 'For instance entities',
  `entities` text COMMENT 'Catalog entities (comma separated)',
  `page_template` varchar(255) DEFAULT NULL COMMENT 'Path to widget template',
  PRIMARY KEY (`page_id`),
  KEY `IDX_WIDGET_INSTANCE_PAGE_INSTANCE_ID` (`instance_id`),
  CONSTRAINT `FK_WIDGET_INSTANCE_PAGE_INSTANCE_ID_WIDGET_INSTANCE_INSTANCE_ID` FOREIGN KEY (`instance_id`) REFERENCES `widget_instance` (`instance_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instance of Widget on Page';

-- Dumping data for table mag.widget_instance_page: ~0 rows (approximately)
/*!40000 ALTER TABLE `widget_instance_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `widget_instance_page` ENABLE KEYS */;


-- Dumping structure for table mag.widget_instance_page_layout
DROP TABLE IF EXISTS `widget_instance_page_layout`;
CREATE TABLE IF NOT EXISTS `widget_instance_page_layout` (
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page Id',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  UNIQUE KEY `UNQ_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID_PAGE_ID` (`layout_update_id`,`page_id`),
  KEY `IDX_WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID` (`page_id`),
  KEY `IDX_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID` (`layout_update_id`),
  CONSTRAINT `FK_0A5D06DCEC6A6845F50E5FAAC5A1C96D` FOREIGN KEY (`layout_update_id`) REFERENCES `core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_WIDGET_INSTANCE_PAGE_LYT_PAGE_ID_WIDGET_INSTANCE_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `widget_instance_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout updates';

-- Dumping data for table mag.widget_instance_page_layout: ~0 rows (approximately)
/*!40000 ALTER TABLE `widget_instance_page_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `widget_instance_page_layout` ENABLE KEYS */;


-- Dumping structure for table mag.wishlist
DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `wishlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist ID',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `shared` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sharing flag (0 or 1)',
  `sharing_code` varchar(32) DEFAULT NULL COMMENT 'Sharing encrypted code',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Last updated date',
  PRIMARY KEY (`wishlist_id`),
  UNIQUE KEY `UNQ_WISHLIST_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_WISHLIST_SHARED` (`shared`),
  CONSTRAINT `FK_WISHLIST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist main Table';

-- Dumping data for table mag.wishlist: ~0 rows (approximately)
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;


-- Dumping structure for table mag.wishlist_item
DROP TABLE IF EXISTS `wishlist_item`;
CREATE TABLE IF NOT EXISTS `wishlist_item` (
  `wishlist_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist item ID',
  `wishlist_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Wishlist ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Add date and time',
  `description` text COMMENT 'Short description of wish list item',
  `qty` decimal(12,4) NOT NULL COMMENT 'Qty',
  PRIMARY KEY (`wishlist_item_id`),
  KEY `IDX_WISHLIST_ITEM_WISHLIST_ID` (`wishlist_id`),
  KEY `IDX_WISHLIST_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_WISHLIST_ITEM_STORE_ID` (`store_id`),
  CONSTRAINT `FK_WISHLIST_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_WISHLIST_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_WISHLIST_ITEM_WISHLIST_ID_WISHLIST_WISHLIST_ID` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlist` (`wishlist_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist items';

-- Dumping data for table mag.wishlist_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `wishlist_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist_item` ENABLE KEYS */;


-- Dumping structure for table mag.wishlist_item_option
DROP TABLE IF EXISTS `wishlist_item_option`;
CREATE TABLE IF NOT EXISTS `wishlist_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `wishlist_item_id` int(10) unsigned NOT NULL COMMENT 'Wishlist Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `FK_A014B30B04B72DD0EAB3EECD779728D6` (`wishlist_item_id`),
  CONSTRAINT `FK_A014B30B04B72DD0EAB3EECD779728D6` FOREIGN KEY (`wishlist_item_id`) REFERENCES `wishlist_item` (`wishlist_item_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist Item Option Table';

-- Dumping data for table mag.wishlist_item_option: ~0 rows (approximately)
/*!40000 ALTER TABLE `wishlist_item_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist_item_option` ENABLE KEYS */;


-- Dumping structure for table mag.xmlconnect_application
DROP TABLE IF EXISTS `xmlconnect_application`;
CREATE TABLE IF NOT EXISTS `xmlconnect_application` (
  `application_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Application Id',
  `name` varchar(255) NOT NULL COMMENT 'Application Name',
  `code` varchar(32) NOT NULL COMMENT 'Application Code',
  `type` varchar(32) NOT NULL COMMENT 'Device Type',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `active_from` date DEFAULT NULL COMMENT 'Active From',
  `active_to` date DEFAULT NULL COMMENT 'Active To',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  `browsing_mode` smallint(5) unsigned DEFAULT '0' COMMENT 'Browsing Mode',
  PRIMARY KEY (`application_id`),
  UNIQUE KEY `UNQ_XMLCONNECT_APPLICATION_CODE` (`code`),
  KEY `FK_XMLCONNECT_APPLICATION_STORE_ID_CORE_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_XMLCONNECT_APPLICATION_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Application';

-- Dumping data for table mag.xmlconnect_application: ~0 rows (approximately)
/*!40000 ALTER TABLE `xmlconnect_application` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmlconnect_application` ENABLE KEYS */;


-- Dumping structure for table mag.xmlconnect_config_data
DROP TABLE IF EXISTS `xmlconnect_config_data`;
CREATE TABLE IF NOT EXISTS `xmlconnect_config_data` (
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  `category` varchar(60) NOT NULL DEFAULT 'default' COMMENT 'Category',
  `path` varchar(250) NOT NULL COMMENT 'Path',
  `value` text NOT NULL COMMENT 'Value',
  UNIQUE KEY `UNQ_XMLCONNECT_CONFIG_DATA_APPLICATION_ID_CATEGORY_PATH` (`application_id`,`category`,`path`),
  CONSTRAINT `FK_31EE36D814216200D7C0723145AC510E` FOREIGN KEY (`application_id`) REFERENCES `xmlconnect_application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Configuration Data';

-- Dumping data for table mag.xmlconnect_config_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `xmlconnect_config_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmlconnect_config_data` ENABLE KEYS */;


-- Dumping structure for table mag.xmlconnect_history
DROP TABLE IF EXISTS `xmlconnect_history`;
CREATE TABLE IF NOT EXISTS `xmlconnect_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History Id',
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `params` blob COMMENT 'Params',
  `title` varchar(200) NOT NULL COMMENT 'Title',
  `activation_key` varchar(255) NOT NULL COMMENT 'Activation Key',
  `name` varchar(255) NOT NULL COMMENT 'Application Name',
  `code` varchar(32) NOT NULL COMMENT 'Application Code',
  PRIMARY KEY (`history_id`),
  KEY `FK_8F08B9513373BC19F49EE3EF8340E270` (`application_id`),
  CONSTRAINT `FK_8F08B9513373BC19F49EE3EF8340E270` FOREIGN KEY (`application_id`) REFERENCES `xmlconnect_application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect History';

-- Dumping data for table mag.xmlconnect_history: ~0 rows (approximately)
/*!40000 ALTER TABLE `xmlconnect_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmlconnect_history` ENABLE KEYS */;


-- Dumping structure for table mag.xmlconnect_images
DROP TABLE IF EXISTS `xmlconnect_images`;
CREATE TABLE IF NOT EXISTS `xmlconnect_images` (
  `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Image Id',
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  `image_file` varchar(255) NOT NULL COMMENT 'Image File',
  `image_type` varchar(255) NOT NULL COMMENT 'Image Type',
  `order` int(10) unsigned NOT NULL COMMENT 'Order',
  PRIMARY KEY (`image_id`),
  KEY `FK_6C55A623A089E4FEA9201FFE01693167` (`application_id`),
  CONSTRAINT `FK_6C55A623A089E4FEA9201FFE01693167` FOREIGN KEY (`application_id`) REFERENCES `xmlconnect_application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Images';

-- Dumping data for table mag.xmlconnect_images: ~0 rows (approximately)
/*!40000 ALTER TABLE `xmlconnect_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmlconnect_images` ENABLE KEYS */;


-- Dumping structure for table mag.xmlconnect_notification_template
DROP TABLE IF EXISTS `xmlconnect_notification_template`;
CREATE TABLE IF NOT EXISTS `xmlconnect_notification_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `name` varchar(255) NOT NULL COMMENT 'Template Name',
  `push_title` varchar(140) NOT NULL COMMENT 'Push Notification Title',
  `message_title` varchar(255) NOT NULL COMMENT 'Message Title',
  `content` text NOT NULL COMMENT 'Message Content',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  PRIMARY KEY (`template_id`),
  KEY `FK_F9927C7518A907CF5C350942FD296DC3` (`application_id`),
  CONSTRAINT `FK_F9927C7518A907CF5C350942FD296DC3` FOREIGN KEY (`application_id`) REFERENCES `xmlconnect_application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Notification Template';

-- Dumping data for table mag.xmlconnect_notification_template: ~0 rows (approximately)
/*!40000 ALTER TABLE `xmlconnect_notification_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmlconnect_notification_template` ENABLE KEYS */;


-- Dumping structure for table mag.xmlconnect_queue
DROP TABLE IF EXISTS `xmlconnect_queue`;
CREATE TABLE IF NOT EXISTS `xmlconnect_queue` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `exec_time` timestamp NULL DEFAULT NULL COMMENT 'Scheduled Execution Time',
  `template_id` int(10) unsigned NOT NULL COMMENT 'Template Id',
  `push_title` varchar(140) NOT NULL COMMENT 'Push Notification Title',
  `message_title` varchar(255) DEFAULT '' COMMENT 'Message Title',
  `content` text COMMENT 'Message Content',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  `type` varchar(12) NOT NULL COMMENT 'Type of Notification',
  PRIMARY KEY (`queue_id`),
  KEY `FK_2019AEC5FC55A516965583447CA26B14` (`template_id`),
  CONSTRAINT `FK_2019AEC5FC55A516965583447CA26B14` FOREIGN KEY (`template_id`) REFERENCES `xmlconnect_notification_template` (`template_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Notification Queue';

-- Dumping data for table mag.xmlconnect_queue: ~0 rows (approximately)
/*!40000 ALTER TABLE `xmlconnect_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmlconnect_queue` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
