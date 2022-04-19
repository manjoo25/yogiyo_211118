package com.yogiyo.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.yogiyo.user.model.User;

@Repository
public interface UserDAO {

	public int selectExistLoginId(String loginId);
	
	public int insertUser(
			@Param("name") String name,
			@Param("loginId") String loginId,
			@Param("password") String password,
			@Param("email") String email,
			@Param("phoneNumber") String phoneNumber);
	
	public User selectUser(
			@Param("loginId") String loginId,
			@Param("password") String password);
}
