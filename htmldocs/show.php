<?php
        include_once 'functions.php';
        function show($option) {
                if ($option == 'header'){
                        echo '
                                <div id="head">
                                        <div id="logo1">
                                                <a href="index.php"><img alt="" src="http://static.tumblr.com/5473d74e35693e4a261933b04b13080e/vhrhomj/eAknuqhz5/tumblr_static_7fu7jer965gk4w4cok4ooo4cw_2048_v2.png"></a>
                                        </div>
                                        <div id="menu1">
                                                <div id="menu1Options">
                                                        <a href="index.php" class="fade">INICIO</a>
                                                        <a href="" class="fade">REGISTRARSE</a>
                                                        <a href="" class="fade">PREMIUM</a>
                                                        <a href="" class="fade">CONTACTO</a>
                                                </div>
								
                                        </div>
                                <div id="login">
                        ';
                        $user = checkSession();
                        
                        if($user != 'null') 
                                echo'
                                                <label class="bienvenido">Bienvenido '.$usuario.'</label><br>
                                                <a href="backend.php"><span class="icon-clipboard"></span>Panel</a> <a class="separador"> |
                                                </a> <a href="logout.php"><span class="icon-exit"></span>Salir</a>
                                ';
                        else
                                echo'
                                                <a href="index.php?login">Ingresar</a>
                                        </div> 
                                </div>               
                                ';
                }
                if($option == 'searcher'){
                        echo '
                                <div id="buscador">
                                        <div id="buscadorForm">
                                                <form action="search.php" method="POST">
                                                        <input type="text" name="search">
                                                        <input type="submit" value="buscar">
                                                <form>
                                        </div>			
                                </div>
                        ';
                }
        }
?>

