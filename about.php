<?php

include 'components/connect.php';

session_start();

if (isset($_SESSION['user_id'])) {
  $user_id = $_SESSION['user_id'];
} else {
  $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="kansegar-ico.ico" type="image/x-icon">

  <title>About</title>

  <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />

  <!-- font awesome cdn link  -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

  <!-- custom css file link  -->
  <link rel="stylesheet" href="css/style.css">


  <!-- google analytics -->
  <!-- Global site tag (gtag.js) - Google Analytics -->
  <script async src="https://www.googletagmanager.com/gtag/js?id=G-PXX7TGT9XK"></script>
  <script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
      dataLayer.push(arguments);
    }
    gtag('js', new Date());

    gtag('config', 'G-PXX7TGT9XK');
  </script>

  <!-- google tag -->
  <!-- Google Tag Manager -->
  <script>
    (function(w, d, s, l, i) {
      w[l] = w[l] || [];
      w[l].push({
        'gtm.start': new Date().getTime(),
        event: 'gtm.js'
      });
      var f = d.getElementsByTagName(s)[0],
        j = d.createElement(s),
        dl = l != 'dataLayer' ? '&l=' + l : '';
      j.async = true;
      j.src =
        'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
      f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'dataLayer', 'GTM-W8ZMTQK');
  </script>
  <!-- End Google Tag Manager -->

</head>

<body>

  <!-- Google Tag Manager (noscript) -->
  <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W8ZMTQK" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
  <!-- End Google Tag Manager (noscript) -->

  <?php include 'components/user_header.php'; ?>

  <section class="about">

    <div class="row">

      <div class="image">
        <img src="images/logo.svg" alt="" width="300" height="300">
      </div>

      <div class="content">
        <h3>Tentang KanSegar</h3>
        <p>Aplikasi E-Commerce Penjualan Ikan (KanSegar) merupakan sebuah inovasi ditujukan untuk proses transaksi penjualan ikan secara online. Aplikasi ini dibangun untuk mempermudah nelayan dalam mendapatkan akses penjualan melalui internet, meningkatkan pengenalan merek produk dari UMKM, menyediakan informasi akurat mengenai data penjualan ikan yang tersedia, dan meningkatkan kenyamanan dan kepuasan pelanggan.
        </p>
        <a href="contact.php" class="btn">Hubungi Kami</a>
      </div>

    </div>

  </section>




  <section class="authors">
    <h1 class="heading"><span>Pendiri Toko</span></h1>
    <div class="box-container">
      <div class="box">
        <img src="images/author-1.jpg" alt="">
        <div class="share">
          <a href="#" class="fab fa-facebook-f"></a>
          <a href="#" class="fab fa-tiktok"></a>
          <a href="#" class="fab fa-instagram"></a>
          <a href="#" class="fab fa-youtube"></a>
        </div>
        <h3>M. Rifqi Irawan</h3>
      </div>

      <div class="box">
        <img src="images/author-2.jpg" alt="">
        <div class="share">
          <a href="#" class="fab fa-facebook-f"></a>
          <a href="#" class="fab fa-tiktok"></a>
          <a href="#" class="fab fa-instagram"></a>
          <a href="#" class="fab fa-youtube"></a>
        </div>
        <h3>Nurul Hidayah Zainal</h3>
      </div>

      <div class="box">
        <img src="images/author-3.jpg" alt="">
        <div class="share">
          <a href="#" class="fab fa-facebook-f"></a>
          <a href="#" class="fab fa-tiktok"></a>
          <a href="#" class="fab fa-instagram"></a>
          <a href="#" class="fab fa-youtube"></a>
        </div>
        <h3>Putri Ananda Faizah</h3>
      </div>

      <div class="box">
        <img src="images/author-4.jpg" alt="">
        <div class="share">
          <a href="#" class="fab fa-facebook-f"></a>
          <a href="#" class="fab fa-tiktok"></a>
          <a href="#" class="fab fa-instagram"></a>
          <a href="#" class="fab fa-youtube"></a>
        </div>
        <h3>Andini Kwarti Putri</h3>
      </div>
    </div>
  </section>

  <section class="reviews">

    <h1 class="heading"><span> Review Pelanggan </span></h1>

    <div class="swiper reviews-slider">

      <div class="swiper-wrapper">

        <div class="swiper-slide slide">
          <img src="images/pic-1.png" alt="">
          <h3>Rizki Billar</h3>
          <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
          </div>
          <p>Lesty suka makan ikan. Makanya saya nyaman beli disini. <br></p>
        </div>

        <div class="swiper-slide slide">
          <img src="images/pic-2.png" alt="">
          <h3>Susi Pudjiastuti</h3>
          <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
          </div>
          <p>Indonesia harus tahu kanSegar.</p>
        </div>

        <div class="swiper-slide slide">
          <img src="images/pic-3.png" alt="">
          <h3>Joko Widodo</h3>
          <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
          </div>
          <p>ikan yang dijual disini memang sangat segar. Produksi langsung dari nelayan</p>
        </div>

        <div class="swiper-slide slide">
          <img src="images/pic-4.png" alt="">
          <h3>Via Valen</h3>
          <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
          </div>
          <p>Recomended banget ini toko, bakalan repeat order lagi di sini</p>
        </div>

        <div class="swiper-slide slide">
          <img src="images/pic-5.png" alt="">
          <h3>Nadiem Makarim</h3>
          <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
          </div>
          <p>Pelayanan memuaskan, pengiriman cepat, walaupun saat lapar.</p>
        </div>

        <div class="swiper-slide slide">
          <img src="images/pic-6.png" alt="">
          <h3>adiknya Elon Musk</h3>
          <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
          </div>
          <p>Pasti aman banget order disini.</p>
        </div>

      </div>

      <div class="swiper-pagination"></div>

    </div>

  </section>





  <?php include 'components/footer.php'; ?>

  <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

  <script src="js/script.js"></script>

  <script>
    var swiper = new Swiper(".reviews-slider", {
      loop: true,
      spaceBetween: 20,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
      breakpoints: {
        0: {
          slidesPerView: 1,
        },
        768: {
          slidesPerView: 2,
        },
        991: {
          slidesPerView: 3,
        },
      },
    });
  </script>

</body>

</html>