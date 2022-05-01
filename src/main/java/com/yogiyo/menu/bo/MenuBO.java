package com.yogiyo.menu.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yogiyo.menu.dao.MenuDAO;
import com.yogiyo.menu.model.Menu;

@Service
public class MenuBO {
	
	@Autowired
	private MenuDAO menuDAO;
	
	// TODO
	public List<Menu> getMenuList() {
		return menuDAO.selectMenuList();
	}
}
