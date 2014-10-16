<?php  return array (
  'janitor' => 'Janitor',
  'menu_janitor' => 'Janitor',
  'menu_welcome_tab' => 'Welcome',
  'menu_database_tab' => 'Database',
  'menu_search_tab' => 'Search',
  'menu_backup_tab' => 'Backup',
  'menu_ftp_tab' => 'FTP',
  'menu_upgrade_tab' => 'Upgrade',
  'menu_log_tab' => 'Logs',
  'menu_events_tab' => 'Events',
  'menu_logs' => 'Truncate Logs',
  'menu_events' => 'Schedule Events',
  'menu_upgrade' => 'Site Upgrade Preparation',
  'menu_logs_mail' => 'Error Log mail settings',
  'manager_log' => 'Manager Log',
  'event_log' => 'Event Log',
  'activate_log_mail' => 'Activate',
  'deactivate_log_mail' => 'Deactivate',
  'truncationfailed' => 'Log file truncation failed ',
  'truncationsuccess' => 'Log file truncation succeded ',
  'linkcheckfailed' => 'The link check has failed - Sorry! ',
  'linkchecktimedout' => 'The link check has timed out - Sorry! ',
  'linkchecknophpxml' => 'Oops! You don\'t have the PHP XML extension installed - Link Checker needs this',
  'linkchecksuccess' => 'The link check has completed',
  'linkcheckinvalidresource' => 'The entered resource is invalid',
  'errormailfailed' => 'Mail log errors failed ',
  'errormailsuccess' => 'Mail log errors succeded ',
  'failedtosavemaillog' => 'Failed to save the mail error log system settings',
  'mailsuccess' => 'Mail Log settings saved',
  'eventsuccess' => 'Scheduled events saved',
  'upgradesuccess' => 'Site upgrade preparation succeded',
  'upgradefail' => 'Site upgrade preparation failed',
  'maillogsuccess' => 'Mail settings saved',
  'button_log_mail' => 'Save',
  'log_mail_account' => '  Mail To',
  'button_truncate_logs' => 'Truncate',
  'button_site_upgrade' => 'Prepare',
  'truncate_manager_failed' => 'Failed to truncate the Manager Log',
  'truncate_event_failed' => 'Failed to truncate the Event Log',
  'unknownerror' => 'Unknown error',
  'menu_linkcheck_tab' => 'Link Check',
  'menu_linkcheck' => 'Link Check',
  'menu_linkcheck_resource' => 'Resource Id',
  'menu_linkcheck_children' => 'Children',
  'linkcheck_instructions' => '<p style="font-size:16px; text-align:left; margin-right:5%; margin-left:5%;">Press the check button to check the validity of your sites links</p>',
  'linkcheck_checking' => 'Checking Links....',
  'button_linkcheck' => 'Check',
  'janitor.desc' => 'A component to assist with site maintenance tasks',
  'welcome_text_1' => '<br><p style="font-size:20px; text-align:center; margin-right:25%; margin-left:5%;">Welcome to the Janitor Revolution 3PC.</p>',
  'welcome_text_2' => '<br><p style="font-size:16px; text-align:left; margin-right:25%; margin-left:5%;">A Janitor is defined as someone who
                           looks after a building, in this case the building is your Revolution installation!. Hopefully Janitor will assist you in the everyday maintenance
                           tasks you undertake to keep your site in tip top shape.</p>',
  'welcome_text_3' => '<br><p style="font-size:16px; text-align:left; margin-right:25%; margin-left:5%;">Janitor uses a mixture of robust 3rd party tools such as MySQLBuddy and phpMyBackUpPro
                           and Revolution specific tools to allow everyday maintenance to be performed easily. Please refer
                           to the User Guide for more specific details on these tools but just to get you started here\'s a
                           brief rundown of the tabs </p>',
  'welcome_text_4' => '<br><p style="font-size:14px; text-align:left; margin-right:25%; margin-left:5%;"><b>Database</b> Uses
                           MySQLBuddy as a general purpose database maintenance tool for non-specific database tasks.</p>',
  'welcome_text_5' => '<p style="font-size:14px; text-align:left; margin-right:25%; margin-left:5%;"><b>Backup</b> Uses
                           phpMyBackupPro as a general purpose database backup tool.</p>
                           <p style="font-size:14px; text-align:left; margin-right:25%; margin-left:5%;"><b>FTP</b> Uses
                           Extplorer as a graphical FTP and file explorer utility.</p>
                           <p style="font-size:14px; text-align:left; margin-right:25%; margin-left:5%;"><b>Search</b> Uses
                           Evolutions DocFinder module as a site search utility.</p>',
  'welcome_text_6' => '<p style="font-size:14px; text-align:left; margin-right:25%; margin-left:5%;"><b>Logs</b> Allows log file management. </p>
                           <p style="font-size:14px; text-align:left; margin-right:25%; margin-left:5%;"><b>Upgrade</b> Prepares the site for an upgrade.</p>
                           <p style="font-size:14px; text-align:left; margin-right:25%; margin-left:5%;"><b>Events</b> Scheduled event handling. </p>
                           <p style="font-size:14px; text-align:left; margin-right:25%; margin-left:5%;"><b>Link Check</b> Checks
                           the sites links for validity.</p>',
  'welcome_text_footer' => '<br/><br/><br/><br/><i><p style="font-size:16px; text-align:left; margin-right:25%; margin-left:5%;">Designed and
                                 implemented for MODx Revolution by <a href="mailto:steve.hamblett@linux.com">S. Hamblett</a> incorporating ideas
                                 and suggestions from the MODx community.</p></i>',
  'upgrade_steps' => '<br><p style="font-size:16px; text-align:left; margin-right:5%; margin-left:5%;">This function prepares your installation for an upgrade, specifically it performs the following operations in order :-.</p>',
  'upgrade_steps_list' => '<br/><p style="font-size:14px; text-align:left; margin-right:5%; margin-left:5%;">
                          1. The directory /core/packages/core and the file /core/packages/transport are deleted.</p>
                          <p style="font-size:14px; text-align:left; margin-right:5%; margin-left:5%;">
                          2. The manager log, event log and the error log are cleared.</p>
                          <p style="font-size:14px; text-align:left; margin-right:5%; margin-left:5%;">
                          3. The cache is cleared.</p>
                          <p style="font-size:14px; text-align:left; margin-right:5%; margin-left:5%;">
                          4. Permissions are flushed.</p>
                          <p style="font-size:14px; text-align:left; margin-right:5%; margin-left:5%;">
                          5. All sessions are flushed.</p>
                          <br/><p style="font-size:16px; text-align:left; margin-right:5%; margin-left:5%;">
                          The last step will log you out, any manager actions you perform will return you to the login screen,
                          you should now be able to perform your upgrade.</p><br/>',
  'event_desc' => '<br><p style="font-size:16px; text-align:left; margin-right:5%; margin-left:5%;">
                        Scheduled event handling is planned to go here, but not in this release! You will be able to
                        run snippets containing PHP code or chunks containing SQL on a timed basis.</p>',
  'summaryarea' => 'Summary......',
  'reportarea' => 'Report......',
  'linkchecknotmpdir' => 'Oops! Your tmp directory is not writeable - Link Checker needs this',
);