<div class="box">
  <div class="box-heading"><span class="bestsellers"><?php echo $heading_title; ?></span></div>
  <div class="box-content">
    <div class="box-product">
    <?php foreach ($products as $product) { ?>
    
    <!-- Begin box-product div -->
    <div>
      
      <!-- Begin boxgrid -->
      
	  <?php echo "<div class=\"boxgrid\"  id=\""?><?php echo $product['product_id']; ?><?php echo "\" onmouseover=mouse_in(" ?><?php echo $product['product_id']; ?><?php echo ") onmouseout=mouse_out(" ?><?php echo $product['product_id']; ?><?php echo ");>"?>
        <?php if ($product['thumb']) { ?>
        <div class="image">
		
		<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <!-- Begin box-product-info -->
        
      	<!-- End box-product-info -->
      </div>
      <!-- End boxgrid -->
      
      <!-- Begin boxgrid-bottom -->
      
	<div class="boxgrid-bottom"id="bgb<?php echo $product['product_id']; ?>">
        <div class="arrow-box" ></div>
      	<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
      	<?php if ($product['price']) { ?>
        	<?php echo "<div class=\"price\" id=\"bottom"?><?php echo $product['product_id']; ?><?php echo "\">" ?>
          		<?php if (!$product['special']) { ?>
          		<?php echo $product['price']; ?>
          		<?php } else { ?>
          		<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          		<div class="ribbon-sale"></div>
          		<?php } ?>
				
				
        	</div>
      	<?php } ?>

<script type="text/javascript"><!--

 var quant = "<?php echo $product['quantity']; ?>";
 var prod_id = "#bottom<?php echo $product['product_id']; ?>";
	if (quant <= 0) {
		$(prod_id).css({"color":"#D1D0D0","text-decoration":"line-through"}); 
 } else {
 <!-- $('.price').css("color":"#C42726","text-decoration":"none"}); -->
 <!-- console.log("<?php echo $product['product_id']; ?>"); -->
<!-- console.log (quant);-->
 
 }

 
 </script>		
      </div>
      <!-- End boxgrid-bottom -->
      
    </div>
    <!-- Begin box-product div -->
      
    <?php } ?>
	
	
    </div>
  </div>
</div>

<script type="text/javascript">
function mouse_in(boxgrid_id){
<!-- var boxgrid_id = "#qqq<?php echo $product['product_id']; ?>"; -->
	var bottom_obj="#bottom"+boxgrid_id;
	var bottomline_obj="#bgb"+boxgrid_id;
	
	
	<!-- console.log(bottom_obj); -->
   $(bottomline_obj).css('border-color','#C42726');
	  /* $(arrow_obj).css('border-bottom','6px solid #C42726');  */
	}<!-- function(){	$('.boxgrid-bottom').css('border-color','#e6e6e6');	} -->
	
	function mouse_out(boxgrid_id){
<!-- var boxgrid_id = "#qqq<?php echo $product['product_id']; ?>"; -->
	var bottom_obj="#bottom"+boxgrid_id;
	var bottomline_obj="#bgb"+boxgrid_id;
	
	
	<!-- console.log("out_"+bottom_obj); -->
	$(bottomline_obj).css('border-color','');
	<!--  $('.arrow-box').css('border-bottom','6px solid #e6e6e6');   -->
	}<!-- function(){	$('.boxgrid-bottom').css('border-color','#e6e6e6');	} -->
	
	
</script> 