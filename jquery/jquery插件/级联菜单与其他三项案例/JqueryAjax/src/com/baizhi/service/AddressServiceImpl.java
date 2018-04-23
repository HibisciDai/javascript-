package com.baizhi.service;

import java.util.List;

import com.baizhi.dao.AddressDAO;
import com.baizhi.entity.Address;
import com.baizhi.util.MyBatisUtil;

public class AddressServiceImpl implements AddressService {

	@Override
	public List<Address> selectAllAddress() {
		AddressDAO ad = (AddressDAO) MyBatisUtil.getDAO(AddressDAO.class);
		List<Address> list = ad.selectALL();
		MyBatisUtil.close();
		return list;
	}

}