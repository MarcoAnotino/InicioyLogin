<?php
// include("../modelo/conexion.php");

if (isset($_SESSION["conexionBD"])) {
    $consultarCal = "SELECT 
    `Kardex`.*,
    `Curso`.`nombre` AS `nombreCurso`,
    `Curso`.`nivel`
FROM 
    `cecyp`.`Kardex`
JOIN 
    `cecyp`.`Curso` ON `Kardex`.`idCurso` = `Curso`.`id`
WHERE
    `Kardex`.`idAlumno` = {$_SESSION["IdPersona"]};
";

    $resultados = mysqli_query($conexion, $consultarCal);

    if ($resultados) {
        ?>
        <h3>Kardex</h3>
        <br>
        <table>
            <thead>
                <tr>
                    <th>Nivel</th>
                    <th>Materia</th>
                    <th>Calificación</th>
                </tr>
            </thead>
            <tbody>
                <?php
                while ($row = $resultados->fetch_array()) {
                    echo '<tr>';
                    echo '<td>' . $row['nivel'] . '</td>';
                    echo '<td>' . $row['nombreCurso'] . '</td>';
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