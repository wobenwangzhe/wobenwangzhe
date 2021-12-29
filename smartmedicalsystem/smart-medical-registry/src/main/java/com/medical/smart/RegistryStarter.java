package com.medical.smart;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

/**
 * <b>智慧医疗系统注册中心项目-启动类</b>
 * @author 王晗
 */
@SpringBootApplication
// 注册中心注解
@EnableEurekaServer
public class RegistryStarter {
	public static void main(String[] args) {
		SpringApplication.run(RegistryStarter.class, args);
	}
}
