package com.medical.smart.emr.clinicrx.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-门（急）诊西医处方联系人详情表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "emr_clinic_wm_rx_contact")
public class ClinicWmRxContact extends BaseEntity {
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
	* 标识号-类别代码
	*/
	@TableField(value="markCatCode")
	private String markCatCode;
	/**
	* 标识号-号码
	*/
	@TableField(value="markNo")
	private String markNo;
	/**
	* 标识号-生效日期
	*/
	@TableField(value="markEffDate")
	private Date markEffDate;
	/**
	* 标识号-提供标识的机构名称
	*/
	@TableField(value="markOrgName")
	private String markOrgName;
	/**
	* 姓名-标识对象
	*/
	@TableField(value="markObj")
	private String markObj;
	/**
	* 姓名-标识对象代码
	*/
	@TableField(value="markObjCode")
	private String markObjCode;
	/**
	* 姓名
	*/
	@TableField(value="name")
	private String name;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}