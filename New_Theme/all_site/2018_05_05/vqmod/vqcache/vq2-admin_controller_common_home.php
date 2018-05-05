<?php   
class ControllerCommonHome extends Controller {   
	public function index() {
		$this->language->load('common/home');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_overview'] = $this->language->get('text_overview');
		$this->data['text_statistics'] = $this->language->get('text_statistics');
		$this->data['text_latest_10_orders'] = $this->language->get('text_latest_10_orders');
		$this->data['text_total_sale'] = $this->language->get('text_total_sale');
// Sales
			$this->data['text_total_sale_month'] = $this->language->get('text_total_sale_month');
			// Orders
			$this->data['text_total_order_day'] = $this->language->get('text_total_order_day');
			$this->data['text_total_order_month'] = $this->language->get('text_total_order_month');
			$this->data['text_total_order_year'] = $this->language->get('text_total_order_year');
			// Returns
			$this->data['text_total_return'] = $this->language->get('text_total_return');
			$this->data['text_total_product'] = $this->language->get('text_total_product');
			// Reviews
			$this->data['text_total_review'] = $this->language->get('text_total_review');
			// Banned IP
			$this->data['text_total_customer_ban_ip'] = $this->language->get('text_total_customer_ban_ip');
		$this->data['text_total_sale_year'] = $this->language->get('text_total_sale_year');
		$this->data['text_total_order'] = $this->language->get('text_total_order');
		$this->data['text_total_customer'] = $this->language->get('text_total_customer');
		$this->data['text_total_customer_approval'] = $this->language->get('text_total_customer_approval');
		$this->data['text_total_review_approval'] = $this->language->get('text_total_review_approval');
		$this->data['text_total_affiliate'] = $this->language->get('text_total_affiliate');
		$this->data['text_total_affiliate_approval'] = $this->language->get('text_total_affiliate_approval');
		$this->data['text_day'] = $this->language->get('text_day');
		$this->data['text_week'] = $this->language->get('text_week');
		$this->data['text_month'] = $this->language->get('text_month');
		$this->data['text_year'] = $this->language->get('text_year');
		$this->data['text_no_results'] = $this->language->get('text_no_results');

		$this->data['column_order'] = $this->language->get('column_order');
		$this->data['column_customer'] = $this->language->get('column_customer');
		$this->data['column_status'] = $this->language->get('column_status');
		$this->data['column_date_added'] = $this->language->get('column_date_added');
		$this->data['column_total'] = $this->language->get('column_total');
		$this->data['column_firstname'] = $this->language->get('column_firstname');
		$this->data['column_lastname'] = $this->language->get('column_lastname');
		$this->data['column_action'] = $this->language->get('column_action');

		$this->data['text_product'] = $this->language->get('text_product');
		$this->data['text_category'] = $this->language->get('text_category');
		$this->data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$this->data['text_banner'] = $this->language->get('text_banner');
		$this->data['text_seo'] = $this->language->get('text_seo');
		$this->data['text_module'] = $this->language->get('text_module');
		$this->data['text_shipping'] = $this->language->get('text_shipping');
		$this->data['text_payment'] = $this->language->get('text_payment');
		$this->data['text_information'] = $this->language->get('text_information');
		$this->data['text_order'] = $this->language->get('text_order');
		$this->data['text_customer'] = $this->language->get('text_customer');
		$this->data['text_coupon'] = $this->language->get('text_coupon');
		$this->data['text_review'] = $this->language->get('text_review');
		$this->data['text_settings'] = $this->language->get('text_settings');
		$this->data['text_mailshots'] = $this->language->get('text_mailshots');
		$this->data['text_backup'] = $this->language->get('text_backup');
		$this->data['text_help'] = $this->language->get('text_help');
		$this->data['text_special'] = $this->language->get('text_special');
		$this->data['text_featured'] = $this->language->get('text_featured');
		$this->data['text_options'] = $this->language->get('text_options');
		$this->data['text_vouchers'] = $this->language->get('text_vouchers');
		$this->data['text_attributes'] = $this->language->get('text_attributes');

			$this->data['backup'] = HTTPS_SERVER . 'index.php?route=tool/backup&token=' . $this->session->data['token'];
			$this->data['category'] = HTTPS_SERVER . 'index.php?route=catalog/category&token=' . $this->session->data['token'];
			$this->data['country'] = HTTPS_SERVER . 'index.php?route=localisation/country&token=' . $this->session->data['token'];
			$this->data['currency'] = HTTPS_SERVER . 'index.php?route=localisation/currency&token=' . $this->session->data['token'];
			$this->data['coupon'] = HTTPS_SERVER . 'index.php?route=sale/coupon&token=' . $this->session->data['token'];
			$this->data['customer'] = HTTPS_SERVER . 'index.php?route=sale/customer&token=' . $this->session->data['token'];
			$this->data['customer_group'] = HTTPS_SERVER . 'index.php?route=sale/customer_group&token=' . $this->session->data['token'];
			$this->data['download'] = HTTPS_SERVER . 'index.php?route=catalog/download&token=' . $this->session->data['token'];
			$this->data['error_log'] = HTTPS_SERVER . 'index.php?route=tool/error_log&token=' . $this->session->data['token'];
			$this->data['feed'] = HTTPS_SERVER . 'index.php?route=extension/feed&token=' . $this->session->data['token'];
			
			$this->data['geo_zone'] = HTTPS_SERVER . 'index.php?route=localisation/geo_zone&token=' . $this->session->data['token'];
			$this->data['information'] = HTTPS_SERVER . 'index.php?route=catalog/information&token=' . $this->session->data['token'];
			$this->data['language'] = HTTPS_SERVER . 'index.php?route=localisation/language&token=' . $this->session->data['token'];
			$this->data['logout'] = HTTPS_SERVER . 'index.php?route=common/logout&token=' . $this->session->data['token'];
			$this->data['contact'] = HTTPS_SERVER . 'index.php?route=sale/contact&token=' . $this->session->data['token'];
			$this->data['manufacturer'] = HTTPS_SERVER . 'index.php?route=catalog/manufacturer&token=' . $this->session->data['token'];
			$this->data['mailshots'] = HTTPS_SERVER . 'index.php?route=sale/contact&token=' . $this->session->data['token'];
			$this->data['banner'] = HTTPS_SERVER . 'index.php?route=design/banner&token=' . $this->session->data['token'];
			$this->data['module'] = HTTPS_SERVER . 'index.php?route=extension/module&token=' . $this->session->data['token'];
			$this->data['order'] = HTTPS_SERVER . 'index.php?route=sale/order&token=' . $this->session->data['token'];
			$this->data['order_status'] = HTTPS_SERVER . 'index.php?route=localisation/order_status&token=' . $this->session->data['token'];
			$this->data['payment'] = HTTPS_SERVER . 'index.php?route=extension/payment&token=' . $this->session->data['token'];
			$this->data['product'] = HTTPS_SERVER . 'index.php?route=catalog/product&token=' . $this->session->data['token'];
			$this->data['report_purchased'] = HTTPS_SERVER . 'index.php?route=report/purchased&token=' . $this->session->data['token'];
			$this->data['report_sale'] = HTTPS_SERVER . 'index.php?route=report/sale&token=' . $this->session->data['token'];
			$this->data['report_viewed'] = HTTPS_SERVER . 'index.php?route=report/viewed&token=' . $this->session->data['token'];
			$this->data['review'] = HTTPS_SERVER . 'index.php?route=catalog/review&token=' . $this->session->data['token'];
			$this->data['seo'] = HTTPS_SERVER . 'index.php?route=module/deadcow_seo&token=' . $this->session->data['token'];
			$this->data['shipping'] = HTTPS_SERVER . 'index.php?route=extension/shipping&token=' . $this->session->data['token'];
			$this->data['setting'] = HTTPS_SERVER . 'index.php?route=setting/setting&token=' . $this->session->data['token'];
			$this->data['settings'] = HTTPS_SERVER . 'index.php?route=setting/setting&token=' . $this->session->data['token'];
			$this->data['store'] = HTTP_CATALOG;
			$this->data['stock_status'] = HTTPS_SERVER . 'index.php?route=localisation/stock_status&token=' . $this->session->data['token'];
			$this->data['tax_class'] = HTTPS_SERVER . 'index.php?route=localisation/tax_class&token=' . $this->session->data['token'];
			$this->data['total'] = HTTPS_SERVER . 'index.php?route=extension/total&token=' . $this->session->data['token'];
			$this->data['user'] = HTTPS_SERVER . 'index.php?route=user/user&token=' . $this->session->data['token'];
			$this->data['user_group'] = HTTPS_SERVER . 'index.php?route=user/user_permission&token=' . $this->session->data['token'];
			$this->data['weight_class'] = HTTPS_SERVER . 'index.php?route=localisation/weight_class&token=' . $this->session->data['token'];
			$this->data['length_class'] = HTTPS_SERVER . 'index.php?route=localisation/length_class&token=' . $this->session->data['token'];
			$this->data['zone'] = HTTPS_SERVER . 'index.php?route=localisation/zone&token=' . $this->session->data['token'];
			$this->data['featured'] = HTTPS_SERVER . 'index.php?route=module/featured&token=' . $this->session->data['token'];
			$this->data['special2'] = HTTPS_SERVER . 'index.php?route=module/special&token=' . $this->session->data['token'];
			$this->data['options2'] = HTTPS_SERVER . 'index.php?route=catalog/option&token=' . $this->session->data['token'];
			$this->data['vouchers'] = HTTPS_SERVER . 'index.php?route=sale/voucher_theme&token=' . $this->session->data['token'];
			$this->data['attributes'] = HTTPS_SERVER . 'index.php?route=catalog/attribute&token=' . $this->session->data['token'];
			$this->data['help'] = 'http://www.opencart.com';

        

		$this->data['entry_range'] = $this->language->get('entry_range');

		// Check install directory exists
		if (is_dir(dirname(DIR_APPLICATION) . '/install')) {
			$this->data['error_install'] = $this->language->get('error_install');
		} else {
			$this->data['error_install'] = '';
		}

		// Check image directory is writable
		$file = DIR_IMAGE . 'test';

		$handle = fopen($file, 'a+'); 

		fwrite($handle, '');

		fclose($handle); 		

		if (!file_exists($file)) {
			$this->data['error_image'] = sprintf($this->language->get('error_image'), DIR_IMAGE);
		} else {
			$this->data['error_image'] = '';

			unlink($file);
		}

		// Check image cache directory is writable
		$file = DIR_IMAGE . 'cache/test';

		$handle = fopen($file, 'a+'); 

		fwrite($handle, '');

		fclose($handle); 		

		if (!file_exists($file)) {
			$this->data['error_image_cache'] = sprintf($this->language->get('error_image_cache'), DIR_IMAGE . 'cache/');
		} else {
			$this->data['error_image_cache'] = '';

			unlink($file);
		}

		// Check cache directory is writable
		$file = DIR_CACHE . 'test';

		$handle = fopen($file, 'a+'); 

		fwrite($handle, '');

		fclose($handle); 		

		if (!file_exists($file)) {
			$this->data['error_cache'] = sprintf($this->language->get('error_image_cache'), DIR_CACHE);
		} else {
			$this->data['error_cache'] = '';

			unlink($file);
		}

		// Check download directory is writable
		$file = DIR_DOWNLOAD . 'test';

		$handle = fopen($file, 'a+'); 

		fwrite($handle, '');

		fclose($handle); 		

		if (!file_exists($file)) {
			$this->data['error_download'] = sprintf($this->language->get('error_download'), DIR_DOWNLOAD);
		} else {
			$this->data['error_download'] = '';

			unlink($file);
		}

		// Check logs directory is writable
		$file = DIR_LOGS . 'test';

		$handle = fopen($file, 'a+'); 

		fwrite($handle, '');

		fclose($handle); 		

		if (!file_exists($file)) {
			$this->data['error_logs'] = sprintf($this->language->get('error_logs'), DIR_LOGS);
		} else {
			$this->data['error_logs'] = '';

			unlink($file);
		}

		$this->data['breadcrumbs'] = array();

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => false
		);

