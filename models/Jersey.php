<?php 
if (!defined('HOST')){
    exit;
}
class Jersey extends Db 
{
    // cac phuong thuc 
    function all()
    {
        return $this->selectQuery('select * from jersey');
    }

    function paging($cur_page)
    {
        return $this->selectQuery("select * from jersey limit 6 offset ".(($cur_page-1)*6 ));
    }

    function random($n)
    {
        return $this->selectQuery("select * from jersey order by rand() limit 0, $n");
    }

    function detail($id)
    {
        $data = $this->selectQuery('select * from jersey where maaodau=?', [$id]);
        return $data[0];
    }
    
    function Search($kw)
    {
        $s ='select * from jersey where tenaodau like ?';
        $a =["%$kw%"];
        return $this->selectQuery($s, $a);
    }

    function SearchPaging($kw,$cur_page)
    {
        $s ='select * from jersey where tenaodau like ? limit 6 offset '.(($cur_page-1)*6 );
        $a =["%$kw%"];
        return $this->selectQuery($s, $a);
    }                                    
}