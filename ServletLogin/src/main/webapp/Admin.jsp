<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

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
  
  	<%@page import="controller.holoDAO,model.*,controller.FeedDAO,controller.CourseDAO,controller.BookDAO,java.util.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        
        <%
	  		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	  	
	  		if(session.getAttribute("uName")==null){
	  			response.sendRedirect("./Logcss.jsp");
	  		}
	  		
	  		if(session.getAttribute("role")=="user"){
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
            List<Acc> list = holoDAO.getAllRecords();
            request.setAttribute("list", list);
            
            List<Feed> flist = FeedDAO.getAllRecords();
            request.setAttribute("flist", flist);
            
            List<Course> clist = CourseDAO.getAllRecords();
    	    request.setAttribute("clist", clist);
    	    
    	    List<Book> blist = BookDAO.getAllRecords();
    	    request.setAttribute("blist", blist);
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
            <li><a href="./Ebook.jsp">E-Book</a></li>
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
      <section>
      
      
  <!--ACCOUNT TABLE-->
  <div class="table-acc">
  <h1>Account Manager Table</h1>
  
  		
  
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>ID</th>
          <th>Username</th>
          <th>Password</th>
          <th>Role</th>
          <th>E-Mail</th>
          <th>Edit</th>
          <th>Delete</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      <c:forEach items="${list}" var="b">
        <tr>
          <td>${b.getId()}</td>
          <td>${b.getName()}</td>
          <td>${b.getPass()}</td>
          <td>${b.getRole()}</td>
          <td>${b.getMail()}</td>
          <!--  <td><a href="Edit.jsp?ids=${b.getId()}">Edit</a></td>
          <td><a href="Deleteacc.jsp?accid=${b.getId()}">Delete</a></td>-->
          <td><a href="Edit.jsp?ids=${b.getId()}"><button class="boomcock full-rounded"><span>Edit</span><div class="border full-rounded"></div></button></a></td>
          <td><a href="Deleteacc.jsp?accid=${b.getId()}"><button class="boomcock full-rounded"><span>Delete</span><div class="border full-rounded"></div></button></a></td>
        </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
  </div>
</section>
    </div>
    
    <div class="section3">
      <section>
  
  
  <!--FEEDBACK TABLE-->
  <div class="table-feed">
  <h1>Feedback Manager Table</h1>
  
  		
  
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Email</th>
          <th>Feed</th>
          <th>Delete</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      <c:forEach items="${flist}" var="fl">
        <tr>
          <td>${fl.getId()}</td>
          <td>${fl.getName()}</td>
          <td>${fl.getMail()}</td>
          <td>${fl.getComment()}</td>
          <!--<td><a href="Deletefeed.jsp?feedid=${fl.getId()}"></a></td>-->
          <td><a href="Deletefeed.jsp?feedid=${fl.getId()}"><button class="boomcock full-rounded"><span>Delete</span><div class="border full-rounded"></div></button></a></td>
        </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
  </div>

      
      
  <!--COURSE TABLE-->
  <div class="table-acc">
  <h1>Courses Manager Table</h1>
  <a style="position: relative;
  padding-bottom: 5px;
    display: flex;
    align-items: center;
    justify-content: center;" href="Addcourse.jsp?courseid=${b.getCourseid()}"><button class="boomcock full-rounded"><span>Add</span><div class="border full-rounded"></div></button></a>
  
  		
  
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>ID</th>
          <th>Title</th>
          <th>Topic</th>
          <th>Link</th>
          <th>Edit</th>
          <th>Delete</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      <c:forEach items="${clist}" var="b">
        <tr>
          <td>${b.getCourseid()}</td>
          <td>${b.getCoursetitle()}</td>
          <td>${b.getCoursetopic()}</td>
          <td>${b.getCourselink()}</td>
          <!--<td><a href="Courseedit.jsp?ids=${b.getCourseid()}">Edit</a></td>
          <td><a href="Deletecourse.jsp?accid=${b.getCourseid()}">Delete</a></td>-->
          <td><a href="Courseedit.jsp?id=${b.getCourseid()}"><button class="boomcock full-rounded"><span>Edit</span><div class="border full-rounded"></div></button></a></td>
          <td><a href="Deletecourse.jsp?courseid=${b.getCourseid()}"><button class="boomcock full-rounded"><span>Delete</span><div class="border full-rounded"></div></button></a></td>
        </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
  
  <!--COURSE TABLE-->
  <div class="table-acc">
  <h1>Book Manager Table</h1>
  <a style="position: relative;
  padding-bottom: 5px;
    display: flex;
    align-items: center;
    justify-content: center;" href="Addbook.jsp?bookid=${b.getCourseid()}"><button class="boomcock full-rounded"><span>Add</span><div class="border full-rounded"></div></button></a>
  
  		
  
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>ID</th>
          <th>Title</th>
          <th>Description</th>
          <th>Image</th>
          <th>Edit</th>
          <th>Delete</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      <c:forEach items="${blist}" var="b">
        <tr>
          <td>${b.getBookid()}</td>
          <td>${b.getBooktitle()}</td>
          <td>${b.getBookdesc()}</td>
          <td>${b.getBookimg()}</td>
          <td><a href="Bookedit.jsp?id=${b.getBookid()}"><button class="boomcock full-rounded"><span>Edit</span><div class="border full-rounded"></div></button></a></td>
          <td><a href="Deletebook.jsp?bookid=${b.getBookid()}"><button class="boomcock full-rounded"><span>Delete</span><div class="border full-rounded"></div></button></a></td>
        </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
  </div>
  </div>
</section>
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
    <script>
    $(window)
    .on("load resize ", function () {
      var scrollWidth =
        $(".tbl-content").width() - $(".tbl-content table").width();
      $(".tbl-header").css({ "padding-right": scrollWidth });
    })
    .resize();

    </script>
    <script src="js/script.js"></script>
  </body>
</html>