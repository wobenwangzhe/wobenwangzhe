package com.medical.smart.emr.referral.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-转诊（院）记录信息表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "emr_referral_record")
public class ReferralRecord extends BaseEntity {
	private static final long serialVersionUID = 1L;
	/**
	* 主键
	*/
	@TableId(type = IdType.NONE)
	private String id;

	/**
	* 病历号
	*/
	@TableField(value="emrNo")
	private String emrNo;
	/**
	* 门诊号
	*/
	@TableField(value="clinicNo")
	private String clinicNo;
	/**
	* 文档标识-名称
	*/
	@TableField(value="docName")
	private String docName;
	/**
	* 文档标识-类别代码
	*/
	@TableField(value="docCatCode")
	private String docCatCode;
	/**
	* 文档标识-管理机构名称
	*/
	@TableField(value="docAdminOrgName")
	private String docAdminOrgName;
	/**
	* 文档标识-管理机构组织机构代码（法人代码）
	*/
	@TableField(value="docAdminOrgCode")
	private String docAdminOrgCode;
	/**
	* 文档标识-号码
	*/
	@TableField(value="docNo")
	private String docNo;
	/**
	* 文档标识-生效日期
	*/
	@TableField(value="docEffDate")
	private Date docEffDate;
	/**
	* 文档标识-失效日期
	*/
	@TableField(value="docExpDate")
	private Date docExpDate;
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
	* 标识号-失效日期
	*/
	@TableField(value="markExpDate")
	private Date markExpDate;
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
	* 病人类型代码
	*/
	@TableField(value="patientCatCode")
	private String patientCatCode;
	/**
	* 性别代码
	*/
	@TableField(value="gender")
	private String gender;
	/**
	* 年龄（岁）
	*/
	@TableField(value="age")
	private Long age;
	/**
	* 国籍代码
	*/
	@TableField(value="nationality")
	private String nationality;
	/**
	* 民族代码
	*/
	@TableField(value="ethnic")
	private String ethnic;
	/**
	* 婚姻状况类别代码
	*/
	@TableField(value="marital")
	private String marital;
	/**
	* 职业编码系统名称
	*/
	@TableField(value="occupation")
	private String occupation;
	/**
	* 职业代码
	*/
	@TableField(value="occCode")
	private String occCode;
	/**
	* 文化程度代码
	*/
	@TableField(value="education")
	private String education;
	/**
	* 出生日期
	*/
	@TableField(value="birthday")
	private Date birthday;
	/**
	* 出生地
	*/
	@TableField(value="birthplace")
	private String birthplace;
	/**
	* 工作单位名称
	*/
	@TableField(value="workplace")
	private String workplace;
	/**
	* 标识地址类别的代码
	*/
	@TableField(value="addrCatCode")
	private String addrCatCode;
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
	* 行政区划代码
	*/
	@TableField(value="divisionCode")
	private String divisionCode;
	/**
	* 卫生事件(动作)名称
	*/
	@TableField(value="eventName")
	private String eventName;
	/**
	* 事件开始时间
	*/
	@TableField(value="eventStartDate")
	private Date eventStartDate;
	/**
	* 事件结束时间
	*/
	@TableField(value="eventEndDate")
	private Date eventEndDate;
	/**
	* 事件发生地点
	*/
	@TableField(value="eventAddr")
	private String eventAddr;
	/**
	* 事件发生原因
	*/
	@TableField(value="eventReason")
	private String eventReason;
	/**
	* 观察-类别
	*/
	@TableField(value="observeCat")
	private String observeCat;
	/**
	* 观察-类别代码
	*/
	@TableField(value="observeCatCode")
	private String observeCatCode;
	/**
	* 观察项目名称
	*/
	@TableField(value="observeItem")
	private String observeItem;
	/**
	* 观察-项目代码
	*/
	@TableField(value="observeItemCode")
	private String observeItemCode;
	/**
	* 观察-结果描述
	*/
	@TableField(value="observeResultDesc")
	private String observeResultDesc;
	/**
	* 诊断机构名称
	*/
	@TableField(value="dxOrgName")
	private String dxOrgName;
	/**
	* 诊断日期
	*/
	@TableField(value="dxDate")
	private Date dxDate;
	/**
	* 诊断类别
	*/
	@TableField(value="dxCat")
	private String dxCat;
	/**
	* 诊断类别代码
	*/
	@TableField(value="dxCatCode")
	private String dxCatCode;
	/**
	* 诊断顺位（从属关系）代码
	*/
	@TableField(value="dxCisCode")
	private String dxCisCode;
	/**
	* 疾病名称
	*/
	@TableField(value="disease")
	private String disease;
	/**
	* 疾病代码
	*/
	@TableField(value="diseaseCode")
	private String diseaseCode;
	/**
	* 诊断依据
	*/
	@TableField(value="dxAccording")
	private String dxAccording;
	/**
	* 诊断依据代码
	*/
	@TableField(value="dxAccordingCode")
	private String dxAccordingCode;
	/**
	* 诊疗过程名称
	*/
	@TableField(value="trtProcName")
	private String trtProcName;
	/**
	* 诊疗过程描述
	*/
	@TableField(value="trtProcDesc")
	private String trtProcDesc;
	/**
	* 病历状态：0-待接诊，1-诊疗完毕，2-未接诊，3-接诊后转诊/院，4-挂号错误
	*/
	@TableField(value="mrStatus")
	private String mrStatus;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}