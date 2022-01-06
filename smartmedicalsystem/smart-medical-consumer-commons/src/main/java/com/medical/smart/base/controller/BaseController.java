package com.medical.smart.base.controller;


import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * <b>智慧医疗系统消费者基础项目-基础控制类</b>
 * <b>所有消费者项目的控制层类都必须继承于基础控制类</b>
 * 获得 HttpServletRequest HttpServletResponse HttpSession 对象
 *
 * @author 王晗
 * @version 1.0.0
 */
public class BaseController {
	@Autowired
	protected HttpServletRequest request;                //请求对象
	@Autowired
	protected HttpServletResponse response;              //返回对象
	@Autowired
	protected HttpSession session;                //session

}
