package com.yogiyo.rest.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yogiyo.rest.dao.StoreDAO;
import com.yogiyo.rest.model.Store;

@Service
public class StoreBO {

	@Autowired
	private StoreDAO storeDAO;
	
	public List<Store> getStoreList() {
		return storeDAO.selectStoreList();
	}
}
