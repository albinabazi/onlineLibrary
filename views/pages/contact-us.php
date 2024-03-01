<?php
    session_start();

    require_once '../../database/dbCon.php';

    $err = null;

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        
        $name = $_POST["form-name"];
        $lastname = $_POST["form-last-name"];
        $email = $_POST["form-email"];
        $message = $_POST["form-text"];
    
        $sql = "INSERT INTO contact_messages (name, lastname, email, message) VALUES ('$name', '$lastname', '$email', '$message')";
        if ($conn->query($sql) === TRUE) {
            $err=  "Të dhënat u ruajtën me sukses!";
        } else {
            echo "Gabim: " . $sql . "<br>" . $conn->error;
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    <?php include('../includes/navbar.php'); ?>

        <section>
            <div class="container border p-4 bg-light mt-5" style="margin-bottom: 54px">
                <div class="row justify-content-center flex-column-reverse flex-lg-row">
                    <div class="col-lg-6 mb-5 pl-4">
                        <div class="card">
                            <div class="card">
                                <div class="card-body">
                                    <div class="form-header">
                                        <h3><i class="fas fa-envelope"></i> Write to us:</h3>
                                    </div>
                                    <br>
                                    <form action="" method="post">
                                        <div class="form-group">
                                            <i class="fas fa-user"></i>
                                            <label for="form-name">Your Name</label>
                                            <input id="form-name" name="form-name" class="form-control" type="text" placeholder="Enter your name" required="">
                                        </div>
                                        <div class="form-group">
                                            <i class="fas fa-user"></i>
                                            <label for="form-last-name">Your Last Name</label>
                                            <input id="form-last-name" name="form-last-name" class="form-control" type="text" placeholder="Enter your last name" required="">
                                        </div>
                                        <div class="form-group">
                                            <i class="fas fa-envelope"></i>
                                            <label for="form-email">Your email</label>
                                            <input id="form-email" name="form-email" class="form-control" type="email" placeholder="Enter your email" required="">
                                        </div>
                                        <div class="form-group">
                                            <i class="fas fa-pencil-alt"></i>
                                            <label for="form-text">Message</label>
                                            <textarea id="form-text" name="form-text" class="md-textarea form-control" rows="3" placeholder="Enter your message" required=""></textarea>
                                        </div>
                                        <div class="text-center mt-4">
                                            <button class="btn bg-dark text-white" type="submit">Submit</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 mb-5 pl-4">
                        <div class="card" style="height: 100% !important; width: 100% !important;">
                            <div class="card-body" style="height: 100% !important; width: 100% !important;">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d46940.211585360674!2d21.117527916966573!3d42.66637271830066!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x13549ee605110927%3A0x9365bfdf385eb95a!2sPristina!5e0!3m2!1sen!2s!4v1709241845917!5m2!1sen!2s" width="100%" height="100%" style="border:0;" style="min-height: 400px !important;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                        </div>
                    </div>
                    <div>
                    <?php
                        echo $err;
                    ?> 
                    </div>
                </div>
                <div class="col-lg-12 text-center mt-4 pt-5" id="Elementi3">
                        <h5>You can also visit us at our <b>Office</b></h5>
                                <a href="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d46940.211585360674!2d21.117527916966573!3d42.66637271830066!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x13549ee605110927%3A0x9365bfdf385eb95a!2sPristina!5e0!3m2!1sen!2s!4v1709241845917!5m2!1sen!2s">
                                <div class="pt-4 pb-3" style="background-color: #f1f1f1;">
                                <i class="fas fa-map-marker-alt fa-2x"></i>
                                <p>Addresa X , Prishtine 10000</p>    
                            </div></a>
                        <h6 class="pt-2">Or by  :</h6> 
                        <div class="row justify-content-center align-items-center">
                            <div class="col-lg-1">
                                <a href="#" class="cemter text-center">
                                    <i class="fab fa-facebook-square fa-3x"></i>
                                </a>
                            </div>
                            <div class="col-lg-1 ">
                                <a href="#" class="center text-center">
                                    <i class="fab fa-twitter-square fa-3x"></i>
                                </a>
                            </div>
                        </div>
                    </div>
            </div>                    
        </section>

        <div class="py-5"></div>



    <?php include('../includes/footer.php'); ?>
</body>
</html>
