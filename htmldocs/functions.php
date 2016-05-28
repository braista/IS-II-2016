<?php
                
        function checkSession() {
                $user = 'null';
                if (isset($_SESSION['user']))
                        $user = $_SESSION['user'];
                return $user;            
        }
        
        function connect(){
                $link = mysqli_connect('localhost', 'bys', 'estudiantes') or die("Error". mysqli_error($link));
                return $link;
        }
?>