		$this->data['token'] = $this->session->data['token'];

		$this->load->model('sale/order');

		$this->data['total_sale'] = $this->currency->format($this->model_sale_order->getTotalSales(), $this->config->get('config_currency'));
// Sales
			$this->data['total_sale_month'] = $this->currency->format($this->model_sale_order->getTotalSalesByMonth(date('m')), $this->config->get('config_currency'));
			// Orders
			$this->data['total_order_day'] = $this->model_sale_order->getTotalOrderByDay();
			$this->data['total_order_month'] = $this->model_sale_order->getTotalOrderByMonth();
			$this->data['total_order_year'] = $this->model_sale_order->getTotalOrderByYear();
		$this->data['total_sale_year'] = $this->currency->format($this->model_sale_order->getTotalSalesByYear(date('Y')), $this->config->get('config_currency'));
		$this->data['total_order'] = $this->model_sale_order->getTotalOrders();

				$this->data['total_order_by_group'] = $this->model_sale_order->getTotalOrdersGroupByStatus();
    		

$this->load->model('sale/return');
		$this->data['total_return'] = $this->model_sale_return->getTotalReturns();
		
		$this->load->model('catalog/product');
		$this->data['total_product'] = $this->model_catalog_product->getTotalProducts();
		
		$this->load->model('catalog/review');
		$this->data['total_review'] = $this->model_catalog_review->getTotalReviews();
		
