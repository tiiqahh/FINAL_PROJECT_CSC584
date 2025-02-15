package com.mvc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.mvc.bean.LoginBean;
import com.mvc.util.DBConnection;

public class LoginDao 
{
    public String authenticateUser(LoginBean loginBean)
    {
        String userName = loginBean.getUserName();
        String password = loginBean.getPassword();
        
        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;
        
        String cust_username = "";
        String cust_password = "";
        
        try
        {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            resultSet = statement.executeQuery("select EMAIL,PASSWORD from APP.USERS");
            
            while (resultSet.next())
            {
                cust_username = resultSet.getString("EMAIL");
                cust_password = resultSet.getString("PASSWORD");
                
                if(userName.equals(cust_username)&& password.equals(cust_password))
                {
                    return "SUCCESS";
                }
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return "Invalid user credentials";
    }
    
    public int Userident(LoginBean loginBean)
    {
        String userName = loginBean.getUserName();
        String password = loginBean.getPassword();
        
        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;
        
        int cust_userid = 0;
       
        
        try
        {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            resultSet = statement.executeQuery("select USERID from APP.USERS WHERE EMAIL='"+userName+"' AND PASSWORD='"+password+"'");
            
            while(resultSet.next())
            {
                
                cust_userid = resultSet.getInt("userId");
                
            }
            return cust_userid;
        }
        catch(SQLException e)
            {
                    e.printStackTrace();
            }
        return cust_userid;
    }
}
    
