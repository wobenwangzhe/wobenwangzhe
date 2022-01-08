package com.medical.smart.system.admin.pojo.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import java.io.Serializable;

/**
 * <b>系统功能-系统用户登录视图</b>
 * @author 王晗
 * @version 1.0.0
 */
@Data
@ApiModel(value = "AdminLoginVO",description = "系统用户登录视图")
public class AdminLoginVO implements Serializable {
	private static final long serialVersionUID = 2750396505656321114L;
	/**
	 * 登陆手机号码
	 */
	@NotEmpty(message = "未填写手机号码")
	@Pattern(regexp = "1[0-9]{10}",message = "手机号码格式错误")
	@ApiModelProperty(required = true,value = "手机号码,符合1[0-9]{10}",example = "15610570603")
	private String cellphone;

	/**
	 * 用户密码
	 */
	@NotEmpty(message = "未填写登录密码")
	@Pattern(regexp = "[A-Za-z0-9_#]{6,}",message = "登录密码格式错误")
	@ApiModelProperty(required = true,value = "登录密码,符合[A-Za-z0-9_#]{6,}",example = "123456")
	private String password;

}
