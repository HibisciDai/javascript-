package com.baizhi.dao;

import java.util.List;

import com.baizhi.entity.Address;

public interface AddressDAO {
	// 查询所有的地址
	public List<Address> selectALL();
}
