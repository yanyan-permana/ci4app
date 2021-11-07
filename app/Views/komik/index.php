<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>
<div class="container">
    <div class="row mt-3">
        <div class="col-md-6">
            <h2>Daftar <?= $title ?></h2>
        </div>
        <div class="col-md-6">
            <a href="/komik/create" class="btn btn-success mt-2 float-end">Tambah Data <?= $title ?></a>
        </div>
    </div>
    <?php if (session()->getFlashData('message')) : ?>
        <div class="row mt-2">
            <div class="col-md-12">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <?= session()->getFlashdata('message') ?>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </div>
        </div>
    <?php endif; ?>
    <div class="row">
        <div class="col-md-12">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Sampul</th>
                        <th scope="col">Judul</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1; ?>
                    <?php foreach ($komik as $row) : ?>
                        <tr>
                            <th scope="row"><?= $no++ ?></th>
                            <td>
                                <a href="/img/<?= $row['sampul'] ?>" target="_blank">
                                    <img src="/img/<?= $row['sampul'] ?>" alt="<?= $row['sampul'] ?>" class="sampul">
                                </a>
                            </td>
                            <td><?= $row['judul'] ?></td>
                            <td>
                                <a href="/komik/<?= $row['slug'] ?>" class="btn btn-secondary">Detail</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<?= $this->endSection('content') ?>