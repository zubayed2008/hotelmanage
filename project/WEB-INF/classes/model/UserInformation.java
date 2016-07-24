package model;

import java.io.Serializable;
import java.sql.*;


public class UserInformation implements Serializable {

    //Bean Properties
    private String UserId;
    private String UserName;
    private String UserEmail;
    private String UserPassword;
    private String UserGender;

    public UserInformation() {
    }

    public void SetUserId(String UserId) {
        this.UserId = UserId;
    }

    public String GetUserId() {
        return this.UserId;
    }

    public void SetUserName(String UserName)
    {
    	this.UserName = UserName;
    }

    public String GetUserName()
    {
    	return this.UserName;
    }

    public void SetUserEmail(String UserEmail)
    {
    	this.UserEmail = UserEmail;
    }

    public String GetUserEmail()
    {
    	return this.UserEmail;
    }


    public void SetUserPassword(String UserPassword)
    {
    	this.UserPassword = UserPassword;
    }

    public String GetUserPassword()
    {
    	return this.UserPassword;
    }
    public void SetUserGender(String UserGender)
    {
    	this.UserGender = UserGender;
    }

    public String GetUserGender()
    {
    	return this.UserGender;
    }


}