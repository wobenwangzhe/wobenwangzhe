package com.medical.smart.base.controller;

import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpSession;

/**
 * <b>智慧医疗系统消费者基础项目-基础控制类</b>
 * <b>所有消费者项目的控制层类都必须继承于基础控制类</b>
 * 获得 HttpRequest HttpResponse HttpSession 对象
 *
 * @author 王晗
 * @version 1.0.0
 */
public class BaseController {
	@Autowired
	private HttpRequest request;                //请求对象
	@Autowired
	private HttpResponse response;              //返回对象
	@Autowired
	private HttpSession session;                //session


	public HttpRequest getRequest() {
		return request;
	}

	public void setRequest(HttpRequest request) {
		this.request = request;
	}

	public HttpResponse getResponse() {
		return response;
	}

	public void setResponse(HttpResponse response) {
		this.response = response;
	}

	public HttpSession getSession() {
		return session;
	}

	public void setSession(HttpSession session) {
		this.session = session;
	}
}
