package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DB.DBcon;
import model.Acc;

public class holoDAO {

	static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;

    public static int save(Acc b) throws ClassNotFoundException {
        int status = 0;
        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("INSERT INTO `hololearn`.`account` (`accid`, `accname`, `accpass`, `accrole`, `accmail`) VALUES (0,?,?,?,?);");
            ps.setString(1, b.getName());
            ps.setString(2, b.getPass());
            ps.setString(3, b.getRole());
            ps.setString(4, b.getMail());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int update(Acc b) throws ClassNotFoundException {
        int status = 0;
        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("update hololearn.account set accname=?,accpass=?,accrole=?,accmail=? where accid=?");
            ps.setString(1, b.getName());
            ps.setString(2, b.getPass());
            ps.setString(3, b.getRole());
            ps.setString(4, b.getMail());
            ps.setInt(5, b.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int delete(Acc b) throws ClassNotFoundException {
        int status = 0;
        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("delete from hololearn.account where accid=?");
            ps.setInt(1, b.getId());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }

        return status;
    }

    public static List<Acc> getAllRecords() throws ClassNotFoundException {
        List<Acc> list = new ArrayList<Acc>();

        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("select * from hololearn.account");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Acc u = new Acc();
                u.setId(rs.getInt("accid"));
                u.setName(rs.getString("accname"));
                u.setPass(rs.getString("accpass"));
                u.setRole(rs.getString("accrole"));
                u.setMail(rs.getString("accmail"));
                list.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static Acc getRecordById(int accid) throws ClassNotFoundException {
        Acc u = null;
        try {
            conn = new DBcon().setConnection();
            ps = conn.prepareStatement("select * from hololearn.account where accid=?");
            ps.setInt(1, accid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new Acc();
                u.setId(rs.getInt("accid"));
                u.setName(rs.getString("accname"));
                u.setPass(rs.getString("accpass"));
                u.setRole(rs.getString("accrole"));
                u.setMail(rs.getString("accmail"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }
	
    
    
    
}
