/*
 Navicat MySQL Data Transfer

 Source Server         : VPS - Web Server
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : 54.36.152.180:3306
 Source Schema         : zjx_forum

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 28/05/2018 22:42:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for smf_admin_info_files
-- ----------------------------
DROP TABLE IF EXISTS `smf_admin_info_files`;
CREATE TABLE `smf_admin_info_files` (
  `id_file` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `parameters` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `filetype` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_file`),
  KEY `filename` (`filename`(30))
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of smf_admin_info_files
-- ----------------------------
BEGIN;
INSERT INTO `smf_admin_info_files` VALUES (1, 'current-version.js', '/smf/', 'version=%3$s', 'window.smfVersion = \"SMF 2.0.15\";', 'text/javascript');
INSERT INTO `smf_admin_info_files` VALUES (2, 'detailed-version.js', '/smf/', 'language=%1$s&version=%3$s', 'window.smfVersions = {\n	\'SMF\': \'SMF 2.0.14\',\n	\'SourcesAdmin.php\': \'2.0.12\',\n	\'SourcesBoardIndex.php\': \'2.0\',\n	\'SourcesCalendar.php\': \'2.0.12\',\n	\'SourcesClass-CurlFetchWeb.php\': \'2.0.15\',\n	\'SourcesClass-Graphics.php\': \'2.0\',\n	\'SourcesClass-Package.php\': \'2.0.8\',\n	\'SourcesDbExtra-mysql.php\': \'2.0.15\',\n	\'SourcesDbExtra-postgresql.php\': \'2.0.15\',\n	\'SourcesDbExtra-sqlite.php\': \'2.0.15\',\n	\'SourcesDbPackages-mysql.php\': \'2.0.15\',\n	\'SourcesDbPackages-postgresql.php\': \'2.0.10\',\n	\'SourcesDbPackages-sqlite.php\': \'2.0\',\n	\'SourcesDbSearch-mysql.php\': \'2.0\',\n	\'SourcesDbSearch-postgresql.php\': \'2.0.7\',\n	\'SourcesDbSearch-sqlite.php\': \'2.0.7\',\n	\'SourcesDisplay.php\': \'2.0.12\',\n	\'SourcesDumpDatabase.php\': \'2.0\',\n	\'SourcesErrors.php\': \'2.0.4\',\n	\'SourcesGroups.php\': \'2.0\',\n	\'SourcesHelp.php\': \'2.0\',\n	\'SourcesKarma.php\': \'2.0\',\n	\'SourcesLoad.php\': \'2.0.14\',\n	\'SourcesLockTopic.php\': \'2.0\',\n	\'SourcesLogInOut.php\': \'2.0.14\',\n	\'SourcesManageAttachments.php\': \'2.0.12\',\n	\'SourcesManageBans.php\': \'2.0\',\n	\'SourcesManageBoards.php\': \'2.0\',\n	\'SourcesManageCalendar.php\': \'2.0\',\n	\'SourcesManageErrors.php\': \'2.0.4\',\n	\'SourcesManageMail.php\': \'2.0\',\n	\'SourcesManageMaintenance.php\': \'2.0.7\',\n	\'SourcesManageMembergroups.php\': \'2.0.7\',\n	\'SourcesManageMembers.php\': \'2.0.15\',\n	\'SourcesManageNews.php\': \'2.0.14\',\n	\'SourcesManagePaid.php\': \'2.0.12\',\n	\'SourcesManagePermissions.php\': \'2.0\',\n	\'SourcesManagePosts.php\': \'2.0.12\',\n	\'SourcesManageRegistration.php\': \'2.0\',\n	\'SourcesManageScheduledTasks.php\': \'2.0\',\n	\'SourcesManageSearch.php\': \'2.0.12\',\n	\'SourcesManageSearchEngines.php\': \'2.0\',\n	\'SourcesManageServer.php\': \'2.0.15\',\n	\'SourcesManageSettings.php\': \'2.0.14\',\n	\'SourcesManageSmileys.php\': \'2.0\',\n	\'SourcesMemberlist.php\': \'2.0.12\',\n	\'SourcesMessageIndex.php\': \'2.0.2\',\n	\'SourcesModerationCenter.php\': \'2.0.12\',\n	\'SourcesModlog.php\': \'2.0.12\',\n	\'SourcesMoveTopic.php\': \'2.0\',\n	\'SourcesNews.php\': \'2.0.8\',\n	\'SourcesNotify.php\': \'2.0\',\n	\'SourcesPackageGet.php\': \'2.0.13\',\n	\'SourcesPackages.php\': \'2.0.12\',\n	\'SourcesPersonalMessage.php\': \'2.0.15\',\n	\'SourcesPoll.php\': \'2.0.14\',\n	\'SourcesPost.php\': \'2.0.14\',\n	\'SourcesPostModeration.php\': \'2.0\',\n	\'SourcesPrintpage.php\': \'2.0\',\n	\'SourcesProfile.php\': \'2.0.14\',\n	\'SourcesProfile-Actions.php\': \'2.0.14\',\n	\'SourcesProfile-Modify.php\': \'2.0.14\',\n	\'SourcesProfile-View.php\': \'2.0.14\',\n	\'SourcesQueryString.php\': \'2.0.9\',\n	\'SourcesRecent.php\': \'2.0\',\n	\'SourcesRegister.php\': \'2.0.14\',\n	\'SourcesReminder.php\': \'2.0.14\',\n	\'SourcesRemoveTopic.php\': \'2.0.12\',\n	\'SourcesRepairBoards.php\': \'2.0\',\n	\'SourcesReports.php\': \'2.0\',\n	\'SourcesSSI.php\': \'2.0.10\',\n	\'SourcesScheduledTasks.php\': \'2.0.14\',\n	\'SourcesSearch.php\': \'2.0.9\',\n	\'SourcesSearchAPI-Custom.php\': \'2.0.15\',\n	\'SourcesSearchAPI-Fulltext.php\': \'2.0.15\',\n	\'SourcesSearchAPI-Standard.php\': \'2.0\',\n	\'SourcesSecurity.php\': \'2.0.3\',\n	\'SourcesSendTopic.php\': \'2.0.15\',\n	\'SourcesSplitTopics.php\': \'2.0.14\',\n	\'SourcesStats.php\': \'2.0.15\',\n	\'SourcesSubs.php\': \'2.0.14\',\n	\'SourcesSubs-Admin.php\': \'2.0.15\',\n	\'SourcesSubs-Auth.php\': \'2.0.15\',\n	\'SourcesSubs-BoardIndex.php\': \'2.0\',\n	\'SourcesSubs-Boards.php\': \'2.0.15\',\n	\'SourcesSubs-Calendar.php\': \'2.0\',\n	\'SourcesSubs-Categories.php\' : \'2.0\',\n	\'SourcesSubs-Charset.php\' : \'2.0.12\',\n	\'SourcesSubs-Compat.php\': \'2.0\',\n	\'SourcesSubs-Db-mysql.php\': \'2.0.14\',\n	\'SourcesSubs-Db-postgresql.php\': \'2.0.4\',\n	\'SourcesSubs-Db-sqlite.php\': \'2.0\',\n	\'SourcesSubs-Editor.php\': \'2.0.11\',\n	\'SourcesSubs-Graphics.php\': \'2.0.12\',\n	\'SourcesSubs-List.php\': \'2.0\',\n	\'SourcesSubs-Membergroups.php\': \'2.0\',\n	\'SourcesSubs-Members.php\': \'2.0.14\',\n	\'SourcesSubs-MembersOnline.php\': \'2.0.12\',\n	\'SourcesSubs-Menu.php\': \'2.0.12\',\n	\'SourcesSubs-MessageIndex.php\': \'2.0\',\n	\'SourcesSubs-OpenID.php\': \'2.0.11\',\n	\'SourcesSubs-Package.php\': \'2.0.14\',\n	\'SourcesSubs-Post.php\': \'2.0.14\',\n	\'SourcesSubs-Recent.php\': \'2.0\',\n	\'SourcesSubscriptions-PayPal.php\': \'2.0.12\',\n	\'Sourcessubscriptions.php\': \'2.0.12\',\n	\'SourcesSubs-Sound.php\': \'2.0\',\n	\'SourcesThemes.php\': \'2.0.13\',\n	\'SourcesViewQuery.php\': \'2.0\',\n	\'SourcesWho.php\': \'2.0.12\',\n	\'SourcesXml.php\': \'2.0\',\n	\'DefaultAdmin.template.php\': \'2.0\',\n	\'DefaultBoardIndex.template.php\': \'2.0\',\n	\'DefaultCalendar.template.php\': \'2.0\',\n	\'DefaultCompat.template.php\': \'2.0\',\n	\'DefaultDisplay.template.php\': \'2.0\',\n	\'DefaultErrors.template.php\': \'2.0\',\n	\'DefaultGenericControls.template.php\': \'2.0\',\n	\'DefaultGenericList.template.php\': \'2.0\',\n	\'DefaultGenericMenu.template.php\': \'2.0\',\n	\'DefaultHelp.template.php\': \'2.0.6\',\n	\'DefaultLogin.template.php\': \'2.0.14\',\n	\'DefaultManageAttachments.template.php\': \'2.0\',\n	\'DefaultManageBans.template.php\': \'2.0\',\n	\'DefaultManageBoards.template.php\': \'2.0\',\n	\'DefaultManageCalendar.template.php\': \'2.0\',\n	\'DefaultManageMail.template.php\': \'2.0\',\n	\'DefaultManageMaintenance.template.php\': \'2.0\',\n	\'DefaultManageMembergroups.template.php\': \'2.0\',\n	\'DefaultManageMembers.template.php\': \'2.0\',\n	\'DefaultManageNews.template.php\': \'2.0\',\n	\'DefaultManagePaid.template.php\': \'2.0\',\n	\'DefaultManagePermissions.template.php\': \'2.0.9\',\n	\'DefaultManageScheduledTasks.template.php\': \'2.0\',\n	\'DefaultManageSearch.template.php\': \'2.0\',\n	\'DefaultManageSmileys.template.php\': \'2.0\',\n	\'DefaultMemberlist.template.php\': \'2.0\',\n	\'DefaultMessageIndex.template.php\': \'2.0\',\n	\'DefaultModerationCenter.template.php\': \'2.0\',\n	\'DefaultMoveTopic.template.php\': \'2.0\',\n	\'DefaultNotify.template.php\': \'2.0\',\n	\'DefaultPackages.template.php\': \'2.0\',\n	\'DefaultPersonalMessage.template.php\': \'2.0\',\n	\'DefaultPoll.template.php\': \'2.0\',\n	\'DefaultPost.template.php\': \'2.0.10\',\n	\'DefaultPrintpage.template.php\': \'2.0\',\n	\'DefaultProfile.template.php\': \'2.0.14\',\n	\'DefaultRecent.template.php\': \'2.0\',\n	\'DefaultRegister.template.php\': \'2.0\',\n	\'DefaultReminder.template.php\': \'2.0\',\n	\'DefaultReports.template.php\': \'2.0\',\n	\'DefaultSearch.template.php\': \'2.0.10\',\n	\'DefaultSendTopic.template.php\': \'2.0\',\n	\'DefaultSettings.template.php\': \'2.0\',\n	\'DefaultSplitTopics.template.php\': \'2.0\',\n	\'DefaultStats.template.php\': \'2.0\',\n	\'DefaultThemes.template.php\': \'2.0.12\',\n	\'DefaultWho.template.php\': \'2.0\',\n	\'DefaultWireless.template.php\': \'2.0\',\n	\'DefaultXml.template.php\': \'2.0\',\n	\'Defaultindex.template.php\': \'2.0.14\',\n	\'TemplatesAdmin.template.php\': \'2.0.15\',\n	\'TemplatesBoardIndex.template.php\': \'2.0\',\n	\'TemplatesCalendar.template.php\': \'2.0\',\n	\'TemplatesDisplay.template.php\': \'2.0\',\n	\'TemplatesErrors.template.php\': \'2.0\',\n	\'TemplatesGenericControls.template.php\': \'2.0\',\n	\'TemplatesGenericList.template.php\': \'2.0\',\n	\'TemplatesGenericMenu.template.php\': \'2.0\',\n	\'TemplatesHelp.template.php\': \'2.0\',\n	\'TemplatesLogin.template.php\': \'2.0.15\',\n	\'TemplatesManageAttachments.template.php\': \'2.0\',\n	\'TemplatesManageBans.template.php\': \'2.0\',\n	\'TemplatesManageBoards.template.php\': \'2.0\',\n	\'TemplatesManageCalendar.template.php\': \'2.0\',\n	\'TemplatesManageMail.template.php\': \'2.0\',\n	\'TemplatesManageMaintenance.template.php\': \'2.0\',\n	\'TemplatesManageMembergroups.template.php\': \'2.0\',\n	\'TemplatesManageMembers.template.php\': \'2.0\',\n	\'TemplatesManageNews.template.php\': \'2.0\',\n	\'TemplatesManagePaid.template.php\': \'2.0\',\n	\'TemplatesManagePermissions.template.php\': \'2.0.9\',\n	\'TemplatesManageSearch.template.php\': \'2.0\',\n	\'TemplatesManageSmileys.template.php\': \'2.0\',\n	\'TemplatesMemberlist.template.php\': \'2.0\',\n	\'TemplatesMessageIndex.template.php\': \'2.0\',\n	\'TemplatesModerationCenter.template.php\': \'2.0\',\n	\'TemplatesModlog.template.php\': \'2.0\',\n	\'TemplatesMoveTopic.template.php\': \'2.0\',\n	\'TemplatesNotify.template.php\': \'2.0\',\n	\'TemplatesPackages.template.php\': \'2.0\',\n	\'TemplatesPersonalMessage.template.php\': \'2.0\',\n	\'TemplatesPoll.template.php\': \'2.0\',\n	\'TemplatesPost.template.php\': \'2.0.10\',\n	\'TemplatesPrintpage.template.php\': \'2.0\',\n	\'TemplatesProfile.template.php\': \'2.0\',\n	\'TemplatesRecent.template.php\': \'2.0\',\n	\'TemplatesRegister.template.php\': \'2.0\',\n	\'TemplatesReminder.template.php\': \'2.0\',\n	\'TemplatesReports.template.php\': \'2.0\',\n	\'TemplatesSearch.template.php\': \'2.0.10\',\n	\'TemplatesSendTopic.template.php\': \'2.0\',\n	\'TemplatesSettings.template.php\': \'2.0\',\n	\'TemplatesSplitTopics.template.php\': \'2.0\',\n	\'TemplatesStats.template.php\': \'2.0\',\n	\'TemplatesThemes.template.php\': \'2.0.12\',\n	\'TemplatesWho.template.php\': \'2.0\',\n	\'TemplatesWireless.template.php\': \'2.0\',\n	\'TemplatesXml.template.php\': \'2.0\',\n	\'Templatesindex.template.php\': \'2.0\'\n};\n\nwindow.smfLanguageVersions = {\n	\'Admin\': \'2.0\',\n	\'EmailTemplates\': \'2.0\',\n	\'Errors\': \'2.0\',\n	\'Help\': \'2.0\',\n	\'index\': \'2.0.14\',\n	\'Install\': \'2.0\',\n	\'Login\': \'2.0\',\n	\'ManageBoards\': \'2.0\',\n	\'ManageCalendar\': \'2.0\',\n	\'ManageMail\': \'2.0\',\n	\'ManageMaintenance\': \'2.0\',\n	\'ManageMembers\': \'2.0\',\n	\'ManagePaid\': \'2.0.10\',\n	\'ManagePermissions\': \'2.0\',\n	\'ManageScheduledTasks\': \'2.0\',\n	\'ManageSettings\': \'2.0\',\n	\'ManageSmileys\': \'2.0\',\n	\'Manual\': \'2.0\',\n	\'ModerationCenter\': \'2.0\',\n	\'Modifications\': \'2.0\',\n	\'Modlog\': \'2.0\',\n	\'Packages\': \'2.0\',\n	\'PersonalMessage\': \'2.0\',\n	\'Post\': \'2.0\',\n	\'Profile\': \'2.0\',\n	\'Reports\': \'2.0\',\n	\'Search\': \'2.0\',\n	\'Settings\': \'2.0\',\n	\'Stats\': \'2.0\',\n	\'Themes\': \'2.0\',\n	\'Who\': \'2.0\',\n	\'Wireless\': \'2.0\'\n};\n', 'text/javascript');
INSERT INTO `smf_admin_info_files` VALUES (3, 'latest-news.js', '/smf/', 'language=%1$s&format=%2$s', '\nwindow.smfAnnouncements = [\n	{\n		subject: \'SMF 2.0.15 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=557176.0\',\n		time: \'November 19, 2017, 09:03:58 PM\',\n		author: \'Colin\',\n		message: \'A patch has been released, addressing a few vulnerabilities in SMF 2.0.14 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.1 Beta 3 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=554301.0\',\n		time: \'May 31, 2017, 09:21:59 PM\',\n		author: \'Colin\',\n		message: \'Simple Machines is proud to announce the third beta of the next version of SMF, which contains many bugfixes and a few new features since 2.1 Beta 2.\'\n	},\n	{\n		subject: \'SMF 2.0.14 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=553855.0\',\n		time: \'May 14, 2017, 05:23:46 PM\',\n		author: \'Colin\',\n		message: \'A patch has been released, addressing a few vulnerabilities in SMF 2.0.13 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.13 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=551061.0\',\n		time: \'January 04, 2017, 07:00:00 PM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing a few vulnerabilities in SMF 2.0.12 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.12 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=548871.0\',\n		time: \'September 27, 2016, 07:00:00 AM\',\n		author: \'CoreISP\',\n		message: \'A patch has been released, addressing a vulnerability in SMF 2.0.11 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.11 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=539888.0\',\n		time: \'September 18, 2015, 10:56:19 PM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing a vulnerability in SMF 2.0.10. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.1 Beta 2 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=538198.0\',\n		time: \'July 16, 2015, 05:45:30 PM\',\n		author: \'Oldiesmann\',\n		message: \'Simple Machines is proud to announce the second beta of the next version of SMF, which contains many bugfixes and a few new features since 2.1 Beta 1!\'\n	},\n	{\n		subject: \'SMF 2.0.10 and 1.1.21 have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=535828.0\',\n		time: \'April 24, 2015, 10:09:00 AM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing a few bugs in SMF 2.0.x and SMF 1.1.x. We urge all forum administrators to upgrade to SMF 2.0.10 or 1.1.21&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.1 Beta 1 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=530233.0\',\n		time: \'November 20, 2014, 07:40:06 PM\',\n		author: \'Oldiesmann\',\n		message: \'Simple Machines is proud to announce the first beta of the next version of SMF, with many improvements and new features!\'\n	},\n	{\n		subject: \'SMF 2.0.9 and 1.1.20 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=528448.0\',\n		time: \'October 02, 2014, 07:13:50 PM\',\n		author: \'Oldiesmann\',\n		message: \'Critical security patches have been released, addressing a few vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.8 released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=524016.0\',\n		time: \'June 18, 2014, 10:11:32 AM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing memory issues with 2.0.7, MySQL 5.6 compatibility issues and a rare memberlist search bug. We urge all forum administrators to upgrade to SMF 2.0.8&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.7 released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=517205.0\',\n		time: \'January 20, 2014, 09:48:07 PM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing several bugs, including PHP 5.5 compatibility.  We urge all forum administrators to upgrade to SMF 2.0.7&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.6 and 1.1.19 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=512964.0\',\n		time: \'October 22, 2013, 09:00:00 AM\',\n		author: \'Illori\',\n		message: \'Critical security patches have been released, addressing few vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.5 security patches has been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=509417.0\',\n		time: \'August 12, 2013, 08:34:06 PM\',\n		author: \'Oldiesmann\',\n		message: \'A critical security patch has been released, addressing a few vulnerabilities in SMF 2.0.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.4 and 1.1.18 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=496403.0\',\n		time: \'February 01, 2013, 05:27:00 PM\',\n		author: \'emanuele\',\n		message: \'Critical security patches have been released, addressing few vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.3, 1.1.17 and 1.0.23 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=492786.0\',\n		time: \'December 16, 2012, 11:41:05 PM\',\n		author: \'emanuele\',\n		message: \'Security patches have been released, addressing a vulnerability in SMF 2.0.x, SMF 1.1.x and SMF 1.0.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.2 and 1.1.16 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=463103.0\',\n		time: \'December 23, 2011, 12:41:31 AM\',\n		author: \'Norv\',\n		message: \'Critical security patches have been released, addressing vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.1 and 1.1.15 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=452888.0\',\n		time: \'September 18, 2011, 04:48:18 PM\',\n		author: \'Norv\',\n		message: \'Critical security patches have been released, addressing vulnerabilities in SMF 2.0 and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0 Gold\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=421547.0\',\n		time: \'June 04, 2011, 05:00:00 PM\',\n		author: \'Norv\',\n		message: \'SMF 2.0 has gone Gold! Please upgrade your forum from older versions, as 2.0 is now the stable version, and mods and themes will be built on it.\'\n	},\n	{\n		subject: \'SMF 1.1.13, 2.0 RC4 security patch and SMF 2.0 RC5 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=421547.0\',\n		time: \'February 11, 2011, 03:16:35 PM\',\n		author: \'Norv\',\n		message: \'Simple Machines announces the release of important security patches for SMF 1.1.x and SMF 2.0 RC4, along with the fifth Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 2.0 RC4 and SMF 1.1.12 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=407256.0\',\n		time: \'November 01, 2010, 12:14:21 PM\',\n		author: \'Norv\',\n		message: \'Simple Machines is pleased to announce the release of the fourth Release Candidate of SMF 2.0, along with an important security patch for SMF 1.1.x. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 2.0 RC3 Public released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=369616.0\',\n		time: \'March 08, 2010, 06:03:11 PM\',\n		author: \'Aaron\',\n		message: \'Simple Machines is pleased to announce the release of the third Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 1.1.11 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=351341.0\',\n		time: \'December 01, 2009, 05:59:19 PM\',\n		author: \'SleePy\',\n		message: \'A patch has been released, addressing multiple vulnerabilites.  We urge all forum administrators to upgrade to 1.1.11. Simply visit the package manager to install the patch. Also for those still using the 1.0 branch, version 1.0.19 has been released.\'\n	},\n	{\n		subject: \'SMF 2.0 RC2 Public released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=346813.0\',\n		time: \'November 08, 2009, 07:10:03 PM\',\n		author: \'Aaron\',\n		message: \'Simple Machines is very pleased to announce the release of the second Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 1.1.10 and 2.0 RC1.2 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=324169.0\',\n		time: \'July 14, 2009, 07:05:19 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released, addressing a few security vulnerabilites.  We urge all forum administrators to upgrade to either 1.1.10 or 2.0 RC1.2, depending on the current version. Simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.9 and 2.0 RC1-1 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=311899.0\',\n		time: \'May 20, 2009, 08:40:41 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to either 1.1.9 or 2.0 RC1-1, depending on the current version. Simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0 RC1 Public Released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=290609.0\',\n		time: \'February 04, 2009, 11:10:01 PM\',\n		author: \'Compuart\',\n		message: \'Simple Machines are very pleased to announce the release of the first Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 1.1.8\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=290608.0\',\n		time: \'February 04, 2009, 11:08:44 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to SMF 1.1.8&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.7\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=272861.0\',\n		time: \'November 07, 2008, 02:15:36 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to SMF 1.1.7&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.6\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=260145.0\',\n		time: \'September 07, 2008, 04:38:05 AM\',\n		author: \'Compuart\',\n		message: \'A patch has been released fixing a few bugs and addressing a security vulnerability.  We urge all forum administrators to upgrade to SMF 1.1.6&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.5\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=236816.0\',\n		time: \'April 20, 2008, 09:56:14 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released fixing a few bugs and addressing some security vulnerabilities.  We urge all forum administrators to upgrade to SMF 1.1.5&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0 Beta 3 Public Released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=228921.0\',\n		time: \'March 17, 2008, 03:20:21 PM\',\n		author: \'Grudge\',\n		message: \'Simple Machines are very pleased to announce the release of the first public beta of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 1.1.4\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=196380.0\',\n		time: \'September 24, 2007, 09:07:36 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released to address some security vulnerabilities discovered in SMF 1.1.3.  We urge all forum administrators to upgrade to SMF 1.1.4&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0 Beta 1 Released to Charter Members\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=190812.0\',\n		time: \'August 25, 2007, 07:29:25 AM\',\n		author: \'Grudge\',\n		message: \'Simple Machines are pleased to announce the first beta of SMF 2.0 has been released to our Charter Members. Visit the Simple Machines site for information on what\\\'s new\'\n	},\n	{\n		subject: \'SMF 1.1.3\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=178757.0\',\n		time: \'June 24, 2007, 09:52:40 PM\',\n		author: \'Thantos\',\n		message: \'A number of small bugs and a potential security issue have been discovered in SMF 1.1.2.  We urge all forum administrators to upgrade to SMF 1.1.3&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.2\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=149553.0\',\n		time: \'February 11, 2007, 08:35:45 AM\',\n		author: \'Grudge\',\n		message: \'A patch has been released to address a number of outstanding bugs in SMF 1.1.1, including several around UTF-8 language support. In addition this patch offers improved image verification support and fixes a couple of low risk security related bugs. If you need any help upgrading please visit our forum.\'\n	},\n	{\n		subject: \'SMF 1.1.1\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=134971.0\',\n		time: \'December 17, 2006, 09:33:41 AM\',\n		author: \'Grudge\',\n		message: \'A number of small bugs and a potential security issue have been discovered in SMF 1.1. We urge all forum administrators to upgrade to SMF 1.1.1 - simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=131008.0\',\n		time: \'December 02, 2006, 02:53:16 PM\',\n		author: \'Grudge\',\n		message: \'SMF 1.1 has gone gold!  If you are using an older version, please upgrade as soon as possible - many things have been changed and fixed, and mods and packages will expect you to be using 1.1.  If you need any help upgrading custom modifications to the new version, please feel free to ask us at our forum.\'\n	}\n];\nif (window.smfVersion < \"SMF 2.0\")\n{\n	window.smfUpdateNotice = \'SMF 2.0 Final has now been released. To take advantage of the improvements available in SMF 2.0 we recommend upgrading as soon as is practical.\';\n	window.smfUpdateCritical = false;\n}\n\nif (document.getElementById(\"yourVersion\"))\n{\n	var yourVersion = getInnerHTML(document.getElementById(\"yourVersion\"));\n	if (yourVersion == \"SMF 1.0.4\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-0-5_package.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.5\" || yourVersion == \"SMF 1.0.6\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.7_1.1-RC2-1.tar.gz\";\n		window.smfUpdateCritical = false;\n	}\n	else if (yourVersion == \"SMF 1.0.7\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-0-8_package.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.8\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1-0-9_1-1-rc3-1.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.9\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-0-10_patch.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.10\" || yourVersion == \"SMF 1.1.2\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.3_1.0.11.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.11\" || yourVersion == \"SMF 1.1.3\" || yourVersion == \"SMF 2.0 beta 1\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.12_1.1.4_2.0.b1.1.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.0.12\" || yourVersion == \"SMF 1.1.4\" || yourVersion == \"SMF 2.0 beta 3 Public\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.13_1.1.5_2.0-b3.1.zip\";\n	else if (yourVersion == \"SMF 1.0.13\" || yourVersion == \"SMF 1.1.5\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.14_1.1.6.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.0.14\" || yourVersion == \"SMF 1.1.6\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.15_1.1.7.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.0.15\" || yourVersion == \"SMF 1.1.7\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.16_1.1.8.zip\";\n		window.smfUpdateCritical = false;\n	}\n	else if (yourVersion == \"SMF 1.0.16\" || yourVersion == \"SMF 1.1.8\" || yourVersion == \"SMF 2.0 RC1\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.17_1.1.9_2.0-RC1-1.zip\";\n	else if (yourVersion == \"SMF 1.0.17\" || yourVersion == \"SMF 1.1.9\" || yourVersion == \"SMF 2.0 RC1-1\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.18_1.1.10-2.0-RC1.2.zip\";\n	else if (yourVersion == \"SMF 1.0.18\" || yourVersion == \"SMF 1.1.10\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.19_1.1.11.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.0.19\" || yourVersion == \"SMF 1.1.11\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.20_1.1.12.tar.gz\";\n	}\n	else if (yourVersion == \"SMF 1.0.20\" || yourVersion == \"SMF 1.1.12\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.21_1.1.13.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.14\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.15.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.1.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.15\" || yourVersion == \"SMF 1.0.21\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.22_1.1.16.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.1\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.2.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.16\" || yourVersion == \"SMF 1.0.22\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.23_1.1.17.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.17\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.18.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.2\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.3.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.3\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.4.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.4\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.5.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.18\" || yourVersion == \"SMF 2.0.5\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.19_2.0.6.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.19\" || yourVersion == \"SMF 2.0.8\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.20_2.0.9.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.20\" || yourVersion == \"SMF 2.0.9\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.21_2.0.10.zip\";\n	else if (yourVersion == \"SMF 2.0.10\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.11.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-1-1_patch.tar.gz\";\n	else if (yourVersion == \"SMF 1.1.1\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-1-2_patch.tar.gz\";\n	else if (yourVersion == \"SMF 2.0.11\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.12.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.12\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.13.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.13\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.14.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.14\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.15.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n}\n\nif (document.getElementById(\'credits\'))\n	setInnerHTML(document.getElementById(\'credits\'), getInnerHTML(document.getElementById(\'credits\')).replace(/anyone we may have missed/, \'<span title=\"And you thought you had escaped the credits, hadn\\\'t you, Zef Hemel?\">anyone we may have missed</span>\'));\n', 'text/javascript');
INSERT INTO `smf_admin_info_files` VALUES (4, 'latest-packages.js', '/smf/', 'language=%1$s&version=%3$s', 'var actionurl = \'?action=admin;area=packages;sa=download;get;package=\';if (typeof(window.smfForum_sessionvar) == \"undefined\")\n	window.smfForum_sessionvar = \'sesc\';\n\nif (typeof(window.smfVersion) != \"undefined\")\n{\n	var version = window.smfVersion;\n\n	// We might need this...\n	var smf_modificationInfo = {};\n	\n	switch (version)\n	{\n		case \"SMF 2.0 Beta 1\":\n			window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0 beta 1 as well as a few small bugs. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.12_1.1.4_2.0.b1.1.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to update your version of SMF to 2.0 beta 1.1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0 Beta 3 Public\":\n			window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0 beta 3 as well as a few small bugs. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.13_1.1.5_2.0-b3.1.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to update your version of SMF to 2.0 beta 3.1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0 RC1\":\n			window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0 RC1. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.17_1.1.9_2.0-RC1-1.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to update your version of SMF to 2.0-RC1-1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0 RC1-1\":\n			window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0 RC1-1. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.18_1.1.10-2.0-RC1.2.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to update your version of SMF to 2.0-RC1.2 .<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0 RC4\":\n			if (typeof(window.smfRC4patch) == \"undefined\")\n				window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0 RC4. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0-RC4_security.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to install the security patch for SMF 2.0 RC4.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;\">forum</a> if you need more help.\';\n			else\n				showLatestPackages();\n			break;\n		case \"SMF 2.0\":\n			window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.1.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to update your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.1\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.1 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.2.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.2\":\n			window.smfLatestPackages = \'A security vulnerability and few bugs in SMF 2.0.2 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.3.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.3\":\n			window.smfLatestPackages = \'A few security vulnerabilities in SMF 2.0.3 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.4.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.4\":\n			window.smfLatestPackages = \'A few security vulnerabilities in SMF 2.0.4 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.5.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.5\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.5 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.19_2.0.6.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.6\":\n			window.smfLatestPackages = \'PHP 5.5 compatibility issues and several other bugs have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.7.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.7.<br /><br />If you have any problems applying it, you can try to use the upgrade file posted on the downloads page - although, any modifications you have installed will need to be uninstalled when you use that method.<br />Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.7\":\n			window.smfLatestPackages = \'Memory issues encountered with SMF 2.0.7, some MySQL 5.6 compatibility issues and a rare bug with the memberlist search feature have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.8.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.8.<br /><br />If you have any problems applying it, you can try to use the upgrade file posted on the downloads page - although, any modifications you have installed will need to be uninstalled when you use that method.<br />Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.8\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.8 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.20_2.0.9.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.9.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.9\":\n			window.smfLatestPackages = \'A few bugs in SMF 2.0.9 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.21_2.0.10.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.10.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.10\":\n			window.smfLatestPackages = \'A security vulnerability has been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.11.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.11.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.11\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.11 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.12.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.12.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.12\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.12 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.13.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.13.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.13\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.13 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.14.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.14.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.14\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.14 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.15.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.15.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;\">forum</a> if you need more help.\';\n			break;\n        default:\n			showLatestPackages();\n			break;\n	}\n}\nelse\n{\n	window.smfLatestPackages = \'For the package manager to function properly, please upgrade to the latest version of SMF.\';\n}\n\n// This function shows latest mods when there isn\'t anything else to display\nfunction showLatestPackages()\n{\n	smf_modificationInfo = {\n	\n		4176: {\n			name: \'Personal Word Censor 1.1\',\n			versions: [\'91\', \'90\'],\n			desc: \'<hr /><div align=\"center\"><span style=\"color: red;\" class=\"bbc_color\"><span style=\"font-size: 16pt;\" class=\"bbc_size\"><strong>PERSONAL WORD CENSOR v1.1</strong></span></span><br /><a href=\"http://www.simplemachines.org/community/index.php?action=profile;u=253913\" class=\"bbc_link\" target=\"_blank\"><strong>By Dougiefresh</strong></a> -&gt; <a href=\"https://custom.simplemachines.org/mods/index.php?mod=4176\" class=\"bbc_link\" target=\"_blank\">Link to Mod</a><br /></div><hr /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Introduction</span></span></strong></span><br />This mod allows each user to specify words to censor and their replacements, much like the admin panel does.&nbsp; The only difference is this mod&#039;s censor list is user-specific, not global (as the admin panel is).&nbsp; Admin&#039;s are also allowed to see each user&#039;s personal word censor list.<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Profile Settings</span></span></strong></span><br />Under <strong>Profile</strong> =&gt; <strong>Modify Profile</strong>, there is a new entry called <strong>Personal Censored Words</strong>.&nbsp; There you can specify the words to censor and the replacements for each censored word.<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Admin Settings</span></span></strong></span><br />There are no admin settings for this mod.&nbsp; To disable, you must uninstall the mod.<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Related Discussions</span></span></strong></span><br />o <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;topic=559460.0\" class=\"bbc_link\" target=\"_blank\">Personal Word Censor</a><br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Compatibility Notes</span></span></strong></span><br />This mod was tested on SMF 2.0.15 and SMF 2.1 Beta 3, but should work on SMF 2.0 and up.&nbsp; SMF 2.1 Beta 1, SMF 2.1 Beta 2, and SMF 1.x is not and will not be supported.<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Changelog</span></span></strong></span><br />The changelog has been removed and can be seen at <a href=\"http://www.xptsp.com/board/index.php?topic=1638.msg2384#msg2384\" class=\"bbc_link\" target=\"_blank\">XPtsp.com</a>.<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">License</span></span></strong></span><br /><div class=\"quoteheader\"><div class=\"topslice_quote\">Quote</div></div><blockquote class=\"bbc_standard_quote\">Copyright (c) 2018, Douglas Orend<br />All rights reserved.<br /><br />Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:<br /><br />1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.<br /><br />2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.<br /><br />THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS &quot;AS IS&quot; AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.<br /></blockquote><div class=\"quotefooter\"><div class=\"botslice_quote\"></div></div>\',\n			file: \'Personal_Word_Censor_v1.1.zip\'\n		},\n		4174: {\n			name: \'Filter Messages By Poster 1.1\',\n			versions: [\'91\', \'90\'],\n			desc: \'<hr /><div align=\"center\"><span style=\"color: red;\" class=\"bbc_color\"><span style=\"font-size: 16pt;\" class=\"bbc_size\"><strong>FILTER MESSAGES BY POSTER v1.1</strong></span></span><br /><a href=\"http://www.simplemachines.org/community/index.php?action=profile;u=253913\" class=\"bbc_link\" target=\"_blank\"><strong>By Dougiefresh</strong></a> -&gt; <a href=\"http://custom.simplemachines.org/mods/index.php?mod=4174\" class=\"bbc_link\" target=\"_blank\">Link to Mod</a><br /></div><hr /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Introduction</span></span></strong></span><br />This mod allows the user to restrict the displaying of messages by any poster by using the filter icon in the poster area in the messages display.&nbsp; The filtering can be stopped using the unfilter icon in the poster area in the messages display (or using the back button, naturally).<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Admin Settings</span></span></strong></span><br />There are no admin settings.&nbsp; To disable it, you must remove this mod.<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Compatibility Notes</span></span></strong></span><br />This mod was tested on SMF 2.0.15 and SMF 2.1 Beta 3, but should work on SMF 2.0 and up.&nbsp; SMF 2.1 Beta 1, SMF 2.1 Beta 2, and SMF 1.x is not and will not be supported.<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Related Discussion</span></span></strong></span><br />o <a href=\"https://www.simplemachines.org/community/index.php?P=a1b63b52a428d15b1c4a4da6eb0c6723&amp;topic=559341.0\" class=\"bbc_link\" target=\"_blank\">Toggle replies to show OP replies only</a><br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Changelog</span></span></strong></span><br />The changelog has been removed and can be seen at <a href=\"http://www.xptsp.com/board/index.php?topic=1637.msg2382#msg2382\" class=\"bbc_link\" target=\"_blank\">XPtsp.com</a>.<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">License</span></span></strong></span><br /><div class=\"quoteheader\"><div class=\"topslice_quote\">Quote</div></div><blockquote class=\"bbc_standard_quote\">Copyright (c) 2018, Douglas Orend<br />All rights reserved.<br /><br />Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:<br /><br />1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.<br /><br />2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.<br /><br />THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS &quot;AS IS&quot; AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.<br /></blockquote><div class=\"quotefooter\"><div class=\"botslice_quote\"></div></div>\',\n			file: \'Filter_Messages_By_Poster_v1.1.zip\'\n		},\n		4173: {\n			name: \'External Image Proxy 1.0.0\',\n			versions: [\'91\'],\n			desc: \'This addon allows you to get rid of insecure content warnings or disappearing images when you use an encrypted connection to your SMF Forum.<br /><br />Proxy Settings<br /><br />By default this extension will use the images.weserv.nl image caching and resizing proxy.<br /><br />Note: The SMF one has to be disabled for it to become active.<br /><br /><strong>Licence</strong><br /><div class=\"quoteheader\"><div class=\"topslice_quote\">Quote</div></div><blockquote class=\"bbc_standard_quote\">Copyright Â© 2018 tinoest.&nbsp; All rights reserved.<br /><br />Developed by: tinoest<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href=\"https://tinoest.co.uk\" class=\"bbc_link\" target=\"_blank\">https://tinoest.co.uk</a><br /><br />Redistribution and use in source and binary forms, with or without <br />modification, are permitted provided that the following conditions are met:<br />&nbsp; 1. Redistributions of source code must retain the above copyright notice,<br />&nbsp; &nbsp;&nbsp; this list of conditions and the following disclaimers.<br />&nbsp; 2. Redistributions in binary form must reproduce the above copyright<br />&nbsp; &nbsp;&nbsp; notice, this list of conditions and the following disclaimers in the<br />&nbsp; &nbsp;&nbsp; documentation and/or other materials provided with the distribution.<br />&nbsp; 3. Neither the names of tinoest, nor the names of its contributors may be <br />&nbsp; &nbsp;&nbsp; used to endorse or promote products derived from this Software without <br />&nbsp; &nbsp;&nbsp; specific prior written permission.<br /><br />THE SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR<br />IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,<br />FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.&nbsp; IN NO EVENT SHALL THE<br />CONTRIBUTORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER<br />LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING<br />FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS<br />WITH THE SOFTWARE.<br /><br />This license may be viewed online at <a href=\"http://opensource.org/licenses/BSD-3-Clause\" class=\"bbc_link\" target=\"_blank\">http://opensource.org/licenses/BSD-3-Clause</a></blockquote><div class=\"quotefooter\"><div class=\"botslice_quote\"></div></div>\',\n			file: \'SMFExtImageProxy.tar.gz\'\n		},\n		3398: {\n			name: \'Vimeo Embedder BBC Mod 2.2\',\n			versions: [\'68\', \'73\', \'76\', \'77\', \'78\', \'80\', \'84\', \'86\'],\n			desc: \'<span style=\"color: red;\" class=\"bbc_color\"><span style=\"font-size: 14pt;\" class=\"bbc_size\"><strong> Vimeo Embedder BBC Mod </strong></span></span> <br /><br /><span style=\"color: red;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\">Description</span></strong></span><br /><br /><strong>For SMF 2.0.x</strong><br /><br />This mod will add a BBC tag:&nbsp; &#91;vimeo&#93;&#91;/vimeo&#93;&nbsp; where you can post your vimeo urls and it will be converted to a video directly in the message.<br />Uses SMF hooks wherever possible to avoid file edits.<br />In the settings you can enable/disable the mod, set the width and height for the video as well as play it automatically on load and more possibilities, <br />currently the mod support the following vimeo urls:<br /><br /><div class=\"codeheader\">Code: <a href=\"javascript:void(0);\" onclick=\"return smfSelectText(this);\" class=\"codeoperation\">[Select]</a></div><code class=\"bbc_code\">vimeo.com/{ID}<br />www.vimeo.com/{ID}<br />http://vimeo.com/{ID}<br />https://vimeo.com/{ID}<br /></code><br /><span style=\"color: red;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\">License</span></strong></span><br /><br />&nbsp;* This SMF modification is subject to the Mozilla Public License Version<br />&nbsp;* 1.1 (the &quot;License&quot;); you may not use this SMF modification except in compliance with<br />&nbsp;* the License. You may obtain a copy of the License at<br />&nbsp;* <a href=\"http://www.mozilla.org/MPL/\" class=\"bbc_link\" target=\"_blank\">http://www.mozilla.org/MPL/</a><br /><br /><span style=\"color: red;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\">Settings</span></strong></span><br /><br />- Admin-&gt;Configuration-&gt;Modification Settings-&gt;Vimeo BBC<br /><br /><span style=\"color: red;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\">Languages</span></strong></span><br /><br />-English/utf8<br />-Spanish/utf8 by <a href=\"http://www.simplemachines.org/community/index.php?action=profile;u=394383\" class=\"bbc_link\" target=\"_blank\">fapencio</a><br />-Portuguese/utf8 by <a href=\"http://www.simplemachines.org/community/index.php?action=profile;u=94593\" class=\"bbc_link\" target=\"_blank\">FragaCampos</a><br /><br /><span style=\"color: red;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\">Changelog</span></strong></span><br /><br /><strong>Version 2.2 - Jun 29, 2014</strong><br />- Fixed error: runtime-created function<br /><br /><strong>Version 2.1 - Jun 27, 2014</strong><br />- Small bug fixes<br />- Added more languages<br /><br /><strong>Version 2.0 - Jan 24, 2014</strong><br />- Added own admin settings page.<br />- Added https url support.<br />- New option in settings: Play the video automatically on load.<br />- New option in settings: Enable the badge on the video.<br />- New option in settings: Show the user&#039;s byline on the video.<br />- New option in settings: Show the user&#039;s portrait on the video.<br />- New option in settings: Specify the color of the video controls.<br />- Fixed issues that the smilies did not function in post.<br />- Revised some of the code in previous version.<br /><br /><strong>Version 1.0 - Apr 20, 2012</strong><br />- Initial Release<br />\',\n			file: \'VimeoEmbedder.v2.2.zip\'\n		}	};\n	var smf_latestModifications = [4176, 4174, 4173];\n	\n	window.smfLatestPackages = \'\\\n		<div id=\"smfLatestPackagesWindow\"style=\"overflow: auto;\">\\\n			<h3 style=\"margin: 0; padding: 4px;\">New Packages:</h3>\\\n			<img src=\"https://www.simplemachines.org/smf/images/package.png\" width=\"102\" height=\"98\" style=\"float: right; margin: 4px;\" alt=\"(package)\" />\\\n			<ul style=\"list-style: none; margin-top: 3px; padding: 0 4px;\">\';\n	\n	for (var i = 0; i < smf_latestModifications.length; i++)\n	{\n		var id_mod = smf_latestModifications[i];\n	\n		window.smfLatestPackages += \'<li><a href=\"javascript:smf_packagesMoreInfo(\' + id_mod + \');void(0);\">\' + smf_modificationInfo[id_mod].name + \'</a></li>\';\n	}\n	\n	window.smfLatestPackages += \'\\\n			</ul>\';\n	\n	if (typeof(window.smfVersion) != \"undefined\" && (window.smfVersion < \"SMF 1.0.6\" || (window.smfVersion == \"SMF 1.1 RC2\" && !in_array(\'smf:smf-1.0.7\', window.smfInstalledPackages))))\n		window.smfLatestPackages += \'\\\n			<h3 class=\"error\" style=\"margin: 0; padding: 4px;\">Updates for SMF:</h3>\\\n			<div style=\"padding: 0 4px;\">\\\n				<a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.7_1.1-RC2-1.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">Security update (X-Forwarded-For header vulnerability)</a>\\\n			</div>\';\n	else\n		window.smfLatestPackages += \'\\\n			<h3 style=\"margin: 0; padding: 4px;\">Package of the Moment:</h3>\\\n			<div style=\"padding: 0 4px;\">\\\n				<a href=\"javascript:smf_packagesMoreInfo(3398);void(0);\">Vimeo Embedder BBC Mod 2.2</a>\\\n			</div>\';\n	\n	window.smfLatestPackages += \'\\\n		</div>\';\n}\n\nfunction findTop(el)\n{\n	if (typeof(el.tagName) == \"undefined\")\n		return 0;\n\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? [\"tr\", \"tbody\", \"form\"] : []);\n	var coordsParent = el.parentNode ? \"parentNode\" : \"offsetParent\";\n\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == \"undefined\")\n		return skipMe ? 0 : el.offsetTop;\n	else\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\n}\n\nfunction in_array(item, array)\n{\n	for (var i in array)\n	{\n		if (array[i] == item)\n			return true;\n	}\n\n	return false;\n}\n\nfunction smf_packagesMoreInfo(id)\n{\n	window.smfLatestPackages_temp = document.getElementById(\"smfLatestPackagesWindow\").innerHTML;\n\n	setInnerHTML(document.getElementById(\"smfLatestPackagesWindow\"),\n	\'\\\n		<h3 style=\"margin: 0; padding: 4px;\">\' + smf_modificationInfo[id].name + \'</h3>\\\n		<h4 style=\"padding: 4px; margin: 0;\"><a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/\' + id + \'/\' + smf_modificationInfo[id].file + \';\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">Install Now!</a></h4>\\\n		<div style=\"margin: 4px;\">\' + smf_modificationInfo[id].desc.replace(/<a href/g, \'<a href\') + \'</div>\\\n		<div class=\"titlebg\" style=\"padding: 4px; margin: 0;\"><a href=\"javascript:smf_packagesBack();void(0);\">(go back)</a></div>\');\n}\n\nfunction smf_packagesBack()\n{\n	setInnerHTML(document.getElementById(\"smfLatestPackagesWindow\"), window.smfLatestPackages_temp);\n	window.scrollTo(0, findTop(document.getElementById(\"smfLatestPackagesWindow\")) - 10);\n}\n', 'text/javascript');
INSERT INTO `smf_admin_info_files` VALUES (5, 'latest-smileys.js', '/smf/', 'language=%1$s&version=%3$s', 'var actionurl = \'?action=admin;area=smileys;sa=install;set_gz=\';\nif (typeof(window.smfForum_sessionvar) == \"undefined\")\n	window.smfForum_sessionvar = \'sesc\';\n\nvar smf_smileysInfo = {\n\n	4099: {\n		name: \'EmojiOne 0.3.2\',\n		versions: [\'84\'],\n		desc: \'EmojiOne is not BBC but functions in the same space as BBC.<br /><br />This mod add some support for converting emoji decimal input into their hexadecimal counterpart. With the hexadecimal data this mod replaces the decimal data with the appropriate emoji from the EmojiOne CDN server.<br /><br /><strong>License</strong><br />Copyright (c) 2016, Russell Najar<br />All rights reserved.<br /><br />Redistribution and use in source and binary forms, with or without<br />modification, are permitted provided that the following conditions are met:<br /><br />* Redistributions of source code must retain the above copyright notice, this<br />&nbsp; list of conditions and the following disclaimer.<br /><br />* Redistributions in binary form must reproduce the above copyright notice,<br />&nbsp; this list of conditions and the following disclaimer in the documentation<br />&nbsp; and/or other materials provided with the distribution.<br /><br />THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS &quot;AS IS&quot;<br />AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE<br />IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE<br />DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE<br />FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL<br />DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR<br />SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER<br />CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,<br />OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE<br />OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\',\n		file: \'SMF-EmojiOne.tar.gz\'\n	},\n	4049: {\n		name: \'Flat emoji (Twitter Emoji) 1.0.1\',\n		versions: [\'81\', \'82\'],\n		desc: \'<div align=\"center\"><strong>Flat Emoji</strong><br /><hr /><img src=\"https://www.simplemachines.org/community/proxy.php?request=http%3A%2F%2Fimg.iammichael.nl%2Fd26d3.png&hash=018e0f573d2709203d189f0064bf7ac9\" alt=\"\" class=\"bbc_img\" /><br /><hr /><br />These flat twitter emoji will make your forum look much better, especially when you like flat design!<br />Originally made for NMOT (<a href=\"http://nmot.nl\" class=\"bbc_link\" target=\"_blank\">http://nmot.nl</a>).</div>\',\n		file: \'FlatEmoji.zip\'\n	},\n	4045: {\n		name: \'sdgirlsmilies 1.0\',\n		versions: [\'81\', \'82\'],\n		desc: \'Set of over-sized smilies of a girls face with the default SMF emotions<br /><br />NOTE: These will also work with SMF 2.1 B1<br /><br /><img src=\"https://www.simplemachines.org/community/proxy.php?request=http%3A%2F%2Fi133.photobucket.com%2Falbums%2Fq72%2FGrumpy_075%2Fsmfsmilies%2Fsdgirldemo.jpg&hash=8761b37ffdd21514615ec2e1e06f4e69\" alt=\"\" class=\"bbc_img\" />\',\n		file: \'sdgirlsmilies.zip\'\n	},\n	4044: {\n		name: \'sdboysmilies 1.0\',\n		versions: [\'81\', \'82\'],\n		desc: \'Set of over-sized smilies of a boys face with the default SMF emotions<br /><br />NOTE: These will also work with SMF 2.1 B1<br /><br /><img src=\"https://www.simplemachines.org/community/proxy.php?request=http%3A%2F%2Fi133.photobucket.com%2Falbums%2Fq72%2FGrumpy_075%2Fsmfsmilies%2Fsdboydemo.jpg&hash=96b491c3b4e34778a295e7a01da0bccc\" alt=\"\" class=\"bbc_img\" />\',\n		file: \'sdboysmilies.zip\'\n	},};\nvar smf_latestSmileys = [4099, 4049, 4045];\n\nfunction smf_packagesMoreInfo(id)\n{\n	window.smfLatestSmileys_temp = document.getElementById(\"smfLatestSmileysWindow\").innerHTML;\n\n	setInnerHTML(document.getElementById(\"smfLatestSmileysWindow\"),\n	\'\\\n		<h3 style=\"margin: 0; padding: 4px;\">\' + smf_smileysInfo[id].name + \'</h3>\\\n		<h4 style=\"padding: 4px; margin: 0;\"><a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/\' + id + \'/\' + smf_smileysInfo[id].file + \';\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">Install Now!</a></h4>\\\n		<div style=\"margin: 4px;\">\' + smf_smileysInfo[id].desc.replace(/<a href/g, \'<a href\') + \'</div>\\\n		<div class=\"titlebg\" style=\"padding: 4px; margin: 0;\"><a href=\"javascript:smf_packagesBack();void(0);\">(go back)</a></div>\');\n}\n\nfunction smf_packagesBack()\n{\n	setInnerHTML(document.getElementById(\"smfLatestSmileysWindow\"), window.smfLatestSmileys_temp);\n	window.scrollTo(0, findTop(document.getElementById(\"smfLatestSmileysWindow\")) - 10);\n}\n\nwindow.smfLatestSmileys = \'\\\n	<div id=\"smfLatestSmileysWindow\" style=\"overflow: auto;\">\\\n		<img src=\"https://www.simplemachines.org/smf/images/smileys.png\" width=\"102\" height=\"98\" style=\"float: right; margin: 4px;\" alt=\"(package)\" />\\\n		<h3 style=\"margin: 0; padding: 4px;\">Smiley of the Moment:</h3>\\\n		<div style=\"padding: 0 4px;\">\\\n			<a href=\"javascript:smf_packagesMoreInfo(4044);void(0);\">sdboysmilies 1.0</a>\\\n		</div>\';\n\nwindow.smfLatestSmileys += \'\\\n		<h3 style=\"margin: 0; padding: 4px;\">New Smileys:</h3>\\\n		<ul style=\"list-style: none; margin-top: 3px; padding: 0 4px;\">\';\n\nfor (var i = 0; i < smf_latestSmileys.length; i++)\n{\n	var id_mod = smf_latestSmileys[i];\n\n	window.smfLatestSmileys += \'<li><a href=\"javascript:smf_packagesMoreInfo(\' + id_mod + \');void(0);\">\' + smf_smileysInfo[id_mod].name + \'</a></li>\';\n}\n\nwindow.smfLatestSmileys += \'\\\n		</ul>\';\n\nwindow.smfLatestSmileys += \'\\\n	</div>\';\n\nfunction findTop(el)\n{\n	if (typeof(el.tagName) == \"undefined\")\n		return 0;\n\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? [\"tr\", \"tbody\", \"form\"] : []);\n	var coordsParent = el.parentNode ? \"parentNode\" : \"offsetParent\";\n\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == \"undefined\")\n		return skipMe ? 0 : el.offsetTop;\n	else\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\n}\n\nfunction in_array(item, array)\n{\n	for (var i in array)\n	{\n		if (array[i] == item)\n			return true;\n	}\n\n	return false;\n}', 'text/javascript');
INSERT INTO `smf_admin_info_files` VALUES (6, 'latest-support.js', '/smf/', 'language=%1$s&version=%3$s', 'window.smfLatestSupport = \'<div style=\"font-size: 0.85em;\"><div style=\"font-weight: bold;\">SMF 2.0.15</div>This version fixes a few security issues and bugs.  Please <a href=\"https://download.simplemachines.org/\">try it</a> before requesting support.</div>\';\n\nif (document.getElementById(\'credits\'))\n	setInnerHTML(document.getElementById(\'credits\'), getInnerHTML(document.getElementById(\'credits\')).replace(/thank you!/, \'<span onclick=\"alert(\\\'Kupo!\\\');\">thank you!</span>\'));\n', 'text/javascript');
INSERT INTO `smf_admin_info_files` VALUES (7, 'latest-themes.js', '/smf/', 'language=%1$s&version=%3$s', '\r\nvar smf_themeInfo = {\r\n	2834: {\r\n		name: \'projectL\',\r\n		desc: \'See this theme in action! <a href=\"http://demo.studiocrimes.com/index.php?theme=24;variant=wine\" class=\"bbc_link\" target=\"_blank\">Live demo available</a><br />Check out the <a href=\"http://demo.studiocrimes.com/index.php?theme=24;variant=emerald\" class=\"bbc_link\" target=\"_blank\">Emerald variant</a><br /><br /><a href=\"http://studiocrimes.com\" class=\"bbc_link\" target=\"_blank\">http://studiocrimes.com</a>\',\r\n		file: \'projectL_2.0.x.zip\',\r\n		author: \'CrimeS\'\r\n	},\r\n	2900: {\r\n		name: \'Studio [Responsive 2.0]\',\r\n		desc: \'Theme Video: <a href=\"https://youtu.be/VJpFVkW-rg8\" class=\"bbc_link\" target=\"_blank\">https://youtu.be/VJpFVkW-rg8</a><br /><br /><a href=\"http://smftheme.byethost18.com/smf/index.php?theme=11\" class=\"bbc_link\" target=\"_blank\">DEMO</a><br /><br />1.HTML5<br />2. Responsive Theme<br />-----------------------<br />.Board Template<br />.Display Template<br />.Members List<br />.Profile Template<br />.Calendar.template<br />.Admin Panel<br />----------------------<br />3.FontAwesome<br />4. right sidebar<br /><br /><img src=\"https://i.hizliresim.com/8YnEpk.jpg\" alt=\"\" width=\"600\" height=\"330\" class=\"bbc_img resized\" /><br /><br /><img src=\"https://i.hizliresim.com/m2l8vP.jpg\" alt=\"\" width=\"600\" height=\"330\" class=\"bbc_img resized\" /><br /><br /><img src=\"https://i.hizliresim.com/D7Xknl.jpg\" alt=\"\" width=\"239\" height=\"500\" class=\"bbc_img resized\" />\',\r\n		file: \'Studio.zip\',\r\n		author: \'gecitli\'\r\n	},\r\n	2896: {\r\n		name: \'Vision\',\r\n		desc: \'smf 2.1 beta 3 Theme<br />Boardindex and Messageindex user avatar&nbsp; <br />Boardindex 3&nbsp; divbox (Current theme edit)<br />Global 2 divbox (Current theme edit)<br /><div align=\"center\"><span style=\"color: green;\" class=\"bbc_color\"><strong><a href=\"http://smf.konusal.com/\" class=\"bbc_link\" target=\"_blank\">Smf destek</a></strong></span><br /><img src=\"https://www.simplemachines.org/community/proxy.php?request=http%3A%2F%2Fsmf.konusal.com%2FThemes%2Fpisi%2Fimages%2Ftheme%2Flogo.png&hash=dc23a940567aee222f8562adad5a0f0a\" alt=\"\" class=\"bbc_img\" /></div>Ã¶rnek resimler<br />Home<br /><img src=\"https://i.hizliresim.com/LO3bLb.png\" alt=\"\" width=\"600\" height=\"478\" class=\"bbc_img resized\" /><br />Messageindex<br /><img src=\"https://i.hizliresim.com/1GdJXG.png\" alt=\"\" width=\"600\" height=\"326\" class=\"bbc_img resized\" /><br />Topic<br /><img src=\"https://i.hizliresim.com/vJ4jqp.png\" alt=\"\" width=\"576\" height=\"500\" class=\"bbc_img resized\" /><br />current theme <br /><img src=\"https://i.hizliresim.com/rJ9O71.png\" alt=\"\" width=\"418\" height=\"500\" class=\"bbc_img resized\" /><br />\',\r\n		file: \'Vision.zip\',\r\n		author: \'Snrj\'\r\n	},\r\n	2895: {\r\n		name: \'Startaza\',\r\n		desc: \'A modern, responsive theme with a green layout and a right sidebar featuring a top ad spot, new posts and popular topics.<br /><br />The ad spot is configurable through Theme Settings in the admin area.\',\r\n		file: \'Startaza.zip\',\r\n		author: \'nilar\'\r\n	},\r\n	925: {\r\n		name: \'Workspace_\',\r\n		desc: \'clean, light professional style<br /><br />Ready to be used with TinyPortal.<br /><br />Demo:&nbsp; <a href=\"http://411151057.com/1.1.x/\" class=\"bbc_link\" target=\"_blank\">http://411151057.com/1.1.x/</a>\',\r\n		file: \'Workspace_.zip\',\r\n		author: \'londonhogfan\'\r\n	}\r\n};\r\nvar smf_featured = 2834;\r\nvar smf_random = 925;\r\nvar smf_latestThemes = [2900, 2896, 2895];\r\nfunction smf_themesMoreInfo(id)\r\n{\r\n	window.smfLatestThemes_temp = document.getElementById(\"smfLatestThemesWindow\").innerHTML;\r\n\r\n	// !!! Why not just always auto?\r\n	document.getElementById(\"smfLatestThemesWindow\").style.overflow = \"auto\";\r\n	setInnerHTML(document.getElementById(\"smfLatestThemesWindow\"),\r\n	\'\\\r\n		<h3 style=\"margin: 0; padding: 4px;\">\' + smf_themeInfo[id].name + \'</h3>\\\r\n		<h4 style=\"margin: 0;padding: 4px;\"><a href=\"https://custom.simplemachines.org/themes/index.php?lemma=\' + id + \'\">View Theme Now!</a></h4>\\\r\n		<div style=\"overflow: auto;\">\\\r\n			<img src=\"https://custom.simplemachines.org/themes/index.php?action=download;lemma=\'+id+\';image=thumb\" alt=\"\" style=\"float: right; margin: 10px;\" />\\\r\n			<div style=\"padding:8px;\">\' + smf_themeInfo[id].desc.replace(/<a href/g, \'<a href\') + \'</div>\\\r\n		</div>\\\r\n		<div style=\"padding: 4px;\" class=\"smalltext\"><a href=\"javascript:smf_themesBack();void(0);\">(go back)</a></div>\');\r\n}\r\n\r\nfunction smf_themesBack()\r\n{\r\n	document.getElementById(\"smfLatestThemesWindow\").style.overflow = \"\";\r\n	setInnerHTML(document.getElementById(\"smfLatestThemesWindow\"), window.smfLatestThemes_temp);\r\n	window.scrollTo(0, findTop(document.getElementById(\"smfLatestThemesWindow\")) - 10);\r\n}\r\n\r\nwindow.smfLatestThemes = \'\\\r\n	<div id=\"smfLatestThemesWindow\">\\\r\n		<div>\\\r\n			<img src=\"https://www.simplemachines.org/smf/images/themes.png\" width=\"102\" height=\"98\" style=\"float: right; margin: 0 0 10px 10px;\" alt=\"(package)\" />\\\r\n			<ul style=\"list-style: none; padding: 0; margin: 0 0 0 5px;\">\';\r\nfor(var i=0; i < smf_latestThemes.length; i++)\r\n{\r\n	var id_theme = smf_latestThemes[i];\r\n	window.smfLatestThemes += \'\\\r\n				<li style=\"list-style: none;\"><a href=\"javascript:smf_themesMoreInfo(\' + id_theme + \');void(0);\">\' + smf_themeInfo[id_theme].name + \' by \' + smf_themeInfo[id_theme].author + \'</a></li>\';\r\n}\r\n\r\nwindow.smfLatestThemes += \'\\\r\n			</ul>\';\r\nif ( smf_featured !=0 || smf_random != 0 )\r\n{\r\n\r\n	if ( smf_featured != 0 )\r\n		window.smfLatestThemes += \'\\\r\n				<h4 style=\"padding: 4px 4px 0 4px; margin: 0;\">Featured Theme</h4>\\\r\n				<p style=\"padding: 0 4px; margin: 0;\">\\\r\n					<a href=\"javascript:smf_themesMoreInfo(\'+smf_featured+\');void(0);\">\'+smf_themeInfo[smf_featured].name + \' by \' + smf_themeInfo[smf_featured].author+\'</a>\\\r\n				</p>\';\r\n	if ( smf_random != 0 )\r\n		window.smfLatestThemes += \'\\\r\n				<h4 style=\"padding: 4px 4px 0 4px;margin: 0;\">Theme of the Moment</h4>\\\r\n				<p style=\"padding: 0 4px; margin: 0;\">\\\r\n					<a href=\"javascript:smf_themesMoreInfo(\'+smf_random+\');void(0);\">\'+smf_themeInfo[smf_random].name + \' by \' + smf_themeInfo[smf_random].author+\'</a>\\\r\n				</p>\';\r\n}\r\nwindow.smfLatestThemes += \'\\\r\n		</div>\\\r\n	</div>\';\r\n\r\nfunction findTop(el)\r\n{\r\n	if (typeof(el.tagName) == \"undefined\")\r\n		return 0;\r\n\r\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? [\"tr\", \"tbody\", \"form\"] : []);\r\n	var coordsParent = el.parentNode ? \"parentNode\" : \"offsetParent\";\r\n\r\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == \"undefined\")\r\n		return skipMe ? 0 : el.offsetTop;\r\n	else\r\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\r\n}\r\n\r\nfunction in_array(item, array)\r\n{\r\n	for (var i in array)\r\n	{\r\n		if (array[i] == item)\r\n			return true;\r\n	}\r\n\r\n	return false;\r\n}', 'text/javascript');
COMMIT;

-- ----------------------------
-- Table structure for smf_approval_queue
-- ----------------------------
DROP TABLE IF EXISTS `smf_approval_queue`;
CREATE TABLE `smf_approval_queue` (
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_attach` int(10) unsigned NOT NULL DEFAULT '0',
  `id_event` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_attachments
-- ----------------------------
DROP TABLE IF EXISTS `smf_attachments`;
CREATE TABLE `smf_attachments` (
  `id_attach` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_thumb` int(10) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_folder` tinyint(3) NOT NULL DEFAULT '1',
  `attachment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `file_hash` varchar(40) NOT NULL DEFAULT '',
  `fileext` varchar(8) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `downloads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `width` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `height` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(20) NOT NULL DEFAULT '',
  `approved` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_attach`),
  UNIQUE KEY `id_member` (`id_member`,`id_attach`),
  KEY `id_msg` (`id_msg`),
  KEY `attachment_type` (`attachment_type`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_ban_groups
-- ----------------------------
DROP TABLE IF EXISTS `smf_ban_groups`;
CREATE TABLE `smf_ban_groups` (
  `id_ban_group` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `ban_time` int(10) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned DEFAULT NULL,
  `cannot_access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_register` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_post` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_login` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `notes` text NOT NULL,
  PRIMARY KEY (`id_ban_group`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_ban_items
-- ----------------------------
DROP TABLE IF EXISTS `smf_ban_items`;
CREATE TABLE `smf_ban_items` (
  `id_ban` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_ban_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip_low1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hostname` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ban`),
  KEY `id_ban_group` (`id_ban_group`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_board_permissions
-- ----------------------------
DROP TABLE IF EXISTS `smf_board_permissions`;
CREATE TABLE `smf_board_permissions` (
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `id_profile` smallint(5) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(30) NOT NULL DEFAULT '',
  `add_deny` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_group`,`id_profile`,`permission`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of smf_board_permissions
-- ----------------------------
BEGIN;
INSERT INTO `smf_board_permissions` VALUES (-1, 1, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'approve_posts', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 1, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'approve_posts', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 1, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 3, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 3, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 3, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 3, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 3, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 3, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 3, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 3, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 3, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 3, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 3, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 3, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 3, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 3, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 3, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 2, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 2, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 2, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 2, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 2, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 2, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 2, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 2, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 2, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 2, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 2, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 2, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 2, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 2, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 2, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 2, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 2, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 2, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 2, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 4, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 4, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 4, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 4, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 4, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 4, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 4, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 3, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 3, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 3, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 3, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 3, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 3, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 3, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 3, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 3, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 3, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 3, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 3, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 3, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 3, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 3, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 3, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 3, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 2, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 2, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 2, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 2, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 2, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 2, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 2, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 2, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 2, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 2, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 2, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 2, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 2, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 2, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 2, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 2, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 2, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 2, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 2, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 4, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 4, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 4, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 4, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 4, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 4, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 4, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 3, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 3, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 3, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 3, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 3, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 3, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 3, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 3, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 3, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 3, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 3, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 3, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 3, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 3, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 3, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 3, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 3, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 2, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 2, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 2, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 2, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 2, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 2, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 2, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 2, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 2, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 2, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 2, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 2, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 2, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 2, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 2, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 2, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 2, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 2, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 2, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 4, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 4, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 4, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 4, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 4, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 4, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 4, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 3, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 3, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 3, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 3, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 3, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 3, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 3, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 3, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 3, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 3, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 3, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 3, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 3, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 3, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 3, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 3, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 3, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 2, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 2, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 2, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 2, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 2, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 2, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 2, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 2, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 2, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 2, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 2, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 2, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 2, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 2, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 2, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 2, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 2, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 2, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 2, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 4, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 4, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 4, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 4, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 4, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 4, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 4, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 3, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 3, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 3, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 3, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 3, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 3, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 3, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 3, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 3, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 3, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 3, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 3, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 3, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 3, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 3, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'poll_remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'move_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'poll_remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'modify_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'delete_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'poll_remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'announce_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'modify_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'modify_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 3, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 3, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'modify_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 2, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 2, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 2, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 2, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 2, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 2, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 2, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 2, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 2, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 2, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 2, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'move_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 2, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'move_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'move_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 2, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 2, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 2, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 2, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 2, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 2, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 2, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 4, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 4, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 4, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 4, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 4, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 4, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 4, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 3, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 3, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 3, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 3, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 3, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 3, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 3, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 3, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 3, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 3, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 3, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 3, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 3, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 3, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 3, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 3, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 3, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 2, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 2, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 2, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 2, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 2, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 2, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 2, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 2, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 2, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 2, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 2, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 2, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 2, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 2, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 2, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 2, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 2, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 2, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 2, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 4, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 4, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 4, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 4, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 4, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 5, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 5, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 5, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 5, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 5, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 5, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 5, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 5, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 5, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 5, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 5, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 5, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 5, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 5, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 5, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 5, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 5, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 5, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 5, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 5, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 5, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 5, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 5, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 5, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 5, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 5, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 5, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 5, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 5, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 5, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 5, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 5, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 5, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 5, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 5, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 5, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 5, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 5, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 5, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 5, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 5, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 5, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 5, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 5, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 5, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 5, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 5, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 5, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 5, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 5, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 5, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 5, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 5, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 5, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 5, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 5, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 5, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 5, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 5, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 5, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 5, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 5, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 5, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 5, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 5, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 5, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 5, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 5, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 5, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 5, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 5, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 5, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 5, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 5, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 5, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 5, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 5, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 5, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 5, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 5, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 5, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 5, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 5, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 5, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 5, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 5, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 5, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 5, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 5, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 5, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 4, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 4, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 3, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 3, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 3, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 3, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 3, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 3, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 3, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 3, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 3, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 3, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 3, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 3, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 3, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 3, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 3, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 3, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 3, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 2, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 2, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 2, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 2, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 2, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 2, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 2, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 2, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 2, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 2, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 2, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 2, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 2, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 2, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 2, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 2, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 2, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'move_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 2, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 2, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 4, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 4, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 4, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 4, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 4, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 4, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 4, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 3, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 3, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 3, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 3, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 3, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 3, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 3, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 3, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 3, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 3, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 3, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 3, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 3, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 3, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 3, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 3, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 3, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 2, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 2, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 2, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 2, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 2, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 2, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 2, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 2, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 2, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 2, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 2, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 2, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 2, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 2, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 2, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 2, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 2, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 2, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 2, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'approve_posts', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'approve_posts', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'approve_posts', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 4, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 3, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 2, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (-1, 5, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 5, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 5, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 5, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 5, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 5, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 5, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 5, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 5, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 5, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'approve_posts', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 5, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'approve_posts', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 5, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'poll_remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'approve_posts', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'approve_posts', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'approve_posts', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 5, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 5, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 5, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 5, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 5, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 5, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 5, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 5, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 5, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 5, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 5, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 5, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 5, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 4, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 3, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 2, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 4, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 4, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 4, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 4, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 4, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 4, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 4, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 3, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 3, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 3, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 3, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 3, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 3, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 3, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 3, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 3, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 5, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 5, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 5, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 5, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 5, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 5, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 5, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 5, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 5, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 5, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 5, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 5, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 5, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 5, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 5, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 5, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 5, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 5, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 5, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 5, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 5, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 5, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 5, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 5, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 5, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 5, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 5, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 3, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'announce_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'announce_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'announce_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'delete_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'delete_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'delete_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'announce_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'modify_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'delete_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'move_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 5, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 3, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 3, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 3, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 3, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 3, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 3, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 3, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 2, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 2, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 2, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 2, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 2, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 2, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 2, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 2, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 2, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 2, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 2, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 2, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 2, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 2, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 2, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 2, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 2, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 2, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 2, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (-1, 4, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (-1, 3, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (-1, 2, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'poll_remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'poll_remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'poll_remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'move_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'modify_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'modify_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'modify_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'move_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'move_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'move_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'delete_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'delete_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'delete_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'announce_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'announce_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'announce_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'poll_remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 1, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'poll_remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'poll_remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'poll_remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 1, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 1, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 1, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'poll_remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'poll_remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 5, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 5, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 5, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 5, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 5, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 5, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 5, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 5, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 5, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 5, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 5, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 5, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'move_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'poll_remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (0, 1, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 1, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 1, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'move_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'move_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'move_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'move_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 1, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'poll_remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 1, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 1, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 1, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 1, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 1, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 1, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'poll_remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'poll_remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 6, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 6, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 6, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 6, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 6, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 6, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 6, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 6, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 6, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 6, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 6, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 6, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 6, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 6, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 6, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 6, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 6, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 6, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'poll_remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 6, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 6, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 6, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (14, 6, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'move_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'delete_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'delete_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'delete_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (-1, 6, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'approve_posts', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (2, 6, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'moderate_board', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'merge_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'approve_posts', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (3, 6, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'modify_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'delete_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'announce_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 6, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 6, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 6, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (13, 6, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'modify_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'make_sticky', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'poll_remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'modify_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'modify_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'modify_replies', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'move_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'move_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'move_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'move_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'poll_add_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'poll_add_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'poll_edit_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'poll_edit_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'poll_lock_any', 1);
INSERT INTO `smf_board_permissions` VALUES (9, 6, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'delete_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'poll_remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (15, 6, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 6, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'announce_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'poll_post', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'announce_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'poll_lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'announce_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'remove_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'split_any', 1);
INSERT INTO `smf_board_permissions` VALUES (10, 6, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (11, 6, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (12, 6, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 3, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 3, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 4, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 4, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 4, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 4, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 4, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 4, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (16, 4, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 2, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 2, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 2, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 2, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 2, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 2, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 2, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 2, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 2, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 2, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 2, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 2, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 2, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 2, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 2, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 2, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 2, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 2, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 2, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 3, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 3, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 3, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 3, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 3, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 3, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 3, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 3, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 3, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 3, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 3, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 3, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 3, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 3, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 3, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 3, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 3, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 4, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 4, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 4, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 4, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 4, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 4, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (17, 4, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 2, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 2, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 2, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 2, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 2, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 2, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 2, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 2, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 2, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 2, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 2, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 2, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 2, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 2, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 2, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 2, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 2, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 2, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 2, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 3, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 3, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 3, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 3, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 3, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 3, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 3, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 3, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 3, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 3, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 3, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 3, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 3, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 3, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 3, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 3, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 3, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 4, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 4, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 4, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 4, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 4, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 4, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (18, 4, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 2, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 2, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 2, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 2, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 2, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 2, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 2, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 2, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 2, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 2, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 2, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 2, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 2, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 2, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 2, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 2, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 2, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 2, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 2, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 3, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 3, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 3, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 3, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 3, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 3, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 3, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 3, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 3, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 3, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 3, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 3, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 3, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 3, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 3, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 3, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 3, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 4, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 4, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 4, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 4, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 4, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 4, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (19, 4, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 2, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 2, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 2, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 2, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 2, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 2, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 2, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 2, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 2, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 2, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 2, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 2, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 2, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 2, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 2, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 2, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 2, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 2, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 2, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 3, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 3, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 3, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 3, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 3, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 3, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 3, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 3, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 3, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 3, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 3, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 3, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 3, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 3, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 3, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 3, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 3, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 4, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 4, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 4, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 4, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 4, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 4, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (20, 4, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 2, 'post_new', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 2, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 2, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 2, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 2, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 2, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 2, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 2, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 2, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 2, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 2, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 2, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 2, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 2, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 2, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 2, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 2, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 2, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 2, 'post_unapproved_topics', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 3, 'post_reply_own', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 3, 'post_reply_any', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 3, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 3, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 3, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 3, 'lock_own', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 3, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 3, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 3, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 3, 'delete_own', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 3, 'modify_own', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 3, 'post_attachment', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 3, 'view_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 3, 'remove_own', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 3, 'post_unapproved_replies_any', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 3, 'post_unapproved_replies_own', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 3, 'post_unapproved_attachments', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 4, 'poll_view', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 4, 'poll_vote', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 4, 'report_any', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 4, 'send_topic', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 4, 'mark_any_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 4, 'mark_notify', 1);
INSERT INTO `smf_board_permissions` VALUES (21, 4, 'view_attachments', 1);
COMMIT;

-- ----------------------------
-- Table structure for smf_boards
-- ----------------------------
DROP TABLE IF EXISTS `smf_boards`;
CREATE TABLE `smf_boards` (
  `id_board` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_cat` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `child_level` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `id_parent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `board_order` smallint(5) NOT NULL DEFAULT '0',
  `id_last_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_msg_updated` int(10) unsigned NOT NULL DEFAULT '0',
  `member_groups` varchar(255) NOT NULL DEFAULT '-1,0',
  `id_profile` smallint(5) unsigned NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `num_topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `count_posts` tinyint(4) NOT NULL DEFAULT '0',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `override_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `unapproved_posts` smallint(5) NOT NULL DEFAULT '0',
  `unapproved_topics` smallint(5) NOT NULL DEFAULT '0',
  `redirect` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_board`),
  UNIQUE KEY `categories` (`id_cat`,`id_board`),
  KEY `id_parent` (`id_parent`),
  KEY `id_msg_updated` (`id_msg_updated`),
  KEY `member_groups` (`member_groups`(48))
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of smf_boards
-- ----------------------------
BEGIN;
INSERT INTO `smf_boards` VALUES (2, 2, 0, 0, 1, 964, 964, '-1,0,2,17,14,9,13,10,15,16,20,18,19,11,21,12', 5, 'Announcements', 'Senior Staff Announcements', 2, 4, 0, 0, 0, 0, 0, '');
INSERT INTO `smf_boards` VALUES (3, 2, 0, 0, 2, 961, 961, '-1,0,2,17,14,9,13,10,15,16,20,18,19,11,21,12', 1, 'Events', 'Events Coordinator Announcememnts', 24, 56, 0, 0, 0, 0, 0, '');
INSERT INTO `smf_boards` VALUES (4, 2, 0, 0, 3, 979, 979, '-1,0,2,17,14,9,13,10,15,16,20,18,19,11,21,12', 1, 'Recognition', 'Controller Promotions and Outstanding Achievements', 19, 66, 0, 0, 0, 0, 0, '');
INSERT INTO `smf_boards` VALUES (12, 1, 0, 0, 4, 948, 948, '17,14,9,13,10,15,16,20,18,19,11,21,12', 1, 'ZJX Discussion', 'Any Discussion about ZJX', 29, 82, 0, 0, 0, 0, 0, '');
INSERT INTO `smf_boards` VALUES (10, 1, 0, 0, 5, 974, 974, '17,14,9,13,10,15,16,20,18,19,11,21,12', 1, 'Training', 'Training Discussion', 35, 110, 0, 0, 0, 0, 0, '');
INSERT INTO `smf_boards` VALUES (11, 1, 0, 0, 6, 968, 968, '17,14,9,13,10,15,16,20,18,19,11,21,12', 1, 'Facility News', 'News From the Facility Engineer', 19, 64, 0, 0, 0, 0, 0, '');
INSERT INTO `smf_boards` VALUES (14, 1, 0, 0, 7, 903, 903, '17,14,9,13,10,15,16,20,18,19,11,21,12', 1, 'ZJX IT Department', 'Web Services Department Announcements, Support and Services', 12, 53, 0, 0, 0, 0, 0, '');
INSERT INTO `smf_boards` VALUES (15, 1, 0, 0, 8, 874, 874, '17,14,9,13,10,15,16,20,18,19,11,21,12', 1, 'Teamspeak', 'ZJX Teamspeak Related Discussion', 3, 7, 0, 0, 0, 0, 0, '');
INSERT INTO `smf_boards` VALUES (13, 1, 0, 0, 9, 942, 942, '17,14,9,13,10,15,16,20,18,19,11,21,12', 1, 'ZJX Events', 'Controller Event Discussion', 23, 149, 0, 0, 0, 0, 0, '');
INSERT INTO `smf_boards` VALUES (9, 1, 0, 0, 10, 957, 957, '17,14,9,13,10,15,16,20,18,19,11,21,12', 1, 'General Discussion', 'Anything and Everything goes', 34, 100, 0, 0, 0, 0, 0, '');
INSERT INTO `smf_boards` VALUES (5, 3, 0, 0, 11, 0, 0, '9,10,11,12', 1, 'Senior Staff', 'Senior Staff Discussion', 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `smf_boards` VALUES (6, 3, 0, 0, 12, 848, 848, '17,14,9,13,10,15,16,18,19,11,12', 1, 'All Staff', 'Staff Discussion', 22, 76, 0, 0, 0, 0, 0, '');
INSERT INTO `smf_boards` VALUES (7, 3, 0, 0, 13, 987, 987, '14,9,10,18,19,11,12', 1, 'Training', 'Training Staff Discussion', 26, 105, 0, 0, 0, 0, 0, '');
INSERT INTO `smf_boards` VALUES (8, 3, 0, 0, 14, 0, 0, '17,9,10,15,11,12', 1, 'Events', 'Events Admin Discussion', 0, 0, 0, 0, 0, 0, 0, '');
COMMIT;

-- ----------------------------
-- Table structure for smf_calendar
-- ----------------------------
DROP TABLE IF EXISTS `smf_calendar`;
CREATE TABLE `smf_calendar` (
  `id_event` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL DEFAULT '0001-01-01',
  `end_date` date NOT NULL DEFAULT '0001-01-01',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_event`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`),
  KEY `topic` (`id_topic`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_calendar_holidays
-- ----------------------------
DROP TABLE IF EXISTS `smf_calendar_holidays`;
CREATE TABLE `smf_calendar_holidays` (
  `id_holiday` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `event_date` date NOT NULL DEFAULT '0001-01-01',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_holiday`),
  KEY `event_date` (`event_date`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of smf_calendar_holidays
-- ----------------------------
BEGIN;
INSERT INTO `smf_calendar_holidays` VALUES (1, '0004-01-01', 'New Year\'s');
INSERT INTO `smf_calendar_holidays` VALUES (2, '0004-12-25', 'Christmas');
INSERT INTO `smf_calendar_holidays` VALUES (3, '0004-02-14', 'Valentine\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (4, '0004-03-17', 'St. Patrick\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (5, '0004-04-01', 'April Fools');
INSERT INTO `smf_calendar_holidays` VALUES (6, '0004-04-22', 'Earth Day');
INSERT INTO `smf_calendar_holidays` VALUES (7, '0004-10-24', 'United Nations Day');
INSERT INTO `smf_calendar_holidays` VALUES (8, '0004-10-31', 'Halloween');
INSERT INTO `smf_calendar_holidays` VALUES (9, '2010-05-09', 'Mother\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (10, '2011-05-08', 'Mother\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (11, '2012-05-13', 'Mother\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (12, '2013-05-12', 'Mother\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (13, '2014-05-11', 'Mother\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (14, '2015-05-10', 'Mother\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (15, '2016-05-08', 'Mother\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (16, '2017-05-14', 'Mother\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (17, '2018-05-13', 'Mother\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (18, '2019-05-12', 'Mother\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (19, '2020-05-10', 'Mother\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (20, '2008-06-15', 'Father\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (21, '2009-06-21', 'Father\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (22, '2010-06-20', 'Father\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (23, '2011-06-19', 'Father\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (24, '2012-06-17', 'Father\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (25, '2013-06-16', 'Father\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (26, '2014-06-15', 'Father\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (27, '2015-06-21', 'Father\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (28, '2016-06-19', 'Father\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (29, '2017-06-18', 'Father\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (30, '2018-06-17', 'Father\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (31, '2019-06-16', 'Father\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (32, '2020-06-21', 'Father\'s Day');
INSERT INTO `smf_calendar_holidays` VALUES (33, '2010-06-21', 'Summer Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (34, '2011-06-21', 'Summer Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (35, '2012-06-20', 'Summer Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (36, '2013-06-21', 'Summer Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (37, '2014-06-21', 'Summer Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (38, '2015-06-21', 'Summer Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (39, '2016-06-20', 'Summer Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (40, '2017-06-20', 'Summer Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (41, '2018-06-21', 'Summer Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (42, '2019-06-21', 'Summer Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (43, '2020-06-20', 'Summer Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (44, '2010-03-20', 'Vernal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (45, '2011-03-20', 'Vernal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (46, '2012-03-20', 'Vernal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (47, '2013-03-20', 'Vernal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (48, '2014-03-20', 'Vernal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (49, '2015-03-20', 'Vernal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (50, '2016-03-19', 'Vernal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (51, '2017-03-20', 'Vernal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (52, '2018-03-20', 'Vernal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (53, '2019-03-20', 'Vernal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (54, '2020-03-19', 'Vernal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (55, '2010-12-21', 'Winter Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (56, '2011-12-22', 'Winter Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (57, '2012-12-21', 'Winter Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (58, '2013-12-21', 'Winter Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (59, '2014-12-21', 'Winter Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (60, '2015-12-21', 'Winter Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (61, '2016-12-21', 'Winter Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (62, '2017-12-21', 'Winter Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (63, '2018-12-21', 'Winter Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (64, '2019-12-21', 'Winter Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (65, '2020-12-21', 'Winter Solstice');
INSERT INTO `smf_calendar_holidays` VALUES (66, '2010-09-22', 'Autumnal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (67, '2011-09-23', 'Autumnal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (68, '2012-09-22', 'Autumnal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (69, '2013-09-22', 'Autumnal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (70, '2014-09-22', 'Autumnal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (71, '2015-09-23', 'Autumnal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (72, '2016-09-22', 'Autumnal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (73, '2017-09-22', 'Autumnal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (74, '2018-09-22', 'Autumnal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (75, '2019-09-23', 'Autumnal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (76, '2020-09-22', 'Autumnal Equinox');
INSERT INTO `smf_calendar_holidays` VALUES (77, '0004-07-04', 'Independence Day');
INSERT INTO `smf_calendar_holidays` VALUES (78, '0004-05-05', 'Cinco de Mayo');
INSERT INTO `smf_calendar_holidays` VALUES (79, '0004-06-14', 'Flag Day');
INSERT INTO `smf_calendar_holidays` VALUES (80, '0004-11-11', 'Veterans Day');
INSERT INTO `smf_calendar_holidays` VALUES (81, '0004-02-02', 'Groundhog Day');
INSERT INTO `smf_calendar_holidays` VALUES (82, '2010-11-25', 'Thanksgiving');
INSERT INTO `smf_calendar_holidays` VALUES (83, '2011-11-24', 'Thanksgiving');
INSERT INTO `smf_calendar_holidays` VALUES (84, '2012-11-22', 'Thanksgiving');
INSERT INTO `smf_calendar_holidays` VALUES (85, '2013-11-28', 'Thanksgiving');
INSERT INTO `smf_calendar_holidays` VALUES (86, '2014-11-27', 'Thanksgiving');
INSERT INTO `smf_calendar_holidays` VALUES (87, '2015-11-26', 'Thanksgiving');
INSERT INTO `smf_calendar_holidays` VALUES (88, '2016-11-24', 'Thanksgiving');
INSERT INTO `smf_calendar_holidays` VALUES (89, '2017-11-23', 'Thanksgiving');
INSERT INTO `smf_calendar_holidays` VALUES (90, '2018-11-22', 'Thanksgiving');
INSERT INTO `smf_calendar_holidays` VALUES (91, '2019-11-28', 'Thanksgiving');
INSERT INTO `smf_calendar_holidays` VALUES (92, '2020-11-26', 'Thanksgiving');
INSERT INTO `smf_calendar_holidays` VALUES (93, '2010-05-31', 'Memorial Day');
INSERT INTO `smf_calendar_holidays` VALUES (94, '2011-05-30', 'Memorial Day');
INSERT INTO `smf_calendar_holidays` VALUES (95, '2012-05-28', 'Memorial Day');
INSERT INTO `smf_calendar_holidays` VALUES (96, '2013-05-27', 'Memorial Day');
INSERT INTO `smf_calendar_holidays` VALUES (97, '2014-05-26', 'Memorial Day');
INSERT INTO `smf_calendar_holidays` VALUES (98, '2015-05-25', 'Memorial Day');
INSERT INTO `smf_calendar_holidays` VALUES (99, '2016-05-30', 'Memorial Day');
INSERT INTO `smf_calendar_holidays` VALUES (100, '2017-05-29', 'Memorial Day');
INSERT INTO `smf_calendar_holidays` VALUES (101, '2018-05-28', 'Memorial Day');
INSERT INTO `smf_calendar_holidays` VALUES (102, '2019-05-27', 'Memorial Day');
INSERT INTO `smf_calendar_holidays` VALUES (103, '2020-05-25', 'Memorial Day');
INSERT INTO `smf_calendar_holidays` VALUES (104, '2010-09-06', 'Labor Day');
INSERT INTO `smf_calendar_holidays` VALUES (105, '2011-09-05', 'Labor Day');
INSERT INTO `smf_calendar_holidays` VALUES (106, '2012-09-03', 'Labor Day');
INSERT INTO `smf_calendar_holidays` VALUES (107, '2013-09-02', 'Labor Day');
INSERT INTO `smf_calendar_holidays` VALUES (108, '2014-09-01', 'Labor Day');
INSERT INTO `smf_calendar_holidays` VALUES (109, '2015-09-07', 'Labor Day');
INSERT INTO `smf_calendar_holidays` VALUES (110, '2016-09-05', 'Labor Day');
INSERT INTO `smf_calendar_holidays` VALUES (111, '2017-09-04', 'Labor Day');
INSERT INTO `smf_calendar_holidays` VALUES (112, '2018-09-03', 'Labor Day');
INSERT INTO `smf_calendar_holidays` VALUES (113, '2019-09-02', 'Labor Day');
INSERT INTO `smf_calendar_holidays` VALUES (114, '2020-09-07', 'Labor Day');
INSERT INTO `smf_calendar_holidays` VALUES (115, '0004-06-06', 'D-Day');
COMMIT;

-- ----------------------------
-- Table structure for smf_categories
-- ----------------------------
DROP TABLE IF EXISTS `smf_categories`;
CREATE TABLE `smf_categories` (
  `id_cat` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `cat_order` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `can_collapse` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_cat`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of smf_categories
-- ----------------------------
BEGIN;
INSERT INTO `smf_categories` VALUES (2, 0, 'Water Cooler', 1);
INSERT INTO `smf_categories` VALUES (1, 1, 'ZJX Controllers', 1);
INSERT INTO `smf_categories` VALUES (3, 2, 'Staff Forums', 1);
COMMIT;

-- ----------------------------
-- Table structure for smf_collapsed_categories
-- ----------------------------
DROP TABLE IF EXISTS `smf_collapsed_categories`;
CREATE TABLE `smf_collapsed_categories` (
  `id_cat` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_cat`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_custom_fields
-- ----------------------------
DROP TABLE IF EXISTS `smf_custom_fields`;
CREATE TABLE `smf_custom_fields` (
  `id_field` smallint(5) NOT NULL AUTO_INCREMENT,
  `col_name` varchar(12) NOT NULL DEFAULT '',
  `field_name` varchar(40) NOT NULL DEFAULT '',
  `field_desc` varchar(255) NOT NULL DEFAULT '',
  `field_type` varchar(8) NOT NULL DEFAULT 'text',
  `field_length` smallint(5) NOT NULL DEFAULT '255',
  `field_options` text NOT NULL,
  `mask` varchar(255) NOT NULL DEFAULT '',
  `show_reg` tinyint(3) NOT NULL DEFAULT '0',
  `show_display` tinyint(3) NOT NULL DEFAULT '0',
  `show_profile` varchar(20) NOT NULL DEFAULT 'forumprofile',
  `private` tinyint(3) NOT NULL DEFAULT '0',
  `active` tinyint(3) NOT NULL DEFAULT '1',
  `bbc` tinyint(3) NOT NULL DEFAULT '0',
  `can_search` tinyint(3) NOT NULL DEFAULT '0',
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `enclose` text NOT NULL,
  `placement` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_field`),
  UNIQUE KEY `col_name` (`col_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_group_moderators
-- ----------------------------
DROP TABLE IF EXISTS `smf_group_moderators`;
CREATE TABLE `smf_group_moderators` (
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_group`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_actions
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_actions`;
CREATE TABLE `smf_log_actions` (
  `id_action` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_log` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `extra` text NOT NULL,
  PRIMARY KEY (`id_action`),
  KEY `id_log` (`id_log`),
  KEY `log_time` (`log_time`),
  KEY `id_member` (`id_member`),
  KEY `id_board` (`id_board`),
  KEY `id_msg` (`id_msg`)
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for smf_log_activity
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_activity`;
CREATE TABLE `smf_log_activity` (
  `date` date NOT NULL DEFAULT '0001-01-01',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topics` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posts` smallint(5) unsigned NOT NULL DEFAULT '0',
  `registers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `most_on` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`),
  KEY `most_on` (`most_on`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_banned
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_banned`;
CREATE TABLE `smf_log_banned` (
  `id_ban_log` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ban_log`),
  KEY `log_time` (`log_time`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_boards
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_boards`;
CREATE TABLE `smf_log_boards` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_board`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_comments
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_comments`;
CREATE TABLE `smf_log_comments` (
  `id_comment` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `member_name` varchar(80) NOT NULL DEFAULT '',
  `comment_type` varchar(8) NOT NULL DEFAULT 'warning',
  `id_recipient` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recipient_name` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) NOT NULL DEFAULT '0',
  `id_notice` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `counter` tinyint(3) NOT NULL DEFAULT '0',
  `body` text NOT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `id_recipient` (`id_recipient`),
  KEY `log_time` (`log_time`),
  KEY `comment_type` (`comment_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_digest
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_digest`;
CREATE TABLE `smf_log_digest` (
  `id_topic` mediumint(8) unsigned NOT NULL,
  `id_msg` int(10) unsigned NOT NULL,
  `note_type` varchar(10) NOT NULL DEFAULT 'post',
  `daily` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exclude` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for smf_log_errors
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_errors`;
CREATE TABLE `smf_log_errors` (
  `id_error` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `message` text NOT NULL,
  `session` char(32) NOT NULL DEFAULT '',
  `error_type` char(15) NOT NULL DEFAULT 'general',
  `file` varchar(255) NOT NULL DEFAULT '',
  `line` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_error`),
  KEY `log_time` (`log_time`),
  KEY `id_member` (`id_member`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for smf_log_floodcontrol
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_floodcontrol`;
CREATE TABLE `smf_log_floodcontrol` (
  `ip` char(16) NOT NULL DEFAULT '',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `log_type` varchar(8) NOT NULL DEFAULT 'post',
  PRIMARY KEY (`ip`,`log_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_group_requests
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_group_requests`;
CREATE TABLE `smf_log_group_requests` (
  `id_request` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `time_applied` int(10) unsigned NOT NULL DEFAULT '0',
  `reason` text NOT NULL,
  PRIMARY KEY (`id_request`),
  UNIQUE KEY `id_member` (`id_member`,`id_group`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_karma
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_karma`;
CREATE TABLE `smf_log_karma` (
  `id_target` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_executor` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_target`,`id_executor`),
  KEY `log_time` (`log_time`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_mark_read
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_mark_read`;
CREATE TABLE `smf_log_mark_read` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_board`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for smf_log_member_notices
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_member_notices`;
CREATE TABLE `smf_log_member_notices` (
  `id_notice` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  PRIMARY KEY (`id_notice`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_notify
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_notify`;
CREATE TABLE `smf_log_notify` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_topic`,`id_board`),
  KEY `id_topic` (`id_topic`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for smf_log_online
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_online`;
CREATE TABLE `smf_log_online` (
  `session` varchar(32) NOT NULL DEFAULT '',
  `log_time` int(10) NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `url` text NOT NULL,
  PRIMARY KEY (`session`),
  KEY `log_time` (`log_time`),
  KEY `id_member` (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_packages
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_packages`;
CREATE TABLE `smf_log_packages` (
  `id_install` int(10) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `package_id` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(255) NOT NULL DEFAULT '',
  `id_member_installed` mediumint(8) NOT NULL DEFAULT '0',
  `member_installed` varchar(255) NOT NULL DEFAULT '',
  `time_installed` int(10) NOT NULL DEFAULT '0',
  `id_member_removed` mediumint(8) NOT NULL DEFAULT '0',
  `member_removed` varchar(255) NOT NULL DEFAULT '',
  `time_removed` int(10) NOT NULL DEFAULT '0',
  `install_state` tinyint(3) NOT NULL DEFAULT '1',
  `failed_steps` text NOT NULL,
  `themes_installed` varchar(255) NOT NULL DEFAULT '',
  `db_changes` text NOT NULL,
  PRIMARY KEY (`id_install`),
  KEY `filename` (`filename`(15))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_polls
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_polls`;
CREATE TABLE `smf_log_polls` (
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_choice` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `id_poll` (`id_poll`,`id_member`,`id_choice`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_reported
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_reported`;
CREATE TABLE `smf_log_reported` (
  `id_report` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `membername` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `time_started` int(10) NOT NULL DEFAULT '0',
  `time_updated` int(10) NOT NULL DEFAULT '0',
  `num_reports` mediumint(6) NOT NULL DEFAULT '0',
  `closed` tinyint(3) NOT NULL DEFAULT '0',
  `ignore_all` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_report`),
  KEY `id_member` (`id_member`),
  KEY `id_topic` (`id_topic`),
  KEY `closed` (`closed`),
  KEY `time_started` (`time_started`),
  KEY `id_msg` (`id_msg`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_reported_comments
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_reported_comments`;
CREATE TABLE `smf_log_reported_comments` (
  `id_comment` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_report` mediumint(8) NOT NULL DEFAULT '0',
  `id_member` mediumint(8) NOT NULL,
  `membername` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `member_ip` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `time_sent` int(10) NOT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `id_report` (`id_report`),
  KEY `id_member` (`id_member`),
  KEY `time_sent` (`time_sent`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_scheduled_tasks
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_scheduled_tasks`;
CREATE TABLE `smf_log_scheduled_tasks` (
  `id_log` mediumint(8) NOT NULL AUTO_INCREMENT,
  `id_task` smallint(5) NOT NULL DEFAULT '0',
  `time_run` int(10) NOT NULL DEFAULT '0',
  `time_taken` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_log`)
) ENGINE=MyISAM AUTO_INCREMENT=8667 DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for smf_log_search_messages
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_search_messages`;
CREATE TABLE `smf_log_search_messages` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_search`,`id_msg`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_search_results
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_search_results`;
CREATE TABLE `smf_log_search_results` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `relevance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `num_matches` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_search`,`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_search_subjects
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_search_subjects`;
CREATE TABLE `smf_log_search_subjects` (
  `word` varchar(20) NOT NULL DEFAULT '',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word`,`id_topic`),
  KEY `id_topic` (`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_search_topics
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_search_topics`;
CREATE TABLE `smf_log_search_topics` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_search`,`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_spider_hits
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_spider_hits`;
CREATE TABLE `smf_log_spider_hits` (
  `id_hit` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `processed` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_hit`),
  KEY `id_spider` (`id_spider`),
  KEY `log_time` (`log_time`),
  KEY `processed` (`processed`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_spider_stats
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_spider_stats`;
CREATE TABLE `smf_log_spider_stats` (
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `page_hits` smallint(5) unsigned NOT NULL DEFAULT '0',
  `last_seen` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_date` date NOT NULL DEFAULT '0001-01-01',
  PRIMARY KEY (`stat_date`,`id_spider`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_subscribed
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_subscribed`;
CREATE TABLE `smf_log_subscribed` (
  `id_sublog` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_subscribe` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member` int(10) NOT NULL DEFAULT '0',
  `old_id_group` smallint(5) NOT NULL DEFAULT '0',
  `start_time` int(10) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `payments_pending` tinyint(3) NOT NULL DEFAULT '0',
  `pending_details` text NOT NULL,
  `reminder_sent` tinyint(3) NOT NULL DEFAULT '0',
  `vendor_ref` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_sublog`),
  UNIQUE KEY `id_subscribe` (`id_subscribe`,`id_member`),
  KEY `end_time` (`end_time`),
  KEY `reminder_sent` (`reminder_sent`),
  KEY `payments_pending` (`payments_pending`),
  KEY `status` (`status`),
  KEY `id_member` (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_log_topics
-- ----------------------------
DROP TABLE IF EXISTS `smf_log_topics`;
CREATE TABLE `smf_log_topics` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_topic`),
  KEY `id_topic` (`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_mail_queue
-- ----------------------------
DROP TABLE IF EXISTS `smf_mail_queue`;
CREATE TABLE `smf_mail_queue` (
  `id_mail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time_sent` int(10) NOT NULL DEFAULT '0',
  `recipient` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `headers` text NOT NULL,
  `send_html` tinyint(3) NOT NULL DEFAULT '0',
  `priority` tinyint(3) NOT NULL DEFAULT '1',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_mail`),
  KEY `time_sent` (`time_sent`),
  KEY `mail_priority` (`priority`,`id_mail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_membergroups
-- ----------------------------
DROP TABLE IF EXISTS `smf_membergroups`;
CREATE TABLE `smf_membergroups` (
  `id_group` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(80) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `online_color` varchar(20) NOT NULL DEFAULT '',
  `min_posts` mediumint(9) NOT NULL DEFAULT '-1',
  `max_messages` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stars` varchar(255) NOT NULL DEFAULT '',
  `group_type` tinyint(3) NOT NULL DEFAULT '0',
  `hidden` tinyint(3) NOT NULL DEFAULT '0',
  `id_parent` smallint(5) NOT NULL DEFAULT '-2',
  PRIMARY KEY (`id_group`),
  KEY `min_posts` (`min_posts`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of smf_membergroups
-- ----------------------------
BEGIN;
INSERT INTO `smf_membergroups` VALUES (1, 'Administrator', '', '#FF0000', -1, 0, '5#staradmin.gif', 1, 0, -2);
INSERT INTO `smf_membergroups` VALUES (2, 'Global Moderator', '', '#0000FF', -1, 0, '5#stargmod.gif', 0, 0, -2);
INSERT INTO `smf_membergroups` VALUES (3, 'Moderator', '', '', -1, 0, '', 0, 0, -2);
INSERT INTO `smf_membergroups` VALUES (9, 'ATM', '', '#FF0000', -1, 0, '5#staradmin.gif', 0, 0, -2);
INSERT INTO `smf_membergroups` VALUES (10, 'DATM', '', '#FF0000', -1, 0, '5#staradmin.gif', 0, 0, 9);
INSERT INTO `smf_membergroups` VALUES (11, 'TA', '', '#FF0000', -1, 0, '5#staradmin.gif', 0, 0, 9);
INSERT INTO `smf_membergroups` VALUES (12, 'WM', '', '#FF0000', -1, 0, '5#staradmin.gif', 0, 0, 9);
INSERT INTO `smf_membergroups` VALUES (13, 'AWM', '', '#0000FF', -1, 0, '3#stargmod.gif', 0, 0, 17);
INSERT INTO `smf_membergroups` VALUES (14, 'ATA', '', '#0000FF', -1, 0, '3#stargmod.gif', 0, 0, 17);
INSERT INTO `smf_membergroups` VALUES (15, 'EC', '', '#0000FF', -1, 0, '3#stargmod.gif', 0, 0, 17);
INSERT INTO `smf_membergroups` VALUES (16, 'FE', '', '#0000FF', -1, 0, '3#stargmod.gif', 0, 0, -2);
INSERT INTO `smf_membergroups` VALUES (17, 'AEC', '', '#0000FF', -1, 0, '3#stargmod.gif', 0, 0, -2);
INSERT INTO `smf_membergroups` VALUES (18, 'INS', '', '#FFA500', -1, 0, '2#starmod.gif', 0, 0, 17);
INSERT INTO `smf_membergroups` VALUES (19, 'MTR', '', '#FFA500', -1, 0, '2#starmod.gif', 0, 0, 17);
INSERT INTO `smf_membergroups` VALUES (20, 'Home Controller', '', '#00FF00', -1, 0, '1#star.gif', 0, 0, 0);
INSERT INTO `smf_membergroups` VALUES (21, 'Visiting Controller', '', '#00FF00', -1, 0, '1#star.gif', 0, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for smf_members
-- ----------------------------
DROP TABLE IF EXISTS `smf_members`;
CREATE TABLE `smf_members` (
  `id_member` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `member_name` varchar(80) NOT NULL DEFAULT '',
  `date_registered` int(10) unsigned NOT NULL DEFAULT '0',
  `posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lngfile` varchar(255) NOT NULL DEFAULT '',
  `last_login` int(10) unsigned NOT NULL DEFAULT '0',
  `real_name` varchar(255) NOT NULL DEFAULT '',
  `instant_messages` smallint(5) NOT NULL DEFAULT '0',
  `unread_messages` smallint(5) NOT NULL DEFAULT '0',
  `new_pm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `buddy_list` text NOT NULL,
  `pm_ignore_list` varchar(255) NOT NULL DEFAULT '',
  `pm_prefs` mediumint(8) NOT NULL DEFAULT '0',
  `mod_prefs` varchar(20) NOT NULL DEFAULT '',
  `message_labels` text NOT NULL,
  `passwd` varchar(64) NOT NULL DEFAULT '',
  `openid_uri` text NOT NULL,
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `personal_text` varchar(255) NOT NULL DEFAULT '',
  `gender` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `birthdate` date NOT NULL DEFAULT '0001-01-01',
  `website_title` varchar(255) NOT NULL DEFAULT '',
  `website_url` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `icq` varchar(255) NOT NULL DEFAULT '',
  `aim` varchar(255) NOT NULL DEFAULT '',
  `yim` varchar(32) NOT NULL DEFAULT '',
  `msn` varchar(255) NOT NULL DEFAULT '',
  `hide_email` tinyint(4) NOT NULL DEFAULT '0',
  `show_online` tinyint(4) NOT NULL DEFAULT '1',
  `time_format` varchar(80) NOT NULL DEFAULT '',
  `signature` text NOT NULL,
  `time_offset` float NOT NULL DEFAULT '0',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `pm_email_notify` tinyint(4) NOT NULL DEFAULT '0',
  `karma_bad` smallint(5) unsigned NOT NULL DEFAULT '0',
  `karma_good` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usertitle` varchar(255) NOT NULL DEFAULT '',
  `notify_announcements` tinyint(4) NOT NULL DEFAULT '1',
  `notify_regularity` tinyint(4) NOT NULL DEFAULT '1',
  `notify_send_body` tinyint(4) NOT NULL DEFAULT '0',
  `notify_types` tinyint(4) NOT NULL DEFAULT '2',
  `member_ip` varchar(255) NOT NULL DEFAULT '',
  `member_ip2` varchar(255) NOT NULL DEFAULT '',
  `secret_question` varchar(255) NOT NULL DEFAULT '',
  `secret_answer` varchar(64) NOT NULL DEFAULT '',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `validation_code` varchar(10) NOT NULL DEFAULT '',
  `id_msg_last_visit` int(10) unsigned NOT NULL DEFAULT '0',
  `additional_groups` varchar(255) NOT NULL DEFAULT '',
  `smiley_set` varchar(48) NOT NULL DEFAULT '',
  `id_post_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_time_logged_in` int(10) unsigned NOT NULL DEFAULT '0',
  `password_salt` varchar(255) NOT NULL DEFAULT '',
  `ignore_boards` text NOT NULL,
  `warning` tinyint(4) NOT NULL DEFAULT '0',
  `passwd_flood` varchar(12) NOT NULL DEFAULT '',
  `pm_receive_from` tinyint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_member`),
  KEY `member_name` (`member_name`),
  KEY `real_name` (`real_name`),
  KEY `date_registered` (`date_registered`),
  KEY `id_group` (`id_group`),
  KEY `birthdate` (`birthdate`),
  KEY `posts` (`posts`),
  KEY `last_login` (`last_login`),
  KEY `lngfile` (`lngfile`(30)),
  KEY `id_post_group` (`id_post_group`),
  KEY `warning` (`warning`),
  KEY `total_time_logged_in` (`total_time_logged_in`),
  KEY `id_theme` (`id_theme`)
) ENGINE=MyISAM AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;

-- ----------------------------

-- ----------------------------
-- Table structure for smf_message_icons
-- ----------------------------
DROP TABLE IF EXISTS `smf_message_icons`;
CREATE TABLE `smf_message_icons` (
  `id_icon` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `filename` varchar(80) NOT NULL DEFAULT '',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_icon`),
  KEY `id_board` (`id_board`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for smf_messages
-- ----------------------------
DROP TABLE IF EXISTS `smf_messages`;
CREATE TABLE `smf_messages` (
  `id_msg` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `poster_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg_modified` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `poster_name` varchar(255) NOT NULL DEFAULT '',
  `poster_email` varchar(255) NOT NULL DEFAULT '',
  `poster_ip` varchar(255) NOT NULL DEFAULT '',
  `smileys_enabled` tinyint(4) NOT NULL DEFAULT '1',
  `modified_time` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_name` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `icon` varchar(16) NOT NULL DEFAULT 'xx',
  `approved` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_msg`),
  UNIQUE KEY `topic` (`id_topic`,`id_msg`),
  UNIQUE KEY `id_board` (`id_board`,`id_msg`),
  UNIQUE KEY `id_member` (`id_member`,`id_msg`),
  KEY `approved` (`approved`),
  KEY `ip_index` (`poster_ip`(15),`id_topic`),
  KEY `participation` (`id_member`,`id_topic`),
  KEY `show_posts` (`id_member`,`id_board`),
  KEY `id_topic` (`id_topic`),
  KEY `id_member_msg` (`id_member`,`approved`,`id_msg`),
  KEY `current_topic` (`id_topic`,`id_msg`,`id_member`,`approved`),
  KEY `related_ip` (`id_member`,`poster_ip`,`id_msg`)
) ENGINE=MyISAM AUTO_INCREMENT=988 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_moderators
-- ----------------------------
DROP TABLE IF EXISTS `smf_moderators`;
CREATE TABLE `smf_moderators` (
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_board`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_openid_assoc
-- ----------------------------
DROP TABLE IF EXISTS `smf_openid_assoc`;
CREATE TABLE `smf_openid_assoc` (
  `server_url` text NOT NULL,
  `handle` varchar(255) NOT NULL DEFAULT '',
  `secret` text NOT NULL,
  `issued` int(10) NOT NULL DEFAULT '0',
  `expires` int(10) NOT NULL DEFAULT '0',
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`server_url`(125),`handle`(125)),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_package_servers
-- ----------------------------
DROP TABLE IF EXISTS `smf_package_servers`;
CREATE TABLE `smf_package_servers` (
  `id_server` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_server`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of smf_package_servers
-- ----------------------------
BEGIN;
INSERT INTO `smf_package_servers` VALUES (1, 'Simple Machines Third-party Mod Site', 'http://custom.simplemachines.org/packages/mods');
COMMIT;

-- ----------------------------
-- Table structure for smf_permission_profiles
-- ----------------------------
DROP TABLE IF EXISTS `smf_permission_profiles`;
CREATE TABLE `smf_permission_profiles` (
  `id_profile` smallint(5) NOT NULL AUTO_INCREMENT,
  `profile_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_profile`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of smf_permission_profiles
-- ----------------------------
BEGIN;
INSERT INTO `smf_permission_profiles` VALUES (1, 'default');
INSERT INTO `smf_permission_profiles` VALUES (2, 'no_polls');
INSERT INTO `smf_permission_profiles` VALUES (3, 'reply_only');
INSERT INTO `smf_permission_profiles` VALUES (4, 'read_only');
INSERT INTO `smf_permission_profiles` VALUES (5, 'Staff');
COMMIT;

-- ----------------------------
-- Table structure for smf_permissions
-- ----------------------------
DROP TABLE IF EXISTS `smf_permissions`;
CREATE TABLE `smf_permissions` (
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `permission` varchar(30) NOT NULL DEFAULT '',
  `add_deny` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_group`,`permission`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of smf_permissions
-- ----------------------------
BEGIN;
INSERT INTO `smf_permissions` VALUES (-1, 'search_posts', 1);
INSERT INTO `smf_permissions` VALUES (-1, 'calendar_view', 1);
INSERT INTO `smf_permissions` VALUES (-1, 'view_stats', 1);
INSERT INTO `smf_permissions` VALUES (-1, 'profile_view_any', 1);
INSERT INTO `smf_permissions` VALUES (0, 'profile_view_own', 1);
INSERT INTO `smf_permissions` VALUES (0, 'pm_send', 1);
INSERT INTO `smf_permissions` VALUES (0, 'profile_view_any', 1);
INSERT INTO `smf_permissions` VALUES (0, 'calendar_view', 1);
INSERT INTO `smf_permissions` VALUES (0, 'view_stats', 1);
INSERT INTO `smf_permissions` VALUES (0, 'view_mlist', 1);
INSERT INTO `smf_permissions` VALUES (0, 'who_view', 1);
INSERT INTO `smf_permissions` VALUES (0, 'search_posts', 1);
INSERT INTO `smf_permissions` VALUES (2, 'view_mlist', 1);
INSERT INTO `smf_permissions` VALUES (2, 'search_posts', 1);
INSERT INTO `smf_permissions` VALUES (2, 'profile_view_own', 1);
INSERT INTO `smf_permissions` VALUES (2, 'profile_view_any', 1);
INSERT INTO `smf_permissions` VALUES (2, 'pm_read', 1);
INSERT INTO `smf_permissions` VALUES (2, 'pm_send', 1);
INSERT INTO `smf_permissions` VALUES (2, 'calendar_view', 1);
INSERT INTO `smf_permissions` VALUES (2, 'view_stats', 1);
INSERT INTO `smf_permissions` VALUES (2, 'who_view', 1);
INSERT INTO `smf_permissions` VALUES (2, 'profile_identity_own', 1);
INSERT INTO `smf_permissions` VALUES (2, 'profile_extra_own', 1);
INSERT INTO `smf_permissions` VALUES (2, 'profile_remove_own', 1);
INSERT INTO `smf_permissions` VALUES (2, 'profile_server_avatar', 1);
INSERT INTO `smf_permissions` VALUES (2, 'profile_upload_avatar', 1);
INSERT INTO `smf_permissions` VALUES (2, 'profile_remote_avatar', 1);
INSERT INTO `smf_permissions` VALUES (2, 'profile_title_own', 1);
INSERT INTO `smf_permissions` VALUES (2, 'calendar_post', 1);
INSERT INTO `smf_permissions` VALUES (2, 'calendar_edit_any', 1);
INSERT INTO `smf_permissions` VALUES (2, 'karma_edit', 1);
INSERT INTO `smf_permissions` VALUES (2, 'access_mod_center', 1);
INSERT INTO `smf_permissions` VALUES (10, 'profile_extra_own', 1);
INSERT INTO `smf_permissions` VALUES (9, 'profile_view_any', 1);
INSERT INTO `smf_permissions` VALUES (12, 'profile_extra_any', 1);
INSERT INTO `smf_permissions` VALUES (9, 'karma_edit', 1);
INSERT INTO `smf_permissions` VALUES (11, 'profile_extra_any', 1);
INSERT INTO `smf_permissions` VALUES (9, 'access_mod_center', 1);
INSERT INTO `smf_permissions` VALUES (10, 'profile_extra_any', 1);
INSERT INTO `smf_permissions` VALUES (9, 'moderate_forum', 1);
INSERT INTO `smf_permissions` VALUES (12, 'pm_send', 1);
INSERT INTO `smf_permissions` VALUES (9, 'profile_identity_any', 1);
INSERT INTO `smf_permissions` VALUES (11, 'pm_send', 1);
INSERT INTO `smf_permissions` VALUES (9, 'profile_extra_any', 1);
INSERT INTO `smf_permissions` VALUES (10, 'pm_send', 1);
INSERT INTO `smf_permissions` VALUES (9, 'profile_title_any', 1);
INSERT INTO `smf_permissions` VALUES (12, 'pm_read', 1);
INSERT INTO `smf_permissions` VALUES (10, 'pm_read', 1);
INSERT INTO `smf_permissions` VALUES (9, 'profile_remove_any', 1);
INSERT INTO `smf_permissions` VALUES (9, 'profile_view_own', 1);
INSERT INTO `smf_permissions` VALUES (9, 'calendar_view', 1);
INSERT INTO `smf_permissions` VALUES (10, 'moderate_forum', 1);
INSERT INTO `smf_permissions` VALUES (9, 'search_posts', 1);
INSERT INTO `smf_permissions` VALUES (12, 'moderate_forum', 1);
INSERT INTO `smf_permissions` VALUES (9, 'who_view', 1);
INSERT INTO `smf_permissions` VALUES (10, 'edit_news', 1);
INSERT INTO `smf_permissions` VALUES (9, 'view_mlist', 1);
INSERT INTO `smf_permissions` VALUES (11, 'moderate_forum', 1);
INSERT INTO `smf_permissions` VALUES (9, 'view_stats', 1);
INSERT INTO `smf_permissions` VALUES (12, 'manage_smileys', 1);
INSERT INTO `smf_permissions` VALUES (11, 'manage_smileys', 1);
INSERT INTO `smf_permissions` VALUES (10, 'manage_smileys', 1);
INSERT INTO `smf_permissions` VALUES (12, 'manage_permissions', 1);
INSERT INTO `smf_permissions` VALUES (11, 'manage_permissions', 1);
INSERT INTO `smf_permissions` VALUES (10, 'manage_permissions', 1);
INSERT INTO `smf_permissions` VALUES (12, 'manage_membergroups', 1);
INSERT INTO `smf_permissions` VALUES (11, 'manage_membergroups', 1);
INSERT INTO `smf_permissions` VALUES (10, 'manage_membergroups', 1);
INSERT INTO `smf_permissions` VALUES (12, 'manage_boards', 1);
INSERT INTO `smf_permissions` VALUES (11, 'manage_boards', 1);
INSERT INTO `smf_permissions` VALUES (10, 'manage_boards', 1);
INSERT INTO `smf_permissions` VALUES (12, 'manage_bans', 1);
INSERT INTO `smf_permissions` VALUES (11, 'manage_bans', 1);
INSERT INTO `smf_permissions` VALUES (10, 'manage_bans', 1);
INSERT INTO `smf_permissions` VALUES (12, 'manage_attachments', 1);
INSERT INTO `smf_permissions` VALUES (11, 'manage_attachments', 1);
INSERT INTO `smf_permissions` VALUES (10, 'manage_attachments', 1);
INSERT INTO `smf_permissions` VALUES (12, 'karma_edit', 1);
INSERT INTO `smf_permissions` VALUES (11, 'karma_edit', 1);
INSERT INTO `smf_permissions` VALUES (16, 'view_stats', 1);
INSERT INTO `smf_permissions` VALUES (13, 'who_view', 1);
INSERT INTO `smf_permissions` VALUES (19, 'view_stats', 1);
INSERT INTO `smf_permissions` VALUES (18, 'view_stats', 1);
INSERT INTO `smf_permissions` VALUES (17, 'access_mod_center', 1);
INSERT INTO `smf_permissions` VALUES (17, 'karma_edit', 1);
INSERT INTO `smf_permissions` VALUES (17, 'profile_view_own', 1);
INSERT INTO `smf_permissions` VALUES (0, 'pm_read', 1);
INSERT INTO `smf_permissions` VALUES (15, 'view_stats', 1);
INSERT INTO `smf_permissions` VALUES (14, 'view_stats', 1);
INSERT INTO `smf_permissions` VALUES (16, 'view_mlist', 1);
INSERT INTO `smf_permissions` VALUES (13, 'view_stats', 1);
INSERT INTO `smf_permissions` VALUES (19, 'view_mlist', 1);
INSERT INTO `smf_permissions` VALUES (18, 'view_mlist', 1);
INSERT INTO `smf_permissions` VALUES (15, 'view_mlist', 1);
INSERT INTO `smf_permissions` VALUES (14, 'view_mlist', 1);
INSERT INTO `smf_permissions` VALUES (13, 'view_mlist', 1);
INSERT INTO `smf_permissions` VALUES (19, 'search_posts', 1);
INSERT INTO `smf_permissions` VALUES (18, 'search_posts', 1);
INSERT INTO `smf_permissions` VALUES (15, 'search_posts', 1);
INSERT INTO `smf_permissions` VALUES (14, 'search_posts', 1);
INSERT INTO `smf_permissions` VALUES (16, 'karma_edit', 1);
INSERT INTO `smf_permissions` VALUES (13, 'search_posts', 1);
INSERT INTO `smf_permissions` VALUES (19, 'profile_view_own', 1);
INSERT INTO `smf_permissions` VALUES (18, 'profile_view_own', 1);
INSERT INTO `smf_permissions` VALUES (15, 'profile_view_own', 1);
INSERT INTO `smf_permissions` VALUES (14, 'profile_view_own', 1);
INSERT INTO `smf_permissions` VALUES (16, 'profile_extra_own', 1);
INSERT INTO `smf_permissions` VALUES (13, 'profile_view_own', 1);
INSERT INTO `smf_permissions` VALUES (19, 'profile_view_any', 1);
INSERT INTO `smf_permissions` VALUES (18, 'profile_view_any', 1);
INSERT INTO `smf_permissions` VALUES (15, 'profile_view_any', 1);
INSERT INTO `smf_permissions` VALUES (14, 'profile_view_any', 1);
INSERT INTO `smf_permissions` VALUES (16, 'calendar_view', 1);
INSERT INTO `smf_permissions` VALUES (13, 'profile_view_any', 1);
INSERT INTO `smf_permissions` VALUES (19, 'profile_title_own', 1);
INSERT INTO `smf_permissions` VALUES (18, 'profile_title_own', 1);
INSERT INTO `smf_permissions` VALUES (17, 'profile_view_any', 1);
INSERT INTO `smf_permissions` VALUES (17, 'who_view', 1);
INSERT INTO `smf_permissions` VALUES (17, 'search_posts', 1);
INSERT INTO `smf_permissions` VALUES (17, 'view_mlist', 1);
INSERT INTO `smf_permissions` VALUES (17, 'view_stats', 1);
INSERT INTO `smf_permissions` VALUES (15, 'profile_title_own', 1);
INSERT INTO `smf_permissions` VALUES (16, 'access_mod_center', 1);
INSERT INTO `smf_permissions` VALUES (14, 'profile_title_own', 1);
INSERT INTO `smf_permissions` VALUES (13, 'profile_title_own', 1);
INSERT INTO `smf_permissions` VALUES (19, 'profile_identity_own', 1);
INSERT INTO `smf_permissions` VALUES (18, 'profile_identity_own', 1);
INSERT INTO `smf_permissions` VALUES (15, 'profile_identity_own', 1);
INSERT INTO `smf_permissions` VALUES (14, 'profile_identity_own', 1);
INSERT INTO `smf_permissions` VALUES (13, 'profile_identity_own', 1);
INSERT INTO `smf_permissions` VALUES (19, 'profile_extra_own', 1);
INSERT INTO `smf_permissions` VALUES (18, 'profile_extra_own', 1);
INSERT INTO `smf_permissions` VALUES (15, 'profile_extra_own', 1);
INSERT INTO `smf_permissions` VALUES (16, 'pm_read', 1);
INSERT INTO `smf_permissions` VALUES (14, 'profile_extra_own', 1);
INSERT INTO `smf_permissions` VALUES (13, 'profile_extra_own', 1);
INSERT INTO `smf_permissions` VALUES (19, 'pm_send', 1);
INSERT INTO `smf_permissions` VALUES (17, 'calendar_view', 1);
INSERT INTO `smf_permissions` VALUES (18, 'pm_send', 1);
INSERT INTO `smf_permissions` VALUES (20, 'calendar_view', 1);
INSERT INTO `smf_permissions` VALUES (21, 'calendar_view', 1);
INSERT INTO `smf_permissions` VALUES (20, 'pm_read', 1);
INSERT INTO `smf_permissions` VALUES (21, 'pm_read', 1);
INSERT INTO `smf_permissions` VALUES (20, 'pm_send', 1);
INSERT INTO `smf_permissions` VALUES (21, 'pm_send', 1);
INSERT INTO `smf_permissions` VALUES (20, 'profile_extra_own', 1);
INSERT INTO `smf_permissions` VALUES (21, 'profile_extra_own', 1);
INSERT INTO `smf_permissions` VALUES (20, 'profile_identity_own', 1);
INSERT INTO `smf_permissions` VALUES (21, 'profile_identity_own', 1);
INSERT INTO `smf_permissions` VALUES (20, 'profile_view_any', 1);
INSERT INTO `smf_permissions` VALUES (21, 'profile_view_any', 1);
INSERT INTO `smf_permissions` VALUES (20, 'profile_view_own', 1);
INSERT INTO `smf_permissions` VALUES (21, 'profile_view_own', 1);
INSERT INTO `smf_permissions` VALUES (20, 'search_posts', 1);
INSERT INTO `smf_permissions` VALUES (21, 'search_posts', 1);
INSERT INTO `smf_permissions` VALUES (20, 'view_mlist', 1);
INSERT INTO `smf_permissions` VALUES (11, 'pm_read', 1);
INSERT INTO `smf_permissions` VALUES (10, 'karma_edit', 1);
INSERT INTO `smf_permissions` VALUES (12, 'edit_news', 1);
INSERT INTO `smf_permissions` VALUES (16, 'pm_send', 1);
INSERT INTO `smf_permissions` VALUES (15, 'pm_send', 1);
INSERT INTO `smf_permissions` VALUES (14, 'pm_send', 1);
INSERT INTO `smf_permissions` VALUES (13, 'pm_send', 1);
INSERT INTO `smf_permissions` VALUES (19, 'pm_read', 1);
INSERT INTO `smf_permissions` VALUES (18, 'pm_read', 1);
INSERT INTO `smf_permissions` VALUES (16, 'search_posts', 1);
INSERT INTO `smf_permissions` VALUES (15, 'pm_read', 1);
INSERT INTO `smf_permissions` VALUES (14, 'pm_read', 1);
INSERT INTO `smf_permissions` VALUES (13, 'pm_read', 1);
INSERT INTO `smf_permissions` VALUES (19, 'karma_edit', 1);
INSERT INTO `smf_permissions` VALUES (18, 'karma_edit', 1);
INSERT INTO `smf_permissions` VALUES (16, 'profile_identity_own', 1);
INSERT INTO `smf_permissions` VALUES (15, 'karma_edit', 1);
INSERT INTO `smf_permissions` VALUES (14, 'karma_edit', 1);
INSERT INTO `smf_permissions` VALUES (13, 'karma_edit', 1);
INSERT INTO `smf_permissions` VALUES (19, 'calendar_view', 1);
INSERT INTO `smf_permissions` VALUES (18, 'calendar_view', 1);
INSERT INTO `smf_permissions` VALUES (16, 'profile_title_own', 1);
INSERT INTO `smf_permissions` VALUES (15, 'calendar_view', 1);
INSERT INTO `smf_permissions` VALUES (14, 'calendar_view', 1);
INSERT INTO `smf_permissions` VALUES (11, 'edit_news', 1);
INSERT INTO `smf_permissions` VALUES (12, 'calendar_view', 1);
INSERT INTO `smf_permissions` VALUES (11, 'calendar_view', 1);
INSERT INTO `smf_permissions` VALUES (10, 'calendar_view', 1);
INSERT INTO `smf_permissions` VALUES (12, 'admin_forum', 1);
INSERT INTO `smf_permissions` VALUES (11, 'admin_forum', 1);
INSERT INTO `smf_permissions` VALUES (10, 'admin_forum', 1);
INSERT INTO `smf_permissions` VALUES (12, 'access_mod_center', 1);
INSERT INTO `smf_permissions` VALUES (11, 'access_mod_center', 1);
INSERT INTO `smf_permissions` VALUES (10, 'access_mod_center', 1);
INSERT INTO `smf_permissions` VALUES (9, 'pm_read', 1);
INSERT INTO `smf_permissions` VALUES (9, 'pm_send', 1);
INSERT INTO `smf_permissions` VALUES (9, 'admin_forum', 1);
INSERT INTO `smf_permissions` VALUES (9, 'manage_boards', 1);
INSERT INTO `smf_permissions` VALUES (9, 'manage_attachments', 1);
INSERT INTO `smf_permissions` VALUES (9, 'manage_smileys', 1);
INSERT INTO `smf_permissions` VALUES (9, 'edit_news', 1);
INSERT INTO `smf_permissions` VALUES (9, 'manage_membergroups', 1);
INSERT INTO `smf_permissions` VALUES (9, 'manage_permissions', 1);
INSERT INTO `smf_permissions` VALUES (9, 'manage_bans', 1);
INSERT INTO `smf_permissions` VALUES (9, 'send_mail', 1);
INSERT INTO `smf_permissions` VALUES (9, 'profile_identity_own', 1);
INSERT INTO `smf_permissions` VALUES (9, 'profile_extra_own', 1);
INSERT INTO `smf_permissions` VALUES (9, 'profile_title_own', 1);
INSERT INTO `smf_permissions` VALUES (9, 'profile_remove_own', 1);
INSERT INTO `smf_permissions` VALUES (9, 'profile_server_avatar', 1);
INSERT INTO `smf_permissions` VALUES (9, 'profile_upload_avatar', 1);
INSERT INTO `smf_permissions` VALUES (9, 'profile_remote_avatar', 1);
INSERT INTO `smf_permissions` VALUES (11, 'profile_extra_own', 1);
INSERT INTO `smf_permissions` VALUES (12, 'profile_extra_own', 1);
INSERT INTO `smf_permissions` VALUES (10, 'profile_identity_any', 1);
INSERT INTO `smf_permissions` VALUES (11, 'profile_identity_any', 1);
INSERT INTO `smf_permissions` VALUES (12, 'profile_identity_any', 1);
INSERT INTO `smf_permissions` VALUES (10, 'profile_identity_own', 1);
INSERT INTO `smf_permissions` VALUES (11, 'profile_identity_own', 1);
INSERT INTO `smf_permissions` VALUES (12, 'profile_identity_own', 1);
INSERT INTO `smf_permissions` VALUES (10, 'profile_remote_avatar', 1);
INSERT INTO `smf_permissions` VALUES (11, 'profile_remote_avatar', 1);
INSERT INTO `smf_permissions` VALUES (12, 'profile_remote_avatar', 1);
INSERT INTO `smf_permissions` VALUES (10, 'profile_remove_any', 1);
INSERT INTO `smf_permissions` VALUES (11, 'profile_remove_any', 1);
INSERT INTO `smf_permissions` VALUES (12, 'profile_remove_any', 1);
INSERT INTO `smf_permissions` VALUES (10, 'profile_remove_own', 1);
INSERT INTO `smf_permissions` VALUES (11, 'profile_remove_own', 1);
INSERT INTO `smf_permissions` VALUES (12, 'profile_remove_own', 1);
INSERT INTO `smf_permissions` VALUES (10, 'profile_server_avatar', 1);
INSERT INTO `smf_permissions` VALUES (11, 'profile_server_avatar', 1);
INSERT INTO `smf_permissions` VALUES (12, 'profile_server_avatar', 1);
INSERT INTO `smf_permissions` VALUES (10, 'profile_title_any', 1);
INSERT INTO `smf_permissions` VALUES (11, 'profile_title_any', 1);
INSERT INTO `smf_permissions` VALUES (12, 'profile_title_any', 1);
INSERT INTO `smf_permissions` VALUES (10, 'profile_title_own', 1);
INSERT INTO `smf_permissions` VALUES (11, 'profile_title_own', 1);
INSERT INTO `smf_permissions` VALUES (12, 'profile_title_own', 1);
INSERT INTO `smf_permissions` VALUES (10, 'profile_upload_avatar', 1);
INSERT INTO `smf_permissions` VALUES (11, 'profile_upload_avatar', 1);
INSERT INTO `smf_permissions` VALUES (12, 'profile_upload_avatar', 1);
INSERT INTO `smf_permissions` VALUES (10, 'profile_view_any', 1);
INSERT INTO `smf_permissions` VALUES (11, 'profile_view_any', 1);
INSERT INTO `smf_permissions` VALUES (12, 'profile_view_any', 1);
INSERT INTO `smf_permissions` VALUES (10, 'profile_view_own', 1);
INSERT INTO `smf_permissions` VALUES (11, 'profile_view_own', 1);
INSERT INTO `smf_permissions` VALUES (12, 'profile_view_own', 1);
INSERT INTO `smf_permissions` VALUES (10, 'search_posts', 1);
INSERT INTO `smf_permissions` VALUES (11, 'search_posts', 1);
INSERT INTO `smf_permissions` VALUES (12, 'search_posts', 1);
INSERT INTO `smf_permissions` VALUES (10, 'send_mail', 1);
INSERT INTO `smf_permissions` VALUES (11, 'send_mail', 1);
INSERT INTO `smf_permissions` VALUES (12, 'send_mail', 1);
INSERT INTO `smf_permissions` VALUES (10, 'view_mlist', 1);
INSERT INTO `smf_permissions` VALUES (11, 'view_mlist', 1);
INSERT INTO `smf_permissions` VALUES (12, 'view_mlist', 1);
INSERT INTO `smf_permissions` VALUES (10, 'view_stats', 1);
INSERT INTO `smf_permissions` VALUES (11, 'view_stats', 1);
INSERT INTO `smf_permissions` VALUES (12, 'view_stats', 1);
INSERT INTO `smf_permissions` VALUES (10, 'who_view', 1);
INSERT INTO `smf_permissions` VALUES (11, 'who_view', 1);
INSERT INTO `smf_permissions` VALUES (12, 'who_view', 1);
INSERT INTO `smf_permissions` VALUES (13, 'calendar_view', 1);
INSERT INTO `smf_permissions` VALUES (19, 'access_mod_center', 1);
INSERT INTO `smf_permissions` VALUES (18, 'access_mod_center', 1);
INSERT INTO `smf_permissions` VALUES (16, 'who_view', 1);
INSERT INTO `smf_permissions` VALUES (15, 'access_mod_center', 1);
INSERT INTO `smf_permissions` VALUES (16, 'profile_view_own', 1);
INSERT INTO `smf_permissions` VALUES (0, 'profile_identity_own', 1);
INSERT INTO `smf_permissions` VALUES (0, 'profile_extra_own', 1);
INSERT INTO `smf_permissions` VALUES (21, 'view_mlist', 1);
INSERT INTO `smf_permissions` VALUES (20, 'view_stats', 1);
INSERT INTO `smf_permissions` VALUES (21, 'view_stats', 1);
INSERT INTO `smf_permissions` VALUES (20, 'who_view', 1);
INSERT INTO `smf_permissions` VALUES (21, 'who_view', 1);
INSERT INTO `smf_permissions` VALUES (14, 'access_mod_center', 1);
INSERT INTO `smf_permissions` VALUES (13, 'access_mod_center', 1);
INSERT INTO `smf_permissions` VALUES (16, 'profile_view_any', 1);
INSERT INTO `smf_permissions` VALUES (17, 'pm_read', 1);
INSERT INTO `smf_permissions` VALUES (17, 'pm_send', 1);
INSERT INTO `smf_permissions` VALUES (17, 'profile_identity_own', 1);
INSERT INTO `smf_permissions` VALUES (17, 'profile_extra_own', 1);
INSERT INTO `smf_permissions` VALUES (17, 'profile_title_own', 1);
INSERT INTO `smf_permissions` VALUES (14, 'who_view', 1);
INSERT INTO `smf_permissions` VALUES (15, 'who_view', 1);
INSERT INTO `smf_permissions` VALUES (18, 'who_view', 1);
INSERT INTO `smf_permissions` VALUES (19, 'who_view', 1);
COMMIT;

-- ----------------------------
-- Table structure for smf_personal_messages
-- ----------------------------
DROP TABLE IF EXISTS `smf_personal_messages`;
CREATE TABLE `smf_personal_messages` (
  `id_pm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_pm_head` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `deleted_by_sender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `from_name` varchar(255) NOT NULL DEFAULT '',
  `msgtime` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  PRIMARY KEY (`id_pm`),
  KEY `id_member` (`id_member_from`,`deleted_by_sender`),
  KEY `msgtime` (`msgtime`),
  KEY `id_pm_head` (`id_pm_head`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_pm_recipients
-- ----------------------------
DROP TABLE IF EXISTS `smf_pm_recipients`;
CREATE TABLE `smf_pm_recipients` (
  `id_pm` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `labels` varchar(60) NOT NULL DEFAULT '-1',
  `bcc` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pm`,`id_member`),
  UNIQUE KEY `id_member` (`id_member`,`deleted`,`id_pm`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_pm_rules
-- ----------------------------
DROP TABLE IF EXISTS `smf_pm_rules`;
CREATE TABLE `smf_pm_rules` (
  `id_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` int(10) unsigned NOT NULL DEFAULT '0',
  `rule_name` varchar(60) NOT NULL,
  `criteria` text NOT NULL,
  `actions` text NOT NULL,
  `delete_pm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_or` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_rule`),
  KEY `id_member` (`id_member`),
  KEY `delete_pm` (`delete_pm`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_poll_choices
-- ----------------------------
DROP TABLE IF EXISTS `smf_poll_choices`;
CREATE TABLE `smf_poll_choices` (
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_choice` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `votes` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_poll`,`id_choice`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_polls
-- ----------------------------
DROP TABLE IF EXISTS `smf_polls`;
CREATE TABLE `smf_polls` (
  `id_poll` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `voting_locked` tinyint(1) NOT NULL DEFAULT '0',
  `max_votes` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `hide_results` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `change_vote` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest_vote` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `num_guest_voters` int(10) unsigned NOT NULL DEFAULT '0',
  `reset_poll` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) NOT NULL DEFAULT '0',
  `poster_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_poll`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_scheduled_tasks
-- ----------------------------
DROP TABLE IF EXISTS `smf_scheduled_tasks`;
CREATE TABLE `smf_scheduled_tasks` (
  `id_task` smallint(5) NOT NULL AUTO_INCREMENT,
  `next_time` int(10) NOT NULL DEFAULT '0',
  `time_offset` int(10) NOT NULL DEFAULT '0',
  `time_regularity` smallint(5) NOT NULL DEFAULT '0',
  `time_unit` varchar(1) NOT NULL DEFAULT 'h',
  `disabled` tinyint(3) NOT NULL DEFAULT '0',
  `task` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_task`),
  UNIQUE KEY `task` (`task`),
  KEY `next_time` (`next_time`),
  KEY `disabled` (`disabled`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of smf_scheduled_tasks
-- ----------------------------
BEGIN;
INSERT INTO `smf_scheduled_tasks` VALUES (1, 1527544800, 0, 2, 'h', 0, 'approval_notification');
INSERT INTO `smf_scheduled_tasks` VALUES (2, 1527724800, 0, 7, 'd', 0, 'auto_optimize');
INSERT INTO `smf_scheduled_tasks` VALUES (3, 1527552060, 60, 1, 'd', 0, 'daily_maintenance');
INSERT INTO `smf_scheduled_tasks` VALUES (5, 1527552000, 0, 1, 'd', 0, 'daily_digest');
INSERT INTO `smf_scheduled_tasks` VALUES (6, 1527724800, 0, 1, 'w', 0, 'weekly_digest');
INSERT INTO `smf_scheduled_tasks` VALUES (7, 1527580560, 114961, 1, 'd', 0, 'fetchSMfiles');
INSERT INTO `smf_scheduled_tasks` VALUES (8, 0, 0, 1, 'd', 1, 'birthdayemails');
INSERT INTO `smf_scheduled_tasks` VALUES (9, 1527724800, 0, 1, 'w', 0, 'weekly_maintenance');
INSERT INTO `smf_scheduled_tasks` VALUES (10, 0, 120, 1, 'd', 1, 'paid_subscriptions');
COMMIT;

-- ----------------------------
-- Table structure for smf_sessions
-- ----------------------------
DROP TABLE IF EXISTS `smf_sessions`;
CREATE TABLE `smf_sessions` (
  `session_id` char(32) NOT NULL,
  `last_update` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for smf_settings
-- ----------------------------
DROP TABLE IF EXISTS `smf_settings`;
CREATE TABLE `smf_settings` (
  `variable` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`variable`(30))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of smf_settings
-- ----------------------------
BEGIN;
INSERT INTO `smf_settings` VALUES ('smfVersion', '2.0.14');
INSERT INTO `smf_settings` VALUES ('news', '');
INSERT INTO `smf_settings` VALUES ('compactTopicPagesContiguous', '5');
INSERT INTO `smf_settings` VALUES ('compactTopicPagesEnable', '1');
INSERT INTO `smf_settings` VALUES ('enableStickyTopics', '1');
INSERT INTO `smf_settings` VALUES ('todayMod', '1');
INSERT INTO `smf_settings` VALUES ('karmaMode', '0');
INSERT INTO `smf_settings` VALUES ('karmaTimeRestrictAdmins', '1');
INSERT INTO `smf_settings` VALUES ('enablePreviousNext', '1');
INSERT INTO `smf_settings` VALUES ('pollMode', '1');
INSERT INTO `smf_settings` VALUES ('enableVBStyleLogin', '1');
INSERT INTO `smf_settings` VALUES ('enableCompressedOutput', '1');
INSERT INTO `smf_settings` VALUES ('karmaWaitTime', '1');
INSERT INTO `smf_settings` VALUES ('karmaMinPosts', '0');
INSERT INTO `smf_settings` VALUES ('karmaLabel', 'Karma:');
INSERT INTO `smf_settings` VALUES ('karmaSmiteLabel', '[smite]');
INSERT INTO `smf_settings` VALUES ('karmaApplaudLabel', '[applaud]');
INSERT INTO `smf_settings` VALUES ('attachmentSizeLimit', '128');
INSERT INTO `smf_settings` VALUES ('attachmentPostLimit', '192');
INSERT INTO `smf_settings` VALUES ('attachmentNumPerPostLimit', '4');
INSERT INTO `smf_settings` VALUES ('attachmentDirSizeLimit', '10240');
INSERT INTO `smf_settings` VALUES ('attachmentUploadDir', '/var/www/forum.zjxartcc.org/attachments');
INSERT INTO `smf_settings` VALUES ('attachmentExtensions', 'doc,gif,jpg,mpg,pdf,png,txt,zip');
INSERT INTO `smf_settings` VALUES ('attachmentCheckExtensions', '0');
INSERT INTO `smf_settings` VALUES ('attachmentShowImages', '1');
INSERT INTO `smf_settings` VALUES ('attachmentEnable', '1');
INSERT INTO `smf_settings` VALUES ('attachmentEncryptFilenames', '1');
INSERT INTO `smf_settings` VALUES ('attachmentThumbnails', '1');
INSERT INTO `smf_settings` VALUES ('attachmentThumbWidth', '150');
INSERT INTO `smf_settings` VALUES ('attachmentThumbHeight', '150');
INSERT INTO `smf_settings` VALUES ('censorIgnoreCase', '1');
INSERT INTO `smf_settings` VALUES ('mostOnline', '18');
INSERT INTO `smf_settings` VALUES ('mostOnlineToday', '3');
INSERT INTO `smf_settings` VALUES ('mostDate', '1522332302');
INSERT INTO `smf_settings` VALUES ('allow_disableAnnounce', '0');
INSERT INTO `smf_settings` VALUES ('trackStats', '1');
INSERT INTO `smf_settings` VALUES ('userLanguage', '1');
INSERT INTO `smf_settings` VALUES ('titlesEnable', '1');
INSERT INTO `smf_settings` VALUES ('topicSummaryPosts', '15');
INSERT INTO `smf_settings` VALUES ('enableErrorLogging', '1');
INSERT INTO `smf_settings` VALUES ('max_image_width', '0');
INSERT INTO `smf_settings` VALUES ('max_image_height', '0');
INSERT INTO `smf_settings` VALUES ('onlineEnable', '0');
INSERT INTO `smf_settings` VALUES ('cal_enabled', '1');
INSERT INTO `smf_settings` VALUES ('cal_maxyear', '2030');
INSERT INTO `smf_settings` VALUES ('cal_minyear', '2008');
INSERT INTO `smf_settings` VALUES ('cal_daysaslink', '0');
INSERT INTO `smf_settings` VALUES ('cal_defaultboard', '');
INSERT INTO `smf_settings` VALUES ('cal_showholidays', '1');
INSERT INTO `smf_settings` VALUES ('cal_showbdays', '1');
INSERT INTO `smf_settings` VALUES ('cal_showevents', '1');
INSERT INTO `smf_settings` VALUES ('cal_showweeknum', '0');
INSERT INTO `smf_settings` VALUES ('cal_maxspan', '7');
INSERT INTO `smf_settings` VALUES ('smtp_host', 'mail.zjxartcc.org');
INSERT INTO `smf_settings` VALUES ('smtp_port', '587');
INSERT INTO `smf_settings` VALUES ('smtp_username', 'no-reply@zjxartcc.org');
INSERT INTO `smf_settings` VALUES ('smtp_password', 'OVo0VkdMUTgyNQ==');
INSERT INTO `smf_settings` VALUES ('mail_type', '1');
INSERT INTO `smf_settings` VALUES ('timeLoadPageEnable', '0');
INSERT INTO `smf_settings` VALUES ('totalMembers', '183');
INSERT INTO `smf_settings` VALUES ('totalTopics', '248');
INSERT INTO `smf_settings` VALUES ('totalMessages', '872');
INSERT INTO `smf_settings` VALUES ('simpleSearch', '0');
INSERT INTO `smf_settings` VALUES ('censor_vulgar', '');
INSERT INTO `smf_settings` VALUES ('censor_proper', '');
INSERT INTO `smf_settings` VALUES ('enablePostHTML', '0');
INSERT INTO `smf_settings` VALUES ('theme_allow', '0');
INSERT INTO `smf_settings` VALUES ('theme_default', '1');
INSERT INTO `smf_settings` VALUES ('theme_guests', '3');
INSERT INTO `smf_settings` VALUES ('enableEmbeddedFlash', '0');
INSERT INTO `smf_settings` VALUES ('xmlnews_enable', '1');
INSERT INTO `smf_settings` VALUES ('xmlnews_maxlen', '255');
INSERT INTO `smf_settings` VALUES ('hotTopicPosts', '15');
INSERT INTO `smf_settings` VALUES ('hotTopicVeryPosts', '25');
INSERT INTO `smf_settings` VALUES ('registration_method', '3');
INSERT INTO `smf_settings` VALUES ('send_validation_onChange', '0');
INSERT INTO `smf_settings` VALUES ('send_welcomeEmail', '0');
INSERT INTO `smf_settings` VALUES ('allow_editDisplayName', '0');
INSERT INTO `smf_settings` VALUES ('allow_hideOnline', '0');
INSERT INTO `smf_settings` VALUES ('guest_hideContacts', '1');
INSERT INTO `smf_settings` VALUES ('spamWaitTime', '5');
INSERT INTO `smf_settings` VALUES ('pm_spam_settings', '10,5,20');
INSERT INTO `smf_settings` VALUES ('reserveWord', '0');
INSERT INTO `smf_settings` VALUES ('reserveCase', '1');
INSERT INTO `smf_settings` VALUES ('reserveUser', '1');
INSERT INTO `smf_settings` VALUES ('reserveName', '1');
INSERT INTO `smf_settings` VALUES ('reserveNames', 'Admin\nWebmaster\nGuest\nroot');
INSERT INTO `smf_settings` VALUES ('autoLinkUrls', '1');
INSERT INTO `smf_settings` VALUES ('banLastUpdated', '0');
INSERT INTO `smf_settings` VALUES ('smileys_dir', '/var/www/forum.zjxartcc.org/Smileys');
INSERT INTO `smf_settings` VALUES ('smileys_url', 'https://forum.zjxartcc.org/Smileys');
INSERT INTO `smf_settings` VALUES ('avatar_directory', '/var/www/forum.zjxartcc.org/avatars');
INSERT INTO `smf_settings` VALUES ('avatar_url', 'https://forum.zjxartcc.org/avatars');
INSERT INTO `smf_settings` VALUES ('avatar_max_height_external', '65');
INSERT INTO `smf_settings` VALUES ('avatar_max_width_external', '65');
INSERT INTO `smf_settings` VALUES ('avatar_action_too_large', 'option_html_resize');
INSERT INTO `smf_settings` VALUES ('avatar_max_height_upload', '65');
INSERT INTO `smf_settings` VALUES ('avatar_max_width_upload', '65');
INSERT INTO `smf_settings` VALUES ('avatar_resize_upload', '1');
INSERT INTO `smf_settings` VALUES ('avatar_download_png', '1');
INSERT INTO `smf_settings` VALUES ('failed_login_threshold', '3');
INSERT INTO `smf_settings` VALUES ('oldTopicDays', '120');
INSERT INTO `smf_settings` VALUES ('edit_wait_time', '90');
INSERT INTO `smf_settings` VALUES ('edit_disable_time', '0');
INSERT INTO `smf_settings` VALUES ('autoFixDatabase', '1');
INSERT INTO `smf_settings` VALUES ('allow_guestAccess', '1');
INSERT INTO `smf_settings` VALUES ('time_format', '%B %d, %Y, %I:%M:%S %p');
INSERT INTO `smf_settings` VALUES ('number_format', '1234.00');
INSERT INTO `smf_settings` VALUES ('enableBBC', '1');
INSERT INTO `smf_settings` VALUES ('max_messageLength', '20000');
INSERT INTO `smf_settings` VALUES ('signature_settings', '1,300,0,0,0,0,0,0:');
INSERT INTO `smf_settings` VALUES ('autoOptMaxOnline', '0');
INSERT INTO `smf_settings` VALUES ('defaultMaxMessages', '15');
INSERT INTO `smf_settings` VALUES ('defaultMaxTopics', '20');
INSERT INTO `smf_settings` VALUES ('defaultMaxMembers', '30');
INSERT INTO `smf_settings` VALUES ('enableParticipation', '1');
INSERT INTO `smf_settings` VALUES ('recycle_enable', '0');
INSERT INTO `smf_settings` VALUES ('recycle_board', '0');
INSERT INTO `smf_settings` VALUES ('maxMsgID', '987');
INSERT INTO `smf_settings` VALUES ('enableAllMessages', '0');
INSERT INTO `smf_settings` VALUES ('fixLongWords', '0');
INSERT INTO `smf_settings` VALUES ('knownThemes', '1,2,3');
INSERT INTO `smf_settings` VALUES ('who_enabled', '1');
INSERT INTO `smf_settings` VALUES ('time_offset', '0');
INSERT INTO `smf_settings` VALUES ('cookieTime', '60');
INSERT INTO `smf_settings` VALUES ('lastActive', '15');
INSERT INTO `smf_settings` VALUES ('smiley_sets_known', 'default,aaron,akyhne,aaron,akyhne');
INSERT INTO `smf_settings` VALUES ('smiley_sets_names', 'Alienine\'s Set\nAaron\'s Set\nAkyhne\'s Set\nAaron\nAkyhne');
INSERT INTO `smf_settings` VALUES ('smiley_sets_default', 'default');
INSERT INTO `smf_settings` VALUES ('cal_days_for_index', '7');
INSERT INTO `smf_settings` VALUES ('requireAgreement', '1');
INSERT INTO `smf_settings` VALUES ('unapprovedMembers', '0');
INSERT INTO `smf_settings` VALUES ('default_personal_text', '');
INSERT INTO `smf_settings` VALUES ('package_make_backups', '1');
INSERT INTO `smf_settings` VALUES ('databaseSession_enable', '1');
INSERT INTO `smf_settings` VALUES ('databaseSession_loose', '1');
INSERT INTO `smf_settings` VALUES ('databaseSession_lifetime', '2880');
INSERT INTO `smf_settings` VALUES ('search_cache_size', '50');
INSERT INTO `smf_settings` VALUES ('search_results_per_page', '30');
INSERT INTO `smf_settings` VALUES ('search_weight_frequency', '30');
INSERT INTO `smf_settings` VALUES ('search_weight_age', '25');
INSERT INTO `smf_settings` VALUES ('search_weight_length', '20');
INSERT INTO `smf_settings` VALUES ('search_weight_subject', '15');
INSERT INTO `smf_settings` VALUES ('search_weight_first_message', '10');
INSERT INTO `smf_settings` VALUES ('search_max_results', '1200');
INSERT INTO `smf_settings` VALUES ('search_floodcontrol_time', '5');
INSERT INTO `smf_settings` VALUES ('permission_enable_deny', '0');
INSERT INTO `smf_settings` VALUES ('permission_enable_postgroups', '0');
INSERT INTO `smf_settings` VALUES ('mail_next_send', '0');
INSERT INTO `smf_settings` VALUES ('mail_recent', '0000000000|0');
INSERT INTO `smf_settings` VALUES ('settings_updated', '1526386526');
INSERT INTO `smf_settings` VALUES ('next_task_time', '1527544800');
INSERT INTO `smf_settings` VALUES ('warning_settings', '0,20,0');
INSERT INTO `smf_settings` VALUES ('admin_features', 'cd,cp,ml');
INSERT INTO `smf_settings` VALUES ('last_mod_report_action', '0');
INSERT INTO `smf_settings` VALUES ('pruningOptions', '30,180,180,180,30,0');
INSERT INTO `smf_settings` VALUES ('cache_enable', '1');
INSERT INTO `smf_settings` VALUES ('reg_verification', '1');
INSERT INTO `smf_settings` VALUES ('visual_verification_type', '3');
INSERT INTO `smf_settings` VALUES ('enable_buddylist', '0');
INSERT INTO `smf_settings` VALUES ('birthday_email', 'zwaldowski');
INSERT INTO `smf_settings` VALUES ('dont_repeat_theme_core', '1');
INSERT INTO `smf_settings` VALUES ('dont_repeat_smileys_20', '1');
INSERT INTO `smf_settings` VALUES ('dont_repeat_buddylists', '1');
INSERT INTO `smf_settings` VALUES ('attachment_image_reencode', '1');
INSERT INTO `smf_settings` VALUES ('attachment_image_paranoid', '0');
INSERT INTO `smf_settings` VALUES ('attachment_thumb_png', '1');
INSERT INTO `smf_settings` VALUES ('avatar_reencode', '1');
INSERT INTO `smf_settings` VALUES ('avatar_paranoid', '0');
INSERT INTO `smf_settings` VALUES ('default_timezone', 'UTC');
INSERT INTO `smf_settings` VALUES ('memberlist_updated', '1525352964');
INSERT INTO `smf_settings` VALUES ('latestMember', '195');
INSERT INTO `smf_settings` VALUES ('latestRealName', 'David Charles Haynes');
INSERT INTO `smf_settings` VALUES ('rand_seed', '1311415393');
INSERT INTO `smf_settings` VALUES ('mostOnlineUpdated', '2018-05-28');
INSERT INTO `smf_settings` VALUES ('calendar_updated', '1526470846');
INSERT INTO `smf_settings` VALUES ('globalCookies', '1');
INSERT INTO `smf_settings` VALUES ('spider_name_cache', 'a:19:{i:1;s:6:\"Google\";i:2;s:6:\"Yahoo!\";i:3;s:3:\"MSN\";i:4;s:15:\"Google (Mobile)\";i:5;s:14:\"Google (Image)\";i:6;s:16:\"Google (AdSense)\";i:7;s:16:\"Google (Adwords)\";i:8;s:15:\"Yahoo! (Mobile)\";i:9;s:14:\"Yahoo! (Image)\";i:10;s:12:\"MSN (Mobile)\";i:11;s:11:\"MSN (Media)\";i:12;s:4:\"Cuil\";i:13;s:3:\"Ask\";i:14;s:5:\"Baidu\";i:15;s:9:\"Gigablast\";i:16;s:15:\"InternetArchive\";i:17;s:5:\"Alexa\";i:18;s:6:\"Omgili\";i:19;s:9:\"EntireWeb\";}');
INSERT INTO `smf_settings` VALUES ('modlog_enabled', '1');
INSERT INTO `smf_settings` VALUES ('search_pointer', '78');
INSERT INTO `smf_settings` VALUES ('disabled_profile_fields', 'icq,msn,aim,yim');
INSERT INTO `smf_settings` VALUES ('displayFields', 'a:0:{}');
INSERT INTO `smf_settings` VALUES ('installed_new_smiley_sets_20', '1');
COMMIT;

-- ----------------------------
-- Table structure for smf_smileys
-- ----------------------------
DROP TABLE IF EXISTS `smf_smileys`;
CREATE TABLE `smf_smileys` (
  `id_smiley` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(48) NOT NULL DEFAULT '',
  `description` varchar(80) NOT NULL DEFAULT '',
  `smiley_row` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_smiley`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of smf_smileys
-- ----------------------------
BEGIN;
INSERT INTO `smf_smileys` VALUES (1, ':)', 'smiley.gif', 'Smiley', 0, 0, 0);
INSERT INTO `smf_smileys` VALUES (2, ';)', 'wink.gif', 'Wink', 0, 1, 0);
INSERT INTO `smf_smileys` VALUES (3, ':D', 'cheesy.gif', 'Cheesy', 0, 2, 0);
INSERT INTO `smf_smileys` VALUES (4, ';D', 'grin.gif', 'Grin', 0, 3, 0);
INSERT INTO `smf_smileys` VALUES (5, '>:(', 'angry.gif', 'Angry', 0, 4, 0);
INSERT INTO `smf_smileys` VALUES (6, ':(', 'sad.gif', 'Sad', 0, 5, 0);
INSERT INTO `smf_smileys` VALUES (7, ':o', 'shocked.gif', 'Shocked', 0, 6, 0);
INSERT INTO `smf_smileys` VALUES (8, '8)', 'cool.gif', 'Cool', 0, 7, 0);
INSERT INTO `smf_smileys` VALUES (9, '???', 'huh.gif', 'Huh?', 0, 8, 0);
INSERT INTO `smf_smileys` VALUES (10, '::)', 'rolleyes.gif', 'Roll Eyes', 0, 9, 0);
INSERT INTO `smf_smileys` VALUES (11, ':P', 'tongue.gif', 'Tongue', 0, 10, 0);
INSERT INTO `smf_smileys` VALUES (12, ':-[', 'embarrassed.gif', 'Embarrassed', 0, 11, 0);
INSERT INTO `smf_smileys` VALUES (13, ':-X', 'lipsrsealed.gif', 'Lips Sealed', 0, 12, 0);
INSERT INTO `smf_smileys` VALUES (14, ':-\\', 'undecided.gif', 'Undecided', 0, 13, 0);
INSERT INTO `smf_smileys` VALUES (15, ':-*', 'kiss.gif', 'Kiss', 0, 14, 0);
INSERT INTO `smf_smileys` VALUES (16, ':\'(', 'cry.gif', 'Cry', 0, 15, 0);
INSERT INTO `smf_smileys` VALUES (17, '>:D', 'evil.gif', 'Evil', 0, 16, 1);
INSERT INTO `smf_smileys` VALUES (18, '^-^', 'azn.gif', 'Azn', 0, 17, 1);
INSERT INTO `smf_smileys` VALUES (19, 'O0', 'afro.gif', 'Afro', 0, 18, 1);
INSERT INTO `smf_smileys` VALUES (20, ':))', 'laugh.gif', 'Laugh', 0, 19, 1);
INSERT INTO `smf_smileys` VALUES (21, 'C:-)', 'police.gif', 'Police', 0, 20, 1);
INSERT INTO `smf_smileys` VALUES (22, 'O:-)', 'angel.gif', 'Angel', 0, 21, 1);
COMMIT;

-- ----------------------------
-- Table structure for smf_spiders
-- ----------------------------
DROP TABLE IF EXISTS `smf_spiders`;
CREATE TABLE `smf_spiders` (
  `id_spider` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `spider_name` varchar(255) NOT NULL DEFAULT '',
  `user_agent` varchar(255) NOT NULL DEFAULT '',
  `ip_info` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_spider`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of smf_spiders
-- ----------------------------
BEGIN;
INSERT INTO `smf_spiders` VALUES (1, 'Google', 'googlebot', '');
INSERT INTO `smf_spiders` VALUES (2, 'Yahoo!', 'slurp', '');
INSERT INTO `smf_spiders` VALUES (3, 'MSN', 'msnbot', '');
INSERT INTO `smf_spiders` VALUES (4, 'Google (Mobile)', 'Googlebot-Mobile', '');
INSERT INTO `smf_spiders` VALUES (5, 'Google (Image)', 'Googlebot-Image', '');
INSERT INTO `smf_spiders` VALUES (6, 'Google (AdSense)', 'Mediapartners-Google', '');
INSERT INTO `smf_spiders` VALUES (7, 'Google (Adwords)', 'AdsBot-Google', '');
INSERT INTO `smf_spiders` VALUES (8, 'Yahoo! (Mobile)', 'YahooSeeker/M1A1-R2D2', '');
INSERT INTO `smf_spiders` VALUES (9, 'Yahoo! (Image)', 'Yahoo-MMCrawler', '');
INSERT INTO `smf_spiders` VALUES (10, 'MSN (Mobile)', 'MSNBOT_Mobile', '');
INSERT INTO `smf_spiders` VALUES (11, 'MSN (Media)', 'msnbot-media', '');
INSERT INTO `smf_spiders` VALUES (12, 'Cuil', 'twiceler', '');
INSERT INTO `smf_spiders` VALUES (13, 'Ask', 'Teoma', '');
INSERT INTO `smf_spiders` VALUES (14, 'Baidu', 'Baiduspider', '');
INSERT INTO `smf_spiders` VALUES (15, 'Gigablast', 'Gigabot', '');
INSERT INTO `smf_spiders` VALUES (16, 'InternetArchive', 'ia_archiver-web.archive.org', '');
INSERT INTO `smf_spiders` VALUES (17, 'Alexa', 'ia_archiver', '');
INSERT INTO `smf_spiders` VALUES (18, 'Omgili', 'omgilibot', '');
INSERT INTO `smf_spiders` VALUES (19, 'EntireWeb', 'Speedy Spider', '');
COMMIT;

-- ----------------------------
-- Table structure for smf_subscriptions
-- ----------------------------
DROP TABLE IF EXISTS `smf_subscriptions`;
CREATE TABLE `smf_subscriptions` (
  `id_subscribe` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `cost` text NOT NULL,
  `length` varchar(6) NOT NULL DEFAULT '',
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `add_groups` varchar(40) NOT NULL DEFAULT '',
  `active` tinyint(3) NOT NULL DEFAULT '1',
  `repeatable` tinyint(3) NOT NULL DEFAULT '0',
  `allow_partial` tinyint(3) NOT NULL DEFAULT '0',
  `reminder` tinyint(3) NOT NULL DEFAULT '0',
  `email_complete` text NOT NULL,
  PRIMARY KEY (`id_subscribe`),
  KEY `active` (`active`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for smf_themes
-- ----------------------------
DROP TABLE IF EXISTS `smf_themes`;
CREATE TABLE `smf_themes` (
  `id_member` mediumint(8) NOT NULL DEFAULT '0',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `variable` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id_theme`,`id_member`,`variable`(30)),
  KEY `id_member` (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of smf_themes
-- ----------------------------
BEGIN;
INSERT INTO `smf_themes` VALUES (0, 1, 'name', 'SMF Default Theme - Curve');
INSERT INTO `smf_themes` VALUES (0, 1, 'theme_url', 'https://forum.zjxartcc.org/Themes/default');
INSERT INTO `smf_themes` VALUES (0, 1, 'images_url', 'https://forum.zjxartcc.org/Themes/default/images');
INSERT INTO `smf_themes` VALUES (0, 1, 'theme_dir', '/var/www/forum.zjxartcc.org/Themes/default');
INSERT INTO `smf_themes` VALUES (0, 1, 'show_bbc', '1');
INSERT INTO `smf_themes` VALUES (0, 1, 'show_latest_member', '1');
INSERT INTO `smf_themes` VALUES (0, 1, 'show_modify', '1');
INSERT INTO `smf_themes` VALUES (0, 1, 'show_user_images', '1');
INSERT INTO `smf_themes` VALUES (0, 1, 'show_blurb', '1');
INSERT INTO `smf_themes` VALUES (0, 1, 'show_gender', '0');
INSERT INTO `smf_themes` VALUES (0, 1, 'show_newsfader', '0');
INSERT INTO `smf_themes` VALUES (0, 1, 'number_recent_posts', '0');
INSERT INTO `smf_themes` VALUES (0, 1, 'show_member_bar', '1');
INSERT INTO `smf_themes` VALUES (0, 1, 'linktree_link', '1');
INSERT INTO `smf_themes` VALUES (0, 1, 'show_profile_buttons', '1');
INSERT INTO `smf_themes` VALUES (0, 1, 'show_mark_read', '1');
INSERT INTO `smf_themes` VALUES (0, 1, 'show_stats_index', '1');
INSERT INTO `smf_themes` VALUES (0, 1, 'linktree_inline', '0');
INSERT INTO `smf_themes` VALUES (0, 1, 'show_board_desc', '1');
INSERT INTO `smf_themes` VALUES (0, 1, 'newsfader_time', '5000');
INSERT INTO `smf_themes` VALUES (0, 1, 'allow_no_censored', '0');
INSERT INTO `smf_themes` VALUES (0, 1, 'additional_options_collapsable', '1');
INSERT INTO `smf_themes` VALUES (0, 1, 'use_image_buttons', '1');
INSERT INTO `smf_themes` VALUES (0, 1, 'enable_news', '1');
INSERT INTO `smf_themes` VALUES (0, 1, 'forum_width', '90%');
INSERT INTO `smf_themes` VALUES (0, 2, 'name', 'Core Theme');
INSERT INTO `smf_themes` VALUES (0, 2, 'theme_url', 'https://forum.zjxartcc.org/Themes/core');
INSERT INTO `smf_themes` VALUES (0, 2, 'images_url', 'https://forum.zjxartcc.org/Themes/core/images');
INSERT INTO `smf_themes` VALUES (0, 2, 'theme_dir', '/var/www/forum.zjxartcc.org/Themes/core');
INSERT INTO `smf_themes` VALUES (-1, 1, 'display_quick_reply', '1');
INSERT INTO `smf_themes` VALUES (-1, 1, 'posts_apply_ignore_list', '1');
INSERT INTO `smf_themes` VALUES (0, 3, 'theme_url', 'https://forum.zjxartcc.org/Themes/Reseller');
INSERT INTO `smf_themes` VALUES (0, 3, 'images_url', 'https://forum.zjxartcc.org/Themes/Reseller/images');
INSERT INTO `smf_themes` VALUES (0, 3, 'theme_dir', '/var/www/forum.zjxartcc.org/Themes/Reseller');
INSERT INTO `smf_themes` VALUES (0, 3, 'name', 'Reseller');
INSERT INTO `smf_themes` VALUES (0, 3, 'theme_layers', 'html,body');
INSERT INTO `smf_themes` VALUES (0, 3, 'theme_templates', 'index');
INSERT INTO `smf_themes` VALUES (8, 3, 'collapse_header_ic', '0');
INSERT INTO `smf_themes` VALUES (8, 1, 'view_newest_pm_first', '1');
INSERT INTO `smf_themes` VALUES (8, 1, 'popup_messages', '1');
INSERT INTO `smf_themes` VALUES (8, 1, 'copy_to_outbox', '0');
INSERT INTO `smf_themes` VALUES (8, 1, 'pm_remove_inbox_label', '0');
INSERT INTO `smf_themes` VALUES (10, 3, 'collapse_header_ic', '0');
INSERT INTO `smf_themes` VALUES (38, 1, 'auto_notify', '1');
INSERT INTO `smf_themes` VALUES (71, 1, 'show_board_desc', '0');
INSERT INTO `smf_themes` VALUES (71, 1, 'show_children', '0');
INSERT INTO `smf_themes` VALUES (71, 1, 'use_sidebar_menu', '0');
INSERT INTO `smf_themes` VALUES (71, 1, 'show_no_avatars', '0');
INSERT INTO `smf_themes` VALUES (71, 1, 'show_no_signatures', '0');
INSERT INTO `smf_themes` VALUES (71, 1, 'return_to_post', '0');
INSERT INTO `smf_themes` VALUES (71, 1, 'no_new_reply_warning', '0');
INSERT INTO `smf_themes` VALUES (71, 1, 'view_newest_first', '0');
INSERT INTO `smf_themes` VALUES (71, 1, 'wysiwyg_default', '0');
INSERT INTO `smf_themes` VALUES (71, 1, 'topics_per_page', '0');
INSERT INTO `smf_themes` VALUES (71, 1, 'messages_per_page', '0');
INSERT INTO `smf_themes` VALUES (71, 1, 'calendar_start_day', '0');
INSERT INTO `smf_themes` VALUES (71, 1, 'display_quick_reply', '1');
INSERT INTO `smf_themes` VALUES (71, 1, 'display_quick_mod', '0');
INSERT INTO `smf_themes` VALUES (71, 1, 'auto_notify', '0');
INSERT INTO `smf_themes` VALUES (39, 1, 'auto_notify', '1');
INSERT INTO `smf_themes` VALUES (39, 1, 'view_newest_pm_first', '0');
INSERT INTO `smf_themes` VALUES (39, 1, 'popup_messages', '0');
INSERT INTO `smf_themes` VALUES (39, 1, 'copy_to_outbox', '0');
INSERT INTO `smf_themes` VALUES (39, 1, 'pm_remove_inbox_label', '0');
INSERT INTO `smf_themes` VALUES (5, 1, 'view_newest_pm_first', '0');
INSERT INTO `smf_themes` VALUES (5, 1, 'popup_messages', '1');
INSERT INTO `smf_themes` VALUES (5, 1, 'copy_to_outbox', '1');
INSERT INTO `smf_themes` VALUES (5, 1, 'pm_remove_inbox_label', '1');
INSERT INTO `smf_themes` VALUES (7, 1, 'auto_notify', '1');
INSERT INTO `smf_themes` VALUES (7, 1, 'view_newest_pm_first', '1');
INSERT INTO `smf_themes` VALUES (7, 1, 'popup_messages', '0');
INSERT INTO `smf_themes` VALUES (7, 1, 'copy_to_outbox', '0');
INSERT INTO `smf_themes` VALUES (7, 1, 'pm_remove_inbox_label', '0');
INSERT INTO `smf_themes` VALUES (31, 1, 'view_newest_pm_first', '0');
INSERT INTO `smf_themes` VALUES (31, 1, 'popup_messages', '1');
INSERT INTO `smf_themes` VALUES (31, 1, 'copy_to_outbox', '0');
INSERT INTO `smf_themes` VALUES (31, 1, 'pm_remove_inbox_label', '0');
INSERT INTO `smf_themes` VALUES (1, 1, 'cust_cid', '1240411');
INSERT INTO `smf_themes` VALUES (90, 3, 'collapse_header_ic', '0');
INSERT INTO `smf_themes` VALUES (14, 3, 'collapse_header_ic', '0');
INSERT INTO `smf_themes` VALUES (18, 1, 'show_board_desc', '0');
INSERT INTO `smf_themes` VALUES (18, 1, 'show_children', '0');
INSERT INTO `smf_themes` VALUES (18, 1, 'use_sidebar_menu', '0');
INSERT INTO `smf_themes` VALUES (18, 1, 'show_no_avatars', '0');
INSERT INTO `smf_themes` VALUES (18, 1, 'show_no_signatures', '0');
INSERT INTO `smf_themes` VALUES (18, 1, 'return_to_post', '0');
INSERT INTO `smf_themes` VALUES (18, 1, 'no_new_reply_warning', '0');
INSERT INTO `smf_themes` VALUES (18, 1, 'view_newest_first', '0');
INSERT INTO `smf_themes` VALUES (18, 1, 'wysiwyg_default', '0');
INSERT INTO `smf_themes` VALUES (18, 1, 'topics_per_page', '0');
INSERT INTO `smf_themes` VALUES (18, 1, 'messages_per_page', '0');
INSERT INTO `smf_themes` VALUES (18, 1, 'calendar_start_day', '0');
INSERT INTO `smf_themes` VALUES (18, 1, 'display_quick_reply', '1');
INSERT INTO `smf_themes` VALUES (18, 1, 'display_quick_mod', '0');
INSERT INTO `smf_themes` VALUES (6, 3, 'collapse_header_ic', '0');
INSERT INTO `smf_themes` VALUES (103, 1, 'show_board_desc', '0');
INSERT INTO `smf_themes` VALUES (103, 1, 'show_children', '0');
INSERT INTO `smf_themes` VALUES (103, 1, 'use_sidebar_menu', '0');
INSERT INTO `smf_themes` VALUES (103, 1, 'show_no_avatars', '0');
INSERT INTO `smf_themes` VALUES (103, 1, 'show_no_signatures', '0');
INSERT INTO `smf_themes` VALUES (103, 1, 'return_to_post', '0');
INSERT INTO `smf_themes` VALUES (103, 1, 'no_new_reply_warning', '0');
INSERT INTO `smf_themes` VALUES (103, 1, 'view_newest_first', '0');
INSERT INTO `smf_themes` VALUES (103, 1, 'wysiwyg_default', '0');
INSERT INTO `smf_themes` VALUES (103, 1, 'topics_per_page', '0');
INSERT INTO `smf_themes` VALUES (103, 1, 'messages_per_page', '0');
INSERT INTO `smf_themes` VALUES (103, 1, 'calendar_start_day', '0');
INSERT INTO `smf_themes` VALUES (103, 1, 'display_quick_reply', '1');
INSERT INTO `smf_themes` VALUES (103, 1, 'display_quick_mod', '0');
INSERT INTO `smf_themes` VALUES (8, 3, 'use_sidebar_menu', '1');
INSERT INTO `smf_themes` VALUES (0, 3, 'header_logo_url', '');
INSERT INTO `smf_themes` VALUES (0, 3, 'site_slogan', '');
INSERT INTO `smf_themes` VALUES (0, 3, 'smiley_sets_default', '');
INSERT INTO `smf_themes` VALUES (0, 3, 'forum_width', '90%');
INSERT INTO `smf_themes` VALUES (0, 3, 'linktree_link', '1');
INSERT INTO `smf_themes` VALUES (0, 3, 'show_mark_read', '1');
INSERT INTO `smf_themes` VALUES (0, 3, 'allow_no_censored', '0');
INSERT INTO `smf_themes` VALUES (0, 3, 'enable_news', '1');
INSERT INTO `smf_themes` VALUES (0, 3, 'show_newsfader', '0');
INSERT INTO `smf_themes` VALUES (0, 3, 'newsfader_time', '5000');
INSERT INTO `smf_themes` VALUES (0, 3, 'number_recent_posts', '0');
INSERT INTO `smf_themes` VALUES (0, 3, 'show_stats_index', '1');
INSERT INTO `smf_themes` VALUES (0, 3, 'show_latest_member', '1');
INSERT INTO `smf_themes` VALUES (0, 3, 'show_group_key', '0');
INSERT INTO `smf_themes` VALUES (0, 3, 'display_who_viewing', '0');
INSERT INTO `smf_themes` VALUES (0, 3, 'show_modify', '1');
INSERT INTO `smf_themes` VALUES (0, 3, 'show_profile_buttons', '1');
INSERT INTO `smf_themes` VALUES (0, 3, 'show_user_images', '1');
INSERT INTO `smf_themes` VALUES (0, 3, 'show_blurb', '1');
INSERT INTO `smf_themes` VALUES (0, 3, 'show_gender', '0');
INSERT INTO `smf_themes` VALUES (0, 3, 'hide_post_group', '0');
INSERT INTO `smf_themes` VALUES (0, 3, 'show_bbc', '1');
INSERT INTO `smf_themes` VALUES (0, 3, 'additional_options_collapsable', '1');
COMMIT;

-- ----------------------------
-- Table structure for smf_topics
-- ----------------------------
DROP TABLE IF EXISTS `smf_topics`;
CREATE TABLE `smf_topics` (
  `id_topic` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `is_sticky` tinyint(4) NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_first_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_last_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member_started` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member_updated` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_previous_board` smallint(5) NOT NULL DEFAULT '0',
  `id_previous_topic` mediumint(8) NOT NULL DEFAULT '0',
  `num_replies` int(10) unsigned NOT NULL DEFAULT '0',
  `num_views` int(10) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `unapproved_posts` smallint(5) NOT NULL DEFAULT '0',
  `approved` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_topic`),
  UNIQUE KEY `last_message` (`id_last_msg`,`id_board`),
  UNIQUE KEY `first_message` (`id_first_msg`,`id_board`),
  UNIQUE KEY `poll` (`id_poll`,`id_topic`),
  KEY `is_sticky` (`is_sticky`),
  KEY `approved` (`approved`),
  KEY `id_board` (`id_board`),
  KEY `member_started` (`id_member_started`,`id_board`),
  KEY `last_message_sticky` (`id_board`,`is_sticky`,`id_last_msg`),
  KEY `board_news` (`id_board`,`id_first_msg`)
) ENGINE=MyISAM AUTO_INCREMENT=287 DEFAULT CHARSET=latin1;


SET FOREIGN_KEY_CHECKS = 1;
