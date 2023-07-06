package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DB.DBcon;

@WebServlet("/Registeracc")
public class Registeracc extends HttpServlet {
	
	static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;

    //post
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String Title = "Welcome to Hololearn " + name + " have a fantastic day!";
        
        int ck =0;
        
    	try {
    		conn = new DBcon().setConnection();
			ps = conn.prepareStatement("INSERT INTO `hololearn`.`account` (`accid`, `accname`, `accpass`, `accrole`,`accmail`) VALUES (0,?,?,'user',?);");
			ps.setString(1, name);
	        ps.setString(2, password);
	        ps.setString(3, email);
	        ck = ps.executeUpdate();
	        if(ck==1) {
            	request.setAttribute("feedstats", "Success");
            	HttpSession session = request.getSession();
            	session.setAttribute("uName", name);
            	session.setAttribute("Title", Title);
            	session.setAttribute("role", "user");
                RequestDispatcher rd = request.getRequestDispatcher("/Home.jsp");
                rd.forward(request, response);
	        } else {
            	request.setAttribute("feedstats", "Failled");
                RequestDispatcher rd = request.getRequestDispatcher("/Member.jsp");
                rd.forward(request, response);
	        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
