package com.medical.smart.emr.clinicrx.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-门（急）诊西医处方用药详情表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "emr_clinic_wm_rx_med")
public class ClinicWmRxMed extends BaseEntity {
	private static final long serialVersionUID = 1L;
	/**
	* 主键
	*/
	@TableId(type = IdType.NONE)
	private String id;

	/**
	* 门（急）诊西医处方
	*/
	@TableField(value="emrClinicRx")
	private String emrClinicRx;
	/**
	* 药物用法
	*/
	@TableField(value="medUsage")
	private String medUsage;
	/**
	* 药物使用-频率
	*/
	@TableField(value="usageRate")
	private String usageRate;
	/**
	* 药物使用-剂量单位
	*/
	@TableField(value="medUnit")
	private String medUnit;
	/**
	* 药物使用-次剂量
	*/
	@TableField(value="perDosage")
	private Double perDosage;
	/**
	* 药物使用-总剂量
	*/
	@TableField(value="totalDosage")
	private Double totalDosage;
	/**
	* 药物使用-途径代码
	*/
	@TableField(value="wayCode")
	private String wayCode;
	/**
	* 药物名称
	*/
	@TableField(value="medName")
	private String medName;
	/**
	* 药物剂型代码
	*/
	@TableField(value="dosageForm")
	private String dosageForm;
	/**
	* 药物类型
	*/
	@TableField(value="medCat")
	private String medCat;
	/**
	* 药物名称代码
	*/
	@TableField(value="medNameCode")
	private String medNameCode;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}