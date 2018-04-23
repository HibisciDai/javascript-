package com.baizhi.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;
import com.baizhi.entity.Address;
import com.baizhi.service.AddressService;
import com.baizhi.service.AddressServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class AddressAction extends ActionSupport {

	public String selectAll() throws Exception {
		// ����ҵ��
		AddressService as = new AddressServiceImpl();
		List<Address> list = as.selectAllAddress();
		// ת����jSON��
		String jsonString = JSON.toJSONString(list);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		// ��JSON����Ӧ��ǰ̨
		out.print(jsonString);
		return null;
	}

}
