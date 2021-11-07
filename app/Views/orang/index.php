<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>
<div class="container">
    <div class="row mt-3">
        <div class="col-md-4">
            <h2>Daftar <?= $title ?></h2>
        </div>
        <div class="col-md-8">
            <form action="" method="post">
                <div class="input-group mb-3">
                    <input type="text" name="keyword" class="form-control" placeholder="Cari data..">
                    <button class="btn btn-outline-secondary" type="submit" name="submit">Cari</button>
                </div>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nama</th>
                        <th scope="col">Alamat</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1 + (10 * ($currentPage - 1)); ?>
                    <?php foreach ($orang as $row) : ?>
                        <tr>
                            <th scope="row"><?= $no++ ?></th>
                            <td><?= $row['nama'] ?></td>
                            <td><?= $row['alamat'] ?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <?= $pager->links('orang', 'orang_pagination'); ?>
        </div>
    </div>
</div>
<?= $this->endSection('content') ?>