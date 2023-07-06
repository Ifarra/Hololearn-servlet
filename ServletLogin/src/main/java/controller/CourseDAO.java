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
            ps.setString(1, b.getTitle());
            ps.setString(2, b.getTopic());
            ps.setString(3, b.getLink());
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
            ps.setString(1, b.getTitle());
            ps.setString(2, b.getTopic());
            ps.setString(3, b.getLink());
            ps.setInt(4, b.getId());
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
            ps.setInt(1, b.getId());
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
                u.setId(rs.getInt("courseid"));
                u.setTitle(rs.getString("coursetitle"));
                u.setTopic(rs.getString("coursetopic"));
                u.setLink(rs.getString("courselink"));
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
                u.setId(rs.getInt("courseid"));
                u.setTitle(rs.getString("coursetitle"));
                u.setTopic(rs.getString("coursetopic"));
                u.setLink(rs.getString("courselink"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }
	
}
