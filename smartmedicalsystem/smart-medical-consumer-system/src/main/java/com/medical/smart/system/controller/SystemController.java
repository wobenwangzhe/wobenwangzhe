package com.medical.smart.system.controller;

import com.medical.smart.base.controller.BaseController;
import com.medical.smart.base.pojo.vo.ResponseVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * <b>智慧医疗系统-系统功能消费者控制类</b>
 * @author 王晗
 * @version 1.0.0
 */

@RestController("systemController")
@RequestMapping("/system")
@Api(value = "系统功能接口",tags = "系统功能接口")
public class SystemController extends BaseController {

	/**
	 * <b>测试接口</b>
	 * @return
	 */
	@GetMapping("/test")
	@ApiOperation(value = "测试功能接口")
	public ResponseVO test(){
		return ResponseVO.getSuccesss();
	}
}
