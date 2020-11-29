/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sepeda;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.*;
import javax.swing.JOptionPane;
/**
 *
 * @author 1
 */
public class koneksi {
    Connection connect;
    Statement stmt;
    
    String url = "jdbc:mysql://localhost/penjualansepeda";
    String user = "root";
    String pass = "";
    
    public void Config()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            connect = DriverManager.getConnection(url, user, pass);
            stmt = connect.createStatement();
            System.out.print("Connection Success");
        }
        catch(ClassNotFoundException | SQLException e)
        {
            System.out.print("Koneksi Gagal" +e.getMessage());
        }
    }
}
