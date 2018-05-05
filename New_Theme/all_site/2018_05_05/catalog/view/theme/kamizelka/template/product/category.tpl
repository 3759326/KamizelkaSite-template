<?php echo $header; ?>

<?php echo $column_left; ?><?php echo $column_right; ?>

<!-- Begin content -->
<div id="content">
  <div class="container">
    <div class="row">

       <!-- Begin breadcrumb -->
       <div id="col-12 breadcrumb-center" class="breadcrumb">
              <?php foreach ($breadcrumbs as $breadcrumb) { ?>
         <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
         <?php } ?>
       </div>
    </div>
   <!-- End breadcrumb -->

   <div class="row content justify-content-center">
			<!-- <div class="bg"></div> -->
			<div class="col-1">
				<div class="fixed-h2-category">
					<h2><?php echo $heading_title; ?></h2>

				</div>
			</div>
      <div class="col-10">
           <div class="row justify-content-center">
             <?php foreach ($products as $product) { ?>
				  <div class="col-md-6 col-sm-6 col-11 middle category-prod-box text-center">
                		<?php if ($product['thumb']) { ?>
                		<div class="category-prod-image"><a href="<?php echo $product['href']; ?>"><img class="img-fluid category-img" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
                              
              			<?php } ?>
            			  <div class="category-box-bottom">
                			 <div class="category-prodname">
                     			<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?>   </a>     
                 			 </div>
          
              					<?php if ($product['price']) { ?>
                    		<div class="category-price">
							  <?php if (!$product['special']) { ?>
								<div class="price-tag">
							  		<?php echo $product['price']; ?>
							  	</div>
							  <?php } else { ?>
								
									<span class="category-price-old"><?php echo $product['price']; ?></span>
									<div class="price-tag">
										 <span class="category-price-new"><?php echo $product['special']; ?></span>
							 	 	</div>
          		                <div class="ribbon-sale"></div>
          	                	  <?php } ?>
                              	</div>
                        	<?php } ?>	
                       </div>
              	  </div>
              
			  <?php } ?>
			</div>
            </div>
     </div>


               
  </div>

</div>
<!-- <script> // Left Side category name change color
		// $(document).scroll(function(){


		// 	console.log($('.footer-line').scrollTop());

		// });

		$(document).scroll(function () {
			var curPos = $(this).scrollTop();
			var bgHight = $('.bg').height();
			var state = false;
			//  var z =(x-74) - y;

			console.log('doc=' + curPos + ' BG= ' + bgHight);


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
	</script> -->

	<!-- Show on scroll poduct box -->
	<script>
		jQuery(document).ready(function () {
			jQuery('.category-prod-box').addClass('category-prod-box-hide').viewportChecker({
				classToAdd: 'category-prod-box-show animated  slideInUp',
				classToRemove: 'category-prod-box-hide',
				offset: 90,
				repeat: false,
				invertBottomOffset: true,
				callbackFunction: function (elem, action) { },
				scrollHorizontal: false
			});
		});
	</script>