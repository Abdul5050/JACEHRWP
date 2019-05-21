 <?php $connect = mysqli_connect("localhost","jacehrco_wp936","-Sp8j(8[R.7A4x3(","jacehrco_wp936");
 $pre_fetch1 = mysqli_query($connect,"select * from wpnk_wp_frontpage_slider where ref='1'");$fetch1 = mysqli_fetch_assoc($pre_fetch1); 
$pre_fetch2 = mysqli_query($connect,"select * from wpnk_wp_frontpage_slider where ref='2'");$fetch2 = mysqli_fetch_assoc($pre_fetch2);
$pre_fetch3 = mysqli_query($connect,"select * from wpnk_wp_frontpage_slider where ref='3'");$fetch3 = mysqli_fetch_assoc($pre_fetch3);

$pre_serv1 = mysqli_query($connect,"select * from wpnk_wp_frontpage_services where ref='1'");$service1 = mysqli_fetch_assoc($pre_serv1); 
$pre_serv2 = mysqli_query($connect,"select * from wpnk_wp_frontpage_services where ref='2'");$service2 = mysqli_fetch_assoc($pre_serv2);
$pre_serv3 = mysqli_query($connect,"select * from wpnk_wp_frontpage_services where ref='3'");$service3 = mysqli_fetch_assoc($pre_serv3);
$pre_serv4 = mysqli_query($connect,"select * from wpnk_wp_frontpage_services where ref='4'");$service4 = mysqli_fetch_assoc($pre_serv4);

$pre_tab1 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='1'");$tab1 = mysqli_fetch_assoc($pre_tab1); 
$pre_tab2 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='2'");$tab2 = mysqli_fetch_assoc($pre_tab2);
$pre_tab3 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='3'");$tab3 = mysqli_fetch_assoc($pre_tab3);
$pre_tab4 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='4'");$tab4 = mysqli_fetch_assoc($pre_tab4);
$pre_tab5 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='5'");$tab5 = mysqli_fetch_assoc($pre_tab5);

$pre_why1 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='6'");$why1 = mysqli_fetch_assoc($pre_why1); 
$pre_why2 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='7'");$why2 = mysqli_fetch_assoc($pre_why2);
$pre_why3 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='8'");$why3 = mysqli_fetch_assoc($pre_why3);
$pre_why4 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='9'");$why4 = mysqli_fetch_assoc($pre_why4);
$pre_why5 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='10'");$why5 = mysqli_fetch_assoc($pre_why5);
$pre_why6 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='11'");$why6 = mysqli_fetch_assoc($pre_why6);
$pre_why7 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='12'");$why7 = mysqli_fetch_assoc($pre_why7);

$pre_work1 = mysqli_query($connect,"select * from wpnk_wp_frontpage_work where ref='1'");$work1 = mysqli_fetch_assoc($pre_work1); 
$pre_work2 = mysqli_query($connect,"select * from wpnk_wp_frontpage_work where ref='2'");$work2 = mysqli_fetch_assoc($pre_work2);
$pre_work3 = mysqli_query($connect,"select * from wpnk_wp_frontpage_work where ref='3'");$work3 = mysqli_fetch_assoc($pre_work3);
$pre_work4 = mysqli_query($connect,"select * from wpnk_wp_frontpage_work where ref='4'");$work4 = mysqli_fetch_assoc($pre_work4);
 ?>
 
 <div id="main-slide" class="carousel slide" data-ride="carousel">
