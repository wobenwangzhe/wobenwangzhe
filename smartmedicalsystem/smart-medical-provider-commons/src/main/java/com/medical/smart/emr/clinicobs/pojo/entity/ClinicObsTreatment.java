package com.medical.smart.emr.clinicobs.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-急诊留观病历治疗详情表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "emr_clinic_obs_treatment")
public class ClinicObsTreatment extends BaseEntity {
	private static final long serialVersionUID = 1L;
	/**
	* 主键
	*/
	@TableId(type = IdType.NONE)
	private String id;

	/**
	* 所属急诊留观病历
	*/
	@TableField(value="emrClinicObs")
	private String emrClinicObs;
	/**
	* 拟做的检查
	*/
	@TableField(value="planCheck")
	private String planCheck;
	/**
	* 今后治疗方案
	*/
	@TableField(value="trtSchPlan")
	private String trtSchPlan;
	/**
	* 随访标志
	*/
	@TableField(value="followMark")
	private String followMark;
	/**
	* 随访间隔（随诊期限）
	*/
	@TableField(value="followInr")
	private String followInr;
	/**
	* 医嘱
	*/
	@TableField(value="docAdvice")
	private String docAdvice;
	/**
	* 特别注意事项
	*/
	@TableField(value="spRemark")
	private String spRemark;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}