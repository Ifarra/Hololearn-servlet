<%@page import="controller.BookDAO,model.Book"%>
<jsp:useBean id="b" class="model.Book"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>

<%
BookDAO.delete(b);
response.sendRedirect("./Admin.jsp");
%>