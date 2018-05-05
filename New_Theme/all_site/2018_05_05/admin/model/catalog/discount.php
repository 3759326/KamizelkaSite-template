<?php
class ModelCatalogDiscount extends Model {


	public function getPrimaryCurrency(){
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "currency WHERE value = '1'");
		return $query->row;
	}
	
	
	
	
	public function editSetting( $data, $store_id = 0) {
            $customer_group=$this->db->query("SELECT customer_group_id FROM " . DB_PREFIX . "customer_group")->row;
            
            $this->db->query("DELETE FROM " . DB_PREFIX . "multi_discounts ");
              $this->db->query("DELETE FROM " . DB_PREFIX . "product_special WHERE multi_discount_id!=0");
            if(isset($data['total']) && !empty($data['total']) && isset($data['total']['enabled'])){
                if(!isset($data['total']['discount_value']) || empty($data['total']['discount_value'])){
                    $data['total']['discount_value']=0;
                }
                
                       if(isset($data['total']['fulltime']) && $data['total']['fulltime']==1){
                            $fulltime=1;
                            $data['total']['discount_start']=0;
                            $data['total']['discount_stop']=0;
                            $this->db->query("INSERT INTO " . DB_PREFIX . "multi_discounts (type,id,discount_type,fulltime,discount_option,discount_value,subcategories) VALUES ('total',0,'".$data['total']['discount_type']."',$fulltime,".$data['total']['discount_option'].",".$data['total']['discount_value'].",0)");
                        }
                        else {
                            $fulltime=0;
                            
                             $this->db->query("INSERT INTO " . DB_PREFIX . "multi_discounts (type,id,discount_type,fulltime,discount_option,discount_start,discount_stop,discount_value,subcategories) VALUES ('total',0,'".$data['total']['discount_type']."',$fulltime,".$data['total']['discount_option'].",'".$data['total']['discount_start']."','".$data['total']['discount_stop']."',".$data['total']['discount_value'].",0)");
                        }
                        $md=$this->db->getLastId();
                       $sql="SELECT * FROM " . DB_PREFIX . "product ";
                                $products=$this->db->query($sql)->rows;
                                foreach($products as $product){
                                    if($data['total']['discount_option']==1){
                                        $this->db->query("DELETE FROM " . DB_PREFIX . "product_special WHERE product_id=".$product['product_id']);
                                    }
                                   
                                     
                                     if($data['total']['discount_type']=='fixed'){
                                         $product['price']=$product['price']-$data['total']['discount_value'];
                                     }
                                     else if($data['total']['discount_type']=='percentage'){
                                         $product['price']=$product['price']-($product['price']*$data['total']['discount_value']/100);
                                     }

                                $this->db->query("INSERT INTO " . DB_PREFIX . "product_special (product_id,customer_group_id,price,date_start,date_end,multi_discount_id) VALUES (".$product['product_id'].",". $customer_group['customer_group_id'].",".$product['price'].",'".$data['total']['discount_start']."','".$data['total']['discount_stop']."',$md)");

                                }
            }
            
            //category
             if(isset($data['category']) && !empty($data['category'])){
                 
                    foreach($data['category'] as $category){
                        if(!isset($category['discount_value']) || empty($category['discount_value'])){
                    $category['discount_value']=0;
                }
                         if($category['discount_option']==3){
                                         $this->db->query("DELETE FROM " . DB_PREFIX . "product_special ");
                                    }
                     
                         if(isset($category['subcategories'])){
                            $subcategories=1;
                            
                        }
                        else {
                            $subcategories=0;
                        }
                        if(isset($category['fulltime']) && $category['fulltime']==1){
                            $fulltime=1;
                            $category['discount_start']=0;
                            $category['discount_stop']=0;
                            $this->db->query("INSERT INTO " . DB_PREFIX . "multi_discounts (type,id,discount_type,fulltime,discount_option,discount_value,subcategories) VALUES ('category',".$category['category_id'].",'".$category['discount_type']."',$fulltime,".$category['discount_option'].",".$category['discount_value'].",".$subcategories.")");
                        }
                        else {
                            $fulltime=0;
                            
                             $this->db->query("INSERT INTO " . DB_PREFIX . "multi_discounts (type,id,discount_type,fulltime,discount_option,discount_start,discount_stop,discount_value,subcategories) VALUES ('category',".$category['category_id'].",'".$category['discount_type']."',$fulltime,".$category['discount_option'].",'".$category['discount_start']."','".$category['discount_stop']."',".$category['discount_value'].",".$subcategories.")");
                        }
                        $md=$this->db->getLastId();
                        $sql="SELECT * FROM " . DB_PREFIX . "product_to_category WHERE category_id=".$category['category_id'];
                        $products=$this->db->query($sql)->rows;
                        foreach($products as $product){
                            if($category['discount_option']==1){
                                $this->db->query("DELETE FROM " . DB_PREFIX . "product_special WHERE product_id=".$product['product_id']);
                            }
                            
                             $pr=$this->db->query("SELECT * FROM " . DB_PREFIX . "product WHERE product_id=".$product['product_id'])->row;
                             if($category['discount_type']=='fixed'){
                                 $pr['price']=$pr['price']-$category['discount_value'];
                             }
                             else if($category['discount_type']=='percentage'){
                                 $pr['price']=$pr['price']-($pr['price']*$category['discount_value']/100);
                             }
                             
                        $this->db->query("INSERT INTO " . DB_PREFIX . "product_special (product_id,customer_group_id,price,date_start,date_end,multi_discount_id) VALUES (".$product['product_id'].",". $customer_group['customer_group_id'].",".$pr['price'].",'".$category['discount_start']."','".$category['discount_stop']."',$md)");
                            
                        }
                        if(isset($category['subcategories']) && $category['subcategories']==1){
                           $sql="SELECT * FROM " . DB_PREFIX . "category WHERE parent_id=".$category['category_id'];
                        $cats=$this->db->query($sql)->rows;
                            foreach($cats as $cat){
                                $sql="SELECT * FROM " . DB_PREFIX . "product_to_category WHERE category_id=".$cat['category_id'];
                                $products=$this->db->query($sql)->rows;
                                foreach($products as $product){
                                    if($category['discount_option']==1){
                                        $this->db->query("DELETE FROM " . DB_PREFIX . "product_special WHERE product_id=".$product['product_id']);
                                    }
                                   
                                     $pr=$this->db->query("SELECT * FROM " . DB_PREFIX . "product WHERE product_id=".$product['product_id'])->row;
                                     if($category['discount_type']=='fixed'){
                                         $pr['price']=$pr['price']-$category['discount_value'];
                                     }
                                     else if($category['discount_type']=='percentage'){
                                         $pr['price']=$pr['price']-($pr['price']*$category['discount_value']/100);
                                     }

                                $this->db->query("INSERT INTO " . DB_PREFIX . "product_special (product_id,customer_group_id,price,date_start,date_end,multi_discount_id) VALUES (".$product['product_id'].",". $customer_group['customer_group_id'].",".$pr['price'].",'".$category['discount_start']."','".$category['discount_stop']."',$md)");

                                }
                            }
                        }
                     
                    }
                        
            }
            
            //manufacturer
              if(isset($data['manufacturer']) && !empty($data['manufacturer'])){
                    foreach($data['manufacturer'] as $manufacturer){
                       
                        if(!isset($manufacturer['discount_value']) || empty($manufacturer['discount_value'])){
                    $manufacturer['discount_value']=0;
                }
                         if($manufacturer['discount_option']==3){
                                         $this->db->query("DELETE FROM " . DB_PREFIX . "product_special ");
                                    }
                         if(isset($manufacturer['fulltime']) && $manufacturer['fulltime']==1){
                            $fulltime=1;
                            $manufacturer['discount_start']=0;
                            $manufacturer['discount_stop']=0;
                            $this->db->query("INSERT INTO " . DB_PREFIX . "multi_discounts (type,id,discount_type,fulltime,discount_option,discount_value,subcategories) VALUES ('manufacturer',".$manufacturer['manufacturer_id'].",'".$manufacturer['discount_type']."',$fulltime,".$manufacturer['discount_option'].",".$manufacturer['discount_value'].",0)");
                        }
                        else {
                            $fulltime=0;
                            
                             $this->db->query("INSERT INTO " . DB_PREFIX . "multi_discounts (type,id,discount_type,fulltime,discount_option,discount_start,discount_stop,discount_value,subcategories) VALUES ('manufacturer',".$manufacturer['manufacturer_id'].",'".$manufacturer['discount_type']."',$fulltime,".$manufacturer['discount_option'].",'".$manufacturer['discount_start']."','".$manufacturer['discount_stop']."',".$manufacturer['discount_value'].",0)");
                        }
                        $md=$this->db->getLastId();
                         $sql="SELECT * FROM " . DB_PREFIX . "product WHERE manufacturer_id=".$manufacturer['manufacturer_id'];
                                $products=$this->db->query($sql)->rows;
                                foreach($products as $product){
                                    if($manufacturer['discount_option']==1){
                                        $this->db->query("DELETE FROM " . DB_PREFIX . "product_special WHERE product_id=".$product['product_id']);
                                    }
                                   
                                     
                                     if($manufacturer['discount_type']=='fixed'){
                                         $product['price']=$product['price']-$manufacturer['discount_value'];
                                     }
                                     else if($manufacturer['discount_type']=='percentage'){
                                         $product['price']=$product['price']-($product['price']*$manufacturer['discount_value']/100);
                                     }

                                $this->db->query("INSERT INTO " . DB_PREFIX . "product_special (product_id,customer_group_id,price,date_start,date_end,multi_discount_id) VALUES (".$product['product_id'].",". $customer_group['customer_group_id'].",".$product['price'].",'".$manufacturer['discount_start']."','".$manufacturer['discount_stop']."',$md)");

                                }
                    }
                      
            }
              if(isset($data['customer_group']) && !empty($data['customer_group'])){
                      foreach($data['customer_group'] as $cgroup){
                          if(!isset($cgroup['discount_value']) || empty($cgroup['discount_value'])){
                    $cgroup['discount_value']=0;
                }
                          if(isset($cgroup['fulltime']) && $cgroup['fulltime']==1){
                            $fulltime=1;
                            $cgroup['discount_start']=0;
                            $cgroup['discount_stop']=0;
                            $this->db->query("INSERT INTO " . DB_PREFIX . "multi_discounts (type,id,discount_type,fulltime,discount_option,discount_value,subcategories) VALUES ('customer',".$cgroup['customer_group_id'].",'".$cgroup['discount_type']."',$fulltime,".$cgroup['discount_option'].",".$cgroup['discount_value'].",0)");
                        }
                        else {
                            $fulltime=0;
                            
                             $this->db->query("INSERT INTO " . DB_PREFIX . "multi_discounts (type,id,discount_type,fulltime,discount_option,discount_start,discount_stop,discount_value,subcategories) VALUES ('customer',".$cgroup['customer_group_id'].",'".$cgroup['discount_type']."',$fulltime,".$cgroup['discount_option'].",'".$cgroup['discount_start']."','".$cgroup['discount_stop']."',".$cgroup['discount_value'].",0)");
                        }
                        $md=$this->db->getLastId();
                       $sql="SELECT * FROM " . DB_PREFIX . "product ";
                                $products=$this->db->query($sql)->rows;
                                foreach($products as $product){
                                    if($cgroup['discount_option']==1){
                                        $this->db->query("DELETE FROM " . DB_PREFIX . "product_special WHERE product_id=".$product['product_id']);
                                    }
                                   
                                     
                                     if($cgroup['discount_type']=='fixed'){
                                         $product['price']=$product['price']-$cgroup['discount_value'];
                                     }
                                     else if($cgroup['discount_type']=='percentage'){
                                         $product['price']=$product['price']-($product['price']*$cgroup['discount_value']/100);
                                     }

                                $this->db->query("INSERT INTO " . DB_PREFIX . "product_special (product_id,customer_group_id,price,date_start,date_end,multi_discount_id) VALUES (".$product['product_id'].",". $cgroup['customer_group_id'].",".$product['price'].",'".$cgroup['discount_start']."','".$cgroup['discount_stop']."',$md)");

                                }
                    }
                      
            }
            
//		
	}
	
	
		public function getSetting($group, $store_id = 0) {
                    $this->db->query("CREATE TABLE IF  NOT EXISTS " . DB_PREFIX . "multi_discounts
                                        (
                                        multi_discount_id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY(multi_discount_id),
                                        type varchar(255),
                                        id int,
                                        discount_type varchar(255),
                                        fulltime int,
                                        discount_option int,
                                        discount_start datetime,
                                        discount_stop datetime,
                                        discount_value int,
                                        subcategories int
                                        )");
                    
                    
                    $result = "SHOW COLUMNS FROM " . DB_PREFIX . "product_special LIKE 'multi_discount_id'";
                    ;
                    $chkcol = $this->db->query("SELECT * FROM `" . DB_PREFIX . "product_special` LIMIT 1");
$mycol = $chkcol->row;
if(empty($this->db->query($result)->rows))
  $this->db->query(" ALTER TABLE `" . DB_PREFIX . "product_special` ADD `multi_discount_id` INT NOT NULL DEFAULT '0'");
                  
		$data = array(); 
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "multi_discounts")->rows;
                
                
		foreach($query as $multi){
                    if($multi['type']=='total'){
                        $data['total']=array(
                            'enabled'=>'1',
                             'fulltime'=>$multi['fulltime'],
                             'discount_start'=>$multi['discount_start'],
                            'discount_start'=>$multi['discount_start'],
                            'discount_stop'=>$multi['discount_stop'],
                            'discount_option'=>$multi['discount_option'],
                            'discount_type'=>$multi['discount_type'],
                            'discount_value'=>$multi['discount_value'],
                        );
                    }
                    if($multi['type']=='category'){
                         $data['category'][]=array(
                              'fulltime'=>$multi['fulltime'],
                             'subcategories'=>$multi['subcategories'],
                             'category_id'=>$multi['id'],
                             'discount_start'=>$multi['discount_start'],
                            'discount_start'=>$multi['discount_start'],
                            'discount_stop'=>$multi['discount_stop'],
                            'discount_option'=>$multi['discount_option'],
                            'discount_type'=>$multi['discount_type'],
                            'discount_value'=>$multi['discount_value'],
                         );
                    }
                    if($multi['type']=='manufacturer'){
                         $data['manufacturer'][]=array(
                              'fulltime'=>$multi['fulltime'],
                             
                             'manufacturer_id'=>$multi['id'],
                             'discount_start'=>$multi['discount_start'],
                            'discount_start'=>$multi['discount_start'],
                            'discount_stop'=>$multi['discount_stop'],
                            'discount_option'=>$multi['discount_option'],
                            'discount_type'=>$multi['discount_type'],
                            'discount_value'=>$multi['discount_value'],
                         );
                    }
                    if($multi['type']=='customer'){
                         $data['customer_group'][]=array(
                              'fulltime'=>$multi['fulltime'],
                             
                             'customer_group_id'=>$multi['id'],
                             'discount_start'=>$multi['discount_start'],
                            'discount_start'=>$multi['discount_start'],
                            'discount_stop'=>$multi['discount_stop'],
                            'discount_option'=>$multi['discount_option'],
                            'discount_type'=>$multi['discount_type'],
                            'discount_value'=>$multi['discount_value'],
                         );
                    }
                }
                

		return $data;
	}
	
	
	
	
	
	
}
?>