<ol class="carousel-indicators">
<li data-target="#main-slide" data-slide-to="0" class="active"></li>
<li data-target="#main-slide" data-slide-to="1"></li>
<li data-target="#main-slide" data-slide-to="2"></li>
</ol>
<div class="carousel-inner">
<div class="carousel-item active">
<img class="d-block w-100" src="<?php echo $fetch1['image_link'];?>" alt="First slide">
<div class="carousel-caption d-md-block">
<h1 class="animated wow fadeInDown hero-heading" data-wow-delay=".4s"><?php echo $fetch1['big'];?></h1>
<h5 class="animated fadeInUp wow hero-sub-heading" data-wow-delay=".6s"><?php echo $fetch1['small'];?></h5>
<a href="<?php echo $fetch1['button_link'];?>" class="animated fadeInUp wow btn btn-common" data-wow-delay=".8s"><i class="material-icons mdi mdi-lightbulb-outline"></i> <?php echo $fetch1['button_name'];?><div class="ripple-container"></div></a>
</div>
</div>
<div class="carousel-item">
<img class="d-block w-100" src="<?php echo $fetch2['image_link'];?>" alt="Second slide">
<div class="carousel-caption d-md-block">
<h1 class="animated wow fadeInLeft hero-heading" data-wow-delay=".7s"><?php echo $fetch2['big'];?></h1>
<h5 class="animated wow fadeInRight hero-sub-heading" data-wow-delay=".9s"><?php echo $fetch2['small'];?></h5>

<a href="<?php echo $fetch2['button_link'];?>" class="animated fadeInUp wow btn btn-border" data-wow-delay=".8s"><i class="material-icons mdi mdi-lightbulb-outline"></i> <?php echo $fetch2['button_name'];?> <div class="ripple-container"></div></a>
</div>
</div>
<div class="carousel-item">
<img class="d-block w-100" src="<?php echo $fetch3['image_link'];?>" alt="Third slide">
<div class="carousel-caption d-md-block">
<h1 class="animated wow fadeInDown hero-heading" data-wow-delay=".6s"><?php echo $fetch3['big'];?></h1>
<h5 class="animated fadeInUp wow hero-sub-heading" data-wow-delay=".8s"><?php echo $fetch3['small'];?></h5>
<a href="<?php echo $fetch3['button_link'];?>" class="animated fadeInUp wow btn btn-common" data-wow-delay=".8s"><i class="material-icons mdi mdi-message"></i> <?php echo $fetch3['button_name'];?></a>
</div>
</div>
</div>
<a class="carousel-control-prev" href="#main-slide" role="button" data-slide="prev">
<span class="carousel-control" aria-hidden="true"><i class="mdi mdi-arrow-left" data-ripple-color="#F0F0F0"></i></span>
<span class="sr-only">Previous</span>
</a>
<a class="carousel-control-next" href="#main-slide" role="button" data-slide="next">
<span class="carousel-control" aria-hidden="true"><i class="mdi mdi-arrow-right" data-ripple-color="#F0F0F0"></i></span>
<span class="sr-only">Next</span>
</a>
</div>


<section class="Material-about-section section-padding">
<div class="container">
<div class="row">

<div class="col-md-6 col-lg-3 col-xl-3 wow animated fadeInUp" data-wow-delay=".2s">
<div class="about-single">
<i class="material-icons mdi <?php echo $service1['service1'];?>"></i>
<h2 class="subtitle"><?php echo $service1['service2'];?></h2>
<p><?php echo $service1['service3'];?></p>
</div>
</div>

<div class="col-md-6 col-lg-3 col-xl-3 wow animated fadeInUp" data-wow-delay=".3s">
<div class="about-single">
<i class="material-icons mdi <?php echo $service2['service1'];?>"></i>
<h2 class="subtitle"><?php echo $service2['service2'];?></h2>
<p><?php echo $service2['service3'];?></p>
</div>
</div>

<div class="col-md-6 col-lg-3 col-xl-3 wow animated fadeInUp" data-wow-delay=".4s">
<div class="about-single">
<i class="material-icons mdi <?php echo $service3['service1'];?>"></i>
<h2 class="subtitle"><?php echo $service3['service2'];?></h2>
<p><?php echo $service3['service3'];?></p>
</div>
</div>

<div class="col-md-6 col-lg-3 col-xl-3 wow animated fadeInUp" data-wow-delay=".5s">
<div class="about-single">
<i class="material-icons mdi <?php echo $service4['service1'];?>"></i>
<h2 class="subtitle"><?php echo $service4['service2'];?></h2>
<p><?php echo $service4['service3'];?></p>
</div>
</div>
</div>
</div>
</section>


