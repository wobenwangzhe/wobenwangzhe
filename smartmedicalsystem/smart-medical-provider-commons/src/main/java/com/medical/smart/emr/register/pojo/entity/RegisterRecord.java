package com.medical.smart.emr.register.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-病人就诊信息表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "opc_register_record")
public class RegisterRecord extends BaseEntity {
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
	* 病历号
	*/
	@TableField(value="emrNo")
	private String emrNo;
	/**
	* 门诊号
	*/
	@TableField(value="clinicNo")
	private String clinicNo;
	/**
	* 科室信息
	*/
	@TableField(value="department")
	private String department;
	/**
	* 医生信息
	*/
	@TableField(value="doctor")
	private String doctor;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}