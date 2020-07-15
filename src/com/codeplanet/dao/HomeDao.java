package com.codeplanet.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.codeplanet.model.User;


@Repository
public class HomeDao {
@Autowired
JdbcTemplate jdbcTemplate;
 public void insertInfo(User user) throws SQLException {
	    System.out.println("dao start");
		Connection con = jdbcTemplate.getDataSource().getConnection();
    /*	PreparedStatement pst = con.prepareStatement("insert into sdetails values(?,?,?,?)");
    	pst.setString(1,user.getUserName());
    	pst.setString(2,user.getMobile());
    	pst.setString(3,user.getEmailId());
    	pst.setString(4,user.getPassword());
    	pst.executeUpdate();*/
		CallableStatement pst = con.prepareCall("call Test1(?,?,?,?,?)");
		pst.setString(1,"add");
		pst.setString(2,user.getUserName());
		pst.setInt(3,6565156);
		pst.setString(4,user.getEmailId());
		pst.setString(5,user.getPassword());
		pst.executeUpdate();
    	System.out.println("dao end");
	}
public boolean check(User user, HttpServletRequest req) throws SQLException {
	String email = user.getEmailId();
	String password = user.getPassword();
	boolean temp=false;
	 try {
	Connection con = jdbcTemplate.getDataSource().getConnection();
	PreparedStatement pst = con.prepareStatement("select * from sdetails");
	ResultSet res = pst.executeQuery();
	while(res.next())
	{   
		if(password.equals(res.getString("password")))
		{   temp = true;
		    req.getSession(true);
			req.setAttribute("email",res.getString("email"));
			req.setAttribute("password",res.getString("password"));
			req.setAttribute("name",res.getString("name"));
			req.setAttribute("number",res.getString("number"));
			break;
		}
	}
	 }
	 catch(Exception e)
	 {
		 e.printStackTrace();
	 }
	return temp;
}
}