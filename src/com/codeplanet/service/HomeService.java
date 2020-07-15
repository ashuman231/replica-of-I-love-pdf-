package com.codeplanet.service;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codeplanet.dao.HomeDao;
import com.codeplanet.model.User;

@Service 
public class HomeService {
@Autowired
HomeDao homeDao;
public void insertInfo(User user) throws SQLException {
	 System.out.println("service start");
	homeDao.insertInfo(user);
	 System.out.println("service start");
}
public boolean check(User user, HttpServletRequest req) throws SQLException {
    return homeDao.check(user,req);
}
}