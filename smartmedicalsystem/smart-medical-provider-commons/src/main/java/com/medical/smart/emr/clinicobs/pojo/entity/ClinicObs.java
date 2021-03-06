package com.medical.smart.emr.clinicobs.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-急诊留观病历信息表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "emr_clinic_obs")
public class ClinicObs extends BaseEntity {
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
	* 机构名称
	*/
	@TableField(value="orgName")
	private String orgName;
	/**
	* 机构组织机构代码
	*/
	@TableField(value="orgCode")
	private String orgCode;
	/**
	* 机构负责人（法人）
	*/
	@TableField(value="orgLeader")
	private String orgLeader;
	/**
	* 机构地址
	*/
	@TableField(value="orgAddress")
	private String orgAddress;
	/**
	* 科室名称
	*/
	@TableField(value="deptName")
	private String deptName;
	/**
	* 机构角色
	*/
	@TableField(value="orgRole")
	private String orgRole;
	/**
	* 机构角色代码
	*/
	@TableField(value="orgRoleCode")
	private String orgRoleCode;
	/**
	* 服务者姓名
	*/
	@TableField(value="servName")
	private String servName;
	/**
	* 服务者职责（角色）
	*/
	@TableField(value="servRole")
	private String servRole;
	/**
	* 服务者职责（角色）代码
	*/
	@TableField(value="servRoleCode")
	private String servRoleCode;
	/**
	* 服务者专业技术职务
	*/
	@TableField(value="servtechTitle")
	private String servtechTitle;
	/**
	* 服务者学历
	*/
	@TableField(value="servEdu")
	private String servEdu;
	/**
	* 服务者所学专业
	*/
	@TableField(value="servMajor")
	private String servMajor;
	/**
	* 服务者专业技术职务等级
	*/
	@TableField(value="servTechRank")
	private String servTechRank;
	/**
	* 服务者职务
	*/
	@TableField(value="servPost")
	private String servPost;
	/**
	* 主诉
	*/
	@TableField(value="mainSuit")
	private String mainSuit;
	/**
	* 症状代码编码体系名称
	*/
	@TableField(value="symptom")
	private String symptom;
	/**
	* 症状代码
	*/
	@TableField(value="sxCode")
	private String sxCode;
	/**
	* 症状开始日期时间
	*/
	@TableField(value="sxBeginTime")
	private Date sxBeginTime;
	/**
	* 症状停止日期时间
	*/
	@TableField(value="sxEndTime")
	private Date sxEndTime;
	/**
	* 症状描述
	*/
	@TableField(value="sxDesc")
	private String sxDesc;
	/**
	* 观察-类别
	*/
	@TableField(value="physCheckCat")
	private String physCheckCat;
	/**
	* 观察-类别代码
	*/
	@TableField(value="physCheckCatCode")
	private String physCheckCatCode;
	/**
	* 观察项目名称
	*/
	@TableField(value="physCheckItem")
	private String physCheckItem;
	/**
	* 观察-项目代码
	*/
	@TableField(value="physCheckItemCode")
	private String physCheckItemCode;
	/**
	* 观察-结果描述
	*/
	@TableField(value="physCheckResultDesc")
	private String physCheckResultDesc;
	/**
	* 观察-结果(数值)
	*/
	@TableField(value="physCheckResult")
	private String physCheckResult;
	/**
	* 观察-计量单位
	*/
	@TableField(value="physCheckUnit")
	private String physCheckUnit;
	/**
	* 观察-结果代码
	*/
	@TableField(value="physCheckResultCode")
	private String physCheckResultCode;
	/**
	* 个人史危险因素代码
	*/
	@TableField(value="personRisk")
	private String personRisk;
	/**
	* 个人史观察项目类目名称
	*/
	@TableField(value="personCheckCatName")
	private String personCheckCatName;
	/**
	* 个人史观察结果
	*/
	@TableField(value="personCheckResult")
	private String personCheckResult;
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
	* 病程记录类别
	*/
	@TableField(value="proRecordCat")
	private String proRecordCat;
	/**
	* 病程记录内容
	*/
	@TableField(value="proRecordDetail")
	private String proRecordDetail;
	/**
	* 治疗类别代码
	*/
	@TableField(value="trtCatCode")
	private String trtCatCode;
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