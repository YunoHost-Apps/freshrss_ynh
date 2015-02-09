<?php
require('constants.php');
require(LIB_PATH . '/lib_rss.php');
if (FRESHRSS_VERSION === '0.8.1'){
	require('app/Models/Configuration.php');
	require('app/Models/Entry.php');
}

$ch = curl_init(FRESHRSS_UPDATE_WEBSITE);
$fp = fopen("update.php", "w");

curl_setopt($ch, CURLOPT_FILE, $fp);
curl_setopt($ch, CURLOPT_HEADER, 0);

curl_exec($ch);
curl_close($ch);
fclose($fp);

if (!strstr(file_get_contents('update.php'), 'NO_UPDATE')){
        require('update.php');
        apply_update();
}
?>