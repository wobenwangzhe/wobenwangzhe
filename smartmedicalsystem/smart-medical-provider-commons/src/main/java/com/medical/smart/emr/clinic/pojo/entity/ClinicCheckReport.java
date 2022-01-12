package com.medical.smart.emr.clinic.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-门（急）诊病历检查报告详情表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "emr_clinic_check_report")
public class ClinicCheckReport extends BaseEntity {
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
	* 检查申请单—机构（科室）
	*/
	@TableField(value="checkOrg")
	private String checkOrg;
	/**
	* 检查申请单—编号
	*/
	@TableField(value="checkNo")
	private String checkNo;
	/**
	* 检查报告结果-客观所见
	*/
	@TableField(value="objResult")
	private String objResult;
	/**
	* 检查报告结果-主观提示
	*/
	@TableField(value="subResult")
	private String subResult;
	/**
	* 检查日期
	*/
	@TableField(value="checkDate")
	private Date checkDate;
	/**
	* 检查报告日期
	*/
	@TableField(value="reportDate")
	private Date reportDate;
	/**
	* 检查报告备注
	*/
	@TableField(value="remark")
	private String remark;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}