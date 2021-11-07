<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h2 class="mt-2">
                <?= $title ?>
            </h2>
        </div>
    </div>
    <div class="row">
        <div class="col-8">
            <form action="/komik/save" method="post" enctype="multipart/form-data">
                <?= csrf_field() ?>
                <div class="mb-3 row">
                    <div class="col-sm-10">
                        <input type="hidden" class="form-control" id="tes" value="<?= old('tes') ?>">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="judul" class="col-sm-2 col-form-label">Judul</label>
                    <div class="col-sm-10">
                        <input type="text" name="judul" class="form-control <?= $validation->hasError('judul') ? 'is-invalid' : '' ?>" id="judul" value="<?= old('judul') ?>">
                        <div id="judul" class="invalid-feedback">
                            <?= $validation->getError('judul') ?>
                        </div>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="penulis" class="col-sm-2 col-form-label">Penulis</label>
                    <div class="col-sm-10">
                        <input type="text" name="penulis" class="form-control <?= $validation->hasError('penulis') ? 'is-invalid' : '' ?>" id="penulis" value="<?= old('penulis') ?>">
                        <div id="penulis" class="invalid-feedback">
                            <?= $validation->getError('penulis') ?>
                        </div>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="sinopsis" class="col-sm-2 col-form-label">Sinopsis</label>
                    <div class="col-sm-10">
                        <input type="text" name="sinopsis" class="form-control <?= $validation->hasError('sinopsis') ? 'is-invalid' : '' ?>" id="sinopsis" value="<?= old('sinopsis') ?>">
                        <div id="sinopsis" class="invalid-feedback">
                            <?= $validation->getError('sinopsis') ?>
                        </div>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="sampul" class="col-sm-2 col-form-label">Sampul</label>
                    <div class="col-sm-2">
                        <img src="/img/default.png" class="img-thumbnail img-preview">
                    </div>
                    <div class="col-sm-8">
                        <input type="file" name="sampul" class="form-control input-file <?= $validation->hasError('sampul') ? 'is-invalid' : '' ?>" id="sampul" value="<?= old('sampul') ?>" onchange="previewImg()">
                        <div id="sampul" class="invalid-feedback">
                            <?= $validation->getError('sampul') ?>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary float-end">Simpan</button>
            </form>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>