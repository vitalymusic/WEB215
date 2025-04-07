<nav>
        <?php 
            // var_dump($nav);
            // return;

            foreach($nav as $item){
                echo "<a href=\"" . $item["href"] . "\">". $item["title"] . "</a>";
            }
        ?>
    </nav>