<?php if (count($languages) > 1) { ?>
<?php foreach ($languages as $language) {
if ($language['code'] != $language_code) {
?>
<span style="color: #C42726;" >
<a href="<?php echo $language['url']; ?>"><?php } ?><?php echo $language['code']; ?><?php if ($language['code'] != $language_code) { ?></a></span>
<?php } } ?>
<?php } ?>
<script>
$(document).ready(function() {
	var lprefix = '<?php  echo $language_prefix; ?>';

	$('form').each(function(index) {
		var laction = $(this).attr('action');
		if (typeof laction!='undefined') {
		 if (typeof laction.value!='undefined') {
			var llast = laction.value.length - 1;
			if (llast != '/') {
				laction = laction + '/';
			}
			var li = laction.indexOf( lprefix);
			if (li < 0) {
				$(this).attr('action', laction + lprefix);
			}
		 }
		}
	});
});
</script>