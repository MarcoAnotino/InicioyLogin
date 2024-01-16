<?php

session_start();
$conexion=new mysqli("localhost", "root", "", "cecyp");

$_SESSION["conexionBD"] = $conexion;
