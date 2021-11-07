<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h2 class="mt-2">
                <?= $title ?>
            </h2>
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="/img/<?= $komik['sampul']; ?>" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title"><?= $komik['judul']; ?></h5>
                            <p class="card-text"><b>Penulis : </b> <?= $komik['penulis']; ?></p>

                            <a href="/komik/edit/<?= $komik['slug'] ?>" class="btn btn-warning">Edit</a>
                            <form action="/komik/delete/<?= $komik['id'] ?>" method="post" class="d-inline">
                                <?= csrf_field() ?>
                                <input type="hidden" name="_method" value="delete">
                                <button type="submit" class="btn btn-danger" onclick="return confirm('Yakin mau dihapus?')">Detele</button>
                            </form>
                            <br>
                            <a href="/komik">Kembali</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>