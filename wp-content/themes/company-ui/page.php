<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
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
<h2 class="page-tagline">JACE HR</h2>
<h1 class="page-title"><?php the_title(); ?></h1>
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

		<?php
		while ( have_posts() ) :
			the_post();

			get_template_part( 'template-parts/content', 'page' );

			// If comments are open or we have at least one comment, load up the comment template.
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif;

		endwhile; // End of the loop.
		?>

	</div>



<div class="col-md-12 col-lg-4 col-xs-12 blog-sidebar-column">

<aside class="col-md-12 single-sidebar-widget author-widget no-padding wow animated fadeInUp" data-wow-delay=".2s">

<?php
get_sidebar();
?>
</aside>
</div>
</div></div>
</section>
<?php
get_footer();
