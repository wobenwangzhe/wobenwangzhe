package com.medical.smart.patient.patient.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-病人职业信息表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "pa_patient_occ")
public class PatientOcc extends BaseEntity {
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
	* 职业信息
	*/
	@TableField(value="occupation")
	private String occupation;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}