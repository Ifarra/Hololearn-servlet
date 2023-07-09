<%@page import="controller.BookDAO,java.sql.*,DB.DBcon"%>
<jsp:useBean id="bgst" class="model.Book">
	<jsp:setProperty name="bgst" property="*"></jsp:setProperty>
</jsp:useBean>

<%
	int bookid = BookDAO.update(bgst);
	response.sendRedirect("Admin.jsp");
%>