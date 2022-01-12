package com.medical.smart.emr.clinicrx.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-门（急）诊西医处方医保详情表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "emr_clinic_wm_rx_ins")
public class ClinicWmRxIns extends BaseEntity {
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
	* 医疗保险-类别
	*/
	@TableField(value="insCat")
	private String insCat;
	/**
	* 医疗保险-类别代码
	*/
	@TableField(value="insCatCode")
	private String insCatCode;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}