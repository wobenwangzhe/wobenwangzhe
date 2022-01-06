package com.medical.smart.base.util;

import cn.hutool.core.util.StrUtil;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.json.JsonMapper;
import jdk.nashorn.internal.objects.annotations.Constructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/**
 * <b>基础功能-Redis工具类</b>
 * @author 王晗
 * @version 1.0.0
 */
@Component("redisUtil")
public class RedisUtil {
	@Autowired
	private StringRedisTemplate redisTemplate;
	//日志类
	private static Logger logger = LoggerFactory.getLogger(RedisUtil.class);
	//redis操作类
	private static StringRedisTemplate template;
	//json与对象转换类
	private static JsonMapper jsonMapper = new JsonMapper();

	/**
	 * <b>将对象的属性赋值给类的属性</b>
	 */
	@PostConstruct
	public void init(){
		if(template==null){
			template=redisTemplate;
		}
	}

	/**
	 * <b>将value以json的类型保存在redis中</b>
	 * @param key
	 * @param value
	 * @return
	 */
	public static boolean save(String key, Object value,Long authSec){
		// 无保存值
		if(StrUtil.isBlank(key) && value==null){
			return false;
		}
		//保存
		try {
			//将value转为json
			String jsonString = jsonMapper.writeValueAsString(value);
			//保存到redis中,并设置保存时间
			template.opsForValue().set(key, jsonString, authSec, TimeUnit.SECONDS);
			//无异常,保存成功
			return true;
		} catch (JsonProcessingException e) {
			//写日志
			logger.error(e.getMessage()+":"+new Date(),e);
			e.printStackTrace();
		}
		return false;
	}

	/**
	 * <b>在redis中查询key,返回type类型</b>
	 * @param key
	 * @param type
	 * @return
	 */
	public static Object find(String key,Class type){
		//如果 key为null 返回null
		if(StrUtil.isBlank(key)){
			return null;
		}
		//查询
		String jsonString = template.opsForValue().get(key);
		if(StrUtil.isNotBlank(jsonString)){
			try {
				//查询到结果
				return jsonMapper.readValue(jsonString, type);
			} catch (Exception e) {
				//写日志
				logger.error(e.getMessage()+":"+new Date(), e);
				e.printStackTrace();
			}
		}
		//未查询到结果
		return null;
	}

	private RedisUtil(){}

}
