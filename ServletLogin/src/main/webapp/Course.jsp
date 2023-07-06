<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/admin.css" />

	<style>
		.boomcock {
 font-size: 9px;
 position: relative;
 margin: auto;
 padding: 1em 2em 1em 2em;
 border: none;
 background: #fff;
 transition: all 0.1s linear;
 box-shadow: 0 0.4em 1em rgba(0, 0, 0, 0.1);
}

.boomcock:active {
 transform: scale(0.95);
}

.boomcock span {
 color: #464646;
}

.boomcock .border {
 position: absolute;
 border: 0.15em solid #fff;
 transition: all 0.3s 0.08s linear;
 top: 50%;
 left: 50%;
 width: 4em;
 height: 2em;
 transform: translate(-50%, -50%);
}

.boomcock:hover .border {
 display: block;
 width: 7.7em;
 height: 4.4em;
}

.full-rounded {
 border-radius: 10px;
}

.ifr{
	position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
    padding-top: 15vh;
}
	</style>
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
  
  		<%@page import="controller.CourseDAO,model.Course,java.util.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  	
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
  	
  	<%
	  	List<Course> clist = CourseDAO.getAllRecords();
	    request.setAttribute("clist", clist);
	   	 
	    String guh = request.getParameter("courselink");
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

    <div class="section2">
    <div class="ifr">
    
    <iframe width="853" height="480" src="https://www.youtube.com/embed/<%=guh%>" title="TVアニメ『未確認で進行形』ノンテロップOP映像　「とまどい→レシピ／みかくにんぐッ！」" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    </div>
      <section>
      
      
  <!--ACCOUNT TABLE-->
  <div class="table-acc">
  <h1>Available Courses</h1>
  
  		
  
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>ID</th>
          <th>Title</th>
          <th>Topic</th>
          <th>Link</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      <c:forEach items="${clist}" var="b">
        <tr>
          <td>${b.getId()}</td>
          <td>${b.getTitle()}</td>
          <td>${b.getTopic()}</td>
          <td><a href="${b.getLink()}"><button class="boomcock full-rounded">
<span>PLAY</span>
<div class="border full-rounded"></div></button></a></td>
        </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
  </div>
</section>
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