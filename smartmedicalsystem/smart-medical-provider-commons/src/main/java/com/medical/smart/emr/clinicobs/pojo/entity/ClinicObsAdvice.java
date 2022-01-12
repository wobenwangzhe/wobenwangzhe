package com.medical.smart.emr.clinicobs.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-急诊留观病历医嘱详情表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "emr_clinic_obs_advice")
public class ClinicObsAdvice extends BaseEntity {
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
	* 医嘱开嘱日期时间
	*/
	@TableField(value="startDate")
	private Date startDate;
	/**
	* 长期医嘱停嘱日期时间
	*/
	@TableField(value="stopDate")
	private Date stopDate;
	/**
	* 医嘱执行日期时间
	*/
	@TableField(value="execDate")
	private Date execDate;
	/**
	* 医嘱执行时间类别代码
	*/
	@TableField(value="execDateCatCode")
	private String execDateCatCode;
	/**
	* 医嘱取消日期时间
	*/
	@TableField(value="execCnlDate")
	private Date execCnlDate;
	/**
	* 医嘱类别
	*/
	@TableField(value="adviceCat")
	private String adviceCat;
	/**
	* 医嘱内容
	*/
	@TableField(value="adviceDetail")
	private String adviceDetail;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}