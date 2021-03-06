<div id="box-category-area">
  <div class="box">
    <div class="box-heading"><span class="category"><?php echo $m_menu_title; ?></span></div>
    <div class="box-content">
      <ul class="box-category">
        <?php foreach ($categories as $category) { ?>
        <li>
          <!-- Begin category links -->
          <?php if ($category['category_id'] == $category_id) { ?>
          <a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a>
          <?php } else { ?>
          <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
          <?php } ?>
          <!-- End category links -->

          <!-- Begin sub category links -->
          <?php if ($category['children']) { ?>
          <ul>
            <?php foreach ($category['children'] as $child) { ?>
            <li>
              <?php if ($child['category_id'] == $child_id) { ?>
              <a href="<?php echo $child['href']; ?>" class="active"><?php echo $child['name']; ?></a>
              <?php } else { ?>
              <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
              <?php } ?>
            </li>
            <?php } ?>
          </ul>
          <?php } ?>
          <!-- End sub category links -->
        </li>
        <?php } ?>
     </ul>
    </div>
  </div>
</div>