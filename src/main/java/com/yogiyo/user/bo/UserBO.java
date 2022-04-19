package com.yogiyo.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yogiyo.user.dao.UserDAO;
import com.yogiyo.user.model.User;

@Service
public class UserBO {

	@Autowired
	private UserDAO userDAO;
	
	// select (아이디 중복확인)
	public int getExistLoginId(String loginId) {
		return userDAO.selectExistLoginId(loginId);
	}
	
	// insert (회원가입)
	public int addUser(String name, String loginId,
			String password, String email, String phoneNumber) {
		return userDAO.insertUser(name, loginId, password, email, phoneNumber);
	}
	
	// select (로그인)
	public User getUser(String loginId, String password) {
		return userDAO.selectUser(loginId, password);
	}
}
