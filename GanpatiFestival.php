<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
};

if(isset($_POST['send'])){

    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $number = mysqli_real_escape_string($conn, $_POST['number']);
    $msg = mysqli_real_escape_string($conn, $_POST['message']);

    $select_message = mysqli_query($conn, "SELECT * FROM `message` WHERE name = '$name' AND email = '$email' AND number = '$number' AND message = '$msg'") or die('query failed');

    if(mysqli_num_rows($select_message) > 0){
        $message[] = 'message sent already!';
    }else{
        mysqli_query($conn, "INSERT INTO `message`(user_id, name, email, number, message) VALUES('$user_id', '$name', '$email', '$number', '$msg')") or die('query failed');
        $message[] = 'message sent successfully!';
    }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
   <title> Ganapati Festival</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php @include 'header.php'; ?>

<section class="heading">
    <h3>Ganpati Festival</h3>
    <p> <a href="home.php"> home</a> /<a href="event.php"> event</a> / Ganpati Festival</p>
</section>
<div id="Gallery" >
        <div class="center">
            <img src="Images//gp1.jpg" alt=" Images">
            <img src="Images//gp5.jpg" alt="Images">


            <img src="Images//gp2.jpg" alt=" Images">
        </div>
        <div class="center">
            <img src="Images//gp4.jpg" alt="Images">
            <img src="Images//gp3.jpg" alt=" Images">

            <img src="Images//gp6.jpg" alt="Images">
        </div>
    </div>
    <h3 class="h-third center"> Services We Provide for Ganpati Festival</h3>
    <div id="Services">
        
        <div class="box">
            <img src="Images//gp.jpg" alt="">
            <h3 class="h-third center">Decor</h3>
        </div><div class="box">
            <img src="Images//thali.jpg" alt="">
            <h3 class="h-third center">Catering</h3>
        </div><div class="box">
            <img src="Images//m.jpg" alt="">
            <h3 class="h-third center">Modak</h3>
        </div>
        <div class="box">
            <img src="Images//music.jpg" alt="">
            <h3 class="h-third center">Music</h3>
        </div>
    </div>
    <h2 class="h-third center" ><a class="linkcolor" href="shop.php">Customize Services for Ganpati Festival</a></h2>

<?php @include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>