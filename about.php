<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
   <?php @include 'header.php'; ?>
   
   <section class="heading">
       <h3>about us</h3>
       <p> <a href="home.php">home</a> / about </p>
   </section>
   
   <section class="about">
   
       <div class="flex">
       <div class="image">
               <img src="Img/img1.png" alt="">
           </div>
           <div class="content">
               <h3>why choose us?</h3>
               <p>This Online Event Planner is a leading business with a lot of potential in today's scenario. There are already some Event Planner websites in local market but none of them offer a platform where the client picks the exact package & reserves it with the mentioned cost & vendors can showcase their virtual shop. Consequently this Website is developed to provide the clients as well as for the vendors to do business with details,transparency and successfully.</p>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     </p></p>
               <a href="shop.php" class="btn">See our Packages</a>
           </div>
          
   
       </div>
   
       <div class="flex">
   
           <div class="content">
               <h3>what we provide?</h3>
               <p>This Website manages or architects the event through online platform. It facilitates the clients as well as vendors to manage their own profiles where either they can provide service or search for the sutaible packges offered & can make their own planning with the help of planning budget segment.</p>
               <a href="contact.php" class="btn">contact us</a>
           </div>
   
           <div class="image">
           <img src="Img/img1.jpg" alt="here is image">
           </div>
               
           
   
       </div>
   
       <div class="flex">
   
           <div class="image">
           <img src="Img/img2.jpg" alt="">
           </div>
   
           <div class="content">
               <h3>who we are?</h3>
               <p>KaryaVahak is an online customizable platform for managing the events<br> as in today's Restless routines & inexperience of Planning people don't<br> have priviledge to take time to plan events on their own.</p>
               <a href="#reviews" class="btn">clients reviews</a>
           </div>
   
       </div>
   
   </section>
   
   <section class="reviews" id="reviews">
   
       <h1 class="title">client's reviews</h1>
   
       <div class="box-container">
   
           <div class="box">
               <img src="images/pic-1.png" alt="">
               <p>The services you provided was really helpful and website's working is so smooth </p><p>Great work!!.</p>
               <div class="stars">
                   <i class="fas fa-star"></i>
                   <i class="fas fa-star"></i>
                   <i class="fas fa-star"></i>
                   <i class="fas fa-star"></i>
                   <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>john deo</h3>
           </div>
   
           <div class="box">
               <img src="images/pic-2.png" alt="">
               <p>There are already some Event Planner websites in local market but none of them offer a platform where the client picks the exact package.</p>
               <div class="stars">
                   <i class="fas fa-star"></i>
                   <i class="fas fa-star"></i>
                   <i class="fas fa-star"></i>
                   <i class="fas fa-star"></i>
                   <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>Jimmie</h3>
           </div>
   
           <div class="box">
               <img src="images/pic-3.png" alt="">
               <p>You're providing all the services that we need that really good thing about your event management club.</p>
               <div class="stars">
                   <i class="fas fa-star"></i>
                   <i class="fas fa-star"></i>
                   <i class="fas fa-star"></i>
                   <i class="fas fa-star"></i>
                   <i class="fas fa-star-half-alt"></i>
               </div>
               <h3>Smith</h3>
           </div>
   
       
   
       </div>
   
   </section>
   
   



<?php @include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>