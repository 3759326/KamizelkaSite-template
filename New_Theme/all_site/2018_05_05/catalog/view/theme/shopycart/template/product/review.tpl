<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
<div class="review-list">
  <div class="author"><b><?php echo $review['author']; ?></b> - <?php echo $review['date_added']; ?></div>
  <div class="rating"><img src="catalog/view/theme/shopycart/image/stars-<?php echo $review['rating'] . '.png'; ?>" alt="<?php echo $review['reviews']; ?>" /></div>
  <div class="text"><?php echo $review['text']; ?></div>
</div>
<?php } ?>

<?php } else { ?>
<div class="content"><?php echo $text_no_reviews; ?></div>
<?php } ?>