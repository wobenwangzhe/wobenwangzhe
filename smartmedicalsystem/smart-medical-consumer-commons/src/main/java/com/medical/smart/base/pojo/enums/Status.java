package com.medical.smart.base.pojo.enums;

/**
 * <b>智慧医疗系统基础控制层项目-系统状态枚举类</b>
 * <p>
 *     定义了两个属性
 *     1,code 状态编码
 *     2,remark 状态说明
 * </p>
 * @author 王晗
 * @version 1.0.0
 */
public enum Status {
	STATUS_EDABLE("1","启用"),
	STATUS_DISABLED("0","禁用");

	private String code;            //状态编码
	private String remark;          //状态说明

	private Status(String code, String remark) {
		this.code = code;
		this.remark = remark;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
}
