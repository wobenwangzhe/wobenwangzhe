package com.medical.smart.base.util;

import cn.hutool.core.util.StrUtil;
import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.impl.PublicClaims;
import com.auth0.jwt.interfaces.DecodedJWT;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * <b>基础功能-token工具类可读性优化版</b>
 * @author 王晗
 * @version 1.0.0
 */
public class TokenBuilder {
	/**
	 * 设定系统加密算法,即签名部分
	 */
	private static final Algorithm ALGORITHM = Algorithm.HMAC256(BaseProps.SECRET_KEY);
	/**
	 * token的头部信息
	 */
	private static Map<String, Object> headerMap = new HashMap<>(BaseProps.MAP_SMALL);
	/**
	 * 载荷储存的key
	 */
	private static final String TOKEN_KEY = BaseProps.TOKEN_KEY;

	/**
	 * 初始化 token 头部信息
	 */
	static {
		headerMap.put(PublicClaims.TYPE, BaseProps.CLAIMS_TYPE);
		headerMap.put(PublicClaims.ALGORITHM, BaseProps.CLAIMS_ALGORITHM);
	}

	/**
	 * <b>生成 token</b>
	 * @param claimMap token载荷
	 * @param authSec token保存时间
	 * @return
	 */
	public static String buildToken(Map<String, Object> claimMap , Long authSec){

		String token = JWT.create()
				//token的头部 会将map集合拆分,以 key-value形式保存
				.withHeader(headerMap)
				//token 的载荷 这里 前面的 CLAIM_KEY 是key,claimMap是value.
				.withClaim(TOKEN_KEY, claimMap)
				//token的失效时间
				.withExpiresAt(new Date(System.currentTimeMillis()+authSec*1000))
//				.withClaim(PublicClaims.EXPIRES_AT, new Date(System.currentTimeMillis()+authSec*1000))
				//签名
				.sign(ALGORITHM);
		//返回token
		return token;
	}

	/**
	 * <b>验证token的有效性,并返回token中的载荷</b>
	 * @param token
	 * @return
	 */
	public static Map<String, Object> verifyToken(String token){
		Map<String, Object> claimMap = new HashMap<>(BaseProps.MAP_SMALL);
		//token非空且无空格
		if(StrUtil.isNotBlank(token) && token.equals(token.trim())){
			//根据加密算法创建token的解密器
			JWTVerifier verifier = JWT.require(ALGORITHM).build();
			try{
				DecodedJWT decodedJWT = verifier.verify(token);
				if(decodedJWT != null){
					//获得载荷中的信息并返回,不返回有效时间
					System.out.println(decodedJWT.getExpiresAt());
					return decodedJWT.getClaim(TOKEN_KEY).asMap();
				}
			} catch (Exception e){
				e.printStackTrace();
			}
		}

		return claimMap;
	}

}
