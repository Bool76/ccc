<?php
/**
 * phpMyAdmin Configuration File
 *
 * All directives are explained in Documentation.html
 */

/**
 * Server(s) configuration
 */
$i = 0;
// The $cfg['Servers'] array starts with $cfg['Servers'][1].  Do not use $cfg['Servers'][0].
// You can disable a server config entry by setting host to ''.
$i++;
$cfg['Servers'][$i]['host']          = 'mysql.creativechildcareinc.com';
$cfg['Servers'][$i]['controluser']   = 'pma@creativechildcareinc.com';
$cfg['Servers'][$i]['controlpass']   = '';
$cfg['Servers'][$i]['auth_type']     = 'config';
$cfg['Servers'][$i]['user']          = 'sql@creativechildcareinc.com';
$cfg['Servers'][$i]['password']      = 'Cre@t!ve';
$cfg['Servers'][$i]['bookmarktable'] = 'pma_bookmark';
$cfg['Servers'][$i]['relation']      = 'pma_relation';
$cfg['Servers'][$i]['table_info']    = 'pma_table_info';
$cfg['Servers'][$i]['table_coords']  = 'pma_table_coords';
$cfg['Servers'][$i]['pdf_pages']     = 'pma_pdf_pages';
$cfg['Servers'][$i]['column_info']   = 'pma_column_info';
$cfg['Servers'][$i]['history']       = 'pma_history';
$cfg['Servers'][$i]['extension'] = 'mysql';
$cfg['Servers'][$i]['connect_type'] = 'socket';
$cfg['Servers'][$i]['compress'] = false;


?>
