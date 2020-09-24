<?php
include("./classes/DB.php");
$toast=false;
if(isset($_POST['submit'])){
    $name=$_POST['name'];
    $mail=$_POST['mail'];
    $phone=$_POST['phone'];
    $address=$_POST['address'];
    $date=date('Y-m-d',strtotime($_POST['date']));
    $about=$_POST['about'];

    if(!DB::query('SELECT name FROM user WHERE name=:name',array(':name'=>$name))){
        DB::query('INSERT INTO user VALUES(\'\',:name,:mail,:phone,:address,:date,:about)',array(':name'=>$name,':mail'=>$mail,':phone'=>$phone,':address'=>$address,':date'=>$date,':about'=>$about));
        $toast=true;  
    }
}


?>


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Intern Assignment</title>
    <script src="https://kit.fontawesome.com/f6a963a990.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./style/style.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
</head>
<body>
    <div class="container">
        <h2 class="heading">Internship Assignment for Innovatus Technologies</h1>
        <div class="form">
            <form action="index.php"  method="POST" class="formbody">
                <p class="label"><span><i class="fas fa-user fa-xs" aria-hidden="true"></i></span>Name</p>
                <input type="text" class="input" name="name" value="" placeholder="Someone" required>
                <p id="error"></p>

                <p class="label"><i class="fas fa-envelope fa-xs" aria-hidden="true"></i></span>eMail</p>
                <input type="email" class="input" name="mail" value="" placeholder="someone@example.com" required>
                <p id="error"></p>

                <p class="label"><i class="fas fa-phone-alt fa-xs" aria-hidden="true"></i></span>Phone</p>
                <input type="tel" minlength="10" maxlength="10" class="input" name="phone" pattern="[0-9]{10}" value="" placeholder="9999999999" required>
                <p id="error"></p>

                <p class="label"><i class="fas fa-home fa-xs" aria-hidden="true"></i></span>Address</p>
                <textarea rows="5" cols="30" name="address" class="input" placeholder="Enter your address..." required></textarea>

                <p class="label"><i class="fas fa-calendar-alt fa-xs" aria-hidden="true"></i></span>DOB</p>
                <input type="date" class="input" name="date" value="" required>

                <p class="label"><i class="fas fa-info-circle fa-xs" aria-hidden="true"></i></span>About you</p>
                <textarea rows="5" cols="30" name="about" class="input" wrap="hard"  placeholder="Something about you..." required ></textarea>
                
                <br>
                <input type="submit" class="btn" name="submit" value="Submit">
            </form>
        </div>
    </div>
</body>
<?php 
    if($toast==true){
        echo"<script type=\"text/javascript\">Toastify({text: \"Submitted Successfully !🥳\",duration: 3000, backgroundColor:\"black\",className:\"toast\"}).showToast();</script>";
    }
    ?>
</html>
