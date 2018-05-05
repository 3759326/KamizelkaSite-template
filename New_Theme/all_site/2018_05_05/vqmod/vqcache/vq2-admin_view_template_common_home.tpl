<?php echo $header; ?>
<style type="text/css">.dashboard-content tr:hover td {color:red}</style>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_install) { ?>
  <div class="warning"><?php echo $error_install; ?></div>
  <?php } ?>
  <?php if ($error_image) { ?>
  <div class="warning"><?php echo $error_image; ?></div>
  <?php } ?>
  <?php if ($error_image_cache) { ?>
  <div class="warning"><?php echo $error_image_cache; ?></div>
  <?php } ?>
  <?php if ($error_cache) { ?>
  <div class="warning"><?php echo $error_cache; ?></div>
  <?php } ?>
  <?php if ($error_download) { ?>
  <div class="warning"><?php echo $error_download; ?></div>
  <?php } ?>
  <?php if ($error_logs) { ?>
  <div class="warning"><?php echo $error_logs; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/home.png" alt="" /> <?php echo $heading_title; ?></h1>
    </div>
    <div class="content">

	<!START OF ICONS -->
		<div class="leftside">
			<div class="homebox">
			<ul id="icons">
				<li>
					<a href="<?php echo $product; ?>">
						<img src="view/image/icons/product.png">
						<h6><?php echo $text_product; ?></h6>
					</a>
				</li>
				<li>
					<a href="<?php echo $category; ?>">
						<img src="view/image/icons/category.png">
						<h6><?php echo $text_category; ?></h6>
					</a>
				</li>
				<li>
					<a href="<?php echo $manufacturer; ?>">
						<img src="view/image/icons/manufacturer.png">
						<h6><?php echo $text_manufacturer; ?></h6>
					</a>
				</li>
				<li>
					<a href="<?php echo $banner; ?>">
						<img src="view/image/icons/banner.png">
						<h6><?php echo $text_banner; ?></h6>
					</a>
				</li>
				<li>
					<a href="<?php echo $attributes; ?>">
						<img src="view/image/icons/attributes.png">
						<h6><?php echo $text_attributes; ?></h6>
					</a>
				</li>
				<li>
					<a href="<?php echo $featured; ?>">
						<img src="view/image/icons/featured.png">
						<h6><?php echo $text_featured; ?></h6>
					</a>
				</li>
				<li>
					<a href="<?php echo $options2; ?>">
						<img src="view/image/icons/options.png">
						<h6><?php echo $text_options; ?></h6>
					</a>
				</li>
				<li>
					<a href="<?php echo $vouchers; ?>">
						<img src="view/image/icons/voucher.png">
						<h6><?php echo $text_vouchers; ?></h6>
					</a>
				</li>
				<li>
					<a href="<?php echo $module; ?>">
						<img src="view/image/icons/module.png">
						<h6><?php echo $text_module; ?></h6>
					</a>
				</li>
				<li>
					<a href="<?php echo $shipping; ?>">
						<img src="view/image/icons/shipping.png">
						<h6><?php echo $text_shipping; ?></h6>
					</a>
				</li>
				<li>
					<a href="<?php echo $payment; ?>">
						<img src="view/image/icons/payment.png">
						<h6><?php echo $text_payment; ?></h6>
					</a>
				</li>
				<li>
					<a href="<?php echo $information; ?>">
						<img src="view/image/icons/info.png">
						<h6><?php echo $text_information; ?></h6>
					</a>
				</li>
				<li>
					<a href="<?php echo $order; ?>">
						<img src="view/image/icons/order.png">
						<h6><?php echo $text_order; ?></h6>
					</a>
				</li>
				<li>
					<a href="<?php echo $customer; ?>">
						<img src="view/image/icons/clients.png">
						<h6><?php echo $text_customer; ?></h6>
					</a>
				</li>
				<li>
					<a href="<?php echo $coupon; ?>">
						<img src="view/image/icons/coupon.png">
						<h6><?php echo $text_coupon; ?></h6>
					</a>
				</li>
				<li>
					<a href="<?php echo $review; ?>">
						<img src="view/image/icons/comment.png">
						<h6><?php echo $text_review; ?></h6>
					</a>
				</li>
				<li>
					<a href="<?php echo $settings; ?>">
						<img src="view/image/icons/settings.png">
						<h6><?php echo $text_settings; ?></h6>
					</a>
				</li>
				<li>
					<a href="<?php echo $mailshots; ?>">
						<img src="view/image/icons/mailshots.png">
						<h6><?php echo $text_mailshots; ?></h6>
					</a>
				</li>
				<li>
					<a href="<?php echo $backup; ?>">
						<img src="view/image/icons/backup.png">
						<h6><?php echo $text_backup; ?></h6>
					</a>
				</li>
				<li>
					<a target="_blank" href="<?php echo $help; ?>">
						<img src="view/image/icons/help.png">
						<h6><?php echo $text_help; ?></h6>
					</a>
				</li>
			</ul>
			</div>
			
		</div>
	
		<div class="rightside">
		
		<!-- END OF ICONS -->

        
      <div class="overview">
        <div class="dashboard-heading"><?php echo $text_overview; ?></div>
        <div class="dashboard-content">
          <table>
            <tr>
              <td><?php echo $text_total_sale; ?></td>
              <td><?php echo $total_sale; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_total_sale_year; ?></td>
              <td><?php echo $total_sale_year; ?></td>
            </tr>

			<tr>
              <td><?php echo $text_total_sale_month; ?></td>
              <td><?php echo $total_sale_month; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_total_order; ?></td>
              
				<td><?php echo $total_order; ?></td>
				</tr>

			<tr>
              <td><?php echo $text_total_order_year; ?></td>
              <td><?php echo $total_order_year; ?></td>
            </tr>
			<tr>
              <td><?php echo $text_total_order_month; ?></td>
              <td><?php echo $total_order_month; ?></td>
            </tr>
			<tr>
              <td><?php echo $text_total_order_day; ?></td>
              <td><?php echo $total_order_day; ?></td>
            </tr>
				<?php
				foreach ($total_order_by_group as $order_group) {
					echo '
						<tr>
							<td>&nbsp;- '.$order_group['name'].'</td>
							<td>'.$order_group['total'].'</td>
						</tr>
					';
				}
				?>
    		

            <tr>
              <td><?php echo $text_total_customer; ?></td>
              <td><?php echo $total_customer; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_total_customer_approval; ?></td>
              <td><?php echo $total_customer_approval; ?></td>
            </tr>
<tr>
              <td><?php echo $text_total_customer_ban_ip; ?></td>
              <td><?php echo $total_customer_ban_ip; ?></td>
            </tr>
			<tr>
              <td><?php echo $text_total_review; ?></td>
              <td><?php echo $total_review; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_total_review_approval; ?></td>
              <td><?php echo $total_review_approval; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_total_affiliate; ?></td>
              <td><?php echo $total_affiliate; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_total_affiliate_approval; ?></td>
              <td><?php echo $total_affiliate_approval; ?></td>
            </tr>

		    <tr>
              <td><?php echo $text_total_return; ?></td>
              <td><?php echo $total_return; ?></td>
            </tr>
			<tr>
              <td><?php echo $text_total_product; ?></td>
              <td><?php echo $total_product; ?></td>
            </tr>
			
          </table>
        </div>
      </div>
      
        













      <div class="latest">
        <div class="dashboard-heading"><?php echo $text_latest_10_orders; ?></div>
        <div class="dashboard-content">
          <table class="list">
            <thead>
              <tr>
                <td class="right"><?php echo $column_order; ?></td>
                <td class="left"><?php echo $column_customer; ?></td>
                <td class="left"><?php echo $column_status; ?></td>
                <td class="left"><?php echo $column_date_added; ?></td>
                <td class="right"><?php echo $column_total; ?></td>
                <td class="right"><?php echo $column_action; ?></td>
              </tr>
            </thead>
            <tbody>
              <?php if ($orders) { ?>
              <?php foreach ($orders as $order) { ?>
              <tr>
                <td class="right"><?php echo $order['order_id']; ?></td>
                <td class="left"><?php echo $order['customer']; ?></td>
                <td class="left"><?php echo $order['status']; ?></td>
                <td class="left"><?php echo $order['date_added_time']; ?></td>
                <td class="right"><?php echo $order['total']; ?></td>
                <td class="right"><?php foreach ($order['action'] as $action) { ?>
                  [ <a href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a> ]
                  <?php } ?></td>
              </tr>
              <?php } ?>
              <?php } else { ?>
              <tr>
                <td class="center" colspan="6"><?php echo $text_no_results; ?></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </div>

			<div class="latest">
				<div class="dashboard-heading">
					<div style="width: 100%; display: inline-block;">
						<div style="float: left; font-size: 14px; font-weight: bold; padding: 5px 0px 0px 5px; line-height: 12px;"><?php echo $text_statistics; ?></div>
						<div style="float: right; font-size: 12px;"><?php echo $entry_range; ?>
							<select id="range" onchange="getSalesChart(this.value)" style="margin: 2px 3px 0 0;">
								<option value="day"><?php echo $text_day; ?></option>
								<option value="week"><?php echo $text_week; ?></option>
								<option value="month"><?php echo $text_month; ?></option>
								<option value="year"><?php echo $text_year; ?></option>
							</select>
						</div>
					</div>
				</div>
				<div class="inside">
					<div id="report" style="width: 400px; height: 180px; margin: auto;"></div>
				</div>
			</div>
			
        
    </div>
  </div>
</div>
<!--[if IE]>
<script type="text/javascript" src="view/javascript/jquery/flot/excanvas.js"></script>
<![endif]--> 
<script type="text/javascript" src="view/javascript/jquery/flot/jquery.flot.js"></script> 
<script type="text/javascript"><!--
function getSalesChart(range) {
	$.ajax({
		type: 'get',
		url: 'index.php?route=common/home/chart&token=<?php echo $token; ?>&range=' + range,
		dataType: 'json',
		async: false,
		success: function(json) {
			var option = {	
				shadowSize: 0,
				lines: { 
					show: true,
					fill: true,
					lineWidth: 1
				},
				grid: {
					backgroundColor: '#FFFFFF'
				},	
				xaxis: {
            		ticks: json.xaxis
				}
			}

			$.plot($('#report'), [json.order, json.customer], option);
		}
	});
}

getSalesChart($('#range').val());
//--></script> 
<?php echo $footer; ?>