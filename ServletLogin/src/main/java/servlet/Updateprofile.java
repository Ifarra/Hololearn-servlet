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


@WebServlet("/Updateprofile")
public class Updateprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
        String email = request.getParameter("mail");
        String password = request.getParameter("password");
        String id = request.getParameter("id");
        String role = request.getParameter("role");
        String Title = "Welcome to Hololearn " + name + " have a fantastic day!";
        
        int ck =0;
        
        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("update hololearn.account set accname=?,accpass=?,accrole=?,accmail=? where accid=?");
            ps.setString(1, name);
            ps.setString(2, password);
            ps.setString(3, role);
            ps.setString(4, email);
            ps.setString(5, id);
            ck = ps.executeUpdate();
            response.sendRedirect("./Home.jsp");
        } catch (Exception e) {
            System.out.println(e);
        }
	}

}
