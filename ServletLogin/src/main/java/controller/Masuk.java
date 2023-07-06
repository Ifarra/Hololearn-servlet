package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DB.DBcon;

@WebServlet("/masuk")
public class Masuk extends HttpServlet{
	
	static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;
    //awooga
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		String uName = request.getParameter("username");
        String pass = request.getParameter("password");
        String Title = "Welcome to Hololearn " + uName + " have a fantastic day!";
        
        //login admin and user
        try {
            conn = new DBcon().setConnection();
            	ps = conn.prepareStatement("select * from account where accname = ? and accpass = ? and accrole = 'admin'");
            	ps.setString(1, uName);
                ps.setString(2, pass);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                	HttpSession session = request.getSession();
                	session.setAttribute("uName", uName);
                	session.setAttribute("Title", Title);
                	session.setAttribute("role", "admin");
                    RequestDispatcher rd = request.getRequestDispatcher("/Admin.jsp");
//                    request.setAttribute("Title", Title);
                    rd.forward(request, response);
                } else {
                	ps = conn.prepareStatement("select * from account where accname = ? and accpass = ?");
                    ps.setString(1, uName);
                    ps.setString(2, pass);
                    ResultSet rsa = ps.executeQuery();
                    if (rsa.next()) {
                    	HttpSession session = request.getSession();
                    	session.setAttribute("uName", uName);
                    	session.setAttribute("Title", Title);
                    	session.setAttribute("role", "user");
                        RequestDispatcher rd = request.getRequestDispatcher("/Home.jsp");
//                        request.setAttribute("Title", Title);
                        rd.forward(request, response);
                    } else {
                    	RequestDispatcher rd = request.getRequestDispatcher("/Logcss.jsp");
                    	request.setAttribute("error", "Unknown user, please try again");
//                    	request.setAttribute("popuplog", popuplog);
                    	rd.forward(request, response);
                    }
                } 
        } catch (Exception e) {
        	System.out.println(e);
        }
    }
}
