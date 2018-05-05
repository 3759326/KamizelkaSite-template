<div class="container">
    <div class="box-heading"><h2 class="featured-heading"><?php echo $heading_title; ?></h2></div>
  <div class="row justify-content-center">
    
    <?php foreach ($products as $product) { ?>
      
    <!-- Begin box-product div -->
    
      
      <!-- Begin boxgrid -->
      <div class="col-md-4 col-xl-4 col-lg-4 col-8 featured-boxgrid">
        <?php if ($product['thumb']) { ?>
        <div class="featured-image"><a href="<?php echo $product['href']; ?>"><img class="img-fluid" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
           
            
      <!-- Begin boxgrid-bottom -->
      <div class="featured-boxgrid-bottom">
         	<div class="featured-prodname"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
      	<?php if ($product['price']) { ?>
        	<div class="featured-price">
          		<?php if (!$product['special']) { ?>
          		<?php echo $product['price']; ?>
          		<?php } else { ?>
          		<span class="featured-price-old"><?php echo $product['price']; ?></span> <span class="featured-price-new"><?php echo $product['special']; ?></span>
          		<div class="ribbon-sale"></div>
          		<?php } ?>
        	</div>
      	<?php } ?>	
      </div>
      <!-- End boxgrid-bottom -->
      
      </div>
    <!-- End box-product div -->
      
    <?php } ?>
  
  </div>
</div>