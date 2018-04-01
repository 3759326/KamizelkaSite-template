<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">

<head>
<meta http-equiv="Content-type" content="text/html;charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!--<meta charset="UTF-8" /> -->
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>


<!-- Begin Google fonts  -->
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
<!-- End Google fonts (Oswald & Open Sans) -->


<link rel="stylesheet" type="text/css" href="catalog/view/theme/shopycart/stylesheet/cloud-zoom.css" />

<!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<link rel="stylesheet" href="catalog/view/theme/kamizelka/stylesheet/stylesheet.css">
	<link rel="stylesheet" href="catalog/view/theme/kamizelka/stylesheet/animate.css">
	<link rel="stylesheet" href="catalog/view/theme/kamizelka/stylesheet/bootstrap-reboot.css">
	<link rel="stylesheet" href="catalog/view/theme/kamizelka/stylesheet/owl.carousel.min.css">
	<link rel="stylesheet" href="catalog/view/theme/kamizelka/stylesheet/owl.theme.default.min.css">
	<link rel="stylesheet" href="catalog/view/theme/kamizelka/stylesheet/magnific-popup.css">
	<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
	<link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet">



<!-- Optional JavaScript -->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="catalog/view/theme/kamizelka/js/jquery.simpler-sidebar.js"></script>
	<script type="text/javascript" src="catalog/view/theme/kamizelka/js/main-sidebar-left-top.js"></script>
	<script type="text/javascript" src="catalog/view/theme/kamizelka/js/jquery-ui.js"></script>
	<script type="text/javascript" src="catalog/view/theme/kamizelka/js/jquery.viewportchecker.min.js"></script>
	<script type="text/javascript" src="catalog/view/theme/kamizelka/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="catalog/view/theme/kamizelka/js/jquery.magnific-popup.min.js"></script>



	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	 crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	 crossorigin="anonymous"></script>


<!-- Old scripts -->
<script type="text/javascript" src="catalog/view/theme/kamizelka/js/custom.js"></script>
<script type="text/JavaScript" src="catalog/view/theme/kamizelka/js/cloud-zoom.1.0.2.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>


<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>


<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>

<!--[if IE 7]>
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/shopycart/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/shopycart/stylesheet/ie6.css" />
  <script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
  <script type="text/javascript">
    DD_belatedPNG.fix('#logo img');
  </script>
<![endif]-->

<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>

<?php echo $google_analytics; ?>

</head>

<body>

<!-- Begin header -->
<div id="header-area">
  <div id="header">
 <!-- <div style="
    display: inline-grid;
    /* position: fixed; */
    width: 100%;
    height: 40px;
    background-color: #2E6AB4;
    color: #fff;
    text-align: center;
    margin: 0;
    /* padding: 0; */
    /* margin-top: auto; */
    vertical-align: middle;
    /* z-index: 100000; */
            "><p style="
    margin-bottom: auto !important;
    margin-top: auto !important;
    font-size: 1.5em;
">-20% знижка  2 та 3 грудня  промо-код: DNIPRO23</p></div> -->
		  	
    <div id="header-content">
    
 
      <!-- Begin logo -->
      <?php if ($logo) { ?>
        <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" alt="<?php echo $name; ?>" /></a></div>
      <?php } ?>  
	   <!--<div id="work-time"> <a href="/contacts"><img src="/image/data/work_time.png" alt="Часи роботи Пн-Пт з 10-00 до 19-00"></a></div>-->
      <!-- End logo -->

      <!-- Begin search mobile -->
     <!-- <div id="search-mobile">
        <div class="button-search-mobile"></div>
        <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
      </div> -->
      <!-- End search mobile -->


