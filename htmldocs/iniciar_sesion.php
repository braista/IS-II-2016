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
					<a href="index.php" class="fade">⌂ INICIO</a>
					<a href="registro.php" class="fade">REGISTRATE</a>
				</div>
								
			</div>
		</div>
	</header>
	
	<!-- CONTENEDOR-->
	<div id="contenedor">
		<div id="formLogin">
		<form id="login" action="valida.php" method="post"><br><br><br>
			<label class="texto_biselado desc" for="nombre">• Nombre de usuario</label><br>
				<input style="margin: 10px" type="text" name="nombre" id="nombre"><br>
 			<label class="texto_biselado desc" for="contraseña">• Contraseña &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp  &nbsp &nbsp ¿Has olvidado tu contraseña?</label><br>
 				<input style="margin: 10px" type="password" name="contraseña" id="contraseña">
 			<button class="button" href="recuperarContraseña.php">?? Recuperar</button><br>
			<button class="button" type="submit" value="Entrar">Confirmar</button><br>
			<button class="button" type ="reset">Restablecer</button>
			<button class="button" href="index.php">◄◄Volver</button>
		</form>
		</div>
	</div>
</body>
</html>