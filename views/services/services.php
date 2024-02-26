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
        <div class="container-100" >
            <div class="row m-0" style="min-height: 70vh !important;">
                <div class="col-xl-2 col-sm-12 bg-dark text-white pt-5">
                    <div class="btn-group-vertical w-100 p-3" role="group" aria-label="Vertical button group">
                        <button id="showBooks" class="btn btn-primary mb-3 " >BOOKS</button>
                        <button id="showCollections" class="btn btn-primary mb-3">COLLECTIONS</button>
                    </div>
                </div>
                <div class="col-xl-10 col-sm-12 col-md-11 text-center bg-light" >
                    <div class="section-container mt-5" id="books" style="display: block;">
                        <div id="content"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script>
    $(document).ready(function(){
        $("#showBooks").click(function(){
            $.ajax({
                url: "book/books.php", 
                type: "GET",
                success: function(response) {
                    $("#content").html(response);
                }
            });
        });

        $("#showCollections").click(function(){
            $.ajax({
                url: "book/collections.php", 
                type: "GET",
                success: function(response) {
                    $("#content").html(response);
                }
            });
        });

        $("#showBooks").trigger("click");
    });
    </script>

    <?php include('../includes/footer.php'); ?>
</body>
</html>
