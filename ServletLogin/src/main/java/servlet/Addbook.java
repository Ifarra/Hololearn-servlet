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


@WebServlet("/Addbook")
public class Addbook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;

    //post
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
        String desc = request.getParameter("desc");
        String img = request.getParameter("img");
        
        int ck =0;
        
    	try {
    		conn = new DBcon().setConnection();
			ps = conn.prepareStatement("INSERT INTO `hololearn`.`book` (`bookid`, `booktitle`, `bookdesc`, `bookimg`) VALUES (0,?,?,?);");
			ps.setString(1, title);
	        ps.setString(2, desc);
	        ps.setString(3, img);
	        ck = ps.executeUpdate();
	        if(ck==1) {
            	response.sendRedirect("./Admin.jsp");
	        } else {
	        	response.sendRedirect("./Admin.jsp");
	        	System.out.println("ERROR FAILED QUERY");
	        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
