package com.medical.smart.system.hospital.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

/**
 * <b>系统功能-医院实体信息</b>
 * @author 王晗
 * @version 1.0.0
 */
@Data
@TableName(value = "sys_hospital")
public class Hospital extends BaseEntity {
	private static final long serialVersionUID = 5797642131611108710L;
	/**
	 * 主键
	 */
	@TableField
	private Long id;
	/**
	 * 名称
	 */
	@TableField
	private String name;
	/**
	 * 上级主管机构
	 */
	@TableField
	private String authority;
	/**
	 * 组织机构代码
	 */
	@TableField
	private String orgCode;
	/**
	 * 机构负责人
	 */
	@TableField
	private String chare;
	/**
	 * 标示地址类别编码
	 */
	@TableField(value = "addressCatCode")
	private String addressCatCode;
	/**
	 * 所在省
	 */
	@TableField
	private String provence;
	/**
	 * 所在市
	 */
	@TableField
	private String city;
	/**
	 * 所在县、区
	 */
	@TableField
	private String country;
	/**
	 * 所在乡、镇、社区
	 */
	@TableField
	private String town;
	/**
	 * 所在村、街道
	 */
	@TableField
	private String village;
	/**
	 * 门牌号
	 */
	@TableField
	private String doorNo;
	/**
	 * 邮政编码
	 */
	@TableField
	private String zipCode;
	/**
	 * 行政划分区域编码
	 */
	@TableField
	private String divisionCode;
	/**
	 * 电话号码类型编码
	 */
	@TableField
	private String telephoneCode;
	/**
	 * 电话号码
	 */
	@TableField
	private String thlephone;
	/**
	 * 电子邮件
	 */
	@TableField
	private String email;



}
