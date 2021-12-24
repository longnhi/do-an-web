<div class="container">
    <ul class="pagination pagination-sm justify-content-center">
    <?php 
        for($i=1;$i<=$totalPages;$i++)
        {
            if($i!=$cur_page){ 
                ?>
            <li class=" page-item">
                <a class="page-link badge bg-light" 
                href="./index.php?controller=jersey&action=<?php echo $action ?>&page=<?php echo $i; if(isset($id)){echo '&id='.$id;}if(isset($kw)){echo '&kw='.$kw; }?>">
                    <?php echo $i ?>
                </a>
            </li>
                <?php 
                    }else{ 
                        ?>
            <li class="page-item active ">
                <a class="page-link badge bg-dark" 
                href="./index.php?controller=jersey&action=<?php echo $action ?>&page=<?php echo $i; if(isset($id)){echo '&id='.$id;}if(isset($kw)){echo '&kw='.$kw; }?>">
                    <?php echo $i ?></a>
            </li>
        <?php        
            }
        } 
    ?>
    </ul>
</div>