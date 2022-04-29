package com.yogiyo.store.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yogiyo.store.dao.StoreDAO;
import com.yogiyo.store.model.Store;

@Service
public class StoreBO {

	@Autowired
	private StoreDAO storeDAO;
	
	public List<Store> getStoreList() {
		return storeDAO.selectStoreList();
	}
}