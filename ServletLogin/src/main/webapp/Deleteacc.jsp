<%@page import="controller.holoDAO,model.Acc,java.sql.*,DB.DBcon"%>
<jsp:useBean id="b" class="model.Acc"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>

<%!static Connection conn;
static PreparedStatement ps;
static ResultSet rs;
static String sql; %>

<%
	int status = 0;
	String k = request.getParameter("accid");
	try{
	conn = new DBcon().setConnection();
	ps = conn.prepareStatement("delete from hololearn.account where accid=?");
	ps.setString(1, k);
	status = ps.executeUpdate();
	} catch (Exception e) {
        System.out.println(e);
    }
    //FeedDAO.delete(b);
    response.sendRedirect("./Admin.jsp");
%>