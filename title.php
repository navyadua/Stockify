<!DOCTYPE html>
<html>
    <body>
        

    <?php

// Username is root
$user = 'root';
$password = '';

// Database name is gfg
$database = 'stockify';

// Server is localhost with
// port number 3306
$servername='localhost:3306';
$mysqli = new mysqli($servername, $user,
				$password, $database);

// Checking for connections
if ($mysqli->connect_error) {
	die('Connect Error (' .
	$mysqli->connect_errno . ') '.
	$mysqli->connect_error);
}

// SQL query to select data from database
$sql = "SELECT Links FROM title WHERE Course_Name = 'Stock Market'";
$result = $mysqli->query($sql);
$mysqli->close();

//Getting the title of the youtube video

// LOOP TILL END OF DATA
				while($rows=$result->fetch_assoc())
				{
			?>
			
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
                    
				<?php 
                
                $url = $rows['Links'];

                $video_info = file_get_contents($url);
parse_str($video_info, $video_info_array);
$title = json_decode($video_info_array['player_response'])->videoDetails->title;
echo $title;           
}
                ?>


    </body>
</html>