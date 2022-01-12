package com.medical.smart.emr.clinicobs.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-急诊留观病历既往史详情表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "emr_clinic_obs_past")
public class ClinicObsPast extends BaseEntity {
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
	* 既往观察-项目名称
	*/
	@TableField(value="itemName")
	private String itemName;
	/**
	* 既往观察-项目分类代码
	*/
	@TableField(value="itemCatCode")
	private String itemCatCode;
	/**
	* 既往观察-项目代码名称
	*/
	@TableField(value="itemCodeName")
	private String itemCodeName;
	/**
	* 既往观察-项目代码
	*/
	@TableField(value="itemCode")
	private String itemCode;
	/**
	* 既往观察-方法代码
	*/
	@TableField(value="methodCode")
	private String methodCode;
	/**
	* 既往观察-结果
	*/
	@TableField(value="result")
	private String result;
	/**
	* 既往史观察项目类目名称
	*/
	@TableField(value="pastTypeName")
	private String pastTypeName;
	/**
	* 既往史观察结果
	*/
	@TableField(value="pastResult")
	private String pastResult;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}