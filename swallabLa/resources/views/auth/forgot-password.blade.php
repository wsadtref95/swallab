<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>忘記密碼</title>
    <style>
        body, html {
            height: 100%;
        }
        .main-container {
            height: 100%;
        }
    </style>
</head>

<body>
    <div class="container d-flex justify-content-center align-items-center main-container">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header text-center">
                    <h4>{{ __('忘記密碼') }}</h4>
                </div>
                <div class="card-body">
                    <div class="mb-4 text-sm text-gray-600">
                        {{ __('忘記密碼了嗎？沒問題。只需告訴我們您的電子郵件地址，我們就會透過電子郵件向您發送密碼重設鏈接，您可以透過該連結選擇新密碼。') }}
                    </div>

                    <!-- Session Status -->
                    <x-auth-session-status class="alert alert-success mb-4" :status="session('status')" />

                    <form method="POST" action="{{ route('password.email') }}">
                        @csrf

                        <!-- Email Address -->
                        <div class="mb-3">
                            <x-input-label for="email" :value="__('Email')" class="form-label" />
                            <x-text-input id="email" class="form-control" type="email" name="email" :value="old('email')" required autofocus />
                            <x-input-error :messages="$errors->get('email')" class="text-danger mt-2" />
                        </div>

                        <div class="d-flex justify-content-end mt-4">
                            <x-primary-button class="btn btn-primary">
                                {{ __('密碼重設連結') }}
                            </x-primary-button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
