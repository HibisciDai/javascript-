package com.baizhi.service;

import java.util.List;

import com.baizhi.entity.Address;

public interface AddressService {
	// 查询所有的地址
	public List<Address> selectAllAddress();
}