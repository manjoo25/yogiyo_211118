package com.yogiyo.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yogiyo.store.bo.StoreBO;
import com.yogiyo.store.model.Store;

public class StoreController {
		
	@Autowired
	private StoreBO storeBO;
	
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
		model.addAttribute("viewName", "/list/rest_list");
		
		return "template/layout";
	}

}
