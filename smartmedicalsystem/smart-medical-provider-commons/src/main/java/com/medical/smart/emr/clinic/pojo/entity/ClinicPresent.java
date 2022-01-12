package com.medical.smart.emr.clinic.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-门（急）诊病历现病史详情表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "emr_clinic_present")
public class ClinicPresent extends BaseEntity {
	private static final long serialVersionUID = 1L;
	/**
	* 主键
	*/
	@TableId(type = IdType.NONE)
	private String id;

	/**
	* 所属门（急）诊病历
	*/
	@TableField(value="emrClinic")
	private String emrClinic;
	/**
	* 起病时间
	*/
	@TableField(value="onsetDate")
	private Date onsetDate;
	/**
	* 起病情况描述
	*/
	@TableField(value="onsetDesc")
	private String onsetDesc;
	/**
	* 症状开始原因/诱因
	*/
	@TableField(value="sxOnsetReason")
	private String sxOnsetReason;
	/**
	* 症状特点
	*/
	@TableField(value="sxCh")
	private String sxCh;
	/**
	* 伴随症状
	*/
	@TableField(value="sxAcc")
	private String sxAcc;
	/**
	* 本疾病既往诊疗经过
	*/
	@TableField(value="pastTrt")
	private String pastTrt;
	/**
	* 基础疾病诊疗情况
	*/
	@TableField(value="baseTrt")
	private String baseTrt;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}