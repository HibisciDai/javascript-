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
		// 调用业务
		AddressService as = new AddressServiceImpl();
		List<Address> list = as.selectAllAddress();
		// 转换成jSON串
		String jsonString = JSON.toJSONString(list);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		// 把JSON串响应给前台
		out.print(jsonString);
		return null;
	}

}
