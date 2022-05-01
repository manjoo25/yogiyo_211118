package com.yogiyo.store.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.yogiyo.store.model.Store;

@Repository
public interface StoreDAO {

	public List<Store> selectStoreList();
}