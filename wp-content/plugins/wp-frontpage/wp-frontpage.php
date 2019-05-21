<?php
/*
Plugin Name: WP Front Page 
Plugin URI: https://webghosts.com.ng/wp-frontpage
Description: This plugin allows you to edit the front page of your wordpress website completely.
Version: 1.0
Author: Tacman
Author URI: https://webghosts.com.ng
*/


/**
 * $newsletter_table_db_version - holds current database version
 * and used on plugin update to sync database tables
 */ 
session_start();
 global $newsletter_table_db_version;
$newsletter_table_db_version = '1.1'; // version changed from 1.0 to 1.1

/**
 * register_activation_hook implementation
 *
 * will be called when user activates plugin first time
 * must create needed database tables
 */
function mf_newsletter_table_install()
{
 global $wpdb;
 $table_name = $wpdb->prefix . 'mf_newsletter_table'; // do not forget about tables prefix

    // sql to create your table
    // NOTICE that:
    // 1. each field MUST be in separate line
    // 2. There must be two spaces between PRIMARY KEY and its name
    //    Like this: PRIMARY KEY[space][space](id)
    // otherwise dbDelta will not work
    $sql = "CREATE TABLE " . $table_name . " (
      id int(11) NOT NULL AUTO_INCREMENT,
      fullname tinytext,
      number VARCHAR(100) NOT NULL,
      email VARCHAR(100) NOT NULL,
      PRIMARY KEY  (id)
    );";
    
    // we do not execute sql directly
    // we are calling dbDelta which cant migrate database
    require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
    dbDelta($sql);
    
    /**
     * [OPTIONAL] Example of updating to 1.1 version
     *
     * If you develop new version of plugin
     * just increment $newsletter_table_db_version variable
     * and add following block of code
     *
     * must be repeated for each new version
     * in version 1.1 we change email field
     * to contain 200 chars rather 100 in version 1.0
     * and again we are not executing sql
     * we are using dbDelta to migrate table changes
     */
    $installed_ver = get_option('newsletter_table_db_version');
    if ($installed_ver != $newsletter_table_db_version) {
        $sql = "CREATE TABLE " . $table_name . " (
          id int(11) NOT NULL AUTO_INCREMENT,
          fullname tinytext,
      number VARCHAR(100) NOT NULL,
      email VARCHAR(100) NOT NULL,
          PRIMARY KEY  (id)
        );";

        require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
        dbDelta($sql);

        // notice that we are updating option, rather than adding it
        update_option('newsletter_table_db_version', $newsletter_table_db_version);
    }
}

register_activation_hook(__FILE__, 'mf_newsletter_table_install');

/**
 * Trick to update plugin database, see docs
 */
function csn_newsletter_update_db_check()
{
    global $newsletter_table_db_version;
    if (get_site_option('newsletter_table_db_version') != $newsletter_table_db_version) {
        mf_newsletter_table_install();
    }
}

add_action('plugins_loaded', 'csn_newsletter_update_db_check');

/*Create aminside menu left side*/
add_action('admin_menu', 'csn_plugin_setup_menu');
function csn_plugin_setup_menu(){
    global $newsletter_page;
    $newsletter_page = add_menu_page(__('WP Frontpage Settings', 'mf_newsletter_table'), __('Frontpage Settings', 'mf_newsletter_table'), 'activate_plugins', 'wp_frontpage_settings', 'wp_frontpage_settings');
    //add_submenu_page('persons', __('Subscribed Persons', 'mf_newsletter_table'), __('Subscribed Persons', 'mf_newsletter_table'), 'activate_plugins', 'persons', 'custom_table_example_persons_page_handler');
    //add_submenu_page('persons', __('Settings', 'mf_newsletter_table'), __('Settings', 'mf_newsletter_table'), 'activate_plugins', 'csn_init', 'csn_init');
    //add_submenu_page('persons', __('WP Frontpage Settings', 'mf_newsletter_table'), __('WP Frontpage Settings', 'mf_newsletter_table'), 'activate_plugins', 'wp_frontpage_settings', 'wp_frontpage_settings');
    
    add_action("load-$newsletter_page", "cp_newsletter_screen_options");
}

