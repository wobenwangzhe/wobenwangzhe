package com.medical.smart.emr.clinic.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-门（急）诊病历检查申请详情表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "emr_clinic_check_apply")
public class ClinicCheckApply extends BaseEntity {
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
	* 检查申请检查原因
	*/
	@TableField(value="checkReason")
	private String checkReason;
	/**
	* 检查申请日期
	*/
	@TableField(value="applyDate")
	private Date applyDate;
	/**
	* 检查申请注意事项
	*/
	@TableField(value="attention")
	private String attention;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}