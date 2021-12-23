<?php         
$action = Utilities::get('action', 'index');
$jersey = new Jersey();
$type = new JerseyType();
$club = new Club();
$cur_page = 1;
$totalPages = 1;

if ($action == 'index') {
    $datapage = $jersey->random(6);
    include './views/banner.php';
    include './views/jersey/index.php';
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
    
    $datapage = $jersey->random(3);
    include './views/jersey/index.php';
}

if ($action == 'jerseytype') {
    $id = Utilities::get('id');
    $data = $jersey->jerseyByLoai($id);

    $count = count($data);
    $totalPages = ceil($count / 6);
    $cur_page = !empty($_GET['page']) ? $_GET['page'] : 1;

    $datapage = $jersey->jerseyByTypePaging($id, $cur_page);
    include './views/jersey/index.php';
    include './views/jersey/jersey_paging.php';
}