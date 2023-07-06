package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DB.DBcon;
import model.Feed;

public class FeedDAO {

	static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;

    //guh
    
    public static int save(Feed b) throws ClassNotFoundException {
        int status = 0;
        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("INSERT INTO `hololearn`.`feed` (`feedid`, `feedname`, `feedmail`, `feedcomment`) VALUES (0,?,?,?);");
            ps.setString(1, b.getName());
            ps.setString(2, b.getMail());
            ps.setString(3, b.getComment());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int update(Feed b) throws ClassNotFoundException {
        int status = 0;
        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("update hololearn.feed set feedname=?,feedmail=?,feedcomment=? where feedid=?");
            ps.setString(1, b.getName());
            ps.setString(2, b.getMail());
            ps.setString(3, b.getComment());
            ps.setInt(4, b.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(Feed b) throws ClassNotFoundException {
        int status = 0;
        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("delete from hololearn.feed where feedid=?");
            ps.setInt(1, b.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }

    public static List<Feed> getAllRecords() throws ClassNotFoundException {
        List<Feed> list = new ArrayList<Feed>();

        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("select * from hololearn.feed");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Feed u = new Feed();
                u.setId(rs.getInt("feedid"));
                u.setName(rs.getString("feedname"));
                u.setMail(rs.getString("feedmail"));
                u.setComment(rs.getString("feedcomment"));
                list.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static Feed getRecordById(int feedid) throws ClassNotFoundException {
        Feed u = null;
        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("select * from hololearn.feed where feedid=?");
            ps.setInt(1, feedid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new Feed();
                u.setId(rs.getInt("feedid"));
                u.setName(rs.getString("feedname"));
                u.setMail(rs.getString("feedmail"));
                u.setComment(rs.getString("feedcomment"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }
	
}
