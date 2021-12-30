package com.medical.smart.base.configuration;


import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.extension.plugins.MybatisPlusInterceptor;
import com.baomidou.mybatisplus.extension.plugins.inner.PaginationInnerInterceptor;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * <b>mybatis plus 分页插件配置类</b>
 * <b>数据持久层接口位置必须和@MapperScan("com.medical.smart.dao")一致</b>
 * @author 王晗
 * @version 1.0.0
 */
@Configuration
@MapperScan("com.medical.smart.*.dao")
public class MybatisPlusConfig {
	/**
	 *   mybatis-plus分页插件
	 */
	@Bean
	public MybatisPlusInterceptor mybatisPlusInterceptor() {
		MybatisPlusInterceptor interceptor = new MybatisPlusInterceptor();
		interceptor.addInnerInterceptor(new PaginationInnerInterceptor(DbType.H2));
		return interceptor;
	}
}
