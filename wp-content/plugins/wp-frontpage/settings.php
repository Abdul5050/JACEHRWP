<?php  $connect = mysqli_connect("localhost","jacehrco_wp936","-Sp8j(8[R.7A4x3(","jacehrco_wp936");

if(isset($_POST['wp_frontpage_slider1'])){
    
    $image_link = $_POST['link'];
    $big = $_POST['big'];
    $small = $_POST['small'];
    $button_name = $_POST['button_name'];
    $button_link = $_POST['button_url'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_slider set image_link='$image_link',big='$big',small='$small',button_name='$button_name',button_link='$button_link' where ref='1' ");
    
    if($save){
        $message = "Slider 1 settings saved successfully";
    }else{
        $message = "Slider 1 settings has not been saved successfully";
    }
}
if(isset($_POST['wp_frontpage_slider2'])){
    
    $image_link = $_POST['link'];
    $big = $_POST['big'];
    $small = $_POST['small'];
    $button_name = $_POST['button_name'];
    $button_link = $_POST['button_url'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_slider set image_link='$image_link',big='$big',small='$small',button_name='$button_name',button_link='$button_link' where ref='2' ");
    
    if($save){
        $message = "Slider 2 settings saved successfully";
    }else{
        $message = "Slider 2 settings has not been saved successfully";
    }
}
if(isset($_POST['wp_frontpage_slider3'])){
    
    $image_link = $_POST['link'];
    $big = $_POST['big'];
    $small = $_POST['small'];
    $button_name = $_POST['button_name'];
    $button_link = $_POST['button_url'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_slider set image_link='$image_link',big='$big',small='$small',button_name='$button_name',button_link='$button_link' where ref='3' ");
    
    if($save){
        $message = "Slider 3 settings saved successfully";
    }else{
        $message = "Slider 3 settings has not been saved successfully";
    }
}

$pre_fetch1 = mysqli_query($connect,"select * from wpnk_wp_frontpage_slider where ref='1'");$fetch1 = mysqli_fetch_assoc($pre_fetch1); 
$pre_fetch2 = mysqli_query($connect,"select * from wpnk_wp_frontpage_slider where ref='2'");$fetch2 = mysqli_fetch_assoc($pre_fetch2);
$pre_fetch3 = mysqli_query($connect,"select * from wpnk_wp_frontpage_slider where ref='3'");$fetch3 = mysqli_fetch_assoc($pre_fetch3);

if(isset($_POST['wp_frontpage_service1'])){
    
    $image_link = $_POST['service1'];
    $big = $_POST['service2'];
    $small = $_POST['service3'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_services set service1='$image_link',service2='$big',service3='$small' where ref='1' ");
    
    if($save){
        $message = "Service 1 settings saved successfully";
    }else{
        $message = "Service 1 settings has not been saved successfully";
    }
}

if(isset($_POST['wp_frontpage_service2'])){
    
    $image_link = $_POST['service1'];
    $big = $_POST['service2'];
    $small = $_POST['service3'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_services set service1='$image_link',service2='$big',service3='$small' where ref='2' ");
    
    if($save){
        $message = "Service 2 settings saved successfully";
    }else{
        $message = "Service 2 settings has not been saved successfully";
    }
}

if(isset($_POST['wp_frontpage_service3'])){
    
    $image_link = $_POST['service1'];
    $big = $_POST['service2'];
    $small = $_POST['service3'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_services set service1='$image_link',service2='$big',service3='$small' where ref='3' ");
    
    if($save){
        $message = "Service 3 settings saved successfully";
    }else{
        $message = "Service 3 settings has not been saved successfully";
    }
}

if(isset($_POST['wp_frontpage_service4'])){
    
    $image_link = $_POST['service1'];
    $big = $_POST['service2'];
    $small = $_POST['service3'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_services set service1='$image_link',service2='$big',service3='$small' where ref='4' ");
    
    if($save){
        $message = "Service 4 settings saved successfully";
    }else{
        $message = "Service 4 settings has not been saved successfully";
    }
}

$pre_serv1 = mysqli_query($connect,"select * from wpnk_wp_frontpage_services where ref='1'");$service1 = mysqli_fetch_assoc($pre_serv1); 
$pre_serv2 = mysqli_query($connect,"select * from wpnk_wp_frontpage_services where ref='2'");$service2 = mysqli_fetch_assoc($pre_serv2);
$pre_serv3 = mysqli_query($connect,"select * from wpnk_wp_frontpage_services where ref='3'");$service3 = mysqli_fetch_assoc($pre_serv3);
$pre_serv4 = mysqli_query($connect,"select * from wpnk_wp_frontpage_services where ref='4'");$service4 = mysqli_fetch_assoc($pre_serv4);

if(isset($_POST['wp_frontpage_tab1'])){
    
    $image_link = $_POST['icon_name'];
    $big = $_POST['title'];
    $small = $_POST['description'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_tabs_n_link set icon_name='$image_link',title='$big',description='$small' where ref='1' ");
    
    if($save){
        $message = "Tab 1 settings saved successfully";
    }else{
        $message = "Tab 1 settings has not been saved successfully";
    }
}

if(isset($_POST['wp_frontpage_tab2'])){
    
    $image_link = $_POST['icon_name'];
    $big = $_POST['title'];
    $small = $_POST['description'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_tabs_n_link set icon_name='$image_link',title='$big',description='$small' where ref='2' ");
    
    if($save){
        $message = "Tab 2 settings saved successfully";
    }else{
        $message = "Tab 2 settings has not been saved successfully";
    }
}

if(isset($_POST['wp_frontpage_tab3'])){
    
    $image_link = $_POST['icon_name'];
    $big = $_POST['title'];
    $small = $_POST['description'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_tabs_n_link set icon_name='$image_link',title='$big',description='$small' where ref='3' ");
    
    if($save){
        $message = "Tab 3 settings saved successfully";
    }else{
        $message = "Tab 3 settings has not been saved successfully";
    }
}

if(isset($_POST['wp_frontpage_tab4'])){
    
    $image_link = $_POST['icon_name'];
    $big = $_POST['title'];
    $small = $_POST['description'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_tabs_n_link set icon_name='$image_link',title='$big',description='$small' where ref='4' ");
    
    if($save){
        $message = "Tab 4 settings saved successfully";
    }else{
        $message = "Tab 4 settings has not been saved successfully";
    }
}

if(isset($_POST['wp_frontpage_tab5'])){
    
    $image_link = $_POST['link'];
     
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_tabs_n_link set link='$image_link' where ref='5' ");
    
    if($save){
        $message = "Tab big image settings saved successfully";
    }else{
        $message = "Tab big image settings has not been saved successfully";
    }
}

$pre_tab1 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='1'");$tab1 = mysqli_fetch_assoc($pre_tab1); 
$pre_tab2 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='2'");$tab2 = mysqli_fetch_assoc($pre_tab2);
$pre_tab3 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='3'");$tab3 = mysqli_fetch_assoc($pre_tab3);
$pre_tab4 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='4'");$tab4 = mysqli_fetch_assoc($pre_tab4);
$pre_tab5 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='5'");$tab5 = mysqli_fetch_assoc($pre_tab5);

if(isset($_POST['wp_frontpage_why1'])){
    
     
    $image_link = $_POST['icon_name'];
    $big = $_POST['title'];
    $title_link = $_POST['title_link'];
    $small = $_POST['description'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_tabs_n_link set icon_name='$image_link',title='$big',description='$small',title_link='$title_link' where ref='6' ");
    
    if($save){
        $message = "Why Choose 1 settings saved successfully";
    }else{
        $message = "Why Choose 1 settings has not been saved successfully";
    }
}

if(isset($_POST['wp_frontpage_why2'])){
    
     
    $image_link = $_POST['icon_name'];
    $big = $_POST['title'];
    $title_link = $_POST['title_link'];
    $small = $_POST['description'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_tabs_n_link set icon_name='$image_link',title='$big',description='$small',title_link='$title_link' where ref='7' ");
    
    if($save){
        $message = "Why Choose 2 settings saved successfully";
    }else{
        $message = "Why Choose 2 settings has not been saved successfully";
    }
}

if(isset($_POST['wp_frontpage_why3'])){
    
      
    $image_link = $_POST['icon_name'];
    $big = $_POST['title'];
    $title_link = $_POST['title_link'];
    $small = $_POST['description'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_tabs_n_link set icon_name='$image_link',title='$big',description='$small',title_link='$title_link' where ref='8' ");
    
    if($save){
        $message = "Why Choose 3 settings saved successfully";
    }else{
        $message = "Why Choose 3 settings has not been saved successfully";
    }
}

if(isset($_POST['wp_frontpage_why4'])){
    
      
    $image_link = $_POST['icon_name'];
    $big = $_POST['title'];
    $title_link = $_POST['title_link'];
    $small = $_POST['description'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_tabs_n_link set icon_name='$image_link',title='$big',description='$small',title_link='$title_link' where ref='9' ");
    
    if($save){
        $message = "Why Choose 4 settings saved successfully";
    }else{
        $message = "Why Choose 4 settings has not been saved successfully";
    }
}

if(isset($_POST['wp_frontpage_why5'])){
    
      
    $image_link = $_POST['icon_name'];
    $big = $_POST['title'];
    $title_link = $_POST['title_link'];
    $small = $_POST['description'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_tabs_n_link set icon_name='$image_link',title='$big',description='$small',title_link='$title_link' where ref='10' ");
    
    if($save){
        $message = "Why Choose 5 settings saved successfully";
    }else{
        $message = "Why Choose 5 settings has not been saved successfully";
    }
}

if(isset($_POST['wp_frontpage_why6'])){
    
      
    $image_link = $_POST['icon_name'];
    $big = $_POST['title'];
    $title_link = $_POST['title_link'];
    $small = $_POST['description'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_tabs_n_link set icon_name='$image_link',title='$big',description='$small',title_link='$title_link' where ref='11' ");
    
    if($save){
        $message = "Why Choose 6 settings saved successfully";
    }else{
        $message = "Why Choose 6 settings has not been saved successfully";
    }
}

if(isset($_POST['wp_frontpage_why7'])){
    
    $image_link = $_POST['link'];
     
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_tabs_n_link set link='$image_link' where ref='12' ");
    
    if($save){
        $message = "Why Choose settings saved successfully";
    }else{
        $message = "Why Choose settings has not been saved successfully";
    }
}

$pre_why1 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='6'");$why1 = mysqli_fetch_assoc($pre_why1); 
$pre_why2 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='7'");$why2 = mysqli_fetch_assoc($pre_why2);
$pre_why3 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='8'");$why3 = mysqli_fetch_assoc($pre_why3);
$pre_why4 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='9'");$why4 = mysqli_fetch_assoc($pre_why4);
$pre_why5 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='10'");$why5 = mysqli_fetch_assoc($pre_why5);
$pre_why6 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='11'");$why6 = mysqli_fetch_assoc($pre_why6);
$pre_why7 = mysqli_query($connect,"select * from wpnk_wp_frontpage_tabs_n_link where ref='12'");$why7 = mysqli_fetch_assoc($pre_why7);

if(isset($_POST['wp_frontpage_work1'])){
    
      
    $section_name = $_POST['section_name'];
    $all_links = $_POST['all_links'];
    
    $title_name = $_POST['title_name'];
    $image_one = $_POST['image_one'];
    $image_one_title = $_POST['image_one_title'];
    $image_one_location = $_POST['image_one_location'];
    $image_one_link = $_POST['image_one_link'];
     
    $image_two = $_POST['image_two'];
    $image_two_title = $_POST['image_two_title'];
    $image_two_location = $_POST['image_two_location'];
    $image_two_link = $_POST['image_two_link'];
     
    $image_three = $_POST['image_three'];
    $image_three_title = $_POST['image_three_title'];
    $image_three_location = $_POST['image_three_location'];
    $image_three_link = $_POST['image_three_link'];
     
    $image_four = $_POST['image_four'];
    $image_four_title = $_POST['image_four_title'];
    $image_four_location = $_POST['image_four_location'];
    $image_four_link = $_POST['image_four_link'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_work set section_name='$section_name',all_links='$all_links',title_name='$title_name',image_one='$image_one', image_one_title='$image_one_title',image_one_location='$image_one_location',image_one_link='$image_one_link',image_two='$image_two', image_two_title='$image_two_title',image_two_location='$image_two_location',image_two_link='$image_two_link',image_three='$image_three', image_three_title='$image_three_title',image_three_location='$image_three_location',image_three_link='$image_three_link',image_four='$image_four', image_four_title='$image_four_title',image_four_location='$image_four_location',image_four_link='$image_four_link'  where ref='1' ");
    
    if($save){
        $message = "Business settings saved successfully";
    }else{
        $message = "Business settings has not been saved successfully";
    }
}

if(isset($_POST['wp_frontpage_work2'])){
    
    $title_name = $_POST['title_name'];
    $image_one = $_POST['image_one'];
    $image_one_title = $_POST['image_one_title'];
    $image_one_location = $_POST['image_one_location'];
    $image_one_link = $_POST['image_one_link'];
     
    $image_two = $_POST['image_two'];
    $image_two_title = $_POST['image_two_title'];
    $image_two_location = $_POST['image_two_location'];
    $image_two_link = $_POST['image_two_link'];
     
    $image_three = $_POST['image_three'];
    $image_three_title = $_POST['image_three_title'];
    $image_three_location = $_POST['image_three_location'];
    $image_three_link = $_POST['image_three_link'];
     
    $image_four = $_POST['image_four'];
    $image_four_title = $_POST['image_four_title'];
    $image_four_location = $_POST['image_four_location'];
    $image_four_link = $_POST['image_four_link'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_work set title_name='$title_name',image_one='$image_one', image_one_title='$image_one_title',image_one_location='$image_one_location',image_one_link='$image_one_link',image_two='$image_two', image_two_title='$image_two_title',image_two_location='$image_two_location',image_two_link='$image_two_link',image_three='$image_three', image_three_title='$image_three_title',image_three_location='$image_three_location',image_three_link='$image_three_link',image_four='$image_four', image_four_title='$image_four_title',image_four_location='$image_four_location',image_four_link='$image_four_link'  where ref='2' ");
    
    if($save){
        $message = "Development settings saved successfully";
    }else{
        $message = "Development settings has not been saved successfully";
    }
}

if(isset($_POST['wp_frontpage_work3'])){
    
    $title_name = $_POST['title_name'];
    $image_one = $_POST['image_one'];
    $image_one_title = $_POST['image_one_title'];
    $image_one_location = $_POST['image_one_location'];
    $image_one_link = $_POST['image_one_link'];
     
    $image_two = $_POST['image_two'];
    $image_two_title = $_POST['image_two_title'];
    $image_two_location = $_POST['image_two_location'];
    $image_two_link = $_POST['image_two_link'];
     
    $image_three = $_POST['image_three'];
    $image_three_title = $_POST['image_three_title'];
    $image_three_location = $_POST['image_three_location'];
    $image_three_link = $_POST['image_three_link'];
     
    $image_four = $_POST['image_four'];
    $image_four_title = $_POST['image_four_title'];
    $image_four_location = $_POST['image_four_location'];
    $image_four_link = $_POST['image_four_link'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_work set title_name='$title_name',image_one='$image_one', image_one_title='$image_one_title',image_one_location='$image_one_location',image_one_link='$image_one_link',image_two='$image_two', image_two_title='$image_two_title',image_two_location='$image_two_location',image_two_link='$image_two_link',image_three='$image_three', image_three_title='$image_three_title',image_three_location='$image_three_location',image_three_link='$image_three_link',image_four='$image_four', image_four_title='$image_four_title',image_four_location='$image_four_location',image_four_link='$image_four_link'  where ref='3' ");
    
    if($save){
        $message = "Creative settings saved successfully";
    }else{
        $message = "Creative settings has not been saved successfully";
    }
}

if(isset($_POST['wp_frontpage_work4'])){
    
    $title_name = $_POST['title_name'];
    $image_one = $_POST['image_one'];
    $image_one_title = $_POST['image_one_title'];
    $image_one_location = $_POST['image_one_location'];
    $image_one_link = $_POST['image_one_link'];
     
    $image_two = $_POST['image_two'];
    $image_two_title = $_POST['image_two_title'];
    $image_two_location = $_POST['image_two_location'];
    $image_two_link = $_POST['image_two_link'];
     
    $image_three = $_POST['image_three'];
    $image_three_title = $_POST['image_three_title'];
    $image_three_location = $_POST['image_three_location'];
    $image_three_link = $_POST['image_three_link'];
     
    $image_four = $_POST['image_four'];
    $image_four_title = $_POST['image_four_title'];
    $image_four_location = $_POST['image_four_location'];
    $image_four_link = $_POST['image_four_link'];
    
    $save = mysqli_query($connect,"update wpnk_wp_frontpage_work set title_name='$title_name',image_one='$image_one',image_one_title='$image_one_title',image_one_location='$image_one_location',image_one_link='$image_one_link',image_two='$image_two',image_two_title='$image_two_title',image_two_location='$image_two_location',image_two_link='$image_two_link',image_three='$image_three',image_three_title='$image_three_title',image_three_location='$image_three_location',image_three_link='$image_three_link',image_four='$image_four',image_four_title='$image_four_title',image_four_location='$image_four_location',image_four_link='$image_four_link'  where ref='4' ");
    
    if($save){
        $message = "More settings saved successfully";
    }else{
        $message = "More settings has not been saved successfully";
    }
}

$pre_work1 = mysqli_query($connect,"select * from wpnk_wp_frontpage_work where ref='1'");$work1 = mysqli_fetch_assoc($pre_work1); 
$pre_work2 = mysqli_query($connect,"select * from wpnk_wp_frontpage_work where ref='2'");$work2 = mysqli_fetch_assoc($pre_work2);
$pre_work3 = mysqli_query($connect,"select * from wpnk_wp_frontpage_work where ref='3'");$work3 = mysqli_fetch_assoc($pre_work3);
$pre_work4 = mysqli_query($connect,"select * from wpnk_wp_frontpage_work where ref='4'");$work4 = mysqli_fetch_assoc($pre_work4);

?>