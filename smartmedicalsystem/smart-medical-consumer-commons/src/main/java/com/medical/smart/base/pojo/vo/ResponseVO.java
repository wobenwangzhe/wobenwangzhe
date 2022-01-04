package com.medical.smart.base.pojo.vo;

import com.medical.smart.base.pojo.enums.ResponseCode;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;

/**
 * <b>智慧医疗系统基础消费者项目-浏览器响应对象</b>
 * 控制层接收请求的方法返回值必须是这个ResponseVO
 * @author 王晗
 * @version 1.0.0
 */
@ApiModel(value = "浏览器响应对象",description = "浏览器响应对象")
public class ResponseVO implements Serializable {
	private static final long serialVersionUID = 4216896198092924599L;
	@ApiModelProperty(value = "系统响应编码")
	private String code;                        // 系统响应编码
	@ApiModelProperty(value = "系统响应信息")
	private String message;                     // 系统响应信息
	@ApiModelProperty(value = "系统相应数据")
	private Object data;                        // 系统响应数据

	/**
	 * 系统响应成功
	 * @return
	 */
	public static ResponseVO getSuccesss(){
		return new ResponseVO(ResponseCode.RESPONSECODE_SUCCESS, ResponseCode.RESPONSECODE_SUCCESS.getRemark());
	}
	/**
	 * 系统响应成功-带成功信息
	 * @return
	 */
	public static ResponseVO getSuccesss(String message){
		return new ResponseVO(ResponseCode.RESPONSECODE_SUCCESS, message);
	}
	/**
	 * 系统响应成功-返回分页信息
	 * @return
	 */
	public static ResponseVO getSuccesss(PageVO pageVO){
		return new ResponseVO(ResponseCode.RESPONSECODE_SUCCESS, pageVO);
	}
	/**
	 * <b>获得系统用户未进行认证响应视图信息</b>
	 * @return
	 */
	public static ResponseVO unAuth() {
		return new ResponseVO(ResponseCode.RESPONSECODE_UNVERIFIED, "");
	}

	/**
	 * <b>获得系统业务处理错误响应视图信息</b>
	 * @param errorMsg
	 * @return
	 */
	public static ResponseVO error(String errorMsg) {
		return new ResponseVO(ResponseCode.RESPONSECODE_ERROR, errorMsg);
	}

	/**
	 * <b>获得系统响应异常响应视图信息</b>
	 * @param e
	 * @return
	 */
	public static ResponseVO exception(Exception e) {
		return new ResponseVO(ResponseCode.RESPONSECODE_EXCPTION, e.getMessage());
	}


	private ResponseVO(ResponseCode  responseCode, Object data) {
		this.code = responseCode.getCode();
		this.message = responseCode.getRemark();
		this.data = data;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}
}
