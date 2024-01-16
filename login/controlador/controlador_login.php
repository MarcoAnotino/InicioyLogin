<?php
if (!empty($_POST["btningresar"])) {
    if (!empty($_POST["usuario"]) and !empty($_POST["password"])) {
        $usuario = $_POST["usuario"];
        $password = $_POST["password"];
        $sql=$_SESSION["conexionBD"]->query("SELECT * FROM Persona WHERE usuario='$usuario' AND BINARY contra='$password'");
        if ($datos = $sql->fetch_object()) {
            $_SESSION["idusuario"] = $datos->id;
            $_SESSION["nombres"] = $datos->nombre;
            $_SESSION["ApPaterno"] = $datos->paterno;
            $_SESSION["User"] = $datos->usuario;

             // Consulta para obtener idPersona de tablas Administrador, Profesor y Alumno
             $sqlTP = $_SESSION["conexionBD"]->query("
             SELECT `cecyp`.`Persona`.`id` AS `idPersona`, 'A' AS `tipo`, `cecyp`.`Administrador`.`id` AS `id`
             FROM (`cecyp`.`Persona` JOIN `cecyp`.`Administrador` ON (`cecyp`.`Administrador`.`idPersona` = `cecyp`.`Persona`.`id`))
             WHERE `cecyp`.`Persona`.`id` = {$_SESSION["idusuario"]}
             
             UNION
             
             SELECT `cecyp`.`Persona`.`id` AS `idPersona`, 'P' AS `tipo`, `cecyp`.`Profesor`.`id` AS `id`
             FROM (`cecyp`.`Persona` JOIN `cecyp`.`Profesor` ON (`cecyp`.`Profesor`.`idPersona` = `cecyp`.`Persona`.`id`))
             WHERE `cecyp`.`Persona`.`id` = {$_SESSION["idusuario"]}
             
             UNION
             
             SELECT `cecyp`.`Persona`.`id` AS `idPersona`, 'E' AS `tipo`, `cecyp`.`Alumno`.`id` AS `id`
             FROM (`cecyp`.`Persona` JOIN `cecyp`.`Alumno` ON (`cecyp`.`Alumno`.`idPersona` = `cecyp`.`Persona`.`id`))
             WHERE `cecyp`.`Persona`.`id` = {$_SESSION["idusuario"]}
             
             ORDER BY `idPersona`
         ");

         // Verificar si se encontraron resultados en la consulta que obtiene idPersona
         if ($datosIdPersona = $sqlTP->fetch_object()) {
                $_SESSION["IdPersona"] = $datosIdPersona->idPersona;
                $_SESSION["TipoCuenta"] = $datosIdPersona->tipo;
         }
            header("location: pages/Calificaciones.php");
        } else {
            echo "<div class='alert alert-danger'>Acceso denegado</div>";
        }
    } else {
        echo "<div class='alert alert-danger'>Llene todos los campos</div>";
    }
}
