package com.medical.smart.patient.patient.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-病人信息表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "pa_patient")
public class Patient extends BaseEntity {
	private static final long serialVersionUID = 1L;
	/**
	* 主键
	*/
	@TableId(type = IdType.NONE)
	private String id;

	/**
	* 病历号
	*/
	@TableField(value="emrNo")
	private String emrNo;
	/**
	* 姓名
	*/
	@TableField(value="name")
	private String name;
	/**
	* 证件类型
	*/
	@TableField(value="idType")
	private String idType;
	/**
	* 证件号码
	*/
	@TableField(value="idNo")
	private String idNo;
	/**
	* 证件生效日期
	*/
	@TableField(value="idEffDate")
	private Date idEffDate;
	/**
	* 证件失效日期
	*/
	@TableField(value="idExpDate")
	private Date idExpDate;
	/**
	* 证件提供机构
	*/
	@TableField(value="idOrg")
	private String idOrg;
	/**
	* ABO血型
	*/
	@TableField(value="aboBlood")
	private String aboBlood;
	/**
	* RH血型
	*/
	@TableField(value="rhBlood")
	private String rhBlood;
	/**
	* 性别
	*/
	@TableField(value="gender")
	private String gender;
	/**
	* 国籍
	*/
	@TableField(value="nationality")
	private String nationality;
	/**
	* 民族
	*/
	@TableField(value="ethnic")
	private String ethnic;
	/**
	* 婚姻状况
	*/
	@TableField(value="marital")
	private String marital;
	/**
	* 文化程度
	*/
	@TableField(value="education")
	private String education;
	/**
	* 出生日期
	*/
	@TableField(value="birthday")
	private Date birthday;
	/**
	* 出生地
	*/
	@TableField(value="birthplace")
	private String birthplace;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}