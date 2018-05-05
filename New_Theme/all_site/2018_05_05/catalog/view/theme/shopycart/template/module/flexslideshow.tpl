

<div id="flexslideshow<?php echo $module; ?>" class="flexslider">
  <ul class="slides">
    <?php foreach ($banners as $banner) { ?>
    <?php if ($banner['link']) { ?>
    <li>
      <a href="<?php echo $banner['link']; ?>">
        <div class="bigimage" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px; background:url(<?php echo $banner['image']; ?>) 50% 0 no-repeat;"></div>
        <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="slide_img" />
      </a>
    </li>
    <?php } else { ?>
    <li>
      <div class="bigimage" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px; background:url(<?php echo $banner['image']; ?>) 50% 0 no-repeat;"></div>
      <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="slide_img" />
    </li>
    <?php } ?>
    <?php } ?>
  </ul>
</div>


<script type="text/javascript">
$(window).load(function() {
  $('#flexslideshow<?php echo $module; ?>').flexslider({
    slideshow: true, // Setup a slideshow for the slider to animate automatically (true or false).
    animation: "<?php echo $animation; ?>", // Controls the animation type (changeable through admin panel).
	  pauseOnHover: true, // Pause the slideshow when hovering over slider, then resume when no longer hovering (true or false).
	  pauseOnAction: true, // Pause the slideshow when interacting with control elements (true or false).
	  touch: true, // Allow touch swipe navigation of the slider on enabled devices (true or false).
	  animationSpeed: 600, // Set the speed of animations, in milliseconds.
	  slideshowSpeed: 6500, // Set the speed of the slideshow cycling, in milliseconds.
	  smoothHeight: false, // Animate the height of the slider smoothly for slides of varying image height (true or false).
	  controlNav: true, // Create navigation for paging control of each slide (true or false).
    directionNav: true, // Create previous/next arrow navigation (true or false).
    direction: "horizontal", // Controls the animation direction ("horizontal" or "vertical").
    useCSS: false // Fixes black screen issue on Saffari (do not change this!!!).
  });
});
</script>


<!-- Begin scroll down button script -->
<script type="text/javascript">
jQuery(document).ready(function(){
  var catTopPosition = jQuery('#scroll-down-target').offset().top;
  
  // When #scroll-down is clicked
  jQuery('#full-width-slider .scroll-down').click(function(){
    // Scroll down to '#container'
    jQuery('html, body').animate({scrollTop:catTopPosition}, 'slow');
    // Stop the link from acting like a normal anchor link
    return false;
  });
});
</script>
<!-- End scroll down button script -->