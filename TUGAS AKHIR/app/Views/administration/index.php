<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>

<div class="container-fluid">

    <!-- Page Heading -->
    <h4 class="mb-4 text-gray-800" style="text-align: center; font-weight: bold; color: black;">Tagihan Pembayaran</h4>

    <table class="table">

    <!-- isi -->
    <table border="1" cellpadding="10" align="center" class="tabel">
        <td>Keterangan</td>
        <td>Tanggal</td>
        <td>Tagihan</td>
    </table>
</div>

<?= $this->endSection(''); ?>