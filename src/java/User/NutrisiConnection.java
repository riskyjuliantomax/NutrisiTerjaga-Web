package User;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author USER
 */
import java.util.*;
import java.sql.*;

public class NutrisiConnection {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrisiterjaga", "root", "");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static int register(nutrisiterjagauser e) {
        int status = 0;
        try {
            Connection con = NutrisiConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "insert into user(user,pass,email,nama,nohp) values(?,?,?,?,?)");
            ps.setString(1, e.getUsername());
            ps.setString(2, e.getPassword());
            ps.setString(3, e.getEmail());
            ps.setString(4, e.getNama());
            ps.setString(5, e.getNohp());
            status = ps.executeUpdate();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }

    public static boolean ceklogin(nutrisiterjagauser e) {
        boolean status = false;
        try {
            Connection con = NutrisiConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "select * from user where user=? and pass=?");
            ps.setString(1, e.getUsername());
            ps.setString(2, e.getPassword());

            ResultSet rs = ps.executeQuery();
            status = rs.next();

        } catch (Exception ex) {}
        return status;
    }

}
