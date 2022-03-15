<?= $this->extend('auth/templates/index'); ?>

<?= $this->section('content'); ?>

<div class="container" style="font-family: 'Poppins';">

    <!-- Outer Row -->
    <div class="row justify-content-center" style="margin: 10% auto;">

        <div class="col-md-6">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg">
                            <div class="p-5">

                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Welcome Guys!</h1>
                                </div>
                                
                                <?= view('Myth\Auth\Views\_message_block') ?>

                                <!-- form -->
                                <form class="user" <?= route_to('login') ?>" method="post"> <?= csrf_field() ?>

                                    <!-- email form -->
                                    <div class="form-group">
                                        <input type="email" class="form-control form-control-user <?php if(session('errors.login')) : ?>is-invalid<?php endif ?>"
                                            name="login" aria-describedby="emailHelp"
                                            placeholder="Email">
                                        <div class="invalid-feedback">
                                            <?= session('errors.login') ?>
                                        </div>
                                    </div>
                                    
                                    <!-- password form -->
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user <?php if(session('errors.login')) : ?>is-invalid<?php endif ?>"
                                            name="password" placeholder="<?=lang('Auth.password')?>">
                                        <div class="invalid-feedback">
                                            <?= session('errors.password') ?>
                                        </div>
                                    </div>
                                    
                                    <!-- remember button -->
                                    <?php if ($config->allowRemembering): ?>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox small">
                                            <input type="checkbox" name="remember" class="custom-control-input"
                                                id="customCheck" <?php if(old('remember')) : ?> checked
                                            <?php endif ?>>
                                            <label class="custom-control-label" for="customCheck">Remember
                                                Me</label>
                                        </div>
                                    </div>
                                    <?php endif; ?>
                                    
                                    <!-- login button -->
                                    <button type="submit" style="background-color: #1A374D; color: white;" class="btn btn-user btn-block">
                                        <?=lang('Auth.loginAction')?>
                                    </button>
                                
                                </form>
                                
                                <hr>
                                
                                <!-- forgot password button -->
                                <?php if ($config->activeResetter): ?>
                                    <div class="text-center">
                                        <a class="small" style="color: #1A374D;" href="<?= route_to('forgot') ?>"> <?=lang('Auth.forgotYourPassword')?></a>
                                    </div>
                                <?php endif; ?>
                            
                                <!-- registration button -->
                                <?php if ($config->allowRegistration) : ?>
                                    <div class="text-center">
                                        <a class="small" style="color: #1A374D;" href="<?= route_to('register') ?>"> <?=lang('Auth.needAnAccount')?> Register </a>
                                    </div>
                                <?php endif; ?>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>

<?= $this->endSection();?>