<?php
/*    This file contains the database access information.
    his file also establishes a connection to MySQL,
    selects the database, and sets the encoding.*/

    // Session starts
	session_start();

	header('Content-Type: text/html; charset=utf-8'); // utf-8 encoding

    // Set the database access information as constants:
    define('DB_USER', 'root');
    define('DB_PASSWORD', 'secret');
    define('DB_HOST', 'mysql');
    define('DB_NAME', 'php_project1');

    // Create a MySQLi object
    $mysqli = new MySQLi(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

	if($mysqli->connect_error) {
        
        echo $mysqli->connect_error;
        unset($mysqli);
    } else {
        
        // Set the encoding
        $mysqli->set_charset("utf8");
    }

    // function for sql query
	function mq($sql)
	{
		global $mysqli;
		return $mysqli->query($sql);
	}
?>