<section class="welcome-section section-padding section-dark">
<div class="container">
<div class="row">
<div class="col-md-12 col-lg-7 col-xs-12">
<div class="Material-tab">

<ul class="nav nav-tabs justify-content-center" id="myTab" role="tablist">
<li class="nav-item">
<a class="nav-link active" data-toggle="tab" href="#business" role="tab"><i class="mdi <?php echo $tab1['icon_name'];?>"></i> <br> <?php echo $tab1['title'];?></a>
</li>
<li class="nav-item">
<a class="nav-link" data-toggle="tab" href="#startup" role="tab"><i class="mdi <?php echo $tab2['icon_name'];?>"></i> <br><?php echo $tab2['title'];?></a>
</li>
<li class="nav-item">
<a class="nav-link" data-toggle="tab" href="#agency" role="tab"><i class="mdi <?php echo $tab3['icon_name'];?>"></i> <br> <?php echo $tab3['title'];?></a>
</li>
<li class="nav-item">
<a class="nav-link" data-toggle="tab" href="#saas" role="tab"><i class="mdi <?php echo $tab4['icon_name'];?>"></i> <br> <?php echo $tab4['title'];?></a>
</li>
</ul>

<div class="tab-content">
<div class="tab-pane fade show active" id="business" role="tabpanel">
<?php echo $tab1['description'];?>
</div>
<div class="tab-pane fade" id="startup" role="tabpanel">
<?php echo $tab2['description'];?>
</div>
<div class="tab-pane fade" id="agency" role="tabpanel">
<?php echo $tab3['description'];?>
</div>
<div class="tab-pane fade" id="saas" role="tabpanel">
<?php echo $tab4['description'];?>
</div>
</div>
</div>
</div>
<div class="col-md-12 col-lg-5 col-xs-12 welcome-column">
<div class="video-gallery">
<img class="img-fluid" src="<?php echo $tab5['link'];?>" alt="">
<div class="overlay-gallery">
<div class="icon-holder">
<div class="icon">
<a href="https://www.youtube.com/watch?v=r44RKWyfcFw" class="video-popup wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="0.3s"><i class="mdi mdi-play-circle-outline"></i></a>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>


<section class="Material-service-section section-padding">
<div class="container">
<div class="row">

<div class="col-md-12 wow animated fadeInLeft" data-wow-delay=".2s">
<h1 class="section-title"><?php echo $why7['link'];?></h1>
</div>
</div>

<div class="row">

<div class="col-md-6 col-lg-4 col-xl-4 single-service-widget wow animated fadeInUp" data-wow-delay=".3s">
<div class="media">
<div class="media-left">
<i class="material-icons pulse-shrink mdi <?php echo $why1['icon_name'];?>"></i>
</div>
<div class="media-body">
<h2 class="subtitle"><a href="<?php echo $why1['title_link'];?>"><?php echo $why1['title'];?></a></h2>
<p><?php echo $why1['description'];?></p>
</div>
</div>
</div>

<div class="col-md-6 col-lg-4 col-xl-4 single-service-widget wow animated fadeInUp" data-wow-delay=".4s">
<div class="media">
<div class="media-left">
<i class="material-icons pulse-shrink mdi <?php echo $why2['icon_name'];?>"></i>
</div>
<div class="media-body">
<h2 class="subtitle"><a href="<?php echo $why2['title_link'];?>"><?php echo $why2['title'];?></a></h2>
<p><?php echo $why2['description'];?></p>
</div>
</div>
</div>

<div class="col-md-6 col-lg-4 col-xl-4 single-service-widget wow animated fadeInUp" data-wow-delay=".5s">
<div class="media">
<div class="media-left">
<i class="material-icons pulse-shrink mdi <?php echo $why3['icon_name'];?>"></i>
</div>
<div class="media-body">
<h2 class="subtitle"><a href="<?php echo $why3['title_link'];?>"><?php echo $why3['title'];?></a></h2>
<p><?php echo $why3['description'];?></p>
</div>
</div>
</div>

