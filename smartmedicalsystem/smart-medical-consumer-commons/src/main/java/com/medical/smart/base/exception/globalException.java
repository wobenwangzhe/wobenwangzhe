package com.medical.smart.base.exception;

import com.medical.smart.base.pojo.vo.ResponseVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

/**
 * <b>智慧医疗系统-全局异常处理类</b>
 * 打印日志
 * @author 王晗
 * @version 1.0.0
 */
@RestControllerAdvice
public class globalException {
	//日志对象
	private Logger logger = LoggerFactory.getLogger(globalException.class);

	@ExceptionHandler
	public ResponseVO globalException(HttpServletRequest request, HttpServletResponse response, Exception e){
		//打印日志
		logger.error(e.getMessage()+":"+new Date());
		//向浏览器返回 ResponseVO 响应对象
		return ResponseVO.exception(e);
	}
}
