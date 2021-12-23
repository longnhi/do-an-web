<?php 
if (!defined('HOST')){
    exit;
}
class KhachHang extends Db 
{
    // cac phuong thuc 
    function all()
    {
        return $this->selectQuery('select * from customer');
    }
}