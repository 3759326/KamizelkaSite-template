<?php

class ModelSettingLabelimage extends Model {

    function install() {
        /*if (mysql_num_rows(mysql_query("SELECT *
            FROM information_schema.COLUMNS 
            WHERE TABLE_SCHEMA = '" . DB_DATABASE . "' AND TABLE_NAME = '" . DB_PREFIX . "product' 
                AND COLUMN_NAME = 'topleft_png'")) == 1)
            return true;
         */   
        $result = $this->db->query("ALTER TABLE " . DB_PREFIX . "product ADD topleft_png VARCHAR( 255 ) NULL DEFAULT NULL ,
        ADD topright_png VARCHAR( 255 ) NULL DEFAULT NULL ,
        ADD bottomleft_png VARCHAR( 255 ) NULL DEFAULT NULL ,
        ADD bottomright_png VARCHAR( 255 ) NULL DEFAULT NULL");

        if (!$result)
            return false;
        else
            return true;
    }

    function uninstall() {
        /*if (!mysql_num_rows(mysql_query("SELECT *
            FROM information_schema.COLUMNS 
            WHERE TABLE_SCHEMA = '" . DB_DATABASE . "' AND TABLE_NAME = '" . DB_PREFIX . "product' 
                AND COLUMN_NAME = 'topleft_png'")) == 1)
            return true;
        */
        $result = $this->db->query("ALTER TABLE " . DB_PREFIX . "product DROP topleft_png,
        DROP topright_png,
        DROP bottomleft_png,
        DROP bottomright_png");
        if (!$result)
            return false;
        else
            return true;
    }

}

?>
