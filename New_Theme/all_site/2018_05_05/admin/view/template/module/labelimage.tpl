<?php echo $header; ?>
<div id="content">
    <div class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <?php if ($error_warning) { ?>
    <div class="warning"><?php echo $error_warning; ?></div>
    <?php } ?>
    <div class="box">
        <div class="heading">
            <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
            <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
        </div>
        <div class="content">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
                <table class="form">
                    <?php if ($error_code) { ?>
                    <tr>
                        <td colspan="2"><span class="error"><?php echo $error_code; ?></span></td>
                    </tr>
                    <?php } ?>
                    <tr>
                        <td><?php echo $entry_product; ?><br><span class="help"><?php echo $entry_product_desc; ?></span></td>
                        <td><?php if ($labelimage_product) { ?>
                            <input type="radio" name="labelimage_product" value="1" checked="checked" />
                            <?php echo 'Yes'; ?>
                            <input type="radio" name="labelimage_product" value="0" />
                            <?php echo 'No'; ?>
                            <?php } else { ?>
                            <input type="radio" name="labelimage_product" value="1" />
                            <?php echo 'Yes'; ?>
                            <input type="radio" name="labelimage_product" value="0" checked="checked" />
                            <?php echo 'No' ?>
                            <?php } ?>
                            
                        </td>
                        
                    </tr>
                    <tr>
                        <td><?php echo $entry_productetc; ?><br><span class="help"><?php echo $entry_productetc_desc; ?></span></td>
                        <td><?php if ($labelimage_productetc) { ?>
                            <input type="radio" name="labelimage_productetc" value="1" checked="checked" />
                            <?php echo 'Yes'; ?>
                            <input type="radio" name="labelimage_productetc" value="0" />
                            <?php echo 'No'; ?>
                            <?php } else { ?>
                            <input type="radio" name="labelimage_productetc" value="1" />
                            <?php echo 'Yes'; ?>
                            <input type="radio" name="labelimage_productetc" value="0" checked="checked" />
                            <?php echo 'No' ?>
                            <?php } ?>
                            
                        </td>
                        
                    </tr>

                    <tr>
                        <td><?php echo $entry_latest; ?><br><span class="help"><?php echo $entry_latest_desc; ?></span></td>
                        <td><?php if ($labelimage_latest) { ?>
                            <input type="radio" name="labelimage_latest" value="1" checked="checked" />
                            <?php echo 'Yes'; ?>
                            <input type="radio" name="labelimage_latest" value="0" />
                            <?php echo 'No'; ?>
                            <?php } else { ?>
                            <input type="radio" name="labelimage_latest" value="1" />
                            <?php echo 'Yes'; ?>
                            <input type="radio" name="labelimage_latest" value="0" checked="checked" />
                            <?php echo 'No' ?>
                            <?php } ?>
                        </td>
                    </tr>

                    <tr>
                        <td><?php echo $entry_featured; ?><br><span class="help"><?php echo $entry_featured_desc; ?></span></td>
                        <td><?php if ($labelimage_featured) { ?>
                            <input type="radio" name="labelimage_featured" value="1" checked="checked" />
                            <?php echo 'Yes'; ?>
                            <input type="radio" name="labelimage_featured" value="0" />
                            <?php echo 'No'; ?>
                            <?php } else { ?>
                            <input type="radio" name="labelimage_featured" value="1" />
                            <?php echo 'Yes'; ?>
                            <input type="radio" name="labelimage_featured" value="0" checked="checked" />
                            <?php echo 'No' ?>
                            <?php } ?>
                        </td>
                    </tr>

                    <tr>
                        <td><?php echo $entry_bestseller; ?><br><span class="help"><?php echo $entry_bestseller_desc; ?></span></td>
                        <td><?php if ($labelimage_bestseller) { ?>
                            <input type="radio" name="labelimage_bestseller" value="1" checked="checked" />
                            <?php echo 'Yes'; ?>
                            <input type="radio" name="labelimage_bestseller" value="0" />
                            <?php echo 'No'; ?>
                            <?php } else { ?>
                            <input type="radio" name="labelimage_bestseller" value="1" />
                            <?php echo 'Yes'; ?>
                            <input type="radio" name="labelimage_bestseller" value="0" checked="checked" />
                            <?php echo 'No' ?>
                            <?php } ?>
                        </td>
                    </tr>

                    <tr>
                        <td><?php echo $entry_special; ?><br><span class="help"><?php echo $entry_special_desc; ?></span></td>
                        <td><?php if ($labelimage_special) { ?>
                            <input type="radio" name="labelimage_special" value="1" checked="checked" />
                            <?php echo 'Yes'; ?>
                            <input type="radio" name="labelimage_special" value="0" />
                            <?php echo 'No'; ?>
                            <?php } else { ?>
                            <input type="radio" name="labelimage_special" value="1" />
                            <?php echo 'Yes'; ?>
                            <input type="radio" name="labelimage_special" value="0" checked="checked" />
                            <?php echo 'No' ?>
                            <?php } ?>
                        </td>
                    </tr>
                    
                </table>
            </form>
        </div>
    </div>
    <?php echo $footer; ?>