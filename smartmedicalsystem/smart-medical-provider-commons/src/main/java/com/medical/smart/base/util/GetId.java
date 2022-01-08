package com.medical.smart.base.util;


import cn.hutool.crypto.digest.MD5;
import com.medical.smart.base.util.IdGenerator;

public class GetId {
	public static void main(String[] args) {
		IdGenerator idGenerator = new IdGenerator();
		System.out.println(idGenerator.createId());
		String password = MD5.create().digestHex("123456");
		System.out.println(password);
	}
}
