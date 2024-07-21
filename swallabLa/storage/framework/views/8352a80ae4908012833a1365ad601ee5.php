<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa; /* 改變背景顏色 */
        }
        .form-container {
            background-color: white;
            padding: 2rem;
            border-radius: 1rem;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-title {
            font-size: 1.5rem;
            font-weight: 500;
        }
        .form-subtitle {
            font-size: 1rem;
            margin-bottom: 1rem;
            color: #6c757d;
        }
        .form-label {
            font-weight: 500;
        }
        .text-success {
            font-weight: 500;
        }
    </style>
</head>
<body class="py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="form-container">
                    <header>
                        <h2 class="form-title">
                            <?php echo e(__('檔案資訊')); ?>

                        </h2>
                        <p class="form-subtitle">
                            <?php echo e(__("更新您帳戶的個人資料資訊和電子郵件地址。")); ?>

                        </p>
                    </header>

                    <form id="send-verification" method="post" action="<?php echo e(route('verification.send')); ?>">
                        <?php echo csrf_field(); ?>
                    </form>

                    <form method="post" action="<?php echo e(route('profile.update')); ?>" class="mt-4">
                        <?php echo csrf_field(); ?>
                        <?php echo method_field('patch'); ?>

                        <div class="mb-3">
                            <label for="name" class="form-label"><?php echo e(__('姓名')); ?></label>
                            <input id="name" name="name" type="text" class="form-control" value="<?php echo e(old('name', $user->name)); ?>" required autofocus autocomplete="name">
                            <?php $__errorArgs = ['name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                <div class="text-danger mt-1"><?php echo e($message); ?></div>
                            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                        </div>

                        <div class="mb-3">
                            <label for="phone" class="form-label"><?php echo e(__('電話')); ?></label>
                            <input id="phone" name="phone" type="text" class="form-control" value="<?php echo e(old('phone', $user->phone)); ?>" required autofocus autocomplete="phone">
                            <?php $__errorArgs = ['phone'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                <div class="text-danger mt-1"><?php echo e($message); ?></div>
                            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                        </div>

                        <div class="mb-3">
                            <label for="email" class="form-label"><?php echo e(__('信箱')); ?></label>
                            <input id="email" name="email" type="email" class="form-control" value="<?php echo e(old('email', $user->email)); ?>" required autocomplete="username">
                            <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                <div class="text-danger mt-1"><?php echo e($message); ?></div>
                            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>

                            <?php if($user instanceof \Illuminate\Contracts\Auth\MustVerifyEmail && ! $user->hasVerifiedEmail()): ?>
                                <div class="mt-3">
                                    <p class="text-muted">
                                        <?php echo e(__('Your email address is unverified.')); ?>

                                        <button form="send-verification" class="btn btn-link p-0">
                                            <?php echo e(__('Click here to re-send the verification email.')); ?>

                                        </button>
                                    </p>
                                    <?php if(session('status') === 'verification-link-sent'): ?>
                                        <p class="text-success">
                                            <?php echo e(__('A new verification link has been sent to your email address.')); ?>

                                        </p>
                                    <?php endif; ?>
                                </div>
                            <?php endif; ?>
                        </div>

                        <div class="d-flex justify-content-between align-items-center">
                            <button type="submit" class="btn btn-primary"><?php echo e(__('保存')); ?></button>
                            <?php if(session('status') === 'profile-updated'): ?>
                                <p x-data="{ show: true }" x-show="show" x-transition x-init="setTimeout(() => show = false, 2000)" class="text-success m-0">
                                    <?php echo e(__('Saved.')); ?>

                                </p>
                            <?php endif; ?>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
<?php /**PATH C:\xampp\htdocs\projj\resources\views/profile/partials/update-profile-information-form.blade.php ENDPATH**/ ?>