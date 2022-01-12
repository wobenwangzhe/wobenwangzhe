package com.medical.smart.emr.resume.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-病历概要数据医疗费用详情表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "emr_resume_expense")
public class ResumeExpense extends BaseEntity {
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
	* 门诊费用-分类
	*/
	@TableField(value="expClinicCat")
	private String expClinicCat;
	/**
	* 门诊费用-分类代码
	*/
	@TableField(value="expClinicCatCode")
	private String expClinicCatCode;
	/**
	* 门诊费用-金额（元/人民币）
	*/
	@TableField(value="clinicAmount")
	private Double clinicAmount;
	/**
	* 门诊费用-支付方式代码
	*/
	@TableField(value="clinicPayTypeCode")
	private String clinicPayTypeCode;
	/**
	* 住院费用-分类
	*/
	@TableField(value="hospExpCat")
	private String hospExpCat;
	/**
	* 住院费用-分类代码
	*/
	@TableField(value="hospExpCatCode")
	private String hospExpCatCode;
	/**
	* 住院费用-金额（元/人民币）
	*/
	@TableField(value="hospAmount")
	private Double hospAmount;
	/**
	* 个人承担费用（元）
	*/
	@TableField(value="personAmount")
	private Double personAmount;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}