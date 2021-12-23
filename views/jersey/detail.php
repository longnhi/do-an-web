<hr>
<div class="container">
<div class="row">
    <div class="col-lg-4">
        <img src="<?php echo IMG_JERSEY.$data['hinhanh'];?>" alt="" class="img-thumbnail">
        <div style="margin-top: 20px;text-align: center;">
        <a class="page-link" style="width:150px;margin: auto;" href="">Buy Now</a>
        </div>
    </div>
    <div class="col-lg-8">
        <div><h3><?php echo $data['tenaodau'];?></h3></div>
        <hr>
        <div>
            <h5>Profile footballer</h5>
            <p style="text-align: justify;"><?php echo $data['mota'];?></p></div>
        <br>
        <div>Price: <?php echo $data['gia'];?> €</div>
        <br>
        <div>Club: <?php $dclub = $club->getTen($data['maclub']); echo $dclub['tenclub'];?></a></div>
        <br>
        <div>Kit Jersey: <?php $dloai = $type->getTen($data['maloai']);?> <?php echo $dloai['tenloai'];?></a></div>
    </div>
</div>
<hr>
    <div class="container p-3 my-3 bg-light text-black">
        <h4 >Other Jersey</h4>
    </div>
</div>
</div>