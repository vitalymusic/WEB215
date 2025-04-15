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
    <div class="container">
        <?php 

            $sql = "SELECT * FROM `pages`;";

            $result = $conn->query($sql);
            // print_r($result);
            // exit();

            if ($result->num_rows > 0) {
              // output data of each row
              while($row = $result->fetch_assoc()) {
                echo "id: " . $row["id"]. " - Menu name: " . $row["menu_name"]. "<br>Content:" . $row["content"]. "<br>";
              }
            } else {
              echo "0 results";
            }
            
            $conn->close();
            ?>


    </div>
    <?php  include 'footer.php';?>