function wp_frontpage_settings(){
//    $fullname = ''; 
    include "settings.php";
    $number = '';
    $news_options = get_option( 'news_options' );

    $fullname = isset( $news_options['fullname'] ) ? $news_options['fullname'] : '';
    $number = isset( $news_options['number'] ) ? $news_options['number'] : '';
    $csn_btn = isset( $news_options['csn_btn'] ) ? $news_options['csn_btn'] : 'Send';

    if ( isset( $_POST['wp_frontpage_settings_submit'] ) && check_admin_referer( 'settings_nonce', '_wpnonce' ) ) {
        
            //$saved_options = $_POST['news_options'];
            //update_option( 'news_options', $saved_options );
            //wp_redirect( '?page=wp_frontpage_settings&settings-updated=true' );
    }
    ?>
    <style>
* {box-sizing: border-box}

/* Style the tab */
.tab {
  float: left;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
  width: 30%;
  height: 300px;
}

/* Style the buttons inside the tab */
.tab button {
  display: block;
  background-color: inherit;
  color: black;
  padding: 22px 16px;
  width: 100%;
  border: none;
  outline: none;
  text-align: left;
  cursor: pointer;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current "tab button" class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  float: left;
  padding: 0px 12px;
  border: 1px solid #ccc;
  width: 70%;
  border-left: none;
  min-height: 300px;
  background: #ffffff;
}
.tabcontent input.form-control{
    width: 100%;
    height: 40px;
}
</style>

    <div class="wrap" >
<div class="wrap" >
    <div style="background: #ffffff;padding: 10px;">
       
     <h3>WP Frontpage Settings</h3>
     <p>This plugin is made up of tabbed navigation to help you navigate quickly and edit the front page of your website</strong></br>
    <p>Note: to upload any image use the default WordPress image uploader and copy the image URL and paste in the respective link where necessary</p>
     <?php
        if ( isset( $message ) && ( $message !="" ) ) {
            echo '<div id="message" class="updated"><p><strong> '.$message.' </strong></p></div>';
        }
        ?>
    </div>
<div class="tab" style="background: #ffffff;">
  <button class="tablinks" onclick="openCity(event, 'section1')" id="defaultOpen">Section 1</button>
  <button class="tablinks" onclick="openCity(event, 'section2')">Section 2</button>
  <button class="tablinks" onclick="openCity(event, 'section3')">Section 3</button>
  <button class="tablinks" onclick="openCity(event, 'section4')">Section 4</button>
  <button class="tablinks" onclick="openCity(event, 'section5')">Section 5</button>
</div>

<div id="section1" class="tabcontent" >
  <h3>The homepage slider 1</h3>
  <form method="post" >
  <p><input type="text" name="link" value="<?php echo $fetch1['image_link'];?>" class="form-control"/> </p>
  <p><input type="text" name="big" value="<?php echo $fetch1['big'];?>" class="form-control"/></p>
  <p><input type="text" name="small" value="<?php echo $fetch1['small'];?>" class="form-control"/></p>
  <p><input type="text" name="button_name" value="<?php echo $fetch1['button_name'];?>" class="form-control"/></p>
  <p><input type="text" name="button_url" value="<?php echo $fetch1['button_link'];?>" class="form-control"/></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_slider1"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
   <h3>The homepage slider 2</h3>
  <form method="post" >
  <p><input type="text" name="link" value="<?php echo $fetch2['image_link'];?>" class="form-control"/> </p>
  <p><input type="text" name="big" value="<?php echo $fetch2['big'];?>" class="form-control"/></p>
  <p><input type="text" name="small" value="<?php echo $fetch2['small'];?>" class="form-control"/></p>
  <p><input type="text" name="button_name" value="<?php echo $fetch2['button_name'];?>" class="form-control"/></p>
  <p><input type="text" name="button_url" value="<?php echo $fetch2['button_link'];?>" class="form-control"/></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_slider2"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
   <h3>The homepage slider 3</h3>
  <form method="post" >
  <p><input type="text" name="link" value="<?php echo $fetch3['image_link'];?>" class="form-control"/> </p>
  <p><input type="text" name="big" value="<?php echo $fetch3['big'];?>" class="form-control"/></p>
  <p><input type="text" name="small" value="<?php echo $fetch3['small'];?>" class="form-control"/></p>
  <p><input type="text" name="button_name" value="<?php echo $fetch3['button_name'];?>" class="form-control"/></p>
  <p><input type="text" name="button_url" value="<?php echo $fetch3['button_link'];?>" class="form-control"/></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_slider3"
                           value="SUBMIT"></p>
  
  </form>
  
</div>

<div id="section2" class="tabcontent">
  <h3>Our services 1</h3>
  <form method="post" >
  <p><input type="text" name="service1" value="<?php echo $service1['service1'];?>" class="form-control"/> </p>
  <p><input type="text" name="service2" value="<?php echo $service1['service2'];?>" class="form-control"/></p>
  <p><input type="text" name="service3" value="<?php echo $service1['service3'];?>" class="form-control"/></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_service1"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
   <h3>Our services 2</h3>
  <form method="post" >
  <p><input type="text" name="service1" value="<?php echo $service2['service1'];?>" class="form-control"/> </p>
  <p><input type="text" name="service2" value="<?php echo $service2['service2'];?>" class="form-control"/></p>
  <p><input type="text" name="service3" value="<?php echo $service2['service3'];?>" class="form-control"/></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_service2"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
   <h3>Our services 3</h3>
  <form method="post" >
  <p><input type="text" name="service1" value="<?php echo $service3['service1'];?>" class="form-control"/> </p>
  <p><input type="text" name="service2" value="<?php echo $service3['service2'];?>" class="form-control"/></p>
  <p><input type="text" name="service3" value="<?php echo $service3['service3'];?>" class="form-control"/></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_service3"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
   <h3>Our services 4</h3>
  <form method="post" >
  <p><input type="text" name="service1" value="<?php echo $service4['service1'];?>" class="form-control"/> </p>
  <p><input type="text" name="service2" value="<?php echo $service4['service2'];?>" class="form-control"/></p>
  <p><input type="text" name="service3" value="<?php echo $service4['service3'];?>" class="form-control"/></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_service4"
                           value="SUBMIT"></p>
  
  </form>
</div>

<div id="section4" class="tabcontent">
   <h3>Why Choose 1</h3>
  <form method="post" >
  <p><input type="text" name="icon_name" value="<?php echo $why1['icon_name'];?>" class="form-control"/> </p>
  <p><input type="text" name="title" value="<?php echo $why1['title'];?>" class="form-control"/></p>
  <p><input type="text" name="title_link" value="<?php echo $why1['title_link'];?>" class="form-control"/></p>
  <p><textarea type="text" name="description" style="height: 200px;width: 100%;" value="" class="form-control"><?php echo $why1['description'];?></textarea></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_why1"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
   <h3>Why Choose 2</h3>
  <form method="post" >
  <p><input type="text" name="icon_name" value="<?php echo $why2['icon_name'];?>" class="form-control"/> </p>
  <p><input type="text" name="title" value="<?php echo $why2['title'];?>" class="form-control"/></p>
  <p><input type="text" name="title_link" value="<?php echo $why2['title_link'];?>" class="form-control"/></p>
  <p><textarea type="text" name="description" style="height: 200px;width: 100%;" value="" class="form-control"><?php echo $why2['description'];?></textarea></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_why2"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
   <h3>Why Choose 3</h3>
  <form method="post" >
  <p><input type="text" name="icon_name" value="<?php echo $why3['icon_name'];?>" class="form-control"/> </p>
  <p><input type="text" name="title" value="<?php echo $why3['title'];?>" class="form-control"/></p>
  <p><input type="text" name="title_link" value="<?php echo $why3['title_link'];?>" class="form-control"/></p>
  <p><textarea type="text" name="description" style="height: 200px;width: 100%;" value="" class="form-control"><?php echo $why3['description'];?></textarea></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_why3"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
   <h3>Why Choose 4</h3>
  <form method="post" >
  <p><input type="text" name="icon_name" value="<?php echo $why4['icon_name'];?>" class="form-control"/> </p>
  <p><input type="text" name="title" value="<?php echo $why4['title'];?>" class="form-control"/></p>
  <p><input type="text" name="title_link" value="<?php echo $why4['title_link'];?>" class="form-control"/></p>
  <p><textarea type="text" name="description" style="height: 200px;width: 100%;" value="" class="form-control"><?php echo $why4['description'];?></textarea></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_why4"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
   <h3>Why Choose 5</h3>
  <form method="post" >
  <p><input type="text" name="icon_name" value="<?php echo $why5['icon_name'];?>" class="form-control"/> </p>
  <p><input type="text" name="title" value="<?php echo $why5['title'];?>" class="form-control"/></p>
  <p><input type="text" name="title_link" value="<?php echo $why5['title_link'];?>" class="form-control"/></p>
  <p><textarea type="text" name="description" style="height: 200px;width: 100%;" value="" class="form-control"><?php echo $why5['description'];?></textarea></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_why5"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
   <h3>Why Choose 6</h3>
  <form method="post" >
  <p><input type="text" name="icon_name" value="<?php echo $why6['icon_name'];?>" class="form-control"/> </p>
  <p><input type="text" name="title" value="<?php echo $why6['title'];?>" class="form-control"/></p>
  <p><input type="text" name="title_link" value="<?php echo $why6['title_link'];?>" class="form-control"/></p>
  <p><textarea type="text" name="description" style="height: 200px;width: 100%;" value="" class="form-control"><?php echo $why6['description'];?></textarea></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_why6"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
   <h3>Why Choose</h3>
  <form method="post" >
  <p><input type="text" name="link" value="<?php echo $why7['link'];?>" class="form-control"/> </p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_why7"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
</div>
<div id="section3" class="tabcontent">
   <h3>Tab 1</h3>
  <form method="post" >
  <p><input type="text" name="icon_name" value="<?php echo $tab1['icon_name'];?>" class="form-control"/> </p>
  <p><input type="text" name="title" value="<?php echo $tab1['title'];?>" class="form-control"/></p>
  <p><textarea type="text" name="description" style="height: 200px;width: 100%;" value="" class="form-control"><?php echo $tab1['description'];?></textarea></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_tab1"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
   <h3>Tab 2</h3>
  <form method="post" >
  <p><input type="text" name="icon_name" value="<?php echo $tab2['icon_name'];?>" class="form-control"/> </p>
  <p><input type="text" name="title" value="<?php echo $tab2['title'];?>" class="form-control"/></p>
  <p><textarea type="text" name="description" style="height: 200px;width: 100%;" value="" class="form-control"><?php echo $tab2['description'];?></textarea></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_tab2"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
   <h3>Tab 3</h3>
  <form method="post" >
  <p><input type="text" name="icon_name" value="<?php echo $tab3['icon_name'];?>" class="form-control"/> </p>
  <p><input type="text" name="title" value="<?php echo $tab3['title'];?>" class="form-control"/></p>
  <p><textarea type="text" name="description" style="height: 200px;width: 100%;" value="" class="form-control"><?php echo $tab3['description'];?></textarea></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_tab3"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
   <h3>Tab 4</h3>
  <form method="post" >
  <p><input type="text" name="icon_name" value="<?php echo $tab4['icon_name'];?>" class="form-control"/> </p>
  <p><input type="text" name="title" value="<?php echo $tab4['title'];?>" class="form-control"/></p>
  <p><textarea type="text" name="description" style="height: 200px;width: 100%;" value="" class="form-control"><?php echo $tab4['description'];?></textarea></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_tab4"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
   <h3>Tab big image</h3>
  <form method="post" >
  <p><input type="text" name="link" value="<?php echo $tab5['link'];?>" class="form-control"/> </p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_tab5"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
</div>
<div id="section5" class="tabcontent" >
  <h3>The featured works | Business</h3>
  <form method="post" >
  <p><input type="text" name="section_name" value="<?php echo $work1['section_name'];?>" class="form-control"/> </p>
   <p><input type="text" name="title_name" value="<?php echo $work1['title_name'];?>" class="form-control"/> </p>
  <p><input type="text" name="image_one" value="<?php echo $work1['image_one'];?>" class="form-control"/></p>
  <p><input type="text" name="image_one_title" value="<?php echo $work1['image_one_title'];?>" class="form-control"/></p>
  <p><input type="text" name="image_one_location" value="<?php echo $work1['image_one_location'];?>" class="form-control"/></p>
  <p><input type="text" name="image_one_link" value="<?php echo $work1['image_one_link'];?>" class="form-control"/></p>
  <p><input type="text" name="image_two" value="<?php echo $work1['image_two'];?>" class="form-control"/></p>
  <p><input type="text" name="image_two_title" value="<?php echo $work1['image_two_title'];?>" class="form-control"/></p>
  <p><input type="text" name="image_two_location" value="<?php echo $work1['image_two_location'];?>" class="form-control"/></p>
  <p><input type="text" name="image_two_link" value="<?php echo $work1['image_two_link'];?>" class="form-control"/></p>
  <p><input type="text" name="image_three" value="<?php echo $work1['image_three'];?>" class="form-control"/></p>
  <p><input type="text" name="image_three_title" value="<?php echo $work1['image_three_title'];?>" class="form-control"/></p>
  <p><input type="text" name="image_three_location" value="<?php echo $work1['image_three_location'];?>" class="form-control"/></p>
  <p><input type="text" name="image_three_link" value="<?php echo $work1['image_three_link'];?>" class="form-control"/></p>
  <p><input type="text" name="all_links" value="<?php echo $work1['all_links'];?>" class="form-control"/></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_work1"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
  <h3>The featured works | Development</h3>
  <form method="post" >
   <p><input type="text" name="title_name" value="<?php echo $work2['title_name'];?>" class="form-control"/> </p>
  <p><input type="text" name="image_one" value="<?php echo $work2['image_one'];?>" class="form-control"/></p>
  <p><input type="text" name="image_one_title" value="<?php echo $work2['image_one_title'];?>" class="form-control"/></p>
  <p><input type="text" name="image_one_location" value="<?php echo $work2['image_one_location'];?>" class="form-control"/></p>
  <p><input type="text" name="image_one_link" value="<?php echo $work2['image_one_link'];?>" class="form-control"/></p>
  <p><input type="text" name="image_two" value="<?php echo $work2['image_two'];?>" class="form-control"/></p>
  <p><input type="text" name="image_two_title" value="<?php echo $work2['image_two_title'];?>" class="form-control"/></p>
  <p><input type="text" name="image_two_location" value="<?php echo $work2['image_two_location'];?>" class="form-control"/></p>
  <p><input type="text" name="image_two_link" value="<?php echo $work2['image_two_link'];?>" class="form-control"/></p>
  <p><input type="text" name="image_three" value="<?php echo $work2['image_three'];?>" class="form-control"/></p>
  <p><input type="text" name="image_three_title" value="<?php echo $work2['image_three_title'];?>" class="form-control"/></p>
  <p><input type="text" name="image_three_location" value="<?php echo $work2['image_three_location'];?>" class="form-control"/></p>
  <p><input type="text" name="image_three_link" value="<?php echo $work2['image_three_link'];?>" class="form-control"/></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_work2"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
  <h3>The featured works | Creative</h3>
  <form method="post" >
   <p><input type="text" name="title_name" value="<?php echo $work3['title_name'];?>" class="form-control"/> </p>
  <p><input type="text" name="image_one" value="<?php echo $work3['image_one'];?>" class="form-control"/></p>
  <p><input type="text" name="image_one_title" value="<?php echo $work3['image_one_title'];?>" class="form-control"/></p>
  <p><input type="text" name="image_one_location" value="<?php echo $work3['image_one_location'];?>" class="form-control"/></p>
  <p><input type="text" name="image_one_link" value="<?php echo $work3['image_one_link'];?>" class="form-control"/></p>
  <p><input type="text" name="image_two" value="<?php echo $work3['image_two'];?>" class="form-control"/></p>
  <p><input type="text" name="image_two_title" value="<?php echo $work3['image_two_title'];?>" class="form-control"/></p>
  <p><input type="text" name="image_two_location" value="<?php echo $work3['image_two_location'];?>" class="form-control"/></p>
  <p><input type="text" name="image_two_link" value="<?php echo $work3['image_two_link'];?>" class="form-control"/></p>
  <p><input type="text" name="image_three" value="<?php echo $work3['image_three'];?>" class="form-control"/></p>
  <p><input type="text" name="image_three_title" value="<?php echo $work3['image_three_title'];?>" class="form-control"/></p>
  <p><input type="text" name="image_three_location" value="<?php echo $work3['image_three_location'];?>" class="form-control"/></p>
  <p><input type="text" name="image_three_link" value="<?php echo $work3['image_three_link'];?>" class="form-control"/></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_work3"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
  <h3>The featured works | More</h3>
  <form method="post" >
   <p><input type="text" name="title_name" value="<?php echo $work4['title_name'];?>" class="form-control"/> </p>
  <p><input type="text" name="image_one" value="<?php echo $work4['image_one'];?>" class="form-control"/></p>
  <p><input type="text" name="image_one_title" value="<?php echo $work4['image_one_title'];?>" class="form-control"/></p>
  <p><input type="text" name="image_one_location" value="<?php echo $work4['image_one_location'];?>" class="form-control"/></p>
  <p><input type="text" name="image_one_link" value="<?php echo $work4['image_one_link'];?>" class="form-control"/></p>
  <p><input type="text" name="image_two" value="<?php echo $work4['image_two'];?>" class="form-control"/></p>
  <p><input type="text" name="image_two_title" value="<?php echo $work4['image_two_title'];?>" class="form-control"/></p>
  <p><input type="text" name="image_two_location" value="<?php echo $work4['image_two_location'];?>" class="form-control"/></p>
  <p><input type="text" name="image_two_link" value="<?php echo $work4['image_two_link'];?>" class="form-control"/></p>
  <p><input type="text" name="image_three" value="<?php echo $work4['image_three'];?>" class="form-control"/></p>
  <p><input type="text" name="image_three_title" value="<?php echo $work4['image_three_title'];?>" class="form-control"/></p>
  <p><input type="text" name="image_three_location" value="<?php echo $work4['image_three_location'];?>" class="form-control"/></p>
  <p><input type="text" name="image_three_link" value="<?php echo $work4['image_three_link'];?>" class="form-control"/></p>
  <p><input class="button-primary" type="submit" name="wp_frontpage_work4"
                           value="SUBMIT"></p>
  
  </form>
  <br><br>
  </div>

<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
     
</div></div>
    <?php
}

