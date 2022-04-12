package com.yogiyo.user.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yogiyo.user.dao.UserDAO;
import com.yogiyo.user.model.User;

@Service
public class UserBO {

	@Autowired
	private UserDAO userDAO;
	
	// select
	public int getExistLoginId(String loginId) {
		return userDAO.selectExistLoginId(loginId);
	}
	
	// insert
//	public List<User> addUser(String name, String loginId,
//			String password, String email, String phoneNumber) {
//		return userDAO.insertUser(name, loginId, password, email, phoneNumber);
//	}
}
