<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
   
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
   
    <div class="contact-info">
	<h2><?php echo $store; ?></h2>
	 <div style="display: inline-block;width: 49%;vertical-align:top;"> 
	 <b><?php echo $text_address; ?></b><br />
                <?php echo $address; ?>
	
		 </div>
		 <div style="display:inline-block;width:49%;">
		<?php if ($telephone) { ?>
        <b><?php echo $text_telephone; ?></b><br />
        <?php echo $telephone; ?>
		<?php } ?>
		
		<?php if ($telephone1) { ?>
        <b><?php echo $text_telephone1; ?></b><br />
        <?php echo $telephone1; ?>
		 <?php } ?>
		
		<?php if ($telephone2) { ?>
        <b><?php echo $text_telephone2; ?></b><br />
        <?php echo $telephone2; ?><br />
        <?php } ?>
        <?php if ($fax) { ?>
        <b><?php echo $text_fax; ?></b><br />
        <?php echo $fax; ?>
        <?php } ?>
		
	<br />
	
	<a class="feedback" onclick="ShowFeedback();"><?php echo $text_contact; ?></a>
	<div id="feedback">

	
    <div class="content">
    <b><?php echo $entry_name; ?></b><br />
    <input id="contact" type="text" name="name" value="<?php echo $name; ?>" />
    <br />
    <?php if ($error_name) { ?>
    <span class="error"><?php echo $error_name; ?></span>
    <?php } ?>
    <br />
    <b><?php echo $entry_email; ?></b><br />
    <input class="contact" type="text" name="email" value="<?php echo $email; ?>" />
    <br />
    <?php if ($error_email) { ?>
    <span class="error"><?php echo $error_email; ?></span>
    <?php } ?>
    <br />
    <b><?php echo $entry_enquiry; ?></b><br />
    <textarea name="enquiry" cols="40" rows="10" style="width: 50%; height:120px;"><?php echo $enquiry; ?></textarea>
    <br />
    <?php if ($error_enquiry) { ?>
    <span class="error"><?php echo $error_enquiry; ?></span>
    <?php } ?>
    <br />
    <b><?php echo $entry_captcha; ?></b><br />
    <input class="contact" type="text" name="captcha" value="<?php echo $captcha; ?>" />
    <br />
    <img src="index.php?route=information/contact/captcha" alt="" />
    <?php if ($error_captcha) { ?>
    <span class="error"><?php echo $error_captcha; ?></span>
    <?php } ?>
    </div>
    <div class="buttons">
      <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button" /></div>
    </div>
  </form>
		</div>
		</div>
		</br>
		<div style="border-bottom: 1px #a0a0a0;border-bottom-style:dotted;width: 100%;"></div>
      <div class="content">
		<div class="left_contact">
		      
	 <div style="float: left; padding-right: 10px;padding-bottom: 20px;"><b><?php echo $text_address2cap; ?></b><br /> 
	    <?php echo $text_address2line; ?>
	  </div>
	  
	  <div style="padding-bottom: 20px;"> <img alt="" src="image/data/loft_store100.png"></div>
        <!-- Google Maps code start -->
<script src="https://maps.google.com/maps?file=api&amp;v=2&amp;sensor=false&amp;key=AIzaSyBba7ToOfqAMLIej4fJI2RoBxvv23dzG-w" type="text/javascript"></script>


<div id="map" style="width: 90%; height: 300px; margin-top: 5px; margin-bottom: 10px;"></div>


<noscript><b>JavaScript must be enabled in order for you to use Google Maps.</b> 
      However, it seems JavaScript is either disabled or not supported by your browser. 
      To view Google Maps, enable JavaScript by changing your browser options, and then 
      try again.
    </noscript>
 

    <script type="text/javascript">
    //<![CDATA[


function display_map()
{

    if (GBrowserIsCompatible()) { 

      // A function to create the marker and set up the event window
      // Dont try to unroll this function. It has to be here for the function closure
      // Each instance of the function preserves the contends of a different instance
      // of the "marker" and "html" variables which will be needed later when the event triggers.    
      
   <!--    html ="<div style=\"width:250px; text-align: left;\">Business Name<br />Address line 1<br />Address line 2<br />Phone: 12345678<\/div>"; -->
       html ="<div style=\"width:60px; text-align: left;\"><img src=\"https://kamizelka.in.ua/image/data/loft_store.png\" alt=\"LOFT STORE Киев \" style=\" width: 60px;\"><\/div>";
      function createMarker(point,html) {
        var marker = new GMarker(point);
        GEvent.addListener(marker, "click", function() {
        //  marker.openInfoWindowHtml(html);
        });
        return marker;
      }

      // Display the map, with some controls and set the initial location 
      var map = new GMap2(document.getElementById("map"));
      map.addControl(new GSmallMapControl());
      map.addControl(new GMapTypeControl());
       // map.setCenter(new GLatLng(50.393979, 30.379653),17); - Kamizelka
     map.setCenter(new GLatLng(50.4533891,30.5089459),17);
      // Set up the marker and info
    
      //var point = new GLatLng(50.393979, 30.379653); -Kamizelka 
	  var point = new GLatLng(50.4531109, 30.5101812);
      var marker = createMarker(point, html)
      map.addOverlay(marker);
      //marker.openInfoWindowHtml(html);


    }
    
    // display a warning if the browser was not compatible
    else {
      alert("Sorry, the Google Maps API is not compatible with this browser");
    }

    // This Javascript is based on code provided by the
    // Community Church Javascript Team
    // http://www.bisphamchurch.org.uk/   
    // http://econym.org.uk/gmap/

    //]]>

}
</script>




