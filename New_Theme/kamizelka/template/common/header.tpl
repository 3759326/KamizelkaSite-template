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
<!-- <script type="text/javascript" src="catalog/view/theme/kamizelka/js/custom.js"></script>
<script type="text/JavaScript" src="catalog/view/theme/kamizelka/js/cloud-zoom.1.0.2.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script> -->


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


<div class="bg"></div>

<!-- Header Start -->

	<div class="header">
		<div class="container">

			<div class="row align-self-start" id="head-content">
				<div class="col-lg-4 col-md-4 col-2 align-self-center text-center">
					<!--Right navbar -->
					<div class="header-menu align-self-center hrm-block">
						<div id="sidebar-main-trigger" class="icon float-left">
							<span class="catalog-triger">Каталог</span>
							<span class="catalog-triger-mobile fas fa-bars  d-md-block d-lg-none" style="font-size: 1.5em;"></span>
						</div>
					</div>


					<div class="sidebar main left" id="sidebar-main">
						<span class="quitter ion-close" style="    float: right;
							color: #2a6bb4;
							cursor: pointer;
							font-size: 1.5em;
							padding-bottom: 10px;
							width: 100%;
							text-align: right;"></span>
						<div class="wrapper">


							<nav class="left-menu-catalog text-left">
								<form class="search-frm-menu d-md-block d-lg-none" action="action_page.php">
									<input type="text" placeholder="Search.." name="search">
									<span class="fas fa-search "></span>
								</form>
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
							</nav>
							<div class="mobile-menu-block d-md-block d-lg-none text-left">
								<nav class="mobile-tool-menu text-left">
									<ul>
										<li>
                    <a href="<?php echo $account; ?>"><span class="text-account"><?php echo $text_account; ?></span></a>
										</li>
                    <?php if ($informations) { ?>
									  	
                       <?php foreach ($informations as $information) { ?>
                          <li>
                              <a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a>
                          </li>
                        <?php } ?>
											
										 <?php } ?>
                    
                     <li>
                      <a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a>
                            
										</li>

									</ul>
								</nav>
								<div class="mobile-social">
									<a href="#">
										<img src="catalog/view/theme/kamizelka/image/fb_ico.png" alt="Facebook">
									</a>
									<a href="#">
										<img src="catalog/view/theme/kamizelka/image/pinter_ico.png" alt="Pinterest">
									</a>
									<a href="#">
										<img src="catalog/view/theme/kamizelka/image/insta_ico.png" alt="Instagram">
									</a>
									<a href="#">
										<img src="catalog/view/theme/kamizelka/image/G_ico.png" alt="G+">
									</a>
								</div>
								<div class="mobile-contact-menu">
									<span>+38/050/333-1122</span>
									<span>+38/050/333-1122</span>
									<span>+38/050/333-1122</span>
									<a href="mailto:info@kamizelka.in.ua">info@kamizelka.in.ua</a>
								</div>
								<div class="copyright">2018&copy; Kamizelьka</div>
							</div>
						</div>
					</div>


				</div>

				<!--End Right navbar -->

				<!-- Logo center block -->
				<div class="col-lg-4 col-md-4 col-8 align-self-center text-center">
        <?php if ($logo) { ?>
        <div><a href="<?php echo $home; ?>"><img  class="logo" src="<?php echo $logo; ?>" alt="<?php echo $name; ?>" /></a></div>
      <?php } ?>  
					
				</div>
				<!-- End Logo center block -->

				<!-- Right block - cart, search, login, tool menu -->
				<div class="col-lg-4 col-md-4 col-2 align-self-center text-center header-right">
					<div class="hrm-block login-icon">
          <a href="<?php echo $account; ?>"><span class="fas fa-user header-right-menu" style="font-size: 1.5em"></span></a>
						
					</div>
					<div class="hrm-block cart-icon">
          <a href="<?php echo $shopping_cart; ?>"><span class="fas fa-shopping-bag header-right-menu">
					
							<div class="cart-circle"><?php echo $this->data['cart_count'] ?></div>
                        
						</span></a>
					</div>
					<div class="hrm-block fav-icon">
          <a href="<?php echo $wishlist; ?>">
						<span class="far fa-heart header-right-menu">
               </span>
						<div class="fav-circle"><?php echo $text_wishlist; ?></div>

						</span></a>
					</div>
					<div class="hrm-block search-icon">
						<a class="fas fa-search header-right-menu" style="font-size: 1.5em " data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
						 aria-expanded="false"></a>
						<div class="dropdown-menu dropdown-menu-right hrm-dropdown search-dropdown">

							<form class="search-frm" action="action_page.php">
              <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
							
								<span class="fas fa-search button-search"></span>
							</form>

						</div>
					</div>

					<div class="hrm-block right-menu-icon">
						<a class="fas fa-bars header-right-menu" style="font-size: 1.5em;" data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
						 aria-expanded="false"></a>
						<div class="dropdown-menu dropdown-menu-right hrm-dropdown">

              <?php if ($informations) { ?>
									  	
                      <?php foreach ($informations as $information) { ?>
                         <li>
                             <a class="dropdown-item"  href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a>
                         </li>
                       <?php } ?>
                     
                    <?php } ?>
                    <a class="dropdown-item" href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a>
							<div class="dropdown-divider"></div>
              <div id="lang" class="dropdown-item"><?php echo $language; ?></div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<!-- End Right block - cart, search, login, tool menu -->
	<!-- End Header -->










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
 
