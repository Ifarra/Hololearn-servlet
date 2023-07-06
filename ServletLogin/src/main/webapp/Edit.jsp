<%@page import="java.sql.*,DB.DBcon"%>
<jsp:useBean id="b" class="model.Feed"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>

<%!static Connection conn;
static PreparedStatement ps;
static ResultSet rs;
static String sql; %>

<% 
try {
	String k = request.getParameter("ids");
          conn = new DBcon().setConnection();
          ps = conn.prepareStatement("select * from hololearn.account where accid=?");
          ps.setString(1, k);
          ResultSet rs = ps.executeQuery();  
          if (rs.next()){
          request.setAttribute("idss", rs.getInt("accid"));
          request.setAttribute("namess", rs.getString("accname"));
          request.setAttribute("passss", rs.getString("accpass"));
          request.setAttribute("roless", rs.getString("accrole"));
          request.setAttribute("mailss", rs.getString("accmail"));
          RequestDispatcher rd = request.getRequestDispatcher("/Accedit.jsp");
          rd.forward(request, response);
          }else {
        	  response.sendRedirect("/Admin.jsp");
          }
      } catch (Exception e) {
          System.out.println(e);
      }
        
%>