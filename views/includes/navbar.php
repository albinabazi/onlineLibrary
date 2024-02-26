<?php
if (!isset($_SESSION)) {
    session_start();
}

?>
    <head>
        <link rel="stylesheet" href="../../css/style.css">
        <link rel="stylesheet" href="../../css/bootstrap5.css">
        <script src="../../js/index.js" defer></script>
        <script src="../../js/bootstrap5.js" defer></script>
    </head>

    <header class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container-fluid m-3">
                <a class="navbar-brand" href="#">
                    <img src="../../images/library.png" height="50px" width="50px" class="img img-fluid" alt="My Website Logo" style="border-radius: 50%" />
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="../../book-store.html">Book Store</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../../book-collecrion.html">Book Collection</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../../about-us.html">About Us</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false"
                                id="navbarDropdown">
                                <img src="../../images/default_m_profile.jpg" height="20px" width="20px" alt="Profile Logo"
                                    style="border-radius: 50%" />
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Profili </a></li>
                                <li><a class="dropdown-item" href="../../login.html">Log In </a></li>
                                <li><a class="dropdown-item" href="../../register.html">Register </a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
    </header>