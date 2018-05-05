</div><!-- End container //-->
</div><!-- End container wrapper //-->

<!-- Begin footer area //-->
<div id="footer-top-image"></div>
<div id="footer-area">
  <!-- Begin footer //-->
  <div id="footer">

    <!-- Begin footer columns //-->
    <div id="footer-columns">
      
      <!-- Begin contacts //-->
      <div class="column-contacts">
        <h3><?php echo $text_contact; ?></h3>
        <ul>
          <li class="phone"><?php echo $telephone; ?></li>
		  <li class="phone"><?php echo $telephone1; ?></li>
		  <li class="phone"><?php echo $telephone2; ?></li>
          <li class="mobile"><?php echo $fax; ?></li>
          <li class="email"><a href=<?php echo '"mailto:'.$email.'"' ?>><?php echo $email; ?></a></li>
        </ul>
       <ul class="social-icons">
          <li><a class="facebook" title="Facebook" target="_blank" href="https://www.facebook.com/workshop.kamizelka"><img src="catalog/view/theme/shopycart/image/social/facebook.png" alt="facebook"></a></li>
          <!-- <li><a class="twitter" title="Twitter" target="_blank" href="http://www.your-twitter-address.com"><img src="catalog/view/theme/shopycart/image/social/twitter.png" alt="twitter"></a></li> //-->
          <!-- <li><a  class="linkedin" title="Linkedin" target="_blank" href="http://www.your-linkedin-address.com"><img src="catalog/view/theme/shopycart/image/social/linkedin.png" alt="linkedin"></a></li> //-->
          <li><a  class="google" title="Google" target="_blank" href="https://plus.google.com/+KamizelkaInUa"><img src="catalog/view/theme/shopycart/image/social/google.png" alt="google"></a></li>
		  <li><a class="facebook" title="Instagram" target="_blank" href="https://www.instagram.com/workshop_kamizelka/"><img src="catalog/view/theme/shopycart/image/social/insta.png" alt="Instagram"></a></li>
        </ul>
        <!-- Begin social icons //-->
       
        <!-- End social icons //-->

      </div>
      <!-- End contacts //-->

      
      <div class="column2">
        <h3><?php echo $text_account; ?></h3>
        <ul>
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
		  <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
        </ul>
      </div>
      <?php if ($informations) { ?>
      <div class="column1">
        <h3><?php echo $text_information; ?></h3>
        <ul>
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
		  <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
        </ul>    
      </div>
      <?php } ?>
	   
      <div class="column-aboutus">
       
	   <div class="image"><img src="<?php echo $logo; ?>" alt="<?php echo $name; ?>" /></div>
        
      </div>
    </div>
    <!-- End footer columns //-->
  </div>
  <!-- End footer //-->

  <!-- Begin footer mobile //-->
  <div id="footer-mobile">
    <div class="footer-menu-mobile">
      
      <h3><?php echo $text_account; ?></h3>
      <div class="footer-menu-mobile-nav">
        <ul>
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
		  <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
        </ul>
      </div>    
         <h3><?php echo $text_information; ?></h3>
      <div class="footer-menu-mobile-nav">
        <ul>
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
		  <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
        </ul>
      </div>
	 
    </div>
	 <div class="column-contacts">
               <ul>
          <li class="phone"><?php echo $telephone; ?></li>
		  <li class="phone"><?php echo $telephone1; ?></li>
		  <li class="phone"><?php echo $telephone2; ?></li>
          <li class="mobile"><?php echo $fax; ?></li>
          <li class="email"><a href=<?php echo '"mailto:'.$email.'"' ?>><?php echo $email; ?></a></li>
        </ul>

        <!-- Begin social icons //-->
       
        <!-- End social icons //-->

      </div>
  </div>
  <!-- End footer mobile //-->

  <!--
  OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
  Please donate via PayPal to donate@opencart.com
  //-->
  <div id="powered-area">
    <div id="powered">
      <div class="powered-alignleft">

        <!-- Begin payments icons //-->
        <!-- <img src="catalog/view/theme/shopycart/image/payments.png" title="payments" alt="payments"> //-->

        <!-- End payments icons //-->

      </div>
      <div class="powered-alignright"><?php echo $powered; ?> | Design by:<span style="font-size: 16px;color: #C42726;">Di</span></div>
      <div style="clear:both"></div>
    </div>
    <!--
    OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
    Please donate via PayPal to donate@opencart.com
    //-->
  </div>
</div>
<!-- End footer area //-->

<!-- Begin scroll to top button //-->
<a href='#' id='scroll-to-top' style='display:none;'></a>
<!-- End scroll to top button //-->
<!-- Begin design by //-->
 <div class="design-by"><a target="_blank" href="http://focusthemes.net"></a></div>
<!-- End design by  //-->
<!-- Begin tooltip jquery //-->
<script type="text/javascript" src="catalog/view/theme/shopycart/js/tooltip/jquery.qtip.js"></script>
<script type="text/javascript" src="catalog/view/theme/shopycart/js/tooltip/tooltip.js"></script>
<!-- End tooltip jquery //-->

<!-- Begin NivoSlider jquery //-->
<script type="text/JavaScript" src="catalog/view/theme/shopycart/js/jquery.nivo.slider.pack.js"></script>
<!-- End NivoSlider jquery //-->

<!-- Begin shopycart Slideshow (Flexslider) -->
<script type="text/javascript" src="catalog/view/theme/shopycart/js/flexslideshow/jquery.flexslider-min.js"></script>
<!-- End shopycart Slideshow (Flexslider) -->
<!-- Begin Google MyBusines -->
<a href="https://plus.google.com/117075070652657284527" rel="publisher"></a>
<!-- End Google MyBusines -->
</body></html>