function csn_init(){
//    $fullname = '';
    $number = '';
    $news_options = get_option( 'news_options' );

    $fullname = isset( $news_options['fullname'] ) ? $news_options['fullname'] : '';
    $number = isset( $news_options['number'] ) ? $news_options['number'] : '';
    $csn_btn = isset( $news_options['csn_btn'] ) ? $news_options['csn_btn'] : 'Send';

    if ( isset( $_POST['settings_submit'] ) && check_admin_referer( 'settings_nonce', '_wpnonce' ) ) {
        
            $saved_options = $_POST['news_options'];
            update_option( 'news_options', $saved_options );
            wp_redirect( '?page=csn_init&settings-updated=true' );
    }
    ?>
    <div class="wrap">
     <div class="welcome-panel">
      <?php
        if ( isset( $_GET['settings-updated'] ) && ( $_GET['settings-updated'] ) ) {
            echo '<div id="message" class="updated"><p><strong>Settings saved. </strong></p></div>';
        }
        ?>
     <h3>WP Frontpage1</h3>
     <p>Place below Shortcode in your PHP templates where you want to show newsletter form : <strong>do_shortcode('[mf_newsletter]' );</strong></br>
    <p>if you want to show in Post / Page add sortcode like this : <strong>[mf_newsletter]</strong></p>
    
    <form method="post" action="<?php echo admin_url('admin.php?page=csn_init&noheader=true'); ?>">
      <?php wp_nonce_field('update-options') ?>
      <div class="postbox">
         <h3 class="hndle"><span><?php _e( 'Display Fields Settings', 'csn-newsletter' ); ?></span></h3>
            <div class="inside">
               <table class="form-table">
                    <tr>
                     <th scope="row"><label for="fullname"><?php _e( 'Full Name', 'csn-newsletter' ); ?></label>
                        </th>
                        <td>
                            <input id="fullname" type="checkbox" name="news_options[fullname]"
                                  value="yes"  <?php checked( $fullname, 'yes' ) ?>>

                            <p class="description">
                                <?php _e( 'Check to enable fullname in Frontside custom newsletter form', 'csn-newsletter' ); ?>

                            </p>
                        </td>
                    </tr>
               </table>
               <table class="form-table">
                    <tr>
                     <th scope="row"><label for="number"><?php _e( 'Mobile Number', 'csn-newsletter' ); ?></label>
                        </th>
                        <td>
                            <input id="number" type="checkbox" name="news_options[number]"
                                  value="yes"   <?php /*if ($number == 'yes') echo "checked='checked'";*/ checked( $number, 'yes' ) ?>>

                            <p class="description">
                                <?php _e( 'Check to enable number in Frontside custom newsletter form', 'csn-newsletter' ); ?>

                            </p>
                        </td>
                    </tr>
               </table>
               <table class="form-table">
                    <tr>
                     <th scope="row"><label for="buttonlbl"><?php _e( 'Button Label', 'csn-newsletter' ); ?></label>
                        </th>
                        <td>
                            <input id="btnlbl" type="text" name="news_options[csn_btn]"
                                  value="<?php echo $csn_btn; ?>" >

                            <p class="description">
                                <?php _e( 'If you want to change Button label then Enter Label here to show in Frontside custom newsletter form', 'csn-newsletter' ); ?>
                            </p>
                        </td>
                    </tr>
               </table>
               <p>
                    <?php wp_nonce_field( 'settings_nonce' ); ?>
                    <input class="button-primary" type="submit" name="settings_submit"
                           value="Save Changes">
                </p>                  
            </div>
      </div>
    </form>
   </div>
</div>
    <?php
}

