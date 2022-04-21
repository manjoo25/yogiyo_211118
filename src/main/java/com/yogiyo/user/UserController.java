package com.yogiyo.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("/user")
@Controller
public class UserController {
	
	/**
	 * 회원가입
	 * @param model
	 * @return
	 */
	// 요청 URL : http://localhost/user/sign_up_view
	@RequestMapping("/sign_up_view")
	public String signUpView(Model model) {
		model.addAttribute("viewName", "/user/sign_up");
		
		return "template/layout";
	}

	/**
	 * 로그인
	 * @param model
	 * @return
	 */
	// 요청 URL : http://localhost/user/sign_in_view
	@RequestMapping("/sign_in_view")
	public String signInView(Model model) {
		model.addAttribute("viewName", "/user/sign_in");
		
		return "template/layout";
	}
	
	/**
	 * 로그아웃
	 * @param model
	 * @param eamil
	 * @return
	 */
	// 요청 URL : http://localhost/user/sign_out_view
	@RequestMapping("/sign_out_view")
	public String signOutView(Model model) {
		model.addAttribute("viewName", "/user/sign_out");
		
		return "template/layout";
	}	
	
	
	@RequestMapping("/sign_out")
	public String signOut(HttpServletRequest request) {
		// 로그아웃
		HttpSession session = request.getSession();
		session.removeAttribute("userLoginId");
		session.removeAttribute("userEmail");
		session.removeAttribute("userId");
		return "redirect:/list/rest_list";
	}
}