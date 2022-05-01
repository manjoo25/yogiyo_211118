package com.yogiyo.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yogiyo.store.bo.StoreBO;
import com.yogiyo.store.model.Store;

<<<<<<< HEAD:src/main/java/com/yogiyo/store/StoreController.java
public class StoreController {
		
	@Autowired
	private StoreBO storeBO;
	
=======
@RequestMapping("/list")
@Controller
public class StoreController {
	
	@Autowired
	private StoreBO storeBO;
	
	// 요청 URL : http://localhost/list/list_all_view
	@RequestMapping("/list_all_view")
	public String listAllView(Model model) {
		model.addAttribute("viewName", "/list/list_all");
		
		return "/template/layout";
	}

>>>>>>> 456fe99ed912c6107d3b096fd4f33326e00d583f:src/main/java/com/yogiyo/rest/RestController.java
	/**
	 * 음식점 리스트
	 * @param model
	 * @return
	 */
	// 요청 URL : http://localhost/list/rest_list_view
	@RequestMapping("/rest_list_view")
	public String restListView(Model model) {
		// db select
		List<Store> restList = storeBO.getStoreList();
		model.addAttribute("restList", restList);
		
		model.addAttribute("viewName", "/list/rest_list");
		
		return "template/layout";
	}
<<<<<<< HEAD:src/main/java/com/yogiyo/store/StoreController.java

}
=======
}
>>>>>>> 456fe99ed912c6107d3b096fd4f33326e00d583f:src/main/java/com/yogiyo/rest/RestController.java