/* this function is called when shortcode [mf_newsletter] is active.*/
function csn_shortcode() {
    ob_start();
    //csn_deliver_mail();
   // csn_newsletter();
    frontpage_slider();

    return ob_get_clean();
}
add_shortcode( 'frontpage_slider', 'csn_shortcode' );
//add_shortcode( 'mf_newsletter', 'csn_shortcode' );




function frontpage_slider(){
   include "front.php";
}





function csn_newsletter() {
    
     if ( isset( $_POST['csn-submitted']) && wp_verify_nonce($_POST['custom_newsletter_nonce'], 'custom-newsletter-nonce')){
        csn_deliver_mail();
       
     }  
    
    $news_options = get_option( 'news_options' );
    //echo "<pre>"; print_r($news_options);
    if($news_options['csn_btn'])
    {
       $button_label = $news_options['csn_btn'];
    }else{
       $button_label = "Send" ;
    }
    
    echo '<form method="post" action="">';
   
   if($news_options['fullname']){
    echo '<p>';
    //echo 'Full Name *<br />';
    echo '<input required type="text" name="csn-fname" pattern="[a-zA-Z0-9 ]+" value=""  placeholder="Full Name" />';
    echo '</p>';
   }
   
   if($news_options['number']){
    echo '<p>';
   // echo 'Mobile Number <br />';
    echo '<input type="text" name="csn-lname" pattern="[a-zA-Z0-9 ]+" value=""  placeholder="Mobile Number" />';
    echo '</p>';
   }
    
    echo '<p>';
    //echo 'Email Address* <br />';
echo' <div class="newslettersign">';
    echo '<input required type="email" name="csn-email" value="" placeholder="Email Address"/>';
echo '</div>';
    echo '</p>';
    
    echo '<input type="hidden" name="custom_newsletter_nonce" value="'.wp_create_nonce('custom-newsletter-nonce').'"/>';
    echo '<p><input type="submit" name="csn-submitted" value="'.$button_label.'"/></p>';
    echo '</form>';
    
   
    //echo "<pre>"; print_r($_POST); exit;

}

