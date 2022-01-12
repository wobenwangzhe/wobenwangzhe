package com.medical.smart.patient.patient.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-病人医保信息表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "pa_patient_ins")
public class PatientIns extends BaseEntity {
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
	* 医疗保险-类别
	*/
	@TableField(value="insCat")
	private String insCat;
	/**
	* 医疗待遇
	*/
	@TableField(value="treatment")
	private String treatment;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}