		$this->load->model('sale/customer_ban_ip');
		$this->data['total_customer_ban_ip'] = $this->model_sale_customer_ban_ip->getTotalCustomerBanIps();
		$this->load->model('sale/customer');

		$this->data['total_customer'] = $this->model_sale_customer->getTotalCustomers();
		$this->data['total_customer_approval'] = $this->model_sale_customer->getTotalCustomersAwaitingApproval();

		$this->load->model('catalog/review');

		$this->data['total_review'] = $this->model_catalog_review->getTotalReviews();
		$this->data['total_review_approval'] = $this->model_catalog_review->getTotalReviewsAwaitingApproval();

		$this->load->model('sale/affiliate');

		$this->data['total_affiliate'] = $this->model_sale_affiliate->getTotalAffiliates();
		$this->data['total_affiliate_approval'] = $this->model_sale_affiliate->getTotalAffiliatesAwaitingApproval();

		$this->data['orders'] = array(); 

		$data = array(
			'sort'  => 'o.date_added',
			'order' => 'DESC',
			'start' => 0,
			'limit' => 10
		);

		$results = $this->model_sale_order->getOrders($data);

		foreach ($results as $result) {
			$action = array();

			$action[] = array(
				'text' => $this->language->get('text_view'),
				'href' => $this->url->link('sale/order/info', 'token=' . $this->session->data['token'] . '&order_id=' . $result['order_id'], 'SSL')
			);

			$this->data['orders'][] = array(
				'order_id'   => $result['order_id'],
				'customer'   => $result['customer'],
				'status'     => $result['status'],
				'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
'date_added_time' => date($this->language->get('date_format_short_time'), strtotime($result['date_added'])),
				'total'      => $this->currency->format($result['total'], $result['currency_code'], $result['currency_value']),
				'action'     => $action
			);
		}