function csn_deliver_mail() {
     if ( isset( $_POST['csn-submitted']) && wp_verify_nonce($_POST['custom_newsletter_nonce'], 'custom-newsletter-nonce'))
     {
       //echo "<pre>"; print_r($_POST); exit;
       if(!empty($_POST["csn-email"])) {
           
       global $wpdb;
       $table_name = $wpdb->prefix . 'mf_newsletter_table';
      
      $email = $_POST["csn-email"];
      $email_count = $wpdb->get_var($wpdb->prepare("SELECT COUNT(id) FROM $table_name WHERE email = %s", $email));
      
      if(!$email_count){ 
         // sanitize form values
        $fname    = sanitize_text_field( $_POST["csn-fname"] );
        $number    = sanitize_text_field( $_POST["csn-lname"] );
        $email   = sanitize_email( $_POST["csn-email"] );
      
        /*** Insert Data in Table ***/
        global $wpdb;
        $table_name = $wpdb->prefix . 'mf_newsletter_table';
        $wpdb->insert($table_name, array(
            'fullname' => $fname,
            'number' => $number,
            'email' => $email,
        ));
        
        
        // get the blog administrator's email address
        $to = get_option( 'admin_email' );
        
        $headers = array('Content-Type: text/html; charset=UTF-8');
        //$headers = "From: $name <$email>" . "\r\n";
        $subject = "Newsletter Subscription";
        $message = "";
        
        if($fname){
          $message .= "<p>Full Name : $fname</p>";  
        }
        if($number){
          $message .= "<p>Mobile Number : $number</p>";  
        }
        $message .= "<p>Email Address: $email</p>";  
        

        // If email has been process for sending, display a success message
        if ( wp_mail( $to, $subject, $message, $headers ) ) {
            $user_message = "You have successfully subscribed. When new post will publish you will get email notification of Post.";
            wp_mail( $email, $subject, $user_message, $headers );
            echo '<div class="cpmsg">';
           // echo '<p>Thanks For Subscription.</p>';
            echo "<em style='color:green;font-weight:bold'>Thanks for your subscription.</em>";  
            echo '</div>';
        } else {
            echo '<div class="cpmsg">';
            echo "<em style='color:red;font-weight:bold'>Mail is not sent.</em>";
            echo '</div>';  
        }
     }
     
     else{
       echo '<div class="cpmsg">';
       echo "<em style='color:red;font-weight:bold'>Email already subscribed.</em>";
       echo '</div>';    
     }
    }
     else{
      echo '<div class="cpmsg">';
      echo "<em style='color:red;font-weight:bold'>Please fill all the fields and try again.</em>";
      echo '</div>';  
   }
   }
}

