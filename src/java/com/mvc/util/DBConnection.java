package com.mvc.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection 
{
    public static Connection createConnection()
    {
        String url = "jdbc:derby://localhost:1527/MyHotel";
        String username = "app";
        String password = "app";
        Connection con = null;
        
        try{
            try{
                Class.forName("com.javaDB.jdbc.Driver");
            }
            catch (ClassNotFoundException e)
            {
                e.printStackTrace();
            }
            con = DriverManager.getConnection(url,username,password);
            System.out.println("Printing conncetion object" +con);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }

    public static Connection getConnection() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
