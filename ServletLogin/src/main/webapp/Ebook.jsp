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
  
  	<%@page import="controller.BookDAO,model.*,java.util.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  	
  	<%
  		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  	
  		if(session.getAttribute("uName")==null){
  			response.sendRedirect("./Logcss.jsp");
  		}
  		
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
  	
  	<%
	  	List<Book> list = BookDAO.getAllRecords();
	    request.setAttribute("list", list);
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
            <li><a href="./Contact.jsp">Contact us</a></li>
            <li><a href="./Member.jsp">Member</a></li>
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

    <div class="section2s">
      <p class="ebokp">Hololearn library</p>
      <div class="flex">
      <c:forEach items="${list}" var="b">
        <div class="card-container">
          <div class="card" style="
          background: url(${b.getBookimg()});
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;">
            <div class="front-content">
              <p>${b.getBookid()}</p>
            </div>
            <div class="content">
              <p class="heading">${b.getBooktitle()}</p>
              <p>
                ${b.getBookdesc()}
              </p>
            </div>
          </div> 
        </div>
        </c:forEach> 
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