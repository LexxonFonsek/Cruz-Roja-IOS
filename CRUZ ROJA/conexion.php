<?php
    //Declaramos las 4 variables para la conexión a la Base de Datos
    $servername = "200.39.169.50";  // ------ Servidor donde está la BD
    $username = "mauricio@gmail.com";         // ------ Usuario para entrar a la BD
    $password = "12345678";      // ------ Password para entrar a la BD
	$BasedeDatos = "200.39.169.50"; // ------ Nombre de tu base de datos
	
    //En un bloque try - catch escribimos la línea de conexión ************
	// Los bloques try - catch ya los viste en tus materias de programación
try {
	// Creamos la variable $conn que usaremos en todo el proyecto web
	// En esta línea de abajo se usan las 4 variables de la conexión a la BD
	// PDO significa PHP DATA OBJECTS y es para conectarnos a las bases de datos
    $conn = new PDO("mysql:host=$servername;dbname=$BasedeDatos", $username, $password);
	
	// Asignamos los atributos de conexión *********************************
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	
    }
	
catch(PDOException $e)
    {
	
    }
	
?> 