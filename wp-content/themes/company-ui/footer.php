<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package CompanyUI
 */

?>


<?php wp_footer(); ?>
<footer class="page-footer center-on-small-only  pt-0 footer-widget-container">

<div class="container pt-5 mb-5">
<div class="row">

<div class="col-md-6 col-lg-3 col-xl-3 footer-contact-widget">
<h3 class="footer-title">About Us</h3>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates eos minus expedita illo recusandae esse labore obcaecati nisi amet quia odio sapiente! Fugiat, voluptatibus nemo necessitatibus porro.</p>
<ul>
<li>
<a href="#"><i class="mdi mdi-facebook"></i></a>
</li>
<li>
<a href="#"><i class="mdi mdi-twitter"></i></a>
</li>
<li>
<a href="#"><i class="mdi mdi-dribbble"></i></a>
</li>
<li>
<a href="#"><i class="mdi mdi-github-circle"></i></a>
</li>
<li>
<a href="#"><i class="mdi mdi-linkedin"></i></a>
</li>
</ul>
</div>


<div class="col-md-6 col-lg-3 col-xl-3 recent-widget">
<h3 class="footer-title">Recent Posts</h3>
<ul class="image-list">
<li>
<figure class="overlay">
<img class="img-fluid" src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/art/a1.jpg" alt="">
<figcaption><a href="blog-single.html"><i class="mdi mdi-link-variant from-top icon-xs"></i></a></figcaption>
</figure>
<div class="post-content">
<h6 class="post-title"> <a href="blog-single.html">Fusce gravida tortor felis</a> </h6>
<div class="meta"><span class="date">12 Jan 2019</span></div>
</div>
</li>
<li>
<figure class="overlay">
<img class="img-fluid" src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/art/a2.jpg" alt="">
<figcaption><a href="blog-single.html"><i class="mdi mdi-link-variant from-top icon-xs"></i></a></figcaption>
</figure>
<div class="post-content">
<h6 class="post-title"><a href="blog-single.html">Ornare Nullam Risus Cursus</a></h6>
<div class="meta"><span class="date">12 Jan 2019</span></div>
</div>
</li>
<li>
<figure class="overlay">
<img class="img-fluid" src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/art/a3.jpg" alt="">
<figcaption><a href="blog-single.html"><i class="mdi mdi-link-variant from-top icon-xs"></i></a></figcaption>
</figure>
<div class="post-content">
<h6 class="post-title"> <a href="blog-single.html">Euismod Nullam Fusce Dapibus</a> </h6>
<div class="meta"><span class="date">12 Jan 2019</span></div>
</div>
</li>
</ul>
</div>


<div class="col-md-6 col-lg-3 col-xl-3 link-widget">
<h3 class="footer-title">Get in Touch</h3>
<p>Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus.</p>
<div class="mt-3"></div>
<ul class="icon-list">
<li><i class="mdi mdi-map-marker"></i> Carlifornia, USA </li>
<li><i class="mdi mdi-email"></i> <a href="mailto:captain@jacehr.com" class="nocolor">captain@jacehr.com</a> </li>
<li><i class="mdi mdi-phone-classic"></i> +1 302 246 1032  </li>
<li><i class="mdi mdi-cellphone-iphone"></i>  +1 302 246 1032 </li>
</ul>
</div>


<div class="col-md-6 col-lg-3 col-xl-3 footer-contact">
<h3 class="footer-title">Subscribe</h3>
<div class="widget">
<div class="newsletter-wrapper">
<form method="post" id="subscribe-form" name="subscribe-form" class="validate">
<div class="form-group">
<input type="email" value="" name="EMAIL" class="email form-control" id="EMAIL" placeholder="Email Address" required="">
<button type="submit" name="subscribe" id="subscribe" class="btn btn-common pull-right">Join</button>
<div class="clearfix"></div>
</div>
</form>
</div>
</div>

<div class="widget">
<h5 class="widget-title">Useful Links</h5>
<ul class="unordered-list">
<li><a href="#" class="nocolor">Terms of Use</a></li>
<li><a href="#" class="nocolor">Privacy Policy</a></li>
<li><a href="#" class="nocolor">Company Profile</a></li>
<li><a href="#" class="nocolor">Why Choose Us</a></li>
</ul>
</div>
</div>

</div>
</div>


<div class="footer-copyright">
<div class="container">
<div class="row">
<div class="col-md-12 text-center">
<p>&copy; 2014 - <?php echo date("Y")?> JACE HR, All right reserved. Designed with <i class="mdi mdi-heart"></i> by <a href="#">Captain</a></p>
</div>
</div>
</div>
</div>

</footer>


<a href="#" class="back-to-top">
<div class="ripple-container"></div>
<i class="mdi mdi-arrow-up">
</i>
</a>

<div id="preloader2">
<div class="loader2" id="loader-12"></div>
</div>


<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/js/jquery-min.js"></script>
<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/js/popper.min.js"></script>
<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/js/bootstrap.min.js"></script>
<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/js/color-switcher.js"></script>
<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/js/jquery.mixitup.min.js"></script>
<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/js/jquery.inview.js"></script>
<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/js/jquery.counterup.min.js"></script>
<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/js/scroll-top.js"></script>
<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/js/smoothscroll.js"></script>
<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/js/material.min.js"></script>
<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/js/ripples.min.js"></script>
<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/js/owl.carousel.min.js"></script>
<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/js/form-validator.min.js"></script>
<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/js/contact-form-script.min.js"></script>
<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/js/wow.js"></script>
<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/js/jquery.vide.js"></script>
<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/js/jquery.magnific-popup.min.js"></script>
<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/js/jquery.slicknav.js"></script>
<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/js/main.js"></script>
</body>

</html>
