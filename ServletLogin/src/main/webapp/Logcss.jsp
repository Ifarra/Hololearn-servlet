<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hololearn</title>
    <link rel="stylesheet" href="css/login.css" />
    <link
      href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap"
      rel="stylesheet"
    />
    <script
      src="https://kit.fontawesome.com/c2cadab24e.js"
      crossorigin="anonymous"
    ></script>
    <link href="img/favicon.ico" rel="icon" type="image/x-icon" />

    <link
      rel="apple-touch-icon"
      sizes="180x180"
      href="img/apple-touch-icon.png"
    />
    <link
      rel="icon"
      type="image/png"
      sizes="32x32"
      href="img/favicon-32x32.png"
    />
    <link
      rel="icon"
      type="image/png"
      sizes="16x16"
      href="img/favicon-16x16.png"
    />
    <link rel="manifest" href="img/site.webmanifest" />
  </head>
  <body>
    <!--<img class="wave" src="img/wave.png" />
    <img class="wave2" src="img/wave.png" />
    <div class="container">
      <div class="img">
        <img src="img/ayunda ricu.png" />
      </div>-->
      <div class="login-content">
        <form action="masuk" method="post">
          <!--<img src="img/profile oren.svg" />-->
          <!--<img src="img/Ayunda.png" /
          style="pointer-events:none;user-select:none;">-->
          <h2 class="title">
            Hololearn<br><span class="cumzone">Academy</span>
          </h2>
          <div class="input-div one">
            <div class="i">
              <i class="fas fa-user"></i>
            </div>
            <div class="div">
              <h5>Username</h5>
              <input type="text" class="input" required id="Username" name="username" />
            </div>
          </div>
          <div class="input-div pass">
            <div class="i">
              <i class="fas fa-lock"></i>
            </div>
            <div class="div">
              <h5>Password</h5>
              <input type="password" class="input" required id="Password" name="password" />
            </div>
          </div>
          <a href="#" id="bruh">Forgot Password?</a>
          <input
            type="submit"
            class="btn"
            id="btnpress"
            value="Login"
          />
        </form>
      </div>
    </div>

    <div class="popup ${popuplog}" id="popup">
      <!--img src="/img/404-tick.png"-->
      <h2>SUCCESS</h2>
      <p>welcome to the hololearn</p>
    </div>

    <div class="popup" id="popupisnt">
      <h2>WRONG!</h2>
      <p>user or password is wrong</p>
    </div>

    <div class="popup" id="popupdumb">
      <h2>HAHA LOSER!</h2>
    </div>

    <script src="js/valid.js"></script>
    <script src="js/login.js"></script>
  </body>
</html>