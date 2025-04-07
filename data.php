<?php 
 // echo phpversion();
    // echo phpinfo();


    $var1 = 10;

    define("CONST1","username");

    // echo $var1,CONST1;

    $arr1 = ["user1","user2",200];

    // echo $arr1;
    // echo "<br>";
    // var_dump($arr1);

    // unset($var1);


    $answer = $var1*=10;
    $answer = $var1*3;


    // for($i=0;$i<100;$i++){
    //     $answer+=5;
    //     echo "<p>" . $answer . "</p>";
    // }
    $url="https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=1024x1024&w=0&k=20&c=z8_rWaI8x4zApNEEG9DnWlGXyDIXe-OmsAyQ5fGPVV8=";
    $html1 = "<img src=\"$url\" width=\"200\">";
    $text1 = "there is a text";




    // echo $html1;

    // echo "<script>
    //             console.log(\"$text1\");
    //       </script>
    //     ";





        // file data

        $title = "My new PHP";

        // $nav = ["item1","item2","item3","item4"];
        $nav = [
            [
            "title" =>"Main",
            "href" =>"index.php"
            ],
            [
                "title" =>"About Us",
                "href" =>"about.php"
            ],
            [
                "title" =>"Contacts",
                "href" =>"contacts.php"
            ],

        ];


        $content["h1"] = $title;
        $content["p"]='PHP is a general-purpose scripting language geared towards web development.[8] It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1993 and released in 1995.[9][10] The PHP reference implementation is now produced by the PHP Group.[11] PHP was originally an abbreviation of Personal Home Page,[12][13] but it now stands for the recursive acronym PHP: Hypertext Preprocessor.[14] Below is a "Hello World!" program in PHP.';
        $content["img"]=$url;

        // <?php echo $ok = <?= $ok

?>