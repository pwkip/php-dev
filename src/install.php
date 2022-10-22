<?php

// Setup database here

$servername = "db";
$username = "my_user";
$password = "my_password";
$database = "my_database";

$dsn = "mysql:host=$servername;dbname=$database";

$pdo = new PDO($dsn, $username, $password);

// Create connection
$db_connection = mysqli_connect($servername, $username, $password, $database);

// Check connection
if (!$db_connection) {
    die("Connection failed: " . mysqli_connect_error());
}

echo "Connected successfully<br>";
$result = mysqli_query( $db_connection, "SHOW TABLES LIKE 'test_table'" );

if ( mysqli_num_rows($result) == 0 ) {

    $query = "CREATE TABLE IF NOT EXISTS test_table (
        id int(11) AUTO_INCREMENT,
        email varchar(255) NOT NULL,
        PRIMARY KEY  (id)
    )";
    $result = mysqli_query($db_connection, $query);
    print_r($result);
    echo '<br>';
    echo "test data was created.<br>";
} else {
    echo "Database was already set up.<br>";
}
