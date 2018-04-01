<div class="container">
  <div class="row">
  <div class="col-12">
  <div id="slideshow<?php echo $module; ?>" class="owl-carousel" >
    <?php foreach ($banners as $banner) { ?>
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img class="img-fluid" src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
    <?php } else { ?>
    <img class="img-fluid" src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
    <?php } ?>
    <?php } ?>
  </div>
</div>
    </div>
    </div>
    




<script type="text/javascript">
  $(document).ready(function(){
		var owl = $('.owl-carousel');
  $('#slideshow<?php echo $module; ?>').owlCarousel({
	items:1,
	margin:0,
	mouseDrag:true,
	touchDrag:true,
	center:true,
  loop:true,
  autoplay:true,
    autoplayTimeout:5000,
    autoplayHoverPause:true,
    nav: false,
	navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
	// navElement:"slider-nav",
	dots:true,

  });
});
</script>


<!-- <script type="text/javascript">
$(document).ready(function(){
    $('#slideshow<?php echo $module; ?>').nivoSlider({
        effect: 'random', // Specify sets like: 'fold,fade,sliceDown'
        animSpeed: 500, // Slide transition speed
        pauseTime: 8000, // How long each slide will show
        directionNav: true, // Next & Prev navigation
        controlNav: true // 1,2,3... navigation
    });
});
</script> -->