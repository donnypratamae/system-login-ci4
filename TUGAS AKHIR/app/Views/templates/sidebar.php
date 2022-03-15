<ul class="navbar-nav sidebar sidebar-dark accordion" style="background-color: #1A374D;" id="accordionSidebar">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('dashboard'); ?>">
        <i class="fas fa-house-user"></i>
            <span>Beranda</span></a>
    </li>

    <!-- jika didalam group ada admin, maka munculkan ini -->
    <?php
    
    if (in_groups('admin')) : ?>

    <!-- Nav Item - Userlist Menu -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('admin') ?>"
            aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-user-circle"></i>
            <span>User List</span>
        </a>
    </li>

    <?php endif; ?>

    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
            aria-expanded="true" aria-controls="collapseUtilities">
            <i class="fas fa-wallet"></i>
            <span>Administrasi</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
            data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="<?= base_url('administration/index');?>">Pembayaran</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true"
            aria-controls="collapsePages">
            <i class="fas fa-calendar-alt"></i>
            <span>Perkuliahan</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages"
            data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="<?= base_url('Jadwal/index')?>">Jadwal Kuliah</a>
            </div>
        </div>
    </li>

    <!-- Sidebar Toggler (Sidebar) -->
    <!-- <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div> -->

</ul>