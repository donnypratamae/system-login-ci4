<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>

<div class="container-fluid">

    <!-- Page Heading -->
    <h4 class="mb-4 text-gray-800" style="text-align: center; font-weight: bold; color: black;">Jadwal Perkuliahan</h4>

    <table class="table">

    <!-- isi -->
    <table border="1" cellpadding="10" align="center" class="tabel">
        <tr class="judultabel" style="color: white; background-color: #1A374D; text-align: center;">
            <th rowspan="2">No</th>
            <th colspan="2">Waktu</th>
            <td rowspan="2">Ruang</td>
            <td rowspan="2">Mata Kuliah</td>
            <td rowspan="2">SKS</td>
            <td rowspan="2">Dosen Pengampu</td>
        </tr>
        <tr class="judultabel" style="color: white; background-color: #1A374D; text-align: center;">
            <th>Hari</th>
            <th>Jam</th>
        </tr>
        <tr>
            <td>1</td>
            <td>Senin</td>
            <td>09:00 - 10:40</td>
            <td>C.6</td>
            <td>Pemprograman Web I</td>
            <td>2</td>
            <td>WACHID DARMAWAN, M.KOM</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Senin</td>
            <td>11:00 - 12:40</td>
            <td>Lab 6</td>
            <td>Pemprograman Web I</td>
            <td>2</td>
            <td>WACHID DARMAWAN, M.KOM</td>
        </tr>
        <tr>
            <td>3</td>
            <td>Senin</td>
            <td>13:00 - 14:40</td>
            <td>C.6</td>
            <td>Statistik</td>
            <td>2</td>
            <td>Tri Pudji Wahjuningsih, M.Si</td>
        </tr>
        <tr>
            <td>4</td>
            <td>Selasa</td>
            <td>07:00 - 08:40</td>
            <td>C.6</td>
            <td>Arsitektur dan Organisasi Komputer</td>
            <td>2</td>
            <td>Mosses Aidjilli, M.Kom</td>
        </tr>
        <tr>
            <td>5</td>
            <td>Rabu</td>
            <td>11:00 - 12:40</td>
            <td>BHS 2</td>
            <td>Bahasa Inggris II</td>
            <td>2</td>
            <td>Nur Fadhilah, M.Hum</td>
        </tr>
        <tr>
            <td>6</td>
            <td>Rabu</td>
            <td>13:00 - 14:40</td>
            <td>C.3</td>
            <td>Sistem Basis Data</td>
            <td>2</td>
            <td>Risqiati, M.Kom</td>
        </tr>
        <tr>
            <td>7</td>
            <td>Kamis</td>
            <td>09:00 - 10:40</td>
            <td>C.3</td>
            <td>Analisa dan Perancangan Sistem Informasi</td>
            <td>2</td>
            <td>Indrayanti, M.Kom</td>
        </tr>
        <tr>
            <td>8</td>
            <td>Kamis</td>
            <td>11:00 - 12:40</td>
            <td>C.3</td>
            <td>Analisa dan Perancangan Sistem Informasi</td>
            <td>2</td>
            <td>Indrayanti, M.Kom</td>
        </tr>
        <tr>
            <td>9</td>
            <td>Jumat</td>
            <td>09:00 - 10:40</td>
            <td>Lab 7</td>
            <td>Sistem Basis Data</td>
            <td>2</td>
            <td>NURUL AMALIA, M.KOM</td>
        </tr>
        <tr>
            <td>10</td>
            <td>Jumat</td>
            <td>13:00 - 14:40</td>
            <td>C.3</td>
            <td>Jaringan Komputer II</td>
            <td>2</td>
            <td>ARI PUTRA WIBOWO, S.KOM</td>
        </tr>
        <tr>
            <td>11</td>
            <td>Jumat</td>
            <td>15:00 - 16:40</td>
            <td>Lab 4</td>
            <td>Jaringan Komputer II</td>
            <td>2</td>
            <td>ARI PUTRA WIBOWO, S.KOM</td>
        </tr>
    </table>

    <br>
    <hr>
</div>

<?= $this->endSection(''); ?>