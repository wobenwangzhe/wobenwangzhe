package com.medical.smart.emr.resume.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-病历概要数据疾病（外伤）史详情表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "emr_resume_disease")
public class ResumeDisease extends BaseEntity {
	private static final long serialVersionUID = 1L;
	/**
	* 主键
	*/
	@TableId(type = IdType.NONE)
	private String id;

	/**
	* 所属病历概要数据
	*/
	@TableField(value="emrResume")
	private String emrResume;
	/**
	* 既往疾病史
	*/
	@TableField(value="history")
	private String history;
	/**
	* 既往精神类疾病诊断名称
	*/
	@TableField(value="mentalDxName")
	private String mentalDxName;
	/**
	* 既往疾病名称
	*/
	@TableField(value="diseaseName")
	private String diseaseName;
	/**
	* 既往疾病代码
	*/
	@TableField(value="diseaseCode")
	private String diseaseCode;
	/**
	* 既往疾病诊断机构
	*/
	@TableField(value="diseaseDxOrg")
	private String diseaseDxOrg;
	/**
	* 既往疾病诊断机构级别代码
	*/
	@TableField(value="dxOrgLevelCode")
	private String dxOrgLevelCode;
	/**
	* 既往疾病诊断时间
	*/
	@TableField(value="diseaseDxTime")
	private Date diseaseDxTime;
	/**
	* 疾病当前状态代码
	*/
	@TableField(value="diseaseStatus")
	private String diseaseStatus;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}