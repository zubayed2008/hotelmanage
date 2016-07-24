package model;
import java.sql.*;

public class ConnectionManagerModel{
	
	private static Connection connection;
    public static Connection getConnection() {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost/jsp_project","root","");
        } 

        catch (Exception e) {
            System.out.println(e);
        }
        return connection;
    }
}