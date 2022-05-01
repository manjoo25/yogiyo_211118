package com.yogiyo.menu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yogiyo.menu.bo.MenuBO;
import com.yogiyo.menu.model.Menu;

@RequestMapping("/list")
public class MenuController {

	@Autowired
	private MenuBO menuBO;
	
	/**
	 * 음식점 메뉴 리스트
	 * @param model
	 * @return
	 */
	// 요청 URL : http://localhost/list/rest_detail_view
	@RequestMapping("/rest_detail_view")
	public String restDetailView(Model model) {
		//db select
		List<Menu> restMenuList = menuBO.getMenuList();
		model.addAttribute("restMenuList", restMenuList);
		
		model.addAttribute("viewName", "/list/rest_detail");
		
		return "template/layout";
	}
}
