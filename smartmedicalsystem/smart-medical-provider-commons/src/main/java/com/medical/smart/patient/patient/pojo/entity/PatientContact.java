package com.medical.smart.patient.patient.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-病人联系人信息表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "pa_patient_contact")
public class PatientContact extends BaseEntity {
	private static final long serialVersionUID = 1L;
	/**
	* 主键
	*/
	@TableId(type = IdType.NONE)
	private String id;

	/**
	* 病人信息
	*/
	@TableField(value="patient")
	private String patient;
	/**
	* 证件类别
	*/
	@TableField(value="idType")
	private String idType;
	/**
	* 证件
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
	* 联系人类型
	*/
	@TableField(value="contactType")
	private String contactType;
	/**
	* 姓名
	*/
	@TableField(value="name")
	private String name;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}