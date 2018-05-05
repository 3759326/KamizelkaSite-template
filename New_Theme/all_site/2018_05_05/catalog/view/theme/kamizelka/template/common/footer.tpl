<!-- Footer Block -->
<div class="footer">
		<div class="footer-line row align-items-end">
			<div class="container  h-100">
				<div class="row h-100 justify-content-center ">
					<div class="col-lg-12 d-flex justify-content-around align-items-center">
						<a class="footer-line-link" href="about">О нас</a>
						<a class="footer-line-link" href="size">Розмірна сітка</a>
						<a class="footer-line-link" href="delivery">Доставка та оплата</a>
						<a class="footer-line-link" href="contact">Контакти</a>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row" id="footer">
				<div class="col-lg-4 col-md-4 col-8 align-self-center">
					<div class="footer-social">
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
					<div class="footer-email">
						<a href="mailto:info@kamizelka.in.ua">info@kamizelka.in.ua</a>
					</div>

				</div>
				<div class="col-lg-4 col-md-4 col-8 align-self-center footer-logo">
				<a href="<?php echo $home; ?>"><img  class="logo" src="<?php echo $logo; ?>" alt="<?php echo $name; ?>" /></a>
					<div class="copyright">2018&copy; Kamizelьka</div>
				</div>
				<div class="col-lg-4 col-md-4 col-8 align-self-center">
					<div class="footer-contact">
						<i class="ion-ios-telephone"></i>+38/050/333-1122</div>
					<div class="footer-contact">
						<i class="ion-ios-telephone"></i>+38/050/333-1122</div>
					<div class="footer-contact">
						<i class="ion-ios-telephone"></i>+38/050/333-1122</div>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="openshoppingcart" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
		  <div class="modal-content">
			<div class="modal-header">
			  <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
			  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			  </button>
			</div>
			<div class="modal-body">
			  ...
			</div>
			<div class="modal-footer">
			  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			  <button type="button" class="btn btn-primary">Save changes</button>
			</div>
		  </div>
		</div>
	  </div>
	
	<script> // Left Side category name change color
		// $(document).scroll(function(){


		// 	console.log($('.footer-line').scrollTop());

		// });

		$(document).scroll(function () {
			var curPos = $(this).scrollTop();
			var bgHight = $('.bg').height();
			var state = false;
			//  var z =(x-74) - y;

		

			if (curPos > bgHight - 174) {
				// $('.fixed-h2-category').removeClass("cat-h2-white")
				$('.fixed-h2-category').addClass("cat-h2-blue", 1000)
			} else {
				$('.fixed-h2-category').removeClass("cat-h2-blue", 1000)
			}
			// if (curPos < bgHight){

			// 	$('.fixed-h2-category').animate( {color:'rgb(0, 0, 0)'},800);
			// 	// console.log('doc='+ curPos +' BG= '+bgHight+' Minus= '+z);
			//     // $('.bottomMenu').fadeOut();
			// }

		});
	</script>

	<!-- Show on scroll poduct box -->
	<script>
		jQuery(document).ready(function () {
			jQuery('.prod-box').addClass('prod-box-hide').viewportChecker({
				classToAdd: 'prod-box-show animated  slideInUp',
				classToRemove: 'prod-box-hide',
				offset: 90,
				repeat: false,
				invertBottomOffset: true,
				callbackFunction: function (elem, action) { },
				scrollHorizontal: false
			});
		});
	</script>
<script>
	
	$(document).ready(function(){
	// 	var owl = $('.owl-carousel');
  // $(".owl-carousel").owlCarousel({
	// items:1,
	// margin:0,
	// mouseDrag:true,
	// touchDrag:true,
	// center:true,
	// loop:false,
  //   nav: false,
	// onInitialized: owlcount,
	// onTranslated: owlcount,
	// navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
	// // navElement:"slider-nav",
	// dots:true,

  // }

  // );
  // function owlcount(event){
	// var slides = event.item.index + 1 + ' / ' + event.item.count ;
	// $('.slide-count').text(slides);
  // }
 
//   
	// owl.on('drag.owl.carousel', function(e){
	// 	$('.slide-count').text('1');
	// 	console.log('OWL Init');
	// 	console.log(owl.item.count);
	// });

  $('.prod-img').magnificPopup({
  delegate: 'img', // child items selector, by clicking on it popup will open
  type: 'image',
  closeOnContentClick:true,
  
  // other options
  mainClass: 'mfp-with-zoom', // this class is for CSS animation below

  zoom: {
    enabled: true, // By default it's false, so don't forget to enable it

    duration: 300, // duration of the effect, in milliseconds
    easing: 'ease-in-out', // CSS transition easing function

    // The "opener" function should return the element from which popup will be zoomed in
    // and to which popup will be scaled down
    // By defailt it looks for an image tag:
    opener: function(openerElement) {
      // openerElement is the element on which popup was initialized, in this case its <a> tag
      // you don't need to add "opener" option if this code matches your needs, it's defailt one.
      return openerElement.is('img') ? openerElement : openerElement.find('img');
    }
  }
});
});
</script>
</body>

</html>

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