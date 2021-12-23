<?php
$action = Utilities::get('action');

$kh = new KhachHang();
if($action =='index')
{
    include './views/khachhang/login.php';
}

if ($action == 'dangnhap') 
{
    include './views/khachhang/login.php';
}

if($action == 'xulylogin')
{
    $email = Utilities::post('email');
    $pw=Utilities::post('password');
    $password = Utilities::encyptMD5($pw);
    $data = $kh->getUserLogin($email,$password);
    if($data!=null)
    {
        $_SESSION['email'] = $email;
        $_SESSION['password'] = $password;
        header("Location: ./index.php");
    }else{
        echo '<div class="container text-center">Incorrect email or password</div>';
        header('Location: index.php?controller=khachhang&action=dangnhap');
        include './views/khachhang/login.php';
    }
}

if($action == 'dangxuat')
{
    unset($_SESSION['email']);
    unset($_SESSION['password']);
    session_destroy();
    header('Location: ./index.php');
}