<div class="col-md-6 col-lg-4 col-xl-4 single-service-widget wow animated fadeInUp" data-wow-delay=".6s">
<div class="media">
<div class="media-left">
<i class="material-icons pulse-shrink mdi <?php echo $why4['icon_name'];?>"></i>
</div>
<div class="media-body">
<h2 class="subtitle"><a href="<?php echo $why4['title_link'];?>"><?php echo $why4['title'];?></a></h2>
<p><?php echo $why4['description'];?></p>
</div>
</div>
</div>

<div class="col-md-6 col-lg-4 col-xl-4 single-service-widget wow animated fadeInUp" data-wow-delay=".7s">
<div class="media">
<div class="media-left">
<i class="material-icons pulse-shrink mdi <?php echo $why5['icon_name'];?>"></i>
</div>
<div class="media-body">
<h2 class="subtitle"><a href="<?php echo $why5['title_link'];?>"><?php echo $why5['title'];?></a></h2>
<p><?php echo $why5['description'];?></p>
</div>
</div>
</div>

<div class="col-md-6 col-lg-4 col-xl-4 single-service-widget wow animated fadeInUp" data-wow-delay=".8s">
<div class="media">
<div class="media-left">
<i class="material-icons pulse-shrink mdi <?php echo $why6['icon_name'];?>"></i>
</div>
<div class="media-body">
<h2 class="subtitle"><a href="<?php echo $why6['title_link'];?>"><?php echo $why6['title'];?></a></h2>
<p><?php echo $why6['description'];?></p>
</div>
</div>
</div>
</div>
</div>
</section>


<section class="Material-portfolio-section section-padding section-dark">
<div class="container">
<div class="row">

<div class="col-md-4 col-lg-4 col-xl-6  Material-title-section wow animated fadeInLeft" data-wow-delay=".2s">
<h1 class="section-title"><?php echo $work1['section_name'];?></h1>
</div>

<div class="col-md-8 col-lg-8 col-xl-6  portfolio-nav mb-3 wow animated fadeInRight" data-wow-delay=".2s">
<ul class="nav nav-pills">
<li><a class="filter active" data-filter="all">All</a></li>
<li><a class="filter" data-filter=".business"><?php echo $work1['title_name'];?></a></li>
<li><a class="filter" data-filter=".development"><?php echo $work2['title_name'];?></a></li>
<li><a class="filter" data-filter=".creative"><?php echo $work3['title_name'];?></a></li>
<li><a class="filter" data-filter=".more"><?php echo $work4['title_name'];?></a></li>
</ul>
</div>
<div class="portfolio-item-wrapper clearfix wow animated fadeInUp" data-wow-delay=".5s" id="Material-portfolio">

<div class="col-md-6 col-lg-4 col-xl-4 pb-4 mix business">
<figure class="single-portfolio">
<img class="img-fluid" src="<?php echo $work1['image_one'];?>" alt="">
<figcaption class="hover-content">
<a class="btn btn-round btn-fab btn-xs" href="<?php echo $work1['image_one_link'];?>"><i class="material-icons mdi mdi-arrow-right"></i><div class="ripple-container"></div></a>
<a href="<?php echo $work1['image_one_link'];?>"><h2 class="subtitle"><?php echo $work1['image_one_title'];?></h2></a>
<p><?php echo $work1['image_one_location'];?></p>
</figcaption>
</figure>
</div>

<div class="col-md-6 col-lg-4 col-xl-4 mix development more">
<figure class="single-portfolio">
<img class="img-fluid" src="<?php echo $work4['image_one'];?>" alt="">
<figcaption class="hover-content">
<a class="btn btn-round btn-fab btn-xs" href="<?php echo $work4['image_one_link'];?>"><i class="material-icons mdi mdi-arrow-right"></i><div class="ripple-container"></div></a>
<a href="<?php echo $work4['image_one_link'];?>"><h2 class="subtitle"><?php echo $work4['image_one_title'];?></h2></a>
<p><?php echo $work4['image_one_location'];?></p>
</figcaption>
</figure>
</div>

 <div class="col-md-6 col-lg-4 col-xl-4 mix creative business">
