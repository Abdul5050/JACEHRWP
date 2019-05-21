<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package CompanyUI
 */

get_header();
?>
<style>
    body.single-post {

    box-shadow: 0 1px 4px rgba(0,0,0,.26);
    padding: 0px;

}
.page-title-section {

    padding-top: 0px;

}
ul{
    list-style:none;
}
.users-comment-section .vcard img.photo.avatar {

    box-shadow: 0 1px 4px rgba(0,0,0,.26);

}
img.photo.avatar {
  width: 73px;
  height: 73px;
    vertical-align: middle;
    border-style: none;
float: left;

margin-right: 20px;
}
.reply {
   text-align: right;
   
}
.reply .comment-reply-link{
    font-size: 16px;

font-weight: 500;
}

ul li.comment {

    border-top: 1px solid #ddd;
    padding-top: 25px;
    margin-top: 20px;

}


.submit {
background: #5166d8;
    padding: 10px 20px;
    letter-spacing: 1px;
    font-weight: 500;
    color: #fff !important;
    border-radius: 2px;
    box-shadow: 0 2px 2.7px .1px rgba(0,0,0,.24) !important;
    border: none;

border-radius: 2px;

position: relative;

padding: 8px 30px;

margin: 10px 1px;

    margin-top: 10px;

font-size: 14px;

font-weight: 500;

text-transform: uppercase;

letter-spacing: 0;

will-change: box-shadow, transform;

-webkit-transition: -webkit-box-shadow .2s cubic-bezier(.4, 0, 1, 1), background-color .2s cubic-bezier(.4, 0, .2, 1), color .2s cubic-bezier(.4, 0, .2, 1);

-o-transition: box-shadow .2s cubic-bezier(.4, 0, 1, 1), background-color .2s cubic-bezier(.4, 0, .2, 1), color .2s cubic-bezier(.4, 0, .2, 1);

transition: box-shadow .2s cubic-bezier(.4, 0, 1, 1), background-color .2s cubic-bezier(.4, 0, .2, 1), color .2s cubic-bezier(.4, 0, .2, 1);

outline: 0;

cursor: pointer;

text-decoration: none;



}
.post-image img.attachment-post-thumbnail.size-post-thumbnail{
   

    max-width: 100%;
    height: auto;
vertical-align: middle;
    border-style: none;
}
</style>
<script type="text/javascript">
    $('.reply').after('<hr/>');
</script>
<section style="margin-left: 0px;"  class="page-title-section section-padding">
<div  class="container">
<div class="row">
<div class="col-md-12">
<div class="title-center">
<div class="title-middle">
<h2 class="page-tagline">JACEHR Blog</h2>
<h1 class="page-title">Single Post</h1>
</div>
</div>
</div>
</div>
</div>
</section>


<section class="Material-blog-post-page section-padding" >
<div class="container">
<div class="row">

<div class="single-blog-page col-md-12 col-lg-8 col-xs-12">
    <?php
while ( have_posts() ) :
			the_post();
?>
<article class="single-post wow fadeInUp animated" data-wow-delay=".2s">
    
<div class="post-image">
<?php company_ui_post_thumbnail(); ?>
</div>
<?php
if ( is_singular() ) :
			the_title( '<h2 class="entry-title1">', '</h2>' );
		else :
			the_title( '<h2 class="entry-title1"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
		endif;
?>
<p>
    	<?php
		the_content( sprintf(
			wp_kses(
				/* translators: %s: Name of current post. Only visible to screen readers */
				__( 'Continue reading<span class="screen-reader-text"> "%s"</span>', 'company-ui' ),
				array(
					'span' => array(
						'class' => array(),
					),
				)
			),
			get_the_title()
		) );

		wp_link_pages( array(
			'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'company-ui' ),
			'after'  => '</div>',
		) );
		?>
    
</p>

<div class="single-post-meta">
<div class="post-tag">
<a href="#"><i class="material-icons mdi mdi-bookmark-outline"></i>
<?php
if ( 'post' === get_post_type() ) :
				company_ui_posted_on();
				company_ui_posted_by();
				endif; ?></a>
</div>
<div class="share-post">
<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-google-plus"></i></a> <a href="#"><i class="fa fa-pinterest"></i></a>
</div>
</div>

</article>

<div class="users-comment-section mt-2 wow animated fadeInUp" data-wow-delay=".3s">
 <?php 
the_post_navigation();

			// If comments are open or we have at least one comment, load up the comment template.
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif;
			
endwhile; // End of the loop. ?>



</div>
</div>

<div class="col-md-12 col-lg-4 col-xs-12 blog-sidebar-column" >

<aside class="col-md-12 single-sidebar-widget author-widget no-padding wow animated fadeInUp" data-wow-delay=".2s" >
<?php  get_sidebar(); ?>
</aside>







</div>

</div>
</div>
</section>	

<?php
//get_sidebar();
get_footer();
