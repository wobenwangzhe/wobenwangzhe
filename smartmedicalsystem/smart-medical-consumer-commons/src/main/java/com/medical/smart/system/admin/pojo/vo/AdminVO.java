package com.medical.smart.system.admin.pojo.vo;

import com.medical.smart.base.pojo.vo.BaseVO;
import com.medical.smart.system.dictionary.pojo.vo.EducationVO;
import com.medical.smart.system.dictionary.pojo.vo.IdentityVO;
import com.medical.smart.system.hospital.pojo.vo.DepartmentVO;
import com.medical.smart.system.position.pojo.vo.PositionVO;
import com.medical.smart.system.professional.pojo.vo.ProRankVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * <b>系统功能-系统人员视图信息</b>
 * 主键使用雪花算法生成
 * @author 王晗
 * @version 1.0.0
 */
@Data
@ApiModel(description = "系统人员视图信息")
public class AdminVO extends BaseVO {
	private static final long serialVersionUID = -7014075997422453715L;
	/**
	 * 主键
	 */
	@ApiModelProperty(value = "主键")
	private String id;
	/**
	 * 工号
	 */
	@ApiModelProperty(value = "工号")
	private String no;
	/**
	 * 姓名
	 */
	@ApiModelProperty(value = "姓名")
	private String name;
	/**
	 * 手机号码
	 */
	@ApiModelProperty(value = "手机号码")
	private String cellphone;
	/**
	 * 密码
	 */
	@ApiModelProperty(value = "密码")
	private String password;
	/**
	 * 角色
	 */
	@ApiModelProperty(value = "角色")
	private RoleVO role;
	/**
	 * 学历
	 */
	@ApiModelProperty(value = "学历")
	private EducationVO education;
	/**
	 * 身份
	 */
	@ApiModelProperty(value = "身份")
	private IdentityVO identity;
	/**
	 * 所在部门
	 */
	@ApiModelProperty(value = "所在部门")
	private DepartmentVO department;
	/**
	 * 工作职务
	 */
	@ApiModelProperty(value = "工作职务")
	private PositionVO position;
	/**
	 * 专业技术职务
	 */
	@ApiModelProperty(value = "专业技术职务")
	private String proTitle;
	/**
	 * 专业技术职务等级
	 */
	@ApiModelProperty(value = "专业技术职务等级")
	private ProRankVO proRank;
}
