package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DB.DBcon;
import model.Book;

public class BookDAO {

	static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;

    //guh
    
    public static int save(Book b) throws ClassNotFoundException {
        int status = 0;
        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("INSERT INTO `hololearn`.`book` (`bookid`, `booktitle`, `bookdesc`, `bookimg`) VALUES (0,?,?,?);");
            ps.setString(1, b.getBooktitle());
            ps.setString(2, b.getBookdesc());
            ps.setString(3, b.getBookimg());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int update(Book b) throws ClassNotFoundException {
        int status = 0;
        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("update hololearn.book set booktitle=?,bookdesc=?,bookimg=? where bookid=?");
            ps.setString(1, b.getBooktitle());
            ps.setString(2, b.getBookdesc());
            ps.setString(3, b.getBookimg());
            ps.setInt(4, b.getBookid());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(Book b) throws ClassNotFoundException {
        int status = 0;
        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("delete from hololearn.book where bookid=?");
            ps.setInt(1, b.getBookid());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }

    public static List<Book> getAllRecords() throws ClassNotFoundException {
        List<Book> list = new ArrayList<Book>();

        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("select * from hololearn.book");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
            	Book u = new Book();
                u.setBookid(rs.getInt("bookid"));
                u.setBooktitle(rs.getString("booktitle"));
                u.setBookdesc(rs.getString("bookdesc"));
                u.setBookimg(rs.getString("bookimg"));
                list.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static Book getRecordById(int bookid) throws ClassNotFoundException {
    	Book u = null;
        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("select * from hololearn.book where bookid=?");
            ps.setInt(1, bookid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new Book();
                u.setBookid(rs.getInt("bookid"));
                u.setBookid(rs.getInt("bookid"));
                u.setBooktitle(rs.getString("booktitle"));
                u.setBookdesc(rs.getString("bookdesc"));
                u.setBookimg(rs.getString("bookimg"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }
	
}
