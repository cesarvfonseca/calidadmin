<?php
	function Connect(){
        /*
        
                $db_host		= 'localhost';
        
                $db_user		= 'mexqmx_developer';
        
                $db_pass		= 'n&Wi1UG[RNwo';
        
                $db_database	= 'mexqcmmx_resguardo'; 
        */
        
                $db_host		= 'localhost';
        
                $db_user		= 'root';
        
                $db_pass		= '';
        
                $db_database	= 'mexqcmmx_mexqmx_sgc'; 
        
        
                try{
                    // $cn = new PDO('mysql:host='.$db_host.';dbname='.$db_database, $db_user, $db_pass, array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES  \'UTF8\''));
                    $conn = new PDO('mysql:host=localhost;dbname='.$db_database.'', $db_user, $db_pass, array(
                        PDO::ATTR_PERSISTENT => true
                    ));
                    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                }catch(PDOException $e){
                    echo "ERROR: " . $e->getMessage();
                }
        
                return $conn;
        
            }