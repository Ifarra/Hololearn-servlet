<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="css/style.css" />

    <link
      href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css"
      rel="stylesheet"
    />

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

    <title>Hololearn</title>
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
            <li><a href="./Contact.jsp">Contact us</a></li>
            <li><a href="./Member.jsp">Member</a></li>
            <li style="display:<%=showprofile%>"><a href="./Course.jsp">Course</a></li>
            <li><a href="./Ebook.jsp">E-Book</a></li>
            <li style="display:<%=showprofile%>"><a href="./Profile.jsp">Profile</a></li>
            <li style="display:<%=showlogin%>"><a href="./Logcss.jsp">Login</a></li>
            <li style="display:<%=showlogout%>"><a href="#"><form action="Logout" method="post"><input type="submit" value="logout" class="btnlogout"></form></a></li>
            <!-- <li><a href="#">Contact us</a></li> -->
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

    <div class="section1">
      <div class="textpara">
        Hololearn<span class="textparaspan"
          ><br /><%=Title %></span
        ><br /><span class="textparaspan"
          >Hololive based E-learning web</span
        >
      </div>
    </div>
    <div class="section2">
      <div class="sec2title">
        <h1>Our learning method</h1>
      </div>
      <div class="containercard">
        <div class="card__wrap--outer">
          <div class="card__wrap--inner">
            <div class="card">
              <div class="imgcard" id="crd1">
                <!-- <img
                  src="https://virtuacorner.com/wp-content/uploads/2022/01/Ayunda-Risu-AliceU.jpg"
                /> -->
              </div>
              <div class="card__item cardbawah">
                <h2>Simplicity</h2>
              </div>
              <div class="card__sub">
                <small>Hololearning method</small>
              </div>
              <div class="card__item flexible">
                <p>
                  <small
                    >With our hololearning method, we can divide complicated
                    lessons into simple and easy-to-understand chunks, and
                    bite-sized learning materials make it easier for students to
                    understand the core of the topic.</small
                  >
                </p>
              </div>
              <!-- <div class="card__footer crd">
                <a class="pull" href="#"><small>Read more</small></a>
                <a class="push" href="#"><small>Share</small></a>
              </div> -->
            </div>
          </div>

          <div class="card__wrap--inner">
            <div class="card">
              <div class="imgcard" id="crd2">
                <!-- <img
                  src="https://i.ytimg.com/vi/IGviVpVE1fA/maxresdefault.jpg"
                /> -->
              </div>
              <div class="card__item cardbawah">
                <h2>Efficient</h2>
              </div>
              <div class="card__sub">
                <small>Bite-sized Leason</small>
              </div>
              <div class="card__item flexible">
                <p>
                  <small
                    >At Hololearn, we prioritize efficiency in conveying subject
                    matter. In addition to increasing student focus, we can also
                    shorten class hours.</small
                  >
                </p>
              </div>
              <!-- <div class="card__footer">
                <a class="pull" href="#"><small>Read more</small></a>
                <a class="push" href="#"><small>Share</small></a>
              </div> -->
            </div>
          </div>

          <div class="card__wrap--inner">
            <div class="card">
              <div class="imgcard" id="crd3">
                <!-- <img
                  src="https://pbs.twimg.com/ext_tw_video_thumb/1482345121610084356/pu/img/yHlcN0crEPRwrFzE.jpg:large"
                /> -->
              </div>
              <div class="card__item cardbawah">
                <h2>Consistentcy</h2>
              </div>
              <div class="card__sub">
                <small>Learing with target</small>
              </div>
              <div class="card__item flexible">
                <p>
                  <small
                    >By making targets, students can be consistent with the
                    goals of the lesson. They can also make an analysis of the
                    most efficient way to manage their time to achieve these
                    targets.</small
                  >
                </p>
              </div>
              <!-- <div class="card__footer">
                <a class="pull" href="#"><small>Read more</small></a>
                <a class="push" href="#"><small>Share</small></a>
              </div> -->
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="section3">
      <div class="sec3">
        <div class="sec3img">
          <div class="imgread"></div>
        </div>
        <div class="sec3text">
          <p>
            <strong>Hololearn: Revolutionize Your Learning Experience</strong
            ><br />
            Welcome to Hololearn, the cutting-edge e-learning platform that will
            transform the way you learn. With our innovative learning method,
            you'll be immersed in an interactive virtual environment that brings
            your lessons to life. Gain a competitive advantage with our
            personalized learning paths, tailored to your individual needs and
            preferences. Engage in dynamic simulations, collaborative projects,
            and real-world scenarios, enhancing your understanding and practical
            skills. Hololearn empowers you to learn anytime, anywhere, at your
            own pace. Say goodbye to traditional textbooks and embrace the
            future of education. Join us on Hololearn and embark on an
            unforgettable learning journey.
          </p>
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