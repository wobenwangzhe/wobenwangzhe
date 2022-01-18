package com.medical.smart.base.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;

/**
 * <b>基础功能-读取系统基础常量工具类</b>
 * @author 王晗
 * @version 1.0.0
 */

public class BaseProps {
	//日志类
	private static Logger logger = LoggerFactory.getLogger(BaseProps.class);
	//读取基础常量类
	private static Properties props = new Properties();

	static{
		try {
			props.load(BaseProps.class.getClassLoader().getResourceAsStream("props/base/base.properties"));
		} catch (IOException e) {
			//写日志
			logger.error(e.getMessage()+":"+new Date(),e);
			e.printStackTrace();
		}
	}
	/**
	 * <b>加密密匙信息</b>
	 */
	public static final String SECRET_KEY = props.getProperty("secret.key");
	/**
	 * <b>用户登录保持时长</b>
	 */
	public static final Long AUTH_SEC = Long.parseLong(props.getProperty("auth.sec"));
	/**
	 * <b>令牌保存在http请求头的字段名</b>
	 */
	public static final String TOKEN_SEAT = props.getProperty("token.seat");
	/**
	 * <b>小的 map 集合的初始大小</b>
	 */
	public static final Integer MAP_SMALL = Integer.parseInt(props.getProperty("map.small"));
	/**
	 * <b>较大的 map 集合的初始大小</b>
	 */
	public static final Integer MAP_BIG = Integer.parseInt(props.getProperty("map.big"));
	/**
	 * <b>token中载荷部分储存对应的 key </b>
	 */
	public static final String TOKEN_KEY = props.getProperty("token.key");
	/**
	 * <b>token 头部 typ中的值</b>
	 */
	public static final String CLAIMS_TYPE = props.getProperty("claims.type");
	/**
	 * <b>token头部alg中的值</b>
	 */
	public static final String CLAIMS_ALGORITHM = props.getProperty("claims.algorithm");
	/**
	 * <b>数据库中数据可用</b>
	 */
	public static final String STATUS_EXIST = props.getProperty("status.exist");
	/**
	 * <b>数据库中数据不可用</b>
	 */
	public static final String STATUS_NOT_EXIST = props.getProperty("status.notexist");

	private BaseProps(){}
}
