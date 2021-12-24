<?php
$action = Utilities::get('action', 'index');
$club = new Club();

if ($action == 'tatca') {
    $data = $club->all();
    include './views/club/index.php';
}
if ($action == 'add') {
    include './views/club/them.php';
}

if ($action == 'xulythem') {
    $maclub = Utilities::post('maclub');
    $tenclub = Utilities::post('tenclub');
    $item = $club->detail($maclub);
    if ($item != null) {
        echo
        '<div class = "container">
        <div class="alert alert-success alert-dismissible">
        <button type="button" class="close" data-dismiss="alert">×</button>
        Đã tồn tại mã này!
        </div></div>';
    } else {
        $club->them($maclub, $tenclub);
        echo
        '<div class = "container">
        <div class="alert alert-success alert-dismissible">
        <button type="button" class="close" data-dismiss="alert">×</button>
        Thêm thành công!
        </div></div>';
    }

    $data = $club->all();

    include './views/club/index.php';
}

if ($action == 'sua') {
    $id = Utilities::get('id');
    $item = $club->detail($id)[0];
    include './views/club/sua.php';
}

if ($action == 'xulysua') {
    $maclub = Utilities::post('maclub');
    $tenclub = Utilities::post('tenclub');
    $club->sua($maclub, $tenclub);
    $data = $club->all();
    echo
    '<div class = "container">
        <div class="alert alert-success alert-dismissible">
        <button type="button" class="close" data-dismiss="alert">×</button>
        Sửa thành công!
        </div></div>';
    include './views/club/index.php';
}

if ($action == 'xoa') {
    $id = Utilities::get('id');
    $del = $club->xoa($id);
    $data = $club->all();
    echo
    '<div class = "container">
        <div class="alert alert-success alert-dismissible">
        <button type="button" class="close" data-dismiss="alert">×</button>
        Xoá thành công!
        </div></div>';
    include './views/club/index.php';
}
