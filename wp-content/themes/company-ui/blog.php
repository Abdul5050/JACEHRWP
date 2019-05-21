<?php
/**
 * Template Name: All Blog Posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package CompanyUI
 */

get_header();
?>


<section  class="page-title-section section-padding">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="title-center">
<div class="title-middle">
<h2 class="page-tagline">Know about us</h2>
<h1 class="page-title">Our Blog</h1>
</div>
</div>
</div>
</div>
</div>
</section>


<section class="Material-blog-post-page section-padding">
<div class="container">
<div class="row">

<div class="col-md-12 col-lg-8 col-xs-12 blog-post-column">
<div class="row">


<?php 
   // the query
   $the_query = new WP_Query( array(
     //'category_name' => 'news',
      'posts_per_page' => 50,
   )); 

 if ( $the_query->have_posts() ) : ?>
  
<ul style="list-style:none;">
    <?php
			// Start the loop.
		while ( $the_query->have_posts() ) : $the_query->the_post();

				/*
				 * Include the Post-Format-specific template for the content.
				 * If you want to override this in a child theme, then include a file
				 * called content-___.php (where ___ is the Post Format name) and that will be used instead.
				 */
			?> 
<li class="col-md-6 no-padding" style="float:left;">

<div class="col-md-12 wow animated fadeInUp" data-wow-delay=".2s">
<article class="single-blog-post">

<div class="featured-image">
<a href="<?php the_permalink(); ?>">
<?php the_post_thumbnail(); ?>
</a>
</div>

<div class="post-meta">
<div class="post-date">
<span><b><?php the_time('M j Y'); ?></b></span>
</div>

<a href="<?php the_permalink(); ?>"><h2 class="subtitle"><?php the_title(); ?></h2></a>
<p><?php $content = get_the_content(); echo mb_strimwidth($content, 0, 150, '...');?></p>
</div>
<div class="meta-tags">
<span class="comments"><a href="#"><i class="mdi mdi-comment-outline"></i> <?php comments_number('0 Comment','1 Comment','% Comments'); ?></a></span>

<a class="btn btn-round btn-fab" href="<?php the_permalink(); ?>"><i class="material-icons mdi mdi-arrow-right"></i><div class="ripple-container"></div></a>
</div>
</article>
</div>

</li>
<?php

			// End the loop.
			endwhile;
?>
</ul>

<?php
			

		// If no content, include the "No posts found" template.
		else :
			get_template_part( 'content', 'none' );

		endif;
		?>

</div>
</div>


<div class="col-md-12 col-lg-4 col-xs-12 blog-sidebar-column">

<aside class="col-md-12 single-sidebar-widget author-widget no-padding wow animated fadeInUp" data-wow-delay=".2s">
<div class="author-bg">
<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/blog/author-bg.jpg" alt="">
</div>
<div class="author-info">
<div class="author-name">
<div class="author-intro">
<h3>Captain</h3>
<p>Software Developer</p>
</div>
<div class="author-image">
 <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/blog/author.jpg" class="img-circle" alt="">
</div>
</div>
<div class="author-bio">
<p>While you are planning for a trip then you always search for a best place to visit because that time you have looked for many of places in your mind. Same time, when the thought of Shimla comes in your mind, you stop the thoughts about other places because the gorgeousness of natural beauty of Shimla.</p>
</div>
</div>
</aside>

<aside class="col-md-12 single-sidebar-widget subscribe-widget no-padding  wow animated fadeInUp" data-wow-delay=".3s">
<div class="sidebar-widget-title">
<h2>Follow & Subscribe</h2>
</div>
<div class="social-profiles clearfix">
<div class="footer-contact-widget">
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
</div>
<div class="subscribe-box">
<p>Sign up for new Shelver content, updates,<br>surveys & offers.</p>
<div class="input-group">
<input type="email" class="form-control" placeholder="type your email">
<span class="input-group-btn">
<button class="btn btn-round btn-fab" type="button"><i class="material-icons mdi mdi-arrow-right"></i></button>
</span>
</div>

</div>
</aside>

<aside class="col-md-12 single-sidebar-widget flickr-widget no-padding wow animated fadeInUp" data-wow-delay=".4s">
<div class="sidebar-widget-title">
<h2>Categories</h2>
</div>
<ul class="categories-list">
<li><a href="#">Lifestyle (21)</a></li>
<li><a href="#">Photography (19)</a></li>
<li><a href="#">Journal (16)</a></li>
<li><a href="#">Works (7)</a></li>
</ul>
</aside>

<aside class="col-md-12 single-sidebar-widget instagram-widget no-padding wow animated fadeInUp" data-wow-delay=".3s">
<div class="sidebar-widget-title">
<h2>Instagram Feed</h2>
</div>
 <div class="instagram-feed clearfix">
<ul>
<li><a href="#"><img src="assets/images/Instagram/insta1.html" alt=""></a></li>
<li><a href="#"><img src="assets/images/Instagram/insta2.html" alt=""></a></li>
<li><a href="#"><img src="assets/images/Instagram/insta3.html" alt=""></a></li>
<li><a href="#"><img src="assets/images/Instagram/insta4.html" alt=""></a></li>
<li><a href="#"><img src="assets/images/Instagram/insta5.html" alt=""></a></li>
<li><a href="#"><img src="assets/images/Instagram/insta6.html" alt=""></a></li>
</ul>
</div>
</aside>

<aside class="col-md-12 single-sidebar-widget flickr-widget no-padding wow animated fadeInUp" data-wow-delay=".4s">
<div class="sidebar-widget-title">
<h2>Flickr Slider</h2>
</div>
<div class="flickr-feed clearfix">
<div id="flickr-carousel" class="owl-carousel owl-theme">
<div class="item active">
<img class="img-fluid" src="assets/images/Instagram/flickr1.html" alt="">
</div>
<div class="item">
<img class="img-fluid" src="assets/images/Instagram/flickr2.html" alt="">
</div>
<div class="item">
<img class="img-fluid" src="assets/images/Instagram/flickr3.html" alt="">
</div>
</div>
</div>
</aside>
</div>

</div>
</div>
</section>
<?php
//get_sidebar();
get_footer();
