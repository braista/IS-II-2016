<html>
<head>
	<link rel="stylesheet" href="CSS/main.css">
    <link rel="stylesheet" href="fonts/style.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
	<!-- HEADER -->
	<header>		
		<div id="head">
			<div id="logo1">
				<a href="index.php"><img alt="" src="http://static.tumblr.com/5473d74e35693e4a261933b04b13080e/vhrhomj/eAknuqhz5/tumblr_static_7fu7jer965gk4w4cok4ooo4cw_2048_v2.png"></a>
			</div>
			<div id="menu1">
				<div id="menu1Options">
					<a href="index.php" class="fade">VOLVER</a>
				</div>				
			</div>
		</div>
	</header>
	<!-- CONTENEDOR-->
	<div id="contenedor">
		<form id="login" action="valida.php" method="post">
			<label class="texto_biselado desc" for="nombre">Nombre de usuario:</label><br>
				<input style="margin: 5px" type="text" name="nombre" id="nombre"><br>
 			<label class="texto_biselado desc" for="contraseña">Contraseña: </label><br>
 				<input style="margin: 5px" type="password" name="contraseña" id="contraseña"><br>
			<button class="button" type="submit" value="Entrar">REGISTRARSE</button>
			<button class="button" type ="reset">RESTABLECER</button>
		</form>
	</div>
</body>
</html>