		if ($this->config->get('config_currency_auto')) {
			$this->load->model('localisation/currency');

			$this->model_localisation_currency->updateCurrencies();
		}

		$this->template = 'common/home.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}

	public function chart() {
		$this->language->load('common/home');

		$data = array();

		$data['order'] = array();
		$data['customer'] = array();
		$data['xaxis'] = array();

		$data['order']['label'] = $this->language->get('text_order');
		$data['customer']['label'] = $this->language->get('text_customer');

		if (isset($this->request->get['range'])) {
			$range = $this->request->get['range'];
		} else {
			$range = 'month';
		}

		switch ($range) {
			case 'day':
				for ($i = 0; $i < 24; $i++) {
					$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id > '" . (int)$this->config->get('config_complete_status_id') . "' AND (DATE(date_added) = DATE(NOW()) AND HOUR(date_added) = '" . (int)$i . "') GROUP BY HOUR(date_added) ORDER BY date_added ASC");

					if ($query->num_rows) {
						$data['order']['data'][]  = array($i, (int)$query->row['total']);
					} else {
						$data['order']['data'][]  = array($i, 0);
					}

					$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "customer WHERE DATE(date_added) = DATE(NOW()) AND HOUR(date_added) = '" . (int)$i . "' GROUP BY HOUR(date_added) ORDER BY date_added ASC");

					if ($query->num_rows) {
						$data['customer']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['customer']['data'][] = array($i, 0);
					}

					$data['xaxis'][] = array($i, date('H', mktime($i, 0, 0, date('n'), date('j'), date('Y'))));
				}					
				break;
			case 'week':
				$date_start = strtotime('-' . date('w') . ' days'); 

				for ($i = 0; $i < 7; $i++) {
					$date = date('Y-m-d', $date_start + ($i * 86400));

					$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id > '" . (int)$this->config->get('config_complete_status_id') . "' AND DATE(date_added) = '" . $this->db->escape($date) . "' GROUP BY DATE(date_added)");

					if ($query->num_rows) {
						$data['order']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['order']['data'][] = array($i, 0);
					}

					$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "customer` WHERE DATE(date_added) = '" . $this->db->escape($date) . "' GROUP BY DATE(date_added)");

					if ($query->num_rows) {
						$data['customer']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['customer']['data'][] = array($i, 0);
					}

					$data['xaxis'][] = array($i, date('D', strtotime($date)));
				}

