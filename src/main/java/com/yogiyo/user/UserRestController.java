package com.yogiyo.user;

import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.yogiyo.common.SHA256;
import com.yogiyo.user.bo.UserBO;

@RequestMapping("/user")
@RestController
public class UserRestController {

	@Autowired
	private UserBO userBO;
	
	/**
	 * 로그인 중복 확인
	 * @param loginId
	 * @return
	 */
	@RequestMapping("/is_duplicated_id")
	public Map<String, Object> isDuplicatedId(
			@RequestParam("loginId") String loginId // 아이디가 중복 됐는지 확인 하려면 loginId가 필요함
		) {
		Map<String, Object> result = new HashMap<>();
		
		// db select
		int count = userBO.getExistLoginId(loginId);
		if (count > 0) {
			// id가 존재(중복)
			result.put("result", true);
		} else {
			// id 사용가능(중복x)
			result.put("result", false);
		}
		
		return result;
	}
	
	/**
	 * 회원가입
	 * @param name
	 * @param loginId
	 * @param password
	 * @param email
	 * @param phoneNumber
	 * @return
	 * @throws NoSuchAlgorithmException 
	 */
//	public Map<String, Object> signUp(
//			@RequestParam("name") String name,
//			@RequestParam("loginId") String loginId,
//			@RequestParam("password") String password,
//			@RequestParam("email") String email,
//			@RequestParam("phoneNumber") String phoneNumber
//		) throws NoSuchAlgorithmException {
//		SHA256 sha256 = new SHA256();
//
//        //SHA256으로 암호화된 비밀번호
//        String cryptogram = sha256.encrypt(password);
//		
//		// db insert
//        Map<String, Object> result = new HashMap<>();
//		
//		return result;
//	}
}
