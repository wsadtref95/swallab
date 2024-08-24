@extends('layouts.app')

@push('styles')
    <link rel="stylesheet" href="{{ asset('css/detailxi.css') }}">
    @include('layouts.map')
@endpush

@push('scripts')
    @include('layouts.map')
    <script>
        const assetBaseUrl = "{{ asset('storage/photos') }}";
        const assetBaseUrlShowCart = "{{ asset('storage/photos') }}";
    </script>
@endpush

@section('title', '餐廳內頁')

@section('content')
    <style>
        /* 你的樣式代碼可以放在這裡 */
    </style>
    <div class="container">
        <div class="row header-content">
            <div class="col-md-8 header-img">
                <div class="myimg">
                    <div id="googlemap"></div>
                </div>
            </div>
            <div class="col-md-4">
                <div id="sidebar">
                    <button id="currentLocationButton" onclick="goToCurrentLocation()">顯示我的位置</button>
                    <h3>附近餐廳</h3>
                    <ul id="places"></ul>
                </div>
            </div>
        </div> <!-- 注意結束 row header-content -->
    </div> <!-- 注意結束 container -->
@endsection
