package javaapplication28;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * 
 * @author HP
 */

public class KoneksiDatabase {
    private static Connection Koneksi;
    public static Connection Koneksi() {
            try{
                String driver="com.mysql.cj.jdbc.Driver";
                String url = "jdbc:mysql://localhost:3306/minimarket";
                String username = "root";
                String password = "";            
                Koneksi = (Connection)DriverManager.getConnection(url, username, password);
                System.out.println("Berhasil");
            }catch (SQLException e){
                System.out.println(e);
            }
            return Koneksi;
            }
    public static void main(String[] args) {
    }
    
}