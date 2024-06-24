<?php
include "connection.inc.php";
$category = $_GET['category'];
$show = "";
$sql = "SELECT * FROM products WHERE category = $category ";
$query_run = mysqli_query($conn,$sql);

while ($row = mysqli_fetch_array($query_run)) {
    $img = json_decode($row['image']);
    $show .= "
    <a href='p_detail.php?id= " . $row['id'] . " '>
    <div class='card'>
    <figure><img src=" . $img[0] . " alt='img1'></figure>
    <div class='card-body rounded-bottom-1'>
        <h6>" . $row['title'] . " </h6>
        <i class='fa-solid fa-star'></i>
        <i class='fa-solid fa-star'></i>
        <i class='fa-solid fa-star'></i>
        <i class='fa-solid fa-star'></i>
        <div class='d-flex justify-content-between mt-1'>
            <h5>Rs " . $row['price'] . "</h5>
        </div>
    </div>
</div>
</a>
    ";
}


?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Com</title>
    <!-- ======= Custom Css File ========== -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- ======= Responsieess File ========== -->
    <link rel="stylesheet" href="assets/css/responsive.css">
    <!-- ========== Bootstrap Css ========== -->
    <link rel="stylesheet" href="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <!-- ========== Bootstrap Icons Css ========== -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <!-- ========== Font Awesome CDN ============= -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <!-- ========== Slick Slider Css ============= -->
    <link rel="stylesheet" href="assets/css/slick/slick.css">
    <link rel="stylesheet" href="assets/css/slick/slick-theme.css">
</head>

<body>
    <div class="site-wrapper">
        <!-- ============Header Starts============== -->
        <?php
        include "header.php";
        ?>
        <!-- ============Header Ends============== -->
        <!-- ============ 1.1  Hero Section============== -->
        <section id="Hero">
            <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div>
                            <h1>
                            <span>Revamp</span>
                                <br>
                                Your Style
                            </h1>
                            <p>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni
                                in placeat rem maxime!
                            </p>
                            <a href="#">Shop Now</a>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div>
                            <h1>
                                <span>Revamp</span>
                                <br>
                                Your Style
                            </h1>
                            <p>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni
                                in placeat rem maxime!
                            </p>
                            <a href="#">Shop Now</a>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div>
                            <h1>
                                <span>Revamp</span>
                                <br>
                                Your Style
                            </h1>
                            <p>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni
                                in placeat rem maxime!
                            </p>
                            <a href="#">Shop Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ============ 1.1.1  Hero footer============== -->
        <section id="Herofooter" class="d-flex justify-content-around flex-wrap">
            <div class="d-flex align-items-center gap-md-4 gap-2">
                <figure>
                    <img src="assets/images/products/accessories/earings.webp" alt="imgs">
                </figure>
                <p>Earings</p>
            </div>
            <div class="d-flex align-items-center gap-md-4 gap-2">
                <figure>
                    <img src="assets/images/products/accessories/bracelete.webp" alt="imgs">
                </figure>
                <p>Braceletes</p>
            </div>
            <div class="d-flex align-items-center gap-md-4 gap-2">
                <figure>
                    <img src="assets/images/products/accessories/rings.webp" alt="imgs">
                </figure>
                <p>Rings</p>
            </div>
            <div class="d-flex align-items-center gap-md-4 gap-2">
                <figure>
                    <img src="assets/images/products/watches/watch2.webp" alt="imgs">
                </figure>
                <p>Watches</p>
            </div>
        </section>

        <!-- ============ 2.3 Volume Section============== -->

        <section id="Volume">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 pb-3">
                        <figure><img src="assets/images/products/vol2.webp" alt="volimg2"></figure>
                    </div>
                    <div class="col-lg-7">
                        <div>
                            <figure><img src="assets/images/products/vol3.webp" alt="volimg3"></figure>
                        </div>
                        <div>
                            <figure><img src="assets/images/products/vol1.webp" alt="volimg1"></figure>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ============ 2.3 Volume Section End============== -->

        <!-- ============ 2.3 Products Card Section============== -->
        <section id="Products-card">
            <div class="container">
                <div class="d-flex gap-4 flex-wrap justify-content-center">
                    <?php
                    echo $show;
                    ?>
                </div>
            </div>
        </section>

        <!-- ============ 2.3 Products Card Section End============== -->


        <!-- /* =====  . Footer Start  ====== */ -->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <h3>Logo</h3>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. nec
                            nisi dictum vestibulum. Nullam auctor justo vitae libero
                            consectetur, in gcies
                        </p>
                    </div>
                    <div class="col-lg-5">
                        <div class="d-flex gap-5 justify-content-center text-center">
                            <div class="text-left">
                                <h4>Explore</h4>
                                <a href="#">Clothes</a>
                                <a href="#">Shoes</a>
                                <a href="#">Shirts</a>
                                <a href="#">Bags</a>
                            </div>
                            <div class="text-left">
                                <h4>Know us</h4>
                                <a href="#">Best qulity</a>
                                <a href="#">Products</a>
                                <a href="#">Sale</a>
                            </div>
                            <div class="text-left">
                                <h4>More</h4>
                                <a href="#">blogs</a>
                                <a href="#">Reviews</a>
                                <a href="#">Details</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 pt-5">
                        <input type="text" placeholder="News letter">
                        <button>Search</button>
                        <div class="float-end pt-5">
                            <i class="fa-brands fa-instagram"></i>
                            <i class="fa-brands fa-facebook"></i>
                            <i class="fa-brands fa-twitter"></i>
                            <i class="fa-brands fa-youtube"></i>
                            <i class="fa-brands fa-linkedin-in"></i>
                        </div>
                    </div>
                </div>
                <hr>
            </div>
        </footer>
        <!-- /* =====  . Footer End  ====== */ -->
    </div>





    <script>
        document.addEventListener('scroll', () => {
            const navbar = document.getElementsByClassName('navbar')
            if (window.scrollY > 0) {
                navbar.classList.add('scrolled')
            } else {
                navbar.classList.remove('scrolled')

            }
        })
    </script>


    <!-- =======Jquery files======== -->
    <script src="assets/js/jquery/jquery.js"></script>
    <!-- =======Slick Js files======== -->
    <script src="assets/js/slick/slick.js"></script>
    <script src="assets/js/slick/slick.min.js"></script>

    <!-- =======Bootstrap Js File======== -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="./assets/js/script.js"></script>
</body>

</html>