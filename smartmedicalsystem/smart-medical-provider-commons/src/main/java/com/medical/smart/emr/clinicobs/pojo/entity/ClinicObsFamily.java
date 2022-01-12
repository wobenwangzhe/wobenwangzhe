package com.medical.smart.emr.clinicobs.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-急诊留观病历家族史详情表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "emr_clinic_obs_family")
public class ClinicObsFamily extends BaseEntity {
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
	* 家族史观察项目类目名称
	*/
	@TableField(value="typeName")
	private String typeName;
	/**
	* 家族史观察结果
	*/
	@TableField(value="result")
	private String result;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}