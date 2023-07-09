<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/member.css" />

    <link
      href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css"
      rel="stylesheet"
    />

    <title>Hololearn</title>

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
  
  <% 
	  	String showlogout = "none";
		String showprofile = "none";
		String Title = "";
		String showlogin= "block";
		if (session.getAttribute("Title")!=null){
			Title = (String) session.getAttribute("Title");
			showlogout = "block";
			showlogin = "none";
			showprofile = "block";
		}
	%>
    <nav>
      <div class="nav-bar">
        <i class="bx bx-menu sidebarOpen"></i>
        <span class="logo navLogo"><a href="#">Hololearn</a></span>

        <div class="menu">
          <div class="logo-toggle">
            <span class="logo"><a href="#">Hololearn</a></span>
            <i class="bx bx-x siderbarClose"></i>
          </div>

          <ul class="nav-links">
            <li><a href="./Home.jsp">Home</a></li>
            <li><a href="./Concact.jsp">Contact us</a></li>
            <li><a href="./Ebook.jsp">E-Book</a></li>
            <li style="display:<%=showprofile%>"><a href="./Course.jsp">Course</a></li>
			<li style="display:<%=showprofile%>"><a href="./Profile.jsp">Profile</a></li>
            <li style="display:<%=showlogin%>"><a href="./Logcss.jsp">Login</a></li>
            <li style="display:<%=showlogout%>"><a href="#"><form action="Logout" method="post"><input type="submit" value="logout" class="btnlogout"></form></a></li>
            
          </ul>
        </div>

        <div class="darkLight-searchBox">
          <div class="dark-light">
            <i class="bx bx-moon moon"></i>
            <i class="bx bx-sun sun"></i>
          </div>
        </div>
      </div>
    </nav>

    <div class="section2">
      <div class="sec3">
        <div class="sec3img" style="padding-top: 40px">
          <div class="imgread"></div>
        </div>
        <div class="sec3text">
          <p style="color: var(--text-color)">
            <strong>Hololearn: Revolutionize Your Learning Experience</strong
            ><br />
            Welcome Hololearn members!Thank you for joining. We have provided many programs that help you with digital media 
            that you can access anywhere and anytime."A warm welcome to you! So nice to have you among us!" <br/><br/>

			Hololearn is the number one web learning platform that provides practical, up-to-date, and accurate online learning 
			programs in Indonesia. for you! Hololearn members can take advantage of online learning videos from the best tutors in Indonesia. With this web-based learning, you can also read international-level books according to your needs. Not only that, but this website can also help answer questions and solve problems that members experience by contacting our best tutors.<br/><br/>

			Hey Holoneers!Need to record videos? important notes from the tutor? or need access to more learning videos? Hololearn 
			has a special promo for members!Use promo code 'LOVELEARNHOLO' to get a 40% discount!This discount promo from Hololearn can help you get other features, and you can start using it from July 1–30, 2023."Soon to add other interesting features!"
          </p>
        </div>
        <div class="btnsec3abtus">
        <a href="Register.jsp"><button class="btn">JOIN US</button></a>
          
        </div>
      </div>
    </div>
    <footer>
      <div class="copyright">
        <p>
          <small
            >Copyright. All Rights Reserved | by
            <a target="_blank" rel="nofollow" href="http://github.com/Ifarra"
              >Hololearn: E-Learning website</a
            >.</small
          >
        </p>
      </div>
    </footer>
    <script src="js/script.js"></script>
  </body>
</html>