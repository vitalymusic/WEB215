<?php 
   include 'data.php';
   include 'head.php';
?>
    <head>
        <?php  include 'nav.php';?>
    </head>
    <main>
        <?php
        
            switch($_GET["page"]){
                case "index":showPage(0);break;
                case "about":showPage(1);break;
                case "contacts":showPage(2);break;
                default:showPage(404);break;
            } 
             function showPage($id){
                    global $content;
                    if($id==404){
                        echo "<h1>Page not found</h1>";
                        return;
                    }
                   echo "<h1>{$content[$id]["h1"]}</h1>"; 
                   echo "<p>{$content[$id]["p"]}</p>"; 
                   echo "<img src=\"{$content[$id]["img"]}\" alt=\"image1\" width=\"500\"> "; 
             }
        ?>
    </main>
    <?php  include 'footer.php';?>


