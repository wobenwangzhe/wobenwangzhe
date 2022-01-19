package com.medical.smart.base.configuration;

public class GreenDuck extends Duck{

	@Override
	public String getName() {
		return "我是"+super.getName();
	}
}
