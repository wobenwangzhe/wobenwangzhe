package com.medical.smart.base.util;

import cn.hutool.core.util.StrUtil;
import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTCreator;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.interfaces.DecodedJWT;
import org.bouncycastle.asn1.crmf.DhSigStatic;

import java.security.Key;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * <b>基础功能-Token工具类</b>
 * @author 王晗
 * @version 1.0.0
 */
public class TokenUtil {
	//设定系统加密算法
	private static Algorithm algorithm = Algorithm.HMAC256(BaseProps.SECRET_KEY);

	/**
	 * <b>生成token</b>
	 * @param clainMap 核载信息
	 * @param authSec 保存时间 /秒
	 * @return
	 */
	public static String createToken(Map<String, String> clainMap, Long authSec){
		//创建 jwt的 token 生成器
		JWTCreator.Builder builder = JWT.create();
		//设定 token 的头部 map 集合
		Map<String, Object> headerMap = new HashMap<>();
		// 设定 Token 的生成方式是使用了 jwt
		headerMap.put("typ", "jwt");
		// 设定整体 Token 的加密算法
		headerMap.put("alg", "HS256");
		// 设定 token 头部信息
		builder.withHeader(headerMap);

		//快速遍历,写入载荷信息
		clainMap.forEach((key,value)->{
			builder.withClaim(key, value);
		});

		//设置 token 有效时间
		builder.withExpiresAt(new Date(System.currentTimeMillis()+authSec*1000));

		//返回生成的令牌
		return builder.sign(algorithm);
	}

	/**
	 * <b>检验token信息,并获得该token中的有效信息</b>
	 * @param tokenStr token令牌信息
	 * @return 有效信息Map集合
	 */
	public static Map<String, String> verifyToken(String tokenStr){
		Map<String, String> map = new HashMap<>();
		//如果 tokenStr 信息格式正确
		if(StrUtil.isNotBlank(tokenStr) && tokenStr.equals(tokenStr.trim())){
			//获得 Token校验对象 JWTVerifier
			JWTVerifier verifier = JWT.require(algorithm).build();
			//验证 toeknStr
			DecodedJWT decodedJWT = verifier.verify(tokenStr);
			
			//提取绑定在 token 中的有效信息
			decodedJWT.getClaims().forEach((key,value)->{
				map.put(key, value.asString());
			});

		}

		return map;
	}


	private TokenUtil(){}
}