/*Automatically notify your members on new posts*/

function post_published_notification( $post_ID, $post ) {
    global $wpdb;
    global $post;
 
   if( ( $_POST['post_status'] == 'publish' ) && ( $_POST['original_post_status'] != 'publish' ) ) { 
    
    
    $headers = array('Content-Type: text/html; charset=UTF-8');
    $table_name = $wpdb->prefix . 'mf_newsletter_table';
    $usersarray = $wpdb->get_results("SELECT email FROM $table_name;");    
    
     $weburl = site_url();
     $post_title = get_the_title($post_ID); 
     $post_content = get_post_field('post_content', $post_ID);
     //$feat_image = wp_get_attachment_url( get_post_thumbnail_id($post_ID) );
     $feat_image = wp_get_attachment_image_src( get_post_thumbnail_id( $post_ID ), 'thumbnail', false );
     $post_url =  esc_url(get_permalink( $post_ID ));
     $post_mail = "<h2><a href=$post_url>$post_title</a></h2>";
	 ?> <a href="<?php the_permalink(); ?>"style="background-color:#35c61b;color:#ffffff"class="btn btn-default">READ MORE</a> <?php
     
     if($feat_image){
        $post_mail .= "<p><img src='".$feat_image[0]."'></p>"; 
     }
     $post_mail .= "<p>$post_content</p>";
     
     foreach($usersarray as $user_email){
        $email[] = $user_email->email;
        $encoded_email = urlencode( base64_encode( $user_email->email ) );
        $post_mail .= "<p>---------------</p><p>To Unsubscribe click on this link <a href=$weburl/emailsub?email=$encoded_email>Unsubscribe</a></p>";
        wp_mail($user_email->email, $post_title, $post_mail,$headers); 
   } 
    //wp_mail($toemail, $post_title, print_r($post_mail1,true),$headers); 
  } 
     return $post_ID;
}
add_action( 'publish_post', 'post_published_notification', 10, 2 );



