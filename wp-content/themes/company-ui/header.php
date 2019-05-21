<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package CompanyUI
 */

?>
<!doctype html>
<html>
<head>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/css/bootstrap.min.css">

<link rel="stylesheet" href="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/css/materialdesignicons.min.css">

<link rel="stylesheet" href="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/css/material.min.css">

<link rel="stylesheet" href="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/css/ripples.min.css">

<link rel="stylesheet" href="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/css/owl.carousel.css">

<link rel="stylesheet" href="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/css/magnific-popup.css">

<link rel="stylesheet" href="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/css/slicknav.css">

<link rel="stylesheet" href="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/css/animate.css">

<link rel="stylesheet" href="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/css/style1.css">
<link rel="stylesheet" href="<?php bloginfo( 'stylesheet_url' ); ?>">

<link rel="stylesheet" href="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/css/responsive.css">

<link rel="stylesheet" href="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/css/color-switcher.css">

<link rel="stylesheet" type="text/css" href="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/css/colors/indigo.css" media="screen" />
<style>
    aside.widget-area{
        margin: 10px;
    }
</style>



	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<header id="header">
<nav class="navbar navbar-expand-lg fixed-top scrolling-navbar nav-bg">
<div class="container">

<div class="navbar-header">
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-navbar" aria-controls="main-navbar" aria-expanded="false" aria-label="Toggle navigation">
<span class="sr-only">Toggle navigation</span>
<span class="mdi mdi-menu"></span>
<span class="mdi mdi-menu"></span>
<span class="mdi mdi-menu"></span>
</button>
<?php
 $header_image = get_header_image();
           if ( ! empty( $header_image ) ) : ?>
         <a  class="navbar-brand" href="<?php echo esc_url( home_url( '/' ) ); ?>"><img src="<?php echo esc_url( $header_image ); ?>"   alt="" /></a>
<?php
           else :
				?>
				<p class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></p>
				<?php
			
			$company_ui_description = get_bloginfo( 'description', 'display' );
			if ( $company_ui_description || is_customize_preview() ) :
				?>
				<p class="site-description"><?php echo $company_ui_description; /* WPCS: xss ok. */ ?></p>
			<?php endif; 
			endif;
			 ?>

</div>
<div class="collapse navbar-collapse" id="main-navbar">
    <?php
wp_nav_menu( array( 
    'theme_location' => 'menu-1', 
    'container_class' => 'navbar-nav mr-auto w-100 justify-content-end' ) ); 
?>



<div class="search-icon">
<span class="open-search">
<i class="mdi mdi-magnify btn btn-common"></i>
</span>
</div>
<form role="search" class="navbar-form">
<div class="container">
<div class="row">
<div class="form-group has-feedback">
<input type="text" placeholder="Type and search ..." class="form-control">
<div class="close"><i class="mdi mdi-close"></i></div>
</div>
</div>
</div>
</form>

</div>
</div>

<div class="wpb-mobile-menu"> 
<?php
wp_nav_menu( array( 
    'theme_location' => 'menu-2', 
    'container_class' => 'wpb-mobile-menu' ) ); 
?>
</div>

</nav>
</header>
