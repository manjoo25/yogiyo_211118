package com.yogiyo.rest.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.yogiyo.rest.model.Store;

@Repository
public interface StoreDAO {

	public List<Store> selectStoreList();
}
