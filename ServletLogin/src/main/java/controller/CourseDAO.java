package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DB.DBcon;
import model.Course;

public class CourseDAO {

	static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;

    //guh
    
    public static int save(Course b) throws ClassNotFoundException {
        int status = 0;
        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("INSERT INTO `hololearn`.`course` (`courseid`, `coursetitle`, `coursetopic`, `courselink`) VALUES (0,?,?,?);");
            ps.setString(1, b.getCoursetitle());
            ps.setString(2, b.getCoursetopic());
            ps.setString(3, b.getCourselink());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int update(Course b) throws ClassNotFoundException {
        int status = 0;
        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("update hololearn.course set coursetitle=?,coursetopic=?,courselink=? where courseid=?");
            ps.setString(1, b.getCoursetitle());
            ps.setString(2, b.getCoursetopic());
            ps.setString(3, b.getCourselink());
            ps.setInt(4, b.getCourseid());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(Course b) throws ClassNotFoundException {
        int status = 0;
        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("delete from hololearn.course where courseid=?");
            ps.setInt(1, b.getCourseid());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }

    public static List<Course> getAllRecords() throws ClassNotFoundException {
        List<Course> list = new ArrayList<Course>();

        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("select * from hololearn.course");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
            	Course u = new Course();
                u.setCourseid(rs.getInt("courseid"));
                u.setCoursetitle(rs.getString("coursetitle"));
                u.setCoursetopic(rs.getString("coursetopic"));
                u.setCourselink(rs.getString("courselink"));
                list.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static Course getRecordById(int courseid) throws ClassNotFoundException {
    	Course u = null;
        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("select * from hololearn.course where courseid=?");
            ps.setInt(1, courseid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new Course();
                u.setCourseid(rs.getInt("courseid"));
                u.setCoursetitle(rs.getString("coursetitle"));
                u.setCoursetopic(rs.getString("coursetopic"));
                u.setCourselink(rs.getString("courselink"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }
	
}
