<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/ebook.css" />

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
  		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  	
  		if(session.getAttribute("uName")==null){
  			response.sendRedirect("./Logcss.jsp");
  		}
  		
  		String showlogout = "none";
		if (session.getAttribute("Title")!=null){
			showlogout = "block";
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
            <li><a href="./Course.jsp">Courses</a></li>
            <li><a href="./Contact.jsp">Contact us</a></li>
            <li><a href="./Profile.jsp">Profile</a></li>
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

    <div class="section2s">
      <p class="ebokp">Hololearn library</p>
      <div class="flex">
        <div class="card-container">
          <div class="card">
            <div class="front-content">
              <p>Hover me</p>
            </div>
            <div class="content">
              <p class="heading">advance sales accounting</p>
              <p>
                Containing a lot of useful advice for advance sales strategy and
                becoming an expert as a decision maker, determine the
                appropriate target market, used to competing with others, and
                understanding different buyer habits and psychology to finally
                win their interest.
              </p>
            </div>
          </div>
        </div>
        <div class="card-container">
          <div class="card">
            <div class="front-content">
              <p>Hover me</p>
            </div>
            <div class="content">
              <p class="heading">Agriculture</p>
              <p>
                Plants grow fast for some reason, and produce a lot of seeds is
                one of the reason. most of human calories are came from annual
                agriculture, and this book will explain to you how we can have
                many benefits of natural, and create agricultural systems that
                imitates nature in form and function.
              </p>
            </div>
          </div>
        </div>
        <div class="card-container">
          <div class="card">
            <div class="front-content">
              <p>Hover me</p>
            </div>
            <div class="content">
              <p class="heading">Business from small</p>
              <p>
                Jay Levinson revolutionized marketing strategies for the small
                business owner with his take-no-prisoners approach to finding
                clients. hundreds of solid ideas that really work are ready to
                become your inspiration to start your own business with small
                scale.
              </p>
            </div>
          </div>
        </div>
        <div class="card-container">
          <div class="card">
            <div class="front-content">
              <p>Hover me</p>
            </div>
            <div class="content">
              <p class="heading">Every count</p>
              <p>
                Reveals the most innovative and successful tools for increasing
                income, building professional authority, creating and
                maintaining a community of customers, engaging in creative
                marketing, and maximizing sales. Apply the skills and strategies
              </p>
            </div>
          </div>
        </div>
        <div class="card-container">
          <div class="card">
            <div class="front-content">
              <p>Hover me</p>
            </div>
            <div class="content">
              <p class="heading">Capitalism rules</p>
              <p>
                Capitalism is often thought of as an economic system in which
                private actors own and control property in accord with their
                interests, and demand and supply freely set prices in markets in
                a way that can serve the best interests of society.
              </p>
            </div>
          </div>
        </div>
        <div class="card-container">
          <div class="card">
            <div class="front-content">
              <p>Hover me</p>
            </div>
            <div class="content">
              <p class="heading">Creative marketing</p>
              <p>
                Reveals the most innovative and successful tools for increasing
                income, building professional authority, creating and
                maintaining a community of customers, engaging in creative
                marketing, and maximizing sales. Apply the skills and strategies
              </p>
            </div>
          </div>
        </div>
        <div class="card-container">
          <div class="card">
            <div class="front-content">
              <p>Hover me</p>
            </div>
            <div class="content">
              <p class="heading">Gym Advise</p>
              <p>
                an ultimate advicer for complete gym or fitness beginners or
                slightly advanced gym visitors. The book si simple, not overly
                complicated but the most importantly it contains VALUE! Value
                that can help you to reach your ultimate goal and fullfil your
                potential.
              </p>
            </div>
          </div>
        </div>
        <div class="card-container">
          <div class="card">
            <div class="front-content">
              <p>Hover me</p>
            </div>
            <div class="content">
              <p class="heading">Humanist history</p>
              <p>
                Ask just about any humanist, and you will hear that the
                humanities are in a crisis. Facing utilitarian approaches to
                education, the corporatization of the university, plummeting
                enrollments, budget cuts, and political critiques from right,
                left, and center, humanists find themselves on the defensive.
              </p>
            </div>
          </div>
        </div>
        <div class="card-container">
          <div class="card">
            <div class="front-content">
              <p>Hover me</p>
            </div>
            <div class="content">
              <p class="heading">Logistic service</p>
              <p>
                logistic services practice and explore the paper finishing into
                books include exploration of the development. team building.
              </p>
            </div>
          </div>
        </div>
        <div class="card-container">
          <div class="card">
            <div class="front-content">
              <p>Hover me</p>
            </div>
            <div class="content">
              <p class="heading">Nurseing</p>
              <p>
                perfect tool for you to use to select the appropriate diagnosis
                to plan your patient’s care effectively. The 12th Edition
                features the latest nursing diagnoses and updated interventions.
              </p>
            </div>
          </div>
        </div>
        <div class="card-container">
          <div class="card">
            <div class="front-content">
              <p>Hover me</p>
            </div>
            <div class="content">
              <p class="heading">Building business</p>
              <p>
                marketing strategies for the small business owner with his
                take-no-prisoners approach to finding clients. hundreds of solid
                ideas that really work are ready to become your inspiration to
                start your own business with small scale.
              </p>
            </div>
          </div>
        </div>
        <div class="card-container">
          <div class="card">
            <div class="front-content">
              <p>Hover me</p>
            </div>
            <div class="content">
              <p class="heading">Sosmed strategist</p>
              <p>
                marketing strategies for the small business owner with his
                take-no-prisoners approach to finding clients. hundreds of solid
                ideas that really work are ready to become your inspiration to
                start your own business with small scale.
              </p>
            </div>
          </div>
        </div>
        <div class="card-container">
          <div class="card">
            <div class="front-content">
              <p>Hover me</p>
            </div>
            <div class="content">
              <p class="heading">Tech Plus</p>
              <p>
                Most advance technology chatalog for those who love to know more
                ;)
              </p>
            </div>
          </div>
        </div>
        <div class="card-container">
          <div class="card">
            <div class="front-content">
              <p>Hover me</p>
            </div>
            <div class="content">
              <p class="heading">Dimensions</p>
              <p>
                Reveals the most innovative and successful tools for increasing
                income, building professional authority, creating and
                maintaining a community of customers, engaging in creative
                marketing, and maximizing sales. Apply the skills and strategies
              </p>
            </div>
          </div>
        </div>
      </div>
      <footer style="background: transparent">
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
    </div>

    <script src="js/script.js"></script>
  </body>
</html>