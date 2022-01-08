package com.medical.smart;

import com.medical.smart.base.util.BaseProps;
import com.medical.smart.base.util.TokenBuilder;
import com.medical.smart.base.util.TokenUtil;

import java.util.HashMap;
import java.util.Map;

public class TestTokenUtil {

	public static void main(String[] args) {
		String token= doCreate();

		System.out.println("token:"+token);
		try {
			Thread.sleep(3000L);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		doVerify(token);

	}

	public static String doCreate(){
		Map<String, Object> map = new HashMap<>();
		map.put("name", "王晗");
		map.put("where", "西安");
		//生成token
		System.out.println(BaseProps.AUTH_SEC);
		String token = TokenBuilder.buildToken(map, BaseProps.AUTH_SEC);
		return token;
	}
	public static void doVerify(String token){
		//读取token信息
		Map<String, Object> map = TokenBuilder.verifyToken(token);
		//输出
		map.forEach((key,value)->{
			System.out.println("key:"+key+"\tvalue:"+value);
		});
	}
}