<!-- Google Maps code end -->      
      </div>
	  <div class="right_contact">
	  	      
	 <div style="float: left; padding-right: 10px;padding-bottom: 20px;"><b><?php echo $text_address3cap; ?></b><br /> 
	    <?php echo $text_address3line; ?>
	  </div>
	  
	  <div style="padding-bottom: 20px;"> <img style="width: 100px;"alt="" src="image/data/Be_UA_logo_100.jpg"></div>
        <!-- Google Maps code start -->
<script src="https://maps.google.com/maps?file=api&amp;v=2&amp;sensor=false&amp;key=AIzaSyBba7ToOfqAMLIej4fJI2RoBxvv23dzG-w" type="text/javascript"></script>


<div id="map2" style="width: 90%; height: 300px; margin-top: 5px; margin-bottom: 10px;"></div>


<noscript><b>JavaScript must be enabled in order for you to use Google Maps.</b> 
      However, it seems JavaScript is either disabled or not supported by your browser. 
      To view Google Maps, enable JavaScript by changing your browser options, and then 
      try again.
    </noscript>
 

    <script type="text/javascript">
    //<![CDATA[


function display_map2()
{

    if (GBrowserIsCompatible()) { 

      // A function to create the marker and set up the event window
      // Dont try to unroll this function. It has to be here for the function closure
      // Each instance of the function preserves the contends of a different instance
      // of the "marker" and "html" variables which will be needed later when the event triggers.    
      
   <!--    html ="<div style=\"width:250px; text-align: left;\">Business Name<br />Address line 1<br />Address line 2<br />Phone: 12345678<\/div>"; -->
       html ="<div style=\"width:60px; text-align: left;\"><img src=\"https://kamizelka.in.ua/image/data/loft_store.png\" alt=\"LOFT STORE Киев \" style=\" width: 60px;\"><\/div>";
      function createMarker(point,html) {
        var marker = new GMarker(point);
        GEvent.addListener(marker, "click", function() {
        //  marker.openInfoWindowHtml(html);
        });
        return marker;
      }

      // Display the map, with some controls and set the initial location 
      var map2 = new GMap(document.getElementById("map2"));
      map2.addControl(new GSmallMapControl());
      map2.addControl(new GMapTypeControl());
       // map.setCenter(new GLatLng(50.393979, 30.379653),17); - Kamizelka
     map2.setCenter(new GLatLng(48.464912,35.0441869),17);
      // Set up the marker and info
    
      //var point = new GLatLng(50.393979, 30.379653); -Kamizelka 
	  var point = new GLatLng(48.464912,35.0441869);
      var marker = createMarker(point, html)
      map2.addOverlay(marker);
      //marker.openInfoWindowHtml(html);


    }
    
    // display a warning if the browser was not compatible
    else {
      alert("Sorry, the Google Maps API is not compatible with this browser");
    }

    // This Javascript is based on code provided by the
    // Community Church Javascript Team
    // http://www.bisphamchurch.org.uk/   
    // http://econym.org.uk/gmap/

    //]]>

}
</script>



<script type="text/javascript">
window.onload= function(){
 display_map();
 display_map2();
};

window.onunload= function(){
  GUnload();
};
</script>
<!-- Google Maps code end -->    
	  </div>
    </div>
    </div>
    
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>

<script type="text/javascript">

function ShowFeedback(){
          $('#feedback').show('slow');
		  $('.left').css('padding-bottom','0px');
}</script>
<script type="text/javascript"><!--
$(document).ready(function() {
  var err_feedback = "<?php echo $error_name; ?><?php echo $error_email; ?><?php echo $error_enquiry; ?><?php echo $error_captcha; ?>";
  if (err_feedback){
  $('#feedback').show('slow');
   }
  console.log (err_feedback);
   
});


//--></script>