<!--Old Begin menu -->
     



      <!-- Begin welcome mobile -->
      <div id="welcome-mobile">
        <?php if (!$logged) { ?>
          <?php echo $text_welcome; ?>
        <?php } else { ?>
          <?php echo $text_logged; ?>
        <?php } ?>
      </div>
      <!-- End welcome mobile -->

      <!-- Begin links mobile -->
      <!-- <div class="links-mobile">
        <a href="<?php echo $home; ?>"><span class="text-home"><?php echo $text_home; ?></span></a>
        <a href="<?php echo $wishlist; ?>" id="wishlist-total-mobile"><?php echo $text_wishlist; ?></a>
        <a href="<?php echo $account; ?>"><span class="text-account"><?php echo $text_account; ?></span></a>
        <a href="<?php echo $shopping_cart; ?>"><span class="text-shopping-cart"><?php echo $text_shopping_cart; ?></span></a>
        <a href="<?php echo $checkout; ?>"><span class="text-checkout"><?php echo $text_checkout; ?></span></a>
        <a class="blog-link" href="<?php echo $this->url->link('blog/category/home'); ?>">Blog</a> <!-- Effect only if you use EchoThemes "Blog Manager" (this extension is not included by default!) -->
      <!-- </div> -->
      <!-- End links mobile -->

    </div>
    <!-- Begin top bar -->

      <div id="top-bar">
	  
	  
        <div id="top-bar-content">

          <!-- Begin dropdown links -->
         
		 
          <!-- End dropdown links -->

          <?php echo $cart; ?>

          <!-- Begin search -->
		  
		  <div id="search">
    <div class="button-search"></div>
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
  </div>
		  
         <!-- <div id="search">
            <div class="button-search"></div>
            <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
          </div> -->
          <!-- End search -->

          <!-- Begin welcome -->
          
          <!-- End welcome -->
         
		       <!-- Begin menu-mobile -->
			   
      
      <!-- End menu-mobile -->
		 <!-- Begin menu -->
	  <div id="menu_top">
	  
          <?php if ($informations) { ?>
      <div class="column1">
              
          <?php foreach ($informations as $information) { ?>
          <a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a>
		  |
          <?php } ?>
		 <a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a>
            
      </div>
      <?php } ?>
	  
     </div>
	 <!-- End menu -->
	 <!-- Count cart mobile -->
	 
	 
	 	<div id ="mobile-cart">
		 <a href="index.php?route=checkout/cart" class="mobile-cart-lnk">
		 <div id="mobile-cart-lnk-div">
		 <div id="cart-count"><?php echo $this->data['cart_count'] ?></div>
		 </div>
		 </a>
		</div>
	 
	 <!-- Catalog mobile menu -->
	 <div id="mobile">
	   <div class="m-mobile">
      <h3><?php echo $m_menu_title; ?></h3>
      <div class="m-mobile-nav">
	     <ul>
            <?php foreach ($categories as $category) { ?>
              <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                <!-- Begin sub categories -->
                <?php if ($category['children']) { ?>
                <div class="sub-cat-mobile">
                  <?php for ($i = 0; $i < count($category['children']);) { ?>
                    <ul>
                      <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                      <?php for (; $i < $j; $i++) { ?>
                      <?php if (isset($category['children'][$i])) { ?>
                      <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
                      <?php } ?>
                      <?php } ?>
                    </ul>
                  <?php } ?>
                </div>
                <?php } ?>
                <!-- End sub categories -->
              </li>
            <?php } ?>
          </ul>
		<!-- <ul>
			<li><a href="<?php echo $home; ?>"><span class="text-home"><?php echo $text_home; ?></span></a></li>
			<li><a href="<?php echo $wishlist; ?>" id="wishlist-total-mobile"><?php echo $text_wishlist; ?></a></li>
			<li><a href="<?php echo $account; ?>"><span class="text-account"><?php echo $text_account; ?></span></a></li>
			<li><a href="<?php echo $shopping_cart; ?>"><span class="text-shopping-cart"><?php echo $text_shopping_cart; ?></span></a></li>
			<li><a href="<?php echo $checkout; ?>"><span class="text-checkout"><?php echo $text_checkout; ?></span></a></li>
        </ul> -->
      </div> 
	  </div>
	  </div>
        </div>
      </div>
      <!-- End top bar -->


  </div>
</div>
<!-- End header -->

<!-- Begin container -->
 <!-- Begin welcome -->
<div id="welcom-wrapper">
<div id="welcome_bar">
        <div id="lang">
              <?php echo $language; ?>
              
              <!--<li><?php echo $currency; ?></li>

              <!-- Begin my account links (My Menu) -->
             
              <!-- End my account links (My Menu) -->

            <!--    Begin blog link (Blog Manager). ATTENTION! Blog Manager extension is NOT included in the theme download pack! If you want to use it, you must purchase the extension here: http://www.echothemes.com -->
            <!--  <li class="blog-link"><a href="<?php echo $this->url->link('blog/category/home'); ?>"><?php echo $this->language->get('theme_blog'); ?></a></li>-->
              <!-- End blog link (Blog Manager) -->

          
        </div> 

          <div id="welcome_bottom">
            <?php if (!$logged) { ?>
              <?php echo $text_welcome; ?>
            <?php } else { ?>
              <?php echo $text_logged; ?>
            <?php } ?>
          
		  </div>
		  </div>
		</div>
		
          <!-- End welcome -->

<div id="container-wrapper">
<div id="container">
  <div id="scroll-down-target"></div> <!-- This is Flexslider scroll down button target -->

<?php if ($error) { ?>
<div class="warning"><?php echo $error ?><img src="catalog/view/theme/shopycart/image/close.png" alt="" class="close" /></div>
<?php } ?>

<!-- Begin notifications -->
<div id="notification-fixed">
  <div id="notification"></div>
</div>
<!-- End notifications -->





<!-- Begin cart "Close" button mobile devices fix script -->
<script type="text/javascript">
    $(function() {
        $('.success .close, .warning .close, .attention .close, .information .close').live('click', function (event) {
            event.preventDefault();
            $('#notification').removeClass('active');
        });
    });
</script>
<!-- End cart "Close" button mobile devices fix script -->
 <!-- Snow -->
   <!-- <script type="text/javascript" src="catalog/view/theme/shopycart/js/snow.js"></script> -->
 <!-- //Snow -->
 
