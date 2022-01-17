package com.medical.smart.base.pojo.enums;

/**
 * <b>系统响应信息枚举类</b>
 */
public enum ResponseCode {
	RESPONSECODE_SUCCESS("20000","响应成功"),
	RESPONSE_ILLEGAL_TOKEN("50008","非法的token"),
	RESPONSE_EXPIRED_TOKEN("50014","过期的token") ,
	RESPONSECODE_ERROR("40000","系统业务处理错误"),
	RESPONSECODE_EXCPTION("50000","系统响应异常"),
	RESPONSECODE_UNVERIFIED("30000","系统未认证");

	private String code;
	private String remark;

	private ResponseCode(String code, String remark) {
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
