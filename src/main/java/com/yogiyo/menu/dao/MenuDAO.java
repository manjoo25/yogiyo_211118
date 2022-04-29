package com.yogiyo.menu.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.yogiyo.menu.model.Menu;

@Repository
public interface MenuDAO {

	public List<Menu> selectMenuList();
}
