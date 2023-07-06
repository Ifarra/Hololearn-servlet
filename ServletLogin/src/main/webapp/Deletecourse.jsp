<%@page import="controller.CourseDAO,model.Course"%>
<jsp:useBean id="b" class="model.Course"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>

<%
CourseDAO.delete(b);
response.sendRedirect("./Admin.jsp");
%>