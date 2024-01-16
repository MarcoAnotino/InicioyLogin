<?php
include("../modelo/conexion.php");

if (isset($_SESSION["conexionBD"])) {
    $consultarCal = "select `cecyp`.`Profesor`.`id` AS `idProfesor`,`cecyp`.`Persona`.`nombre` AS `nombre`,`cecyp`.`Persona`.`paterno` AS `paterno`,`cecyp`.`Persona`.`materno` AS `materno`,count(distinct `cecyp`.`Grupo`.`id`) AS `grupos`,count(distinct `cecyp`.`Matricula`.`idAlumno`) AS `alumnos` from (((`cecyp`.`Profesor` join `cecyp`.`Persona` on(`cecyp`.`Persona`.`id` = `cecyp`.`Profesor`.`idPersona`)) left join `cecyp`.`Grupo` on(`cecyp`.`Grupo`.`idProfesor` = `cecyp`.`Profesor`.`id`)) left join `cecyp`.`Matricula` on(`cecyp`.`Matricula`.`idGrupo` = `cecyp`.`Grupo`.`id`)) group by `cecyp`.`Profesor`.`id`,`cecyp`.`Persona`.`id` order by `cecyp`.`Profesor`.`id`";

    $resultados = mysqli_query($conexion, $consultarCal);

    if ($resultados) {
        ?>
        <table>
            <thead>
                <tr>
                    <th>Profesor (a)</th>
                    <th>Grupos</th>
                    <th>Alumnos</th>
                </tr>
            </thead>
            <tbody>
                <?php
                while ($row = $resultados->fetch_array()) {
                    echo '<tr>';
                    echo '<td>' . $row['nombre'] . "  ". $row['paterno']. " ". $row['materno']. '</td>';
                    echo '<td>' . $row['grupos'] . '</td>';
                    echo '<td>' . $row['alumnos'] . '</td>';
                    echo '</tr>';
                }
                ?>
            </tbody>
        </table>
        <?php
    }
}
?>