<?php
$action = Utilities::get('action', 'index');
$kh = new KhachHang();

if($action == 'tatca')
{
    $data = $kh->all();
    include './views/khachhang/index.php';
}