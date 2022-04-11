package com.yogiyo.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/user")
@Controller
public class UserController {
	
	/**
	 * 회원가입
	 * 
	 * @param model
	 * @return
	 */
	// 요청 URL : http://localhost/user/sign_up_view
	@RequestMapping("/sign_up_view")
	public String signUpView(Model model) {
		model.addAttribute("viewName", "user/sign_up");
		
		return "template/layout";
	}

	/**
	 * 로그인
	 * 
	 * @param model
	 * @return
	 */
	// 요청 URL : http://localhost/user/sign_in_view
	@RequestMapping("/sign_in_view")
	public String signInView(Model model) {
		model.addAttribute("viewName", "user/sign_in");
		
		return "template/layout";
	}
}