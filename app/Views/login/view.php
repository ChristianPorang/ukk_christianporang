<!DOCTYPE html>
<html lang="en">
<head>

<title style="color: black;">Log in</title>

 

    <style media="screen">
      *,
*:before,
*:after{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
    background-color: #C0C0C0;
    
}
.background{
    width: 430px;
    height: 520px;
    position: absolute;
    transform: translate(-50%,-50%);
    left: 50%;
    top: 50%;
}
.background .shape{
    height: 200px;
    width: 200px;
    position: absolute;
    border-radius: 50%;
}

form{
    height: 520px;
    width: 400px;
    background-color: rgba(255,255,255,0.13);
    position: absolute;
    transform: translate(-50%,-50%);
    top: 50%;
    left: 50%;
    border-radius: 10px;
    backdrop-filter: blur(10px);
    border: 2px solid rgba(255,255,255,0.1);
    box-shadow: 0 0 40px rgba(8,7,16,0.6);
    padding: 50px 35px;
}
form *{
    font-family: 'Poppins',sans-serif;
    color: #ffffff;
    letter-spacing: 0.5px;
    outline: none;
    border: none;
}
form h3{
    font-size: 32px;
    font-weight: 500;
    line-height: 42px;
    text-align: center;
}

label{
    display: block;
    margin-top: 30px;
    font-size: 16px;
    font-weight: 500;
}
input{
    display: block;
    height: 50px;
    width: 100%;
    background-color: rgba(255,255,255,0.07);
    border-radius: 3px;
    padding: 0 10px;
    margin-top: 8px;
    font-size: 14px;
    font-weight: 300;
}
::placeholder{
    color: #e5e5e5;
}
button{
    margin-top: 50px;
    width: 100%;
    background-color: #ffffff;
    color: #080710;
    padding: 15px 0;
    font-size: 18px;
    font-weight: 600;
    border-radius: 5px;
    cursor: pointer;
}
.social{
  margin-top: 30px;
  display: flex;
}
.social div{
  background: red;
  width: 150px;
  border-radius: 3px;
  padding: 5px 10px 10px 5px;
  background-color: rgba(255,255,255,0.27);
  color: #eaf0fb;
  text-align: center;
}
.social div:hover{
  background-color: rgba(255,255,255,0.47);
}
.social .fb{
  margin-left: 25px;
}
.social i{
  margin-right: 4px;
}
.register-button:hover {
      background-color: #ffffff; 
    }
    </style>
</head>
<body>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <?php if (session()->has('error')): ?>
				<div class="alert alert-danger"><i class="bi bi-exclamation-circle"></i>
					<?= session('error') ?></div>
				<?php endif; ?>

				<form action="<?= base_url('/Home/aksi_login/')?>"method="post">
        <h3>Login Here</h3>

        <label for="username" style="color: black;">Username</label>
<input type="text" placeholder="Username" id="username" name="username">

<label for="password" style="color: black;">Password</label>
<input type="password" placeholder="Password" id="password" name="password">


        <style>
    .login-container {
        margin: 5px; 
    }

    .register-link {
        margin-top: 15px; 
    }
</style>

<div class="login-container">
    <button>Log In</button>
    <p class="register-link" style="color: black;">Belum Punya Akun? <a href="/Home/register" class="register-button" style="color: black;">Register Sekarang</a></p>

</div>

        
    </form>
</body>
</html>
