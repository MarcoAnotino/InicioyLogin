<?php
session_start();

?>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>PixCent | Inicio</title>
	<link rel="stylesheet" href="../css/estiloheader.css">
	<link rel="stylesheet" href="../css/calificaciones.css">
</head>

<body>
	<div class="container">
		<header>
			<div class="nav-top">
				<div class="pix">
					<img src="../img/icon/LogoF.png" alt="Pixcent-Logo">
				</div>
				<div class="profile">
					<?php
					echo $_SESSION["nombres"] . " " . $_SESSION["ApPaterno"];

					// Dependiendo del tipo de usuario, selecciona la imagen correspondiente
					$tipoUsuario = $_SESSION["TipoCuenta"];
					$imagenUsuario = "";
					switch ($tipoUsuario) {
						case "A":
							$imagenUsuario = "admin.jpg";
							break;
						case "P":
							$imagenUsuario = "profesor.jpg";
							break;
						case "E":
							$imagenUsuario = "alumno.jpg";
							break;
					}

					// Imprime la etiqueta de la imagen con la ruta correspondiente
					echo '<img src="../img/user/' . $imagenUsuario . '" alt="user' . $tipoUsuario . '">';
					?>
				</div>
			</div>
		</header>
		<div class="contenido">
			<div class="dashboard">
				<div class="nav-left">
					<li><a href="">Mis Cursos</a></li>
					<li><a href="">Calificaciones</a></li>
					<li><a href="">General</a></li>
					<li><a href="">Encuadre</a></li>
					<div class="logout">
						<a class="btnout" href="../controlador/controlador_cerrar_sesion.php">Salir</a>
					</div>
				</div>
			</div>

			<?php
			// Dependiendo del tipo de usuario, selecciona la imagen correspondiente
			$tipoUsuario = $_SESSION["TipoCuenta"];
			$imagenUsuario = "";
			switch ($tipoUsuario) {
				case "A":
					?>

					<div class="content">
						<div class="Calif-User">
							<?php
							include("../controlador/controlador_admin.php");
							?>
						</div>
					</div>
					<?php
					break;
				case "P":
					?>

					<div class="content">
						<div class="Calif-User">
							<?php
							include("../controlador/controlador_profe.php");
							?>
						</div>
					</div>
					<?php
					break;
				case "E":
					?>

					<div class="content">
						<div class="Calif-User">
							<?php
							include("../controlador/controlador_calificaciones.php");
							?>
						</div>
						<div class="Calif-User">
							<?php
							include("../controlador/controlador_calF.php");
							?>
						</div>
					</div>
					<?php

					break;
			}
			?>
		</div>
	</div>
	<script src="js/alumno.js"></script>
	<script src="js/jquery-3.3.1.slim.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>

</html>