<figure class="single-portfolio">
<img class="img-fluid" src="<?php echo $work1['image_two'];?>" alt="">
<figcaption class="hover-content">
<a class="btn btn-round btn-fab btn-xs" href="<?php echo $work1['image_two_link'];?>"><i class="material-icons mdi mdi-arrow-right"></i><div class="ripple-container"></div></a>
<a href="<?php echo $work1['image_two_link'];?>"><h2 class="subtitle"><?php echo $work1['image_two_title'];?></h2></a>
<p><?php echo $work1['image_two_location'];?></p>
</figcaption>
</figure>
</figcaption>
</figure>
</div>

<div class="col-md-6 col-lg-4 col-xl-4 mix creative more development">
<figure class="single-portfolio">
<img class="img-fluid" src="<?php echo $work2['image_one'];?>" alt="">
<figcaption class="hover-content">
<a class="btn btn-round btn-fab btn-xs" href="<?php echo $work2['image_one_link'];?>"><i class="material-icons mdi mdi-arrow-right"></i><div class="ripple-container"></div></a>
<a href="<?php echo $work2['image_one_link'];?>"><h2 class="subtitle"><?php echo $work2['image_one_title'];?></h2></a>
<p><?php echo $work2['image_one_location'];?></p>
</figcaption>
</figure>
</div>

<div class="col-md-6 col-lg-4 col-xl-4 mix more development">
<figure class="single-portfolio">
<img class="img-fluid" src="<?php echo $work2['image_two'];?>" alt="">
<figcaption class="hover-content">
<a class="btn btn-round btn-fab btn-xs" href="<?php echo $work2['image_two_link'];?>"><i class="material-icons mdi mdi-arrow-right"></i><div class="ripple-container"></div></a>
<a href="<?php echo $work2['image_two_link'];?>"><h2 class="subtitle"><?php echo $work2['image_two_title'];?></h2></a>
<p><?php echo $work2['image_two_location'];?></p>
</figcaption>
</figure>
</div>

<div class="col-md-6 col-lg-4 col-xl-4 mix creative business">
<figure class="single-portfolio">
<img class="img-fluid" src="<?php echo $work1['image_three'];?>" alt="">
<figcaption class="hover-content">
<a class="btn btn-round btn-fab btn-xs" href="<?php echo $work1['image_three_link'];?>"><i class="material-icons mdi mdi-arrow-right"></i><div class="ripple-container"></div></a>
<a href="<?php echo $work1['image_three_link'];?>"><h2 class="subtitle"><?php echo $work1['image_three_title'];?></h2></a>
<p><?php echo $work1['image_three_location'];?></p>
</figcaption>
</figure>
</div>
</div>
</div>
<div class="row mt-4 wow animated fadeInUp" data-wow-delay=".3s">
<div class="col-md-12 text-center">
<a href="<?php echo $work1['all_links'];?>" class="animated4 btn btn-common" data-ripple-color="#000"><i class="material-icons mdi mdi-lightbulb-outline"></i> Browse All<div class="ripple-container"></div></a>
</div>
</div>
</div>
</section>


<section class="work-counter-section section-padding">
<div class="container">
<div class="row">

<div class="col-md-3 col-sm-6 work-counter-widget text-center wow animated fadeInUp" data-wow-delay=".2s">
<div class="counter">
<div class="icon"><i class="material-icons mdi mdi-check-all"></i></div>
<div class="timer">347</div>
<p>Projects Done</p>
</div>
</div>

<div class="col-md-3 col-sm-6 work-counter-widget text-center wow animated fadeInUp" data-wow-delay=".3s">
<div class="counter">
<div class="icon"><i class="material-icons mdi mdi-clock"></i></div>
<div class="timer">8896</div>
<p>Working Hours</p>
</div>
</div>

