package com.medical.smart.emr.clinicobs.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-急诊留观病历诊疗详情表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "emr_clinic_obs_dxtrt")
public class ClinicObsDxtrt extends BaseEntity {
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
	* 诊疗过程名称
	*/
	@TableField(value="dxtrtName")
	private String dxtrtName;
	/**
	* 诊疗过程描述
	*/
	@TableField(value="dxtrtDesc")
	private String dxtrtDesc;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}