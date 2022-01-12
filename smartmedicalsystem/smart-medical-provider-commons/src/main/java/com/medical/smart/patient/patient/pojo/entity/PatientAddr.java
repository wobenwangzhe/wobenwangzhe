package com.medical.smart.patient.patient.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-病人联系地址信息表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "pa_patient_addr")
public class PatientAddr extends BaseEntity {
	private static final long serialVersionUID = 1L;
	/**
	* 主键
	*/
	@TableId(type = IdType.NONE)
	private String id;

	/**
	* 病人信息
	*/
	@TableField(value="patient")
	private String patient;
	/**
	* 地址类别
	*/
	@TableField(value="addrCat")
	private String addrCat;
	/**
	* 地址-省（自治区、直辖市）
	*/
	@TableField(value="province")
	private String province;
	/**
	* 地址-市（地区）
	*/
	@TableField(value="city")
	private String city;
	/**
	* 地址-县（区）
	*/
	@TableField(value="county")
	private String county;
	/**
	* 地址-乡（镇、街道办事处）
	*/
	@TableField(value="countryside")
	private String countryside;
	/**
	* 地址-村（街、路、弄等）
	*/
	@TableField(value="village")
	private String village;
	/**
	* 地址-门牌号码
	*/
	@TableField(value="doorNo")
	private String doorNo;
	/**
	* 邮政编码
	*/
	@TableField(value="zipcode")
	private String zipcode;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}