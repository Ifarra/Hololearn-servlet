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

import DB.DBcon;

@WebServlet("/Submitfeed")
public class Submitfeed extends HttpServlet {
      
	static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
        String email = request.getParameter("email");
        String comment = request.getParameter("comment");
        
        int ck =0;
        
    	try {
    		conn = new DBcon().setConnection();
			ps = conn.prepareStatement("INSERT INTO `hololearn`.`feed` (`feedid`, `feedname`, `feedmail`, `feedcomment`) VALUES (0,?,?,?);");
			ps.setString(1, name);
	        ps.setString(2, email);
	        ps.setString(3, comment);
	        ck = ps.executeUpdate();
	        if(ck==1) {
            	request.setAttribute("feedstats", "Success");
                RequestDispatcher rd = request.getRequestDispatcher("/Contact.jsp");
                rd.forward(request, response);
	        } else {
            	request.setAttribute("feedstats", "Failled");
                RequestDispatcher rd = request.getRequestDispatcher("/Contact.jsp");
                rd.forward(request, response);
	        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
