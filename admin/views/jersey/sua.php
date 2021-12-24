<div class="container mt-3 mb-3">
    <form class="form-horizontal col-sm-6" action="index.php?controller=jersey&action=xulysua" method="POST" enctype="multipart/form-data" style="margin: auto;">
        <div class="row form-group">
            <div class="col col-sm-3"><label for="maaodau">Mã áo đấu:</label></div>
            <div class="col-sm-9">
                <input type="number" class="form-control" placeholder="Mã áo đấu" id="maaodau" name="maaodau"
                    value="<?php echo $data['maaodau'] ?>" readonly required>
            </div>
        </div>
        <div class="row form-group">
            <div class="col col-sm-3"><label for="tenaodau">Tên áo đấu:</label></div>
            <div class="col-sm-9">
                <input type="text" class="form-control" placeholder="Tên áo đấu" id="tenaodau" name="tenaodau"
                    value="<?php echo $data['tenaodau'] ?>" required>
            </div>
        </div>
        <div class="row form-group">
            <div class="col col-sm-3"><label for="hinhanh">Hình ảnh:</label></div>
            <div class="col-sm-9">
                <input type="file" class="form-control" placeholder="Chọn file để thay đổi" id="hinhanh" name="hinhanh"
                    value="<?php echo $data['hinhanh'] ?>" required />
            </div>
        </div>
        <div class="row form-group">
            <div class="col col-sm-3"><label for="gia">Giá:</label></div>
            <div class="col-sm-9">
                <input type="number" class="form-control" placeholder="Giá" id="gia" name="gia"
                    value="<?php echo $data['gia'] ?>" required>
            </div>
        </div>
        <div class="row form-group">
            <div class="col col-sm-3"><label for="maloai">Bộ áo đấu:</label></div>
            <div class="col-sm-9">
                <select class="form-select form-control" id="maloai" name="maloai">
                    <?php
                foreach ($dataType as $r) {
                    if ($r['maloai']==$data['maloai']){
                        echo '<option selected value = "'.$r['maloai'].'">'.$r['tenloai'].'</option>';
                    }else{
                        echo '<option value = "'.$r['maloai'].'">'.$r['tenloai'].'</option>';
                    }
                }
            ?>
                </select>
            </div>
        </div>
        <div class="row form-group">
            <div class="col col-sm-3"><label for="maclub">Câu lạc bộ:</label></div>
            <div class="col-sm-9">
                <select class="form-select form-control" id="maclub" name="maclub">
                    <?php
                foreach ($dataClub as $r) {
                    if ($r['maclub']==$data['maclub']){
                        echo '<option selected value = "'.$r['maclub'].'">'.$r['maclub'].'-'.$r['tenclub'].'</option>';
                    }else{
                        echo '<option value = "'.$r['maclub'].'">'.$r['maclub'].'-'.$r['tenclub'].'</option>';
                    }
                }
            ?>
                </select>
            </div>
        </div>

        <div class="row form-group">
            <div class="col col-sm-3"><label for="mota">Mô tả:</label></div>
            <div class="col-sm-9">
                <textarea type="text" class="form-control" placeholder="Mô tả" id="mota" name="mota"
                    required><?php echo $data['mota'] ?></textarea>
            </div>
        </div>
        <div class="row form-group" style="text-align:center;">
            <div class="col col-sm-12">
                <button type="submit" class="btn btn-success" name="btn_action" value="">Sửa</button>
            </div>
        </div>
    </form>
</div>