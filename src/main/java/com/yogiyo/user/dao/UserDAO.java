package com.yogiyo.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.yogiyo.user.model.User;

@Repository
public interface UserDAO {

	public int selectExistLoginId(String loginId);
	
//	public List<User> insertUser(
//			@Param("name") String name,
//			@Param("loginId") String loginId,
//			@Param("password") String password,
//			@Param("email") String email,
//			@Param("phoneNumber") String phoneNumber);
}