<div class="col-md-3 col-sm-6 work-counter-widget text-center wow animated fadeInUp" data-wow-delay=".4s">
<div class="counter">
<div class="icon"><i class="material-icons mdi mdi-account-multiple-outline"></i></div>
<div class="timer">35</div>
<p>Team Members</p>
</div>
</div>

<div class="col-md-3 col-sm-6 work-counter-widget text-center wow animated fadeInUp" data-wow-delay=".5s">
<div class="counter">
<div class="icon"><i class="material-icons mdi mdi-sticker-emoji"></i></div>
<div class="timer">233</div>
<p>Happy Clients</p>
</div>
</div>
</div>
</div>
</section>


<section class="team section-padding section-dark">
<div class="container">
<div class="row">

<div class="col-md-12 wow animated fadeInLeft" data-wow-delay=".2s">
<h1 class="section-title">Meet The Team</h1>
</div>
</div>
<div class="row">

<div class="col-md-6 col-lg-3 col-xl-3 wow animated fadeInUp" data-wow-delay=".3s">
<div class="single-team-widget">
<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/team/team1.jpg" class="img-fluid" alt="">
<div class="team-member-info">
<div class="know-more">
<a class="btn btn-round btn-fab btn-xs" href="javascript:void(0)"><i class="material-icons mdi mdi-arrow-right"></i><div class="ripple-container"></div></a>
</div>
<h2 class="subtitle">Rob Percy</h2>
<p>Co-Founder</p>
<div class="social-profiles">
<a href="#"><i class="mdi mdi-twitter"></i></a>
<a href="#"><i class="mdi mdi-facebook"></i></a>
<a href="#"><i class="mdi mdi-dribbble"></i></a>
<a href="#"><i class="mdi mdi-linkedin"></i></a>
</div>
</div>
</div>
</div>

<div class="col-md-6 col-lg-3 col-xl-3 wow animated fadeInUp" data-wow-delay=".4s">
<div class="single-team-widget">
<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/team/team2.jpg" class="img-fluid" alt="">
<div class="team-member-info">
<div class="know-more">
<a class="btn btn-round btn-fab btn-xs" href="javascript:void(0)"><i class="material-icons mdi mdi-arrow-right"></i><div class="ripple-container"></div></a>
</div>
<h2 class="subtitle">Jennifer L.</h2>
<p>Graphic Designer</p>
<div class="social-profiles">
<a href="#"><i class="mdi mdi-twitter"></i></a>
<a href="#"><i class="mdi mdi-facebook"></i></a>
<a href="#"><i class="mdi mdi-dribbble"></i></a>
 <a href="#"><i class="mdi mdi-linkedin"></i></a>
</div>
</div>
</div>
</div>

<div class="col-md-6 col-lg-3 col-xl-3 wow animated fadeInUp" data-wow-delay=".5s">
<div class="single-team-widget">
<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/team/team3.jpg" class="img-fluid" alt="">
<div class="team-member-info">
<div class="know-more">
<a class="btn btn-round btn-fab btn-xs" href="javascript:void(0)"><i class="material-icons mdi mdi-arrow-right"></i><div class="ripple-container"></div></a>
</div>
<h2 class="subtitle">Tom Hanks.</h2>
<p>SEO Speacialist</p>
<div class="social-profiles">
<a href="#"><i class="mdi mdi-twitter"></i></a>
<a href="#"><i class="mdi mdi-facebook"></i></a>
<a href="#"><i class="mdi mdi-dribbble"></i></a>
<a href="#"><i class="mdi mdi-linkedin"></i></a>
</div>
</div>
</div>
</div>

