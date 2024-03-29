<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Login</title>
    <link rel="stylesheet" href="/style-auth.css">
    
</head>

<body>
    <div class="container">
        <div class="login">
                    {{-- alert error dari controller --}}
      
            <form action="" method="post">
                @csrf
                <h1>Login</h1>
                <hr>
                @if ($errors->any())
                <div style="background-color: brown; text-align:center; color:white;">
                    
                        @foreach ($errors->all() as $item)
                            <li>{{ $item }}</li>
                        @endforeach
                     
                </div>
                
                @endif
                <p>Selamat Datang Di Halaman Login</p>
                <label for="">Email</label>
                <input type="email" name="email" placeholder="example@gmail.com">
                <label for="">Password</label>
                <input type="password" name="password" placeholder="Password">
                <button  name="submit" type="submit">Login</button>
                <p>
                    <a href="#">Forgot Password?</a>
                </p>
            </form>
        </div>
        <div class="right">
            <img src="https://www.loginradius.com/blog/static/0005ff61c9196311b738904dc2cef6f2/d3746/broken-auth.jpg" alt="">
        </div>
    </div>
</body>

</html>