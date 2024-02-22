<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Include jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    <?php include('../includes/navbar.php'); ?>

    <section>
        <div class="container-100" style="min-height: 80%;">
            <div class="row m-0" style="min-height: 80%;">
                <div class="col-xl-2 col-sm-12 bg-dark text-white pt-5">
                    <button id="showHi">Show Hi</button>
                    <button id="showCar">Show Car</button>
                </div>
                <div class="col-xl-10 col-sm-12 col-md-11 text-center">
                    <div class="section-container mt-5" id="books" style="display: block;">
                        <div id="content"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script>
        $(document).ready(function(){
            // Event listener for showing content from book/books.php
            $("#showHi").click(function(){
                $.ajax({
                    url: "book/books.php", // Update the path if needed
                    type: "GET",
                    success: function(response) {
                        $("#content").html(response);
                    }
                });
            });

            // Event listener for showing content from books.php
            $("#showCar").click(function(){
                $.ajax({
                    url: "news/news.php", // Update the path if needed
                    type: "GET",
                    success: function(response) {
                        $("#content").html(response);
                    }
                });
            });
        });
    </script>

    <h1>hi</h1>
</body>
</html>