<div class="col-md-6 col-lg-3 col-xl-3 wow animated fadeInUp" data-wow-delay=".6s">
<div class="single-team-widget">
<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/team/team4.jpg" class="img-fluid" alt="">
<div class="team-member-info">
<div class="know-more">
<a class="btn btn-round btn-fab btn-xs" href="javascript:void(0)"><i class="material-icons mdi mdi-arrow-right"></i><div class="ripple-container"></div></a>
</div>
<h2 class="subtitle">Emma Watson</h2>
<p>Head Of Ideas</p>
<div class="social-profiles">
<a href="#"><i class="mdi mdi-twitter"></i></a>
<a href="#"><i class="mdi mdi-facebook"></i></a>
<a href="#"><i class="mdi mdi-dribbble"></i></a>
<a href="#"><i class="mdi mdi-linkedin"></i></a>
</div>
</div>
</div>
</div>
</div>
</div>
</section>


<div class="testimonial section-padding">
<div class="container">
<div class="row">

<div class="testimonials-carousel owl-carousel">
<div class="item">
<div class="testimonial-item">
<div class="datils">
<h5>Adam Schwartz</h5>
<span>Software Articulate, Google</span>
<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's <br> standard dummy text ever since the 1500s Lorem Ipsum.</p>
</div>
<div class="img">
<a href="#"><img class="img-fluid" src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/testimonial/author1.jpg" alt=""></a>
</div>
</div>
</div>
<div class="item">
<div class="testimonial-item">
<div class="datils">
<h5>Clark Brown</h5>
<span>Brand Managerr</span>
<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's <br> standard dummy text ever since the 1500s Lorem Ipsum.</p>
</div>
<div class="img">
<a href="#"><img class="img-fluid" src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/testimonial/author2.jpg" alt=""></a>
</div>
</div>
</div>
<div class="item">
<div class="testimonial-item">
<div class="datils">
<h5>Ana Blunt</h5>
<span>Creative Director</span>
<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's <br> standard dummy text ever since the 1500s Lorem Ipsum.</p>
</div>
<div class="img">
<a href="#"><img class="img-fluid" src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/testimonial/author3.jpg" alt=""></a>
</div>
</div>
</div>
</div>
</div>
</div>
</div>


<div class="client section-padding section-dark">
<div class="container">
<div class="row">
<div id="client-logo" class="owl-carousel">
<div class="client-logo item">
<a href="#">
<img class="img-fluid" src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/clients/client1.png" alt="" />
</a>
</div>
<div class="client-logo item">
<a href="#">
<img class="img-fluid" src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/clients/client2.png" alt="" />
</a>
</div>
<div class="client-logo item">
<a href="#">
<img class="img-fluid" src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/clients/client3.png" alt="" />
</a>
</div>
<div class="client-logo item">
<a href="#">
<img class="img-fluid" src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/clients/client4.png" alt="" />
</a>
</div>
<div class="client-logo item">
<a href="#">
<img class="img-fluid" src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/clients/client1.png" alt="" />
</a>
</div>
<div class="client-logo item">
<a href="#">
<img class="img-fluid" src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/clients/client2.png" alt="" />
</a>
</div>
<div class="client-logo item">
<a href="#">
<img class="img-fluid" src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/clients/client3.png" alt="" />
</a>
</div>
<div class="client-logo item">
<a href="#">
<img class="img-fluid" src="<?php echo esc_url( get_template_directory_uri() ); ?>/assets/images/clients/client4.png" alt="" />
</a>
</div>
</div>
</div>
</div>
</div>

<style>
    .featured-image img{
          max-width: 100%;
    height: auto;
vertical-align: middle;
    border-style: none;
    }
</style>
<section class="Material-blog-section section-padding">
<div class="container">
<div class="row">

<div class="col-md-12 wow animated fadeInLeft" data-wow-delay=".2s">
<h1 class="section-title">From The Blog</h1>
</div>
</div>
<div class="row">
<?php 
   // the query
   $the_query = new WP_Query( array(
     //'category_name' => 'news',
      'posts_per_page' => 3,
   )); 

 if ( $the_query->have_posts() ) : ?>
  

    <?php
			// Start the loop.
		while ( $the_query->have_posts() ) : $the_query->the_post();

				/*
				 * Include the Post-Format-specific template for the content.
				 * If you want to override this in a child theme, then include a file
				 * called content-___.php (where ___ is the Post Format name) and that will be used instead.
				 */
			?> 
