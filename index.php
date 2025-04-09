<?php 
   include 'data.php';
   include 'head.php';
?>

    <head>
        <?php  include 'nav.php';?>
        <h1><?=$_SESSION["username"]?></h1>
    </head>
    
    <main>
        <h1><?=$content["h1"]?></h1>
        <h2><?=$content["h1"]?></h2>
        <p><?=$content["p"]?></p>   
        <img src="<?=$content["img"]?>" alt="image1" width="500">  
    </main>
    <?php  include 'footer.php';?>


