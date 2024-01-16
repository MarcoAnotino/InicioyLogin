<?php
include("../modelo/conexion.php");

if (isset($_SESSION["conexionBD"])) {
    $consultarCal = "   SELECT 
    `Kardex`.`calificacion` AS `calificacionK`,
    `Curso`.`nombre` AS `nombreCurso`,
    `Curso`.`nivel`,
    `Persona`.`nombre` AS `nombreAlumno`
FROM 
    `cecyp`.`Kardex`
JOIN 
    `cecyp`.`Curso` ON `Kardex`.`idCurso` = `Curso`.`id`
JOIN
    `cecyp`.`Persona` ON `Kardex`.`idAlumno` = `Persona`.`id`
WHERE
    `Kardex`.`idAlumno` = `Persona`.`id`;


";

    $resultados = mysqli_query($conexion, $consultarCal);

    if ($resultados) {
        ?>
        <table>
            <thead>
                <tr>
                    <th>Alumno</th>
                    <th>Materia</th>
                    <th>Calificación</th>
                </tr>
            </thead>
            <tbody>
                <?php
                while ($row = $resultados->fetch_array()) {
                    echo '<tr>';
                    echo '<td>' . $row['nombreAlumno'] . '</td>';
                    echo '<td>' . $row['nombreCurso'] . '</td>';
                    echo '<td>' . $row['calificacionK'] . '</td>';
                    echo '</tr>';
                }
                ?>
            </tbody>
        </table>
        <?php
    }
}
?>