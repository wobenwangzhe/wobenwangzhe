package com.medical.smart.emr.referral.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-转诊（院）记录通信详情表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "emr_referral_comm")
public class ReferralComm extends BaseEntity {
	private static final long serialVersionUID = 1L;
	/**
	* 主键
	*/
	@TableId(type = IdType.NONE)
	private String id;

	/**
	* 所属转诊（院）记录
	*/
	@TableField(value="emrReferral")
	private String emrReferral;
	/**
	* 联系电话-类别
	*/
	@TableField(value="phoneCat")
	private String phoneCat;
	/**
	* 联系电话-类别代码
	*/
	@TableField(value="phoneCatCode")
	private String phoneCatCode;
	/**
	* 联系电话-号码
	*/
	@TableField(value="phoneNo")
	private String phoneNo;
	/**
	* 电子邮件地址
	*/
	@TableField(value="email")
	private String email;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}