package com.medical.smart.system.hospital.pojo.vo;

import com.medical.smart.base.pojo.vo.BaseVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * <b>系统功能-医院视图信息</b>
 * @author 王晗
 * @version 1.0.0
 */
@Data
@ApiModel(value = "医院视图信息",description = "医院视图信息")
public class HospitalVO extends BaseVO {
	private static final long serialVersionUID = 7329854830634749192L;
	/**
	 * 主键
	 */
	@ApiModelProperty(value = "主键")
	private Long id;
	/**
	 * 名称
	 */
	@ApiModelProperty(value = "名称")
	private String name;
	/**
	 * 上级主管机构
	 */
	@ApiModelProperty(value = "上级主管机构")
	private String authority;
	/**
	 * 组织机构代码
	 */
	@ApiModelProperty(value = "组织机构代码")
	private String orgCode;
	/**
	 * 机构负责人
	 */
	@ApiModelProperty(value = "机构负责人")
	private String chare;
	/**
	 * 标示地址类别编码
	 */
	@ApiModelProperty(value = "表示地址类别编码")
	private String addressCatCode;
	/**
	 * 所在省
	 */
	@ApiModelProperty(value = "所在省")
	private String provence;
	/**
	 * 所在市
	 */
	@ApiModelProperty(value = "所在市")
	private String city;
	/**
	 * 所在县、区
	 */
	@ApiModelProperty(value = "县")
	private String country;
	/**
	 * 所在乡、镇、社区
	 */
	@ApiModelProperty(value = "所在乡镇")
	private String town;
	/**
	 * 所在村、街道
	 */
	@ApiModelProperty(value = "所在村")
	private String village;
	/**
	 * 门牌号
	 */
	@ApiModelProperty(value = "门牌号码")
	private String doorNo;
	/**
	 * 邮政编码
	 */
	@ApiModelProperty(value = "邮政编码")
	private String zipCode;
	/**
	 * 行政划分区域编码
	 */
	@ApiModelProperty(value = "行政区域编码")
	private String divisionCode;
	/**
	 * 电话号码类型编码
	 */
	@ApiModelProperty(value = "电话号码类型编码")
	private String telephoneCode;
	/**
	 * 电话号码
	 */
	@ApiModelProperty(value = "电话号码")
	private String thlephone;
	/**
	 * 电子邮件
	 */
	@ApiModelProperty(value = "电子邮件")
	private String email;
}
