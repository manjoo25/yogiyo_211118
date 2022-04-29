package com.yogiyo.order;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/order")
@Controller
public class OrderController {

	// 요청 URL : http://localhost/order/order_view
	@RequestMapping("/order_view")
	public String orderView(Model model) {
		
		// TODO db select
		
		model.addAttribute("viewName", "/order/order");
		
		return "/template/layout";
	}
}
