<!DOCTYPE html>
<html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <!-- <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" /> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Styles -->
    <style>
        .navbar {
            background-color: #EEE9D5;
            height: -100px;
        }

        body {
            /* background-image: url(../img/subtle_white_feathers.webp); */
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            padding-left: 80px;
            padding-right: 80px;
        }

        .content {
            flex: 1;
        }

        .footer {
            background-color: #333;
            color: white;
            padding: 20px 0;
        }

        .container-custom {
            padding-left: 10px;
            padding-right: 10px;
        }

        #sidebar {
            position: fixed;
        }

        .border-bottom {
            font-size: large;
            font-weight: bold;
        }
        .footer{
            background-color:#6377B8;
        }
    </style>
</head>

<body class="">
    <!-- ==================================NAV===================================== -->

    <nav id="nav" class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
            <a id="a" class="navbar-brand" href="#"><img style="width: 50px; border-radius: 50%;"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav ms-auto">

                    <li class="nav-item">
                        <?php if(Route::has('login')): ?>

                        <?php if(auth()->guard()->check()): ?>
                        <a href="<?php echo e(url('/dashboard')); ?>" class="">
                            Dashboard
                        </a>
                        <?php else: ?>
                        <button class="btn btn-primary"> <a style="text-decoration: none; color:white" href="<?php echo e(route('login')); ?>"> <!-- 改html -->
                                登入
                            </a></button>


                        <?php if(Route::has('register')): ?>
                        <button class="btn btn-primary"><a style="text-decoration: none; color:white" href="<?php echo e(route('register')); ?>" class="">
                                <!-- 改html -->
                                註冊
                            </a></button>
                        <?php endif; ?>
                        <?php endif; ?>

                        <?php endif; ?>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    </header>
    <!-- ===========================Main========================================= -->
    <div class="content">
    
    </div>
    <!-- ====================================FOOTER===================================== -->
    <footer class="footer">
        <div class="container text-center">
            <span class="text-muted">版權所有 &copy; 2024 - 我的網站</span>
        </div>
    </footer>
    <!-- ==============================登入模態框========================================== -->
<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="loginModalLabel">登入</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="mb-3">
                        <label for="loginEmail" class="form-label">電子郵件</label>
                        <input type="email" class="form-control" id="loginEmail" required>
                    </div>
                    <div class="mb-3">
                        <label for="loginPassword" class="form-label">密碼</label>
                        <input type="password" class="form-control" id="loginPassword" required>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">登入</button>
                </form>
            </div>
        </div>
    </div>
</div>
    
</body>

</html><?php /**PATH C:\xampp\htdocs\projj\resources\views/welcome.blade.php ENDPATH**/ ?>