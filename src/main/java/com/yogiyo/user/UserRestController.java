package com.yogiyo.user;

import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.yogiyo.common.SHA256;
import com.yogiyo.user.bo.UserBO;
import com.yogiyo.user.model.User;

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
		int row = userBO.getExistLoginId(loginId);
		if (row > 0) {
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
	@PostMapping("/sign_up")
	public Map<String, Object> signUp(
			@RequestParam("name") String name,
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password,
			@RequestParam("email") String email,
			@RequestParam("phoneNumber") String phoneNumber
		) throws NoSuchAlgorithmException {		

		SHA256 sha256 = new SHA256();
        
		//SHA256으로 암호화된 비밀번호
        String cryptogram = sha256.encrypt(password);
        
        //비밀번호 일치 여부
        int row = userBO.addUser(name, loginId, cryptogram, email, phoneNumber);
		
		// db insert
        Map<String, Object> result = new HashMap<>();

		result.put("result", "success"); // 나머지는 성공!
		
		if (row < 1) { // 1보다 작은 경우만 실패
			result.put("result", "error");
		}
		
		return result;
	}
	
	/**
	 * 로그인
	 * @param loginId
	 * @param password
	 * @param request
	 * @return
	 * @throws NoSuchAlgorithmException 
	 */
	@PostMapping("/sign_in")
	public Map<String, Object> signIn(
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password,
			HttpServletRequest request) throws NoSuchAlgorithmException {
		
		SHA256 sha256 = new SHA256();

		String cryptogram = sha256.encrypt(password);
		User user = userBO.getUser(loginId, cryptogram);
		
		Map<String, Object> result = new HashMap<>();
		if (user != null) {
			result.put("result", "success");
			
			// 로그인 - 세션에 저장
			HttpSession session = request.getSession();
			session.setAttribute("userLoginId", user.getLoginId());
			session.setAttribute("userEmail", user.getEmail());	
			session.setAttribute("userId", user.getId());
		} else {
			result.put("error", "입력 실패");
		}
		return result;
	}
}
