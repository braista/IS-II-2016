<html>
        <head>
                <link rel="stylesheet" href="CSS/main.css">
                <link rel="stylesheet" href="fonts/style.css">
                <?php                
                include_once 'show.php';
                include_once 'functions.php';
                $link=  connect();
                ?>                
                <title>CouchInn</title>
        </head>
        <body>
	<!-- HEADER -->
	<header>		
                        <?php
                                show('header');
                        ?>       
	</header>
	
	<!-- CONTENEDOR-->
	<div id="contenedor">                        
                        <?php
                                show('searcher');
                        ?>
	</div>
        </body>
</html>