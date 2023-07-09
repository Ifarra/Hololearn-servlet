<%@page import="controller.CourseDAO,java.sql.*,DB.DBcon"%>
<jsp:useBean id="bgst" class="model.Course">
	<jsp:setProperty name="bgst" property="*"></jsp:setProperty>
</jsp:useBean>


<%!
static Connection conn;
static PreparedStatement ps;
static ResultSet rs;
static String sql;
%>

<%

/*
String id = request.getParameter("courseid");
String title = request.getParameter("coursetitle");
String link = request.getParameter("courselink");
String topic = request.getParameter("coursetopic");

try {
    conn = new DBcon().setConnection();
    ps = conn.prepareStatement("update hololearn.course set coursetitle=?,coursetopic=?,courselink=? where courseid=?");
    ps.setString(1, title);
    ps.setString(2, topic);
    ps.setString(3, link);
    ps.setString(4, id);
	ps.executeUpdate();
} catch (Exception e) {
    System.out.println(e);
}
*/
    int cocurseid = CourseDAO.update(bgst);
    response.sendRedirect("Admin.jsp");
%>