<div class="col-md-6 col-lg-4 col-xl-4 wow animated fadeInUp" data-wow-delay=".3s" >
<article class="single-blog-post">

<div class="featured-image">
<a href="<?php the_permalink(); ?>">
<?php the_post_thumbnail(); ?>
</a>
</div>

<div class="post-meta">

<a href="<?php the_permalink(); ?>"><h2 class="subtitle"><?php the_title(); ?></h2></a>
<p><?php $content = get_the_content(); echo mb_strimwidth($content, 0, 150, '...');?></p>
</div>
<div class="meta-tags">
<span class="comments"><a href="#"><i class="mdi mdi-comment-outline"></i> <?php comments_number('0 Comment','1 Comment','% Comments'); ?></a></span>

<a class="btn btn-round btn-fab" href="<?php the_permalink(); ?>"><i class="material-icons mdi mdi-arrow-right"></i><div class="ripple-container"></div></a>
</div>
</article>
</div>

<?php

			// End the loop.
			endwhile;
?>

<?php
			

		// If no content, include the "No posts found" template.
		else :
			get_template_part( 'content', 'none' );

		endif;
		?>

</div>
<div class="row mt-5 wow animated fadeInUp" data-wow-delay=".6s">

<div class="col-md-12 text-center">
<a href="<?php echo esc_url( home_url( '/' ) ); ?>blog" class="animated4 btn btn-common" data-ripple-color="#000"><i class="material-icons mdi mdi-library-books"></i> Explore More on Blog<div class="ripple-container"></div></a>
</div>
</div>
</div>
</section>


<section class="Material-contact-section section-padding section-dark">
<div class="container">
<div class="row">

<div class="col-md-12 wow animated fadeInLeft" data-wow-delay=".2s">
<h1 class="section-title">Love to Hear From You</h1>
</div>
</div>
<div class="row">

 <div class="col-md-6 mt-3 contact-widget-section2 wow animated fadeInLeft" data-wow-delay=".2s">
<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content.</p>
<div class="find-widget">
<a href="#"><i class="material-icons mdi mdi-map-marker"></i>Carlifonia, USA</a>
</div>
<div class="find-widget">
<a href="#"><i class="material-icons mdi mdi-phone"></i> +1 302 246 1032</a>
</div>
<div class="find-widget">
<a href="#"><i class="material-icons mdi mdi-email-open mr-3"></i> va@jacehr.com</a>
</div>
<div class="find-widget">
<a href="#"><i class="material-icons mdi mdi-clock"></i> Mon to Sat: 09:30 AM - 10.30 PM</a>
</div>
</div>

<div class="col-md-6 wow animated fadeInRight" data-wow-delay=".2s">
<form class="shake" role="form" method="post" id="contactForm" name="contact-form" data-toggle="validator">

<div class="form-group label-floating">
<label class="control-label" for="name">Name</label>
<input class="form-control" id="name" type="text" name="name" required data-error="Please enter your name">
<div class="help-block with-errors"></div>
</div>

<div class="form-group label-floating">
<label class="control-label" for="email">Email</label>
<input class="form-control" id="email" type="email" name="email" required data-error="Please enter your Email">
<div class="help-block with-errors"></div>
</div>

<div class="form-group label-floating">
<label class="control-label">Subject</label>
<input class="form-control" id="msg_subject" type="text" name="subject" required data-error="Please enter your message subject">
<div class="help-block with-errors"></div>
</div>

<div class="form-group label-floating">
<label for="message" class="control-label">Message</label>
<textarea class="form-control" rows="3" id="message" name="message" required data-error="Write your message"></textarea>
<div class="help-block with-errors"></div>
</div>

<div class="form-submit mt-5">
<button class="btn btn-common" type="submit" id="form-submit"><i class="material-icons mdi mdi-message-outline"></i> Send Message</button>
<div id="msgSubmit" class="h3 text-center hidden"></div>
<div class="clearfix"></div>
</div>
</form>
</div>
</div>
</div>
</section>