				break;
			default:
			case 'month':
				for ($i = 1; $i <= date('t'); $i++) {
					$date = date('Y') . '-' . date('m') . '-' . $i;

					$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id > '" . (int)$this->config->get('config_complete_status_id') . "' AND (DATE(date_added) = '" . $this->db->escape($date) . "') GROUP BY DAY(date_added)");

					if ($query->num_rows) {
						$data['order']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['order']['data'][] = array($i, 0);
					}	

					$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "customer WHERE DATE(date_added) = '" . $this->db->escape($date) . "' GROUP BY DAY(date_added)");

					if ($query->num_rows) {
						$data['customer']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['customer']['data'][] = array($i, 0);
					}	

					$data['xaxis'][] = array($i, date('j', strtotime($date)));
				}
				break;
			case 'year':
				for ($i = 1; $i <= 12; $i++) {
					$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id > '" . (int)$this->config->get('config_complete_status_id') . "' AND YEAR(date_added) = '" . date('Y') . "' AND MONTH(date_added) = '" . $i . "' GROUP BY MONTH(date_added)");

					if ($query->num_rows) {
						$data['order']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['order']['data'][] = array($i, 0);
					}

					$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "customer WHERE YEAR(date_added) = '" . date('Y') . "' AND MONTH(date_added) = '" . $i . "' GROUP BY MONTH(date_added)");

					if ($query->num_rows) { 
						$data['customer']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['customer']['data'][] = array($i, 0);
					}

					$data['xaxis'][] = array($i, date('M', mktime(0, 0, 0, $i, 1, date('Y'))));
				}			
				break;	
		} 

		$this->response->setOutput(json_encode($data));
	}

	public function login() {
		$route = '';

		if (isset($this->request->get['route'])) {
			$part = explode('/', $this->request->get['route']);

			if (isset($part[0])) {
				$route .= $part[0];
			}

			if (isset($part[1])) {
				$route .= '/' . $part[1];
			}
		}

		$ignore = array(
			'common/login',
			'common/forgotten',
			'common/reset'
		);	

		if (!$this->user->isLogged() && !in_array($route, $ignore)) {
			return $this->forward('common/login');
		}

		if (isset($this->request->get['route'])) {
			$ignore = array(
				'common/login',
				'common/logout',
				'common/forgotten',
				'common/reset',
				'error/not_found',
				'error/permission'
			);

			$config_ignore = array();

			if ($this->config->get('config_token_ignore')) {
				$config_ignore = unserialize($this->config->get('config_token_ignore'));
			}

			$ignore = array_merge($ignore, $config_ignore);

			if (!in_array($route, $ignore) && (!isset($this->request->get['token']) || !isset($this->session->data['token']) || ($this->request->get['token'] != $this->session->data['token']))) {
				return $this->forward('common/login');
			}
		} else {
			if (!isset($this->request->get['token']) || !isset($this->session->data['token']) || ($this->request->get['token'] != $this->session->data['token'])) {
				return $this->forward('common/login');
			}
		}
	}

	public function permission() {
		if (isset($this->request->get['route'])) {
			$route = '';

			$part = explode('/', $this->request->get['route']);

			if (isset($part[0])) {
				$route .= $part[0];
			}

			if (isset($part[1])) {
				$route .= '/' . $part[1];
			}

			$ignore = array(
				'common/home',
				'common/login',
				'common/logout',
				'common/forgotten',
				'common/reset',
				'error/not_found',
				'error/permission'		
			);			

			if (!in_array($route, $ignore) && !$this->user->hasPermission('access', $route)) {
				return $this->forward('error/permission');
			}
		}
	}	
}
?>