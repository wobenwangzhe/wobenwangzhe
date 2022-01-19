package com.medical.smart.base.configuration;

import com.medical.smart.base.util.BaseProps;
import com.medical.smart.system.admin.transport.AdminTransport;

import java.util.*;

public class CreateDuck {
	public static void main(String[] args) {
		Duck duck = new GreenDuck();
		duck.setName("普通的鸭子");
		System.out.println("duck: "+duck.getName());
		duck.setName("小黄鸭");
		System.out.println("duck: "+duck.getName());
		Vector vector = new Vector<>();

		Map map = new HashMap(BaseProps.MAP_SMALL);
		System.out.println("map.size(): "+ map.size());

		List list = new ArrayList(BaseProps.MAP_SMALL);
		list.add("1");
		System.out.println("list.size(): "+ list.size());

		map = new Hashtable();
		AdminTransport adminTransport = new Child();

	}
}
