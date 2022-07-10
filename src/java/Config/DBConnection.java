/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author M Fauzan M
 */

public class DBConnection {
    public Connection open() {
        Connection con; // Object connection ke Database
        
        try {
            Class.forName("com.mysql.jdbc.Driver"); // Import JDBC Driver MySQL
            String url = "jdbc:mysql://127.0.0.1:3306/project4_login"; // URL dari Host Database
            con = DriverManager.getConnection(url, "root", ""); // Host, username, password
            return con;
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }
}