/***********************************************************************************
* *************  Table LIST  ***************
* ***********************************************************************************
*/

if ( ! class_exists( 'WP_List_Table' ) ) {
    require_once( ABSPATH . 'wp-admin/includes/class-wp-list-table.php' );
}

/**
 * Custom_Table_Example_List_Table class that will display our custom table
 * records in nice table
 */
class Newslteer_List_Table extends WP_List_Table
{
    /**
     * Set the amount of stores that are shown on each page
     * @since 1.0
     * @var string
     */
     private $_per_page;
    /**
     * [REQUIRED] You must declare constructor and give some basic params
     */ 
    function __construct(){
         global $status,$page;
         parent::__construct(array(
            'singular' => 'person',
            'plural' => 'persons',
        ));
        
        $this->_per_page = $this->get_per_page();       
     }
     
     /**
     * Get the per_page value from the option table
     * 
     * @since 1.2.20
     * @return string $per_page The amount of stores to show per page
     */
    function get_per_page() {
        
        $user     = get_current_user_id();
        $screen   = get_current_screen();
        $option   = $screen->get_option( 'per_page', 'option' );
        $per_page = get_user_meta( $user, $option, true );
       
        if ( empty( $per_page ) || $per_page < 1 ) {
            $per_page = $screen->get_option( 'per_page', 'default' );
        }
        
        return $per_page;
    }
     
     /**
     * [REQUIRED] this is a default column renderer
     *
     * @param $item - row (key, value array)
     * @param $column_name - string (key)
     * @return HTML
     */
    function column_default($item, $column_name)
    {
        return $item[$column_name];
    }
    
    /**
     * [OPTIONAL] this is example, how to render specific column
     *
     * method name must be like this: "column_[column_name]"
     *
     * @param $item - row (key, value array)
     * @return HTML
     */
    
    /**
     * [OPTIONAL] this is example, how to render column with actions,
     * when you hover row "Edit | Delete" links showed
     *
     * @param $item - row (key, value array)
     * @return HTML
     */ 
    function column_email($item)
    {
        // links going to /admin.php?page=[your_plugin_page][&other_params]
        // notice how we used $_REQUEST['page'], so action will be done on curren page
        // also notice how we use $this->_args['singular'] so in this example it will
        // be something like &person=2
        
        $actions = array(
             'delete' => sprintf('<a href="?page=%s&action=delete&id=%s">%s</a>', $_REQUEST['page'], $item['id'], __('Delete', 'mf_newsletter_table')),
        );

        return sprintf('%s %s',
            $item['email'],
            $this->row_actions($actions)
        );
        
    }
    
    /*function column_number($item)
    {
        return '<em>' . $item['number'] . '</em>';
    }*/
    
    
    function column_fullname($item)
    {
        return '<em>' . $item['fullname'] . '</em>';
    }
    
    /**
     * [REQUIRED] this is how checkbox column renders
     *
     * @param $item - row (key, value array)
     * @return HTML
     */
    function column_cb($item)
    {
        return sprintf(
            '<input type="checkbox" name="id[]" value="%s" />',
            $item['id']
        );
    }
    
    /**
     * [REQUIRED] This method return columns to display in table
     * you can skip columns that you do not want to show
     * like content, or description
     *
     * @return array
     */
    function get_columns()
    {
        $columns = array(
            'cb' => '<input type="checkbox" />', //Render a checkbox instead of text
            'email' => __('Email Address', 'mf_newsletter_table'),
            'fullname' => __('Full Name', 'mf_newsletter_table'),
            'number' => __('Mobile Number', 'mf_newsletter_table'),
        );
        return $columns;
    }
    
    /**
     * [OPTIONAL] This method return columns that may be used to sort table
     * all strings in array - is column names
     * notice that true on name column means that its default sort
     *
     * @return array
     */
    function get_sortable_columns()
    {
        
        $sortable_columns = array(
            'fullname' => array('fullname', true),
            'email' => array('email', false),
           // 'number' => array('number', false),
        );
        return $sortable_columns;
    }
    
    /**
     * [OPTIONAL] Return array of bult actions if has any
     *
     * @return array
     */
    function get_bulk_actions()
    {
        $actions = array(
            'delete' => 'Delete'
        );
        return $actions;
    }
    
    /**
     * [OPTIONAL] This method processes bulk actions
     * it can be outside of class
     * it can not use wp_redirect coz there is output already
     * in this example we are processing delete action
     * message about successful deletion will be shown on page in next part
     */
    function process_bulk_action()
    {
        global $wpdb;
        $table_name = $wpdb->prefix . 'mf_newsletter_table'; // do not forget about tables prefix

        if ('delete' === $this->current_action()) {
            $ids = isset($_REQUEST['id']) ? $_REQUEST['id'] : array();
            if (is_array($ids)) $ids = implode(',', $ids);

            if (!empty($ids)) {
                $wpdb->query("DELETE FROM $table_name WHERE id IN($ids)");
            }
        }
    }
    
