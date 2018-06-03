<?php

/**
 * Simple Machines Forum (SMF)
 *
 * @package SMF
 * @author Simple Machines http://www.simplemachines.org
 * @copyright 2011 Simple Machines
 * @license http://www.simplemachines.org/about/smf/license.php BSD
 *
 * @version 2.0
 */

########## Maintenance ##########
# Note: If $maintenance is set to 2, the forum will be unusable!  Change it to 0 to fix it.
$maintenance = 2;		# Set to 1 to enable Maintenance Mode, 2 to make the forum untouchable. (you'll have to make it 0 again manually!)
$mtitle = 'Maintenance Mode';		# Title for the Maintenance Mode message.
$mmessage = 'Okay faithful users...we\'re attempting to restore an older backup of the database...news will be posted once we\'re back!';		# Description of why the forum is in maintenance mode.

########## Forum Info ##########
$mbname = 'vZJX Forum';		# The name of your forum.
$language = 'english';		# The default language file set for the forum.
$boardurl = 'http://forum.zjxartcc.org';		# URL to your forum's folder. (without the trailing /!)
$webmaster_email = 'mbozwooddavies@zjxartcc.org';		# Email address to send emails from. (like noreply@yourdomain.com.)
$cookiename = 'SMFCookie142';		# Name of the cookie to set for authentication.

########## Database Info ##########
$db_type = 'mysql';
$db_server = 'localhost';
$db_name = 'zjxartcc_forum';
$db_user = 'zjxartcc_default';
$db_passwd = '3G*=7WbHa4C4}ytw';
$ssi_db_user = '';
$ssi_db_passwd = '';
$db_prefix = 'smf_';
$db_persist = 0;
$db_error_send = 0;

########## Directories/Files ##########
# Note: These directories do not have to be changed unless you move things.
$boarddir = '/home/zjxartcc/zjxforum';		# The absolute path to the forum's folder. (not just '.'!)
$sourcedir = '/home/zjxartcc/zjxforum/Sources';		# Path to the Sources directory.
$cachedir = '/home/zjxartcc/zjxforum/cache';		# Path to the cache directory.

########## Error-Catching ##########
# Note: You shouldn't touch these settings.
$db_last_error = 0;


# Make sure the paths are correct... at least try to fix them.
if (!file_exists($boarddir) && file_exists(dirname(__FILE__) . '/agreement.txt'))
	$boarddir = dirname(__FILE__);
if (!file_exists($sourcedir) && file_exists($boarddir . '/Sources'))
	$sourcedir = $boarddir . '/Sources';
if (!file_exists($cachedir) && file_exists($boarddir . '/cache'))
	$cachedir = $boarddir . '/cache';

$upgradeData = "YTo5OntzOjI6ImlkIjtzOjE6IjEiO3M6NDoibmFtZSI7czo3OiIxMjQwNDExIjtzOjQ6InBhc3MiO2k6MTgyNztzOjc6InN0YXJ0ZWQiO2k6MTUwNzE2NDAyOTtzOjc6InVwZGF0ZWQiO2k6MTUwNzE2NDEzNztzOjc6InZlcnNpb24iO3M6NjoiMi4wLjExIjtzOjQ6InN0ZXAiO2k6NDtzOjc6InN1YnN0ZXAiO3M6MToiMCI7czo0OiJtYWluIjtpOjA7fQ==";
$image_proxy_secret = '784532a81937aa5b9172';
$image_proxy_maxsize = 5190;
?>