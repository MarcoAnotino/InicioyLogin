<?php
include("../modelo/conexion.php");

if (isset($_SESSION["conexionBD"])) {
    $consultarCal = "SELECT 
        `Progreso`.`idAlumno` AS `idAlumno`,
        `Progreso`.`idCurso` AS `idCurso`,
        `Progreso`.`completadas` AS `completadas`,
        `V_Curso`.`actividades` AS `total`,
        ROUND(`Progreso`.`completadas` / `V_Curso`.`actividades` * 100, 0) AS `porcentaje`,
        `Progreso`.`valor` AS `valorCompletadas`,
        `V_Curso`.`valor` AS `valorTotal`,
        ROUND(`Progreso`.`valor` / `V_Curso`.`valor` * 100, 0) AS `calificacion`,
        `Curso`.`nombre` AS `nombreCurso`
    FROM 
        (`cecyp`.`V_Progreso_Curso_Alumno` `Progreso`
        JOIN `cecyp`.`V_Curso` ON (`Progreso`.`idCurso` = `V_Curso`.`idCurso`)
        JOIN `cecyp`.`Curso` ON (`Progreso`.`idCurso` = `Curso`.`id`))
    WHERE
        `Progreso`.`idAlumno` = {$_SESSION["IdPersona"]}
    ORDER BY 
        `Progreso`.`idAlumno`, `Progreso`.`idCurso`";

    $resultados = mysqli_query($conexion, $consultarCal);

    if ($resultados) {
        ?>
        <table>
            <thead>
                <tr>
                    <th>Materia</th>
                    <th>Tareas Completadas</th>
                    <th>Valor</th>
                    <th>Calificación</th>
                </tr>
            </thead>
            <tbody>
                <?php
                while ($row = $resultados->fetch_array()) {
                    echo '<tr>';
                    echo '<td>' . $row['nombreCurso'] . '</td>';
                    echo '<td>' . $row['completadas'] . '</td>';
                    echo '<td>' . $row['valorCompletadas'] . '</td>';
                    echo '<td>' . $row['calificacion'] . '</td>';
                    echo '</tr>';
                }
                ?>
            </tbody>
        </table>
        <?php
    }
}
?>