    function get_store_list(){
         global $wpdb;
         $table_name = $wpdb->prefix . 'mf_newsletter_table'; // do not forget about tables prefix  
         $total_items = 0;
         $per_page=5;
         //$this->_per_page = 5;
        //$this->_per_page = $this->get_per_page();        
        /* Check if we need to run the search query or just show all the data */
        if ( isset( $_GET['s'] ) && ( !empty( $_GET['s'] ) ) ) {
            $search = trim( $_GET['s'] ); //exit;
            $result = $wpdb->get_results( 
                            $wpdb->prepare( "SELECT * FROM $table_name  WHERE fullname LIKE %s OR email LIKE %s", 
                               '%' . like_escape( $search ). '%', '%' . like_escape( $search ). '%'            ), ARRAY_A 
                            );
        } else {
            /* Order params */
            $orderby   = !empty ( $_GET["orderby"] ) ? esc_sql ( $_GET["orderby"] ) : 'fullname';
            $order     = !empty ( $_GET["order"] ) ? esc_sql ( $_GET["order"] ) : 'ASC';
            $order_sql = $orderby.' '.$order;   

            // Pagination parameters 
            $total_items = $wpdb->get_var( "SELECT COUNT(*) AS count FROM $table_name" );
            
            $paged       = !empty ( $_GET["paged"] ) ? esc_sql ( $_GET["paged"] ) : '';
            
            if ( empty( $paged ) || !is_numeric( $paged ) || $paged <= 0 ) { 
                $paged = 1; 
            }

            //$totalpages = ceil( $total_items / $this->_per_page );
            //echo "test".$this->_per_page; exit; 
            if ( !empty( $paged ) && !empty( $this->_per_page ) ){
                $offset    = ( $paged - 1 ) * $this->_per_page;
                $limit_sql = (int)$offset.',' . (int)$this->_per_page;
            }
            
            $result = $wpdb->get_results( "SELECT * FROM $table_name ORDER BY $order_sql LIMIT $limit_sql", ARRAY_A );    
            
            
        }
        
    
        $response = array(
            "data"  => stripslashes_deep( $result ),
            "count" => $total_items
        );
        
        
        return $response;
    }
    
    /**
     * [REQUIRED] This is the most important method
     *
     * It will get rows from database and prepare them to be showed in table
     */
    function prepare_items()
    {
        global $wpdb;
        $table_name = $wpdb->prefix . 'mf_newsletter_table'; // do not forget about tables prefix

        $user = get_current_user_id();
        // get the current admin screen
        $screen = get_current_screen();
        // retrieve the "per_page" option
        $screen_option = $screen->get_option('per_page', 'option');
        // retrieve the value of the option stored for the current user
        $per_page = get_user_meta($user, $screen_option, true);
        if ( empty ( $per_page) || $per_page < 1 ) {
            // get the default value if none is set
            $per_page = $screen->get_option( 'per_page', 'default' );
        } // constant, how much records will be shown per page

        $columns = $this->get_columns();
        $hidden = array();
        $sortable = $this->get_sortable_columns();

        // here we configure table headers, defined in our methods
        $this->_column_headers = array($columns, $hidden, $sortable);

        // [OPTIONAL] process bulk action if any
        $this->process_bulk_action();
        $response = $this->get_store_list(); 
        /*echo "<pre>";
        print_r($response);
         echo "</pre>";      */
        //exit;
        $current_page = $this->get_pagenum();
        $total_items  = $response['count'];
        
        $this->set_pagination_args( array(
            'total_items' => $total_items,
            'per_page'    => $per_page,
            'total_pages' => ceil( $total_items / $per_page ) 
        ) );

        $this->items = $response['data'];
        //$this->_column_headers = array( $columns, $hidden, $sortable );       
        
        // will be used in pagination settings
        
    }


}

function cp_newsletter_screen_options() {
 
    global $newsletter_page;
 
    $screen = get_current_screen();
 
    // get out of here if we are not on our settings page
    if(!is_object($screen) || $screen->id != $newsletter_page)
        return;
 
    $args = array(
        'label' => __('Members per page', 'mf_newsletter_table'),
        'default' => 10,
        'option' => 'newsletter_per_page'
    );
    add_screen_option( 'per_page', $args );
}

add_action( 'plugins_loaded', 'add_wpsl_screen_filter' );
function add_wpsl_screen_filter() {
    add_filter( 'set-screen-option', 'newsletter_set_screen_option', 10, 3 );
} 

function newsletter_set_screen_option($status, $option, $value) {
    if ( 'newsletter_per_page' == $option ) return $value;
}
add_filter('set-screen-option', 'newsletter_set_screen_option', 10, 3);


/**
 * List page handler
 *
 * This function renders our custom table
 * Notice how we display message about successfull deletion
 * Actualy this is very easy, and you can add as many features
 * as you want.
 *
 * Look into /wp-admin/includes/class-wp-*-list-table.php for examples
 */
function custom_table_example_persons_page_handler()
{
    global $wpdb;

    $table = new Newslteer_List_Table();
    $table->prepare_items();

    $message = '';
    if ('delete' === $table->current_action()) {
        $message = '<div class="updated below-h2" id="message"><p>' . sprintf(__('Items deleted: %d', 'mf_newsletter_table'), count($_REQUEST['id'])) . '</p></div>';
    }
    ?>
<div class="wrap">

    <div class="icon32 icon32-posts-post" id="icon-edit"><br></div>
   
    <?php echo $message; ?>

    <form id="persons-table" method="get">
        <input type="hidden" name="page" value="<?php echo $_REQUEST['page'] ?>"/>
        <?php $table->search_box( 'search', 'search_id' );             ?>
        <?php $table->display() ?>
    </form>

</div>
<?php
}

add_action( 'init', 'csn_my_rewrite' );
function csn_my_rewrite() {
    global $wp_rewrite;
    flush_rewrite_rules();
    add_rewrite_rule('emailsub/?$', 'wp-content/plugins/cp-simple-newsletter/email-unsubscribe.php', 'top');
    
}
 






