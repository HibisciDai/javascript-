package com.baizhi.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	// 接收数据
	private String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String checkusername() throws Exception {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		// 调用业务
		if ("zkf".equals(username)) {
			out.print("      您的用户名不合法             ");

		} else {
			out.print("          您的用户名合法                           ");
		}
		return null;

	}

}
