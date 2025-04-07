<?php 
   include 'data.php';

   include 'head.php';
?>

    <head>
        <?php  include 'nav.php';?>
    </head>
    
    <main>
        <h1><?=$content["h1"]?></h1>
        <h2><?=$content["h1"]?></h2>
        <p><?=$content["p"]?></p>   
        <img src="<?=$content["img"]?>" alt="image1" width="500">  
    </main>
    <?php  include 'footer.php';?>


