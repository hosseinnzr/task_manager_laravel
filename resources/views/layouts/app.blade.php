<!DOCTYPE html>
<html>
    <head>
        <title>لیست وظایف</title>
        <script src="https://cdn.tailwindcss.com"></script>
        @yield('styles')
        @notifyCss
    </head>
<body class="container mx-auto mt-10 mb-10 max-w-lg">
    <h1 class="text-2xl" dir="rtl">@yield('title')</h1>
    <div>
        <p>@yield('content')</p>
    </div>
    @if (session()->has('success'))
        <x-notify::notify />
        @notifyJs

    @endif
</body>
</html>