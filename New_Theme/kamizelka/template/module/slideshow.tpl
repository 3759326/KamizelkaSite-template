
  <div class="row" style="padding:0; margin:0;">
  <div class="col-12 title-slide" style="padding:0; margin:0;">
  <div id="slideshow<?php echo $module; ?>" class="owl-carousel" >
    <?php foreach ($banners as $banner) { ?>
     <?php if ($banner['txt_color']){
		$txt_color= $banner['txt_color']; 
	 }else {
		 $txt_color="#fff";
	 }?>
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img class="img-fluid" src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
    <?php } else { ?>
      <div>
        <div class="title" style="position:absolute; top:40%; width:100%;">
               <h1 style="color:<?php echo $txt_color;?>; font-size:70px; text-align:center;"><?php echo $banner['title']; ?></h1>
             </div> 
        <img class="img-fluid" src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
  
      </div>
    <?php } ?>
    <?php } ?>
  </div>
</div>
    </div>
   
    




<script type="text/javascript">
  $(document).ready(function(){
	  console.log("<?$banner['txt_color'] ?>");
		var owl = $('.owl-carousel');
  $('#slideshow<?php echo $module; ?>').owlCarousel({
	items:1,
	margin:0,
	mouseDrag:true,
	touchDrag:true,
	center:true,
  loop:true,
  animateIn: 'fadeIn',
  animateOut: 'fadeOut',
  autoplay:true,
  autoplayTimeout:5000,
  autoplaySpeed:5000,
  autoplayHoverPause:false,
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