<?php
$action = Utilities::get('action', 'index');
$type = new JerseyType();

if ($action == 'tatca') {
    $data = $type->all();
    include './views/jerseytype/index.php';
}

if ($action == 'add') {
    include './views/jerseytype/them.php';
}

if ($action == 'xulythem') {
    $tenloai = Utilities::post('tenloai');
    $type->them($tenloai);
    $data = $type->all();
    echo
    '<div class = "container">
        <div class="alert alert-success alert-dismissible">
        <button type="button" class="close" data-dismiss="alert">×</button>
        Thêm thành công!
        </div></div>';
    include './views/jerseytype/index.php';
}

if ($action == 'sua') {
    $id = Utilities::get('id');
    $item = $type->detail($id);
    include './views/jerseytype/sua.php';
}

if ($action == 'xulysua') {
    $maloai = Utilities::post('maloai');
    $tenloai = Utilities::post('tenloai');
    $type->sua($maloai, $tenloai);
    $data = $type->all();
    echo
    '<div class = "container">
        <div class="alert alert-success alert-dismissible">
        <button type="button" class="close" data-dismiss="alert">×</button>
        Sửa thành công!
        </div></div>';
    include './views/jerseytype/index.php';
}

if ($action == 'xoa') {
    $id = Utilities::get('id');
    $del = $type->xoa($id);
    $data = $type->all();
    echo
    '<div class = "container">
        <div class="alert alert-success alert-dismissible">
        <button type="button" class="close" data-dismiss="alert">×</button>
        Xoá thành công!
        </div></div>';
    include './views/jerseytype/index.php';
}
