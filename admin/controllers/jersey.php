<?php              
$action = Utilities::get('action', 'index');
$jersey = new Jersey();
$type = new JerseyType();
$club = new Club();
$cur_page = 1;
$totalPages = 1;

$dataType = $type->all();
$dataClub = $club->all();
if ($action == 'index') {
    include './about.php';
}

if ($action == 'tatca') {
    $data = $jersey->all();
    $count = count($data);
    $totalPages = ceil($count / 6);
    $cur_page = !empty($_GET['page']) ? $_GET['page'] : 1;
    $datapage = $jersey->paging($cur_page);
    include './views/jersey/index.php';
    include './views/jersey/jersey_paging.php';
}

if ($action == 'search') {
    $kw = Utilities::get('kw');
    $data = $jersey->Search($kw);

    $count = count($data);
    $totalPages = ceil($count / 6);
    $cur_page = !empty($_GET['page']) ? $_GET['page'] : 1;

    $datapage = $jersey->SearchPaging($kw,$cur_page);
    include './views/jersey/index.php';
    include './views/jersey/jersey_paging.php';
}

if ($action == 'detail') {
    $id = Utilities::get('id');
    $data = $jersey->detail($id);
    include './views/jersey/detail.php';
}

if($action == 'sua')
{
    $id = Utilities::get('id');
    $data = $jersey->detail($id);
    include './views/jersey/sua.php';
}
if($action == 'xulysua')
{
    $ma = Utilities::post('maaodau');
    $ten = Utilities::post('tenaodau');
    $mota = Utilities::post('mota');
    $gia = Utilities::post('gia');
    $maclub = Utilities::post('maclub');
    $maloai = Utilities::post('maloai');
    $hinhfile = basename($_FILES['hinhanh']['name']);
    $link_img = "../assets/img/jersey/";
    $link_file = $link_img . $hinhfile;
    move_uploaded_file($_FILES['hinhanh']['tmp_name'], $link_file);
    $data_sua = $jersey->sua($ma, $ten, $hinhfile, $gia, $mota,  $maclub, $maloai);
    header('Location: index.php?controller=jersey&action=tatca');
}

if($action == 'add' )
{
    include './views/jersey/them.php';
}

if($action == 'xulythem')
{
    $ten = Utilities::post('tenaodau');
    $mota = Utilities::post('mota');
    $gia = Utilities::post('gia');
    $maclub = Utilities::post('maclub');
    $maloai = Utilities::post('maloai');

    $hinhfile = basename($_FILES['hinhanh']['name']);
    $link_img = "../assets/img/jersey/";
    $link_file = $link_img . $hinhfile;
    move_uploaded_file($_FILES['hinhanh']['tmp_name'], $link_file);
    $data_them = $jersey->them($ten,$hinhfile, $gia, $mota,  $maclub, $maloai);
    
    header('Location: index.php?controller=jersey&action=tatca');
}
if($action=='xoa')
{
    $id = isset($_GET['id'])?$_GET['id']:'';
    $del = $jersey->xoa($id);
    $data =$jersey->all();
    header('Location: index.php?controller=jersey&action=tatca');
}