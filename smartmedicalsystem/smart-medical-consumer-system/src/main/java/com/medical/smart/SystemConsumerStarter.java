package com.medical.smart;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

/**
 * <b>智慧医疗系统-系统功能消费者启动类</b>
 * @author 王晗
 * @version 1.0.0
 */
//启动类注解
@SpringBootApplication
//远程调用注解
@EnableFeignClients
//在注册中心注册的注解
@EnableEurekaClient
public class SystemConsumerStarter {

	public static void main(String[] args) {
		SpringApplication.run(SystemConsumerStarter.class, args);
	}
}
