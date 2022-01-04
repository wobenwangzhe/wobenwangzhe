package com.medical.smart.system.admin.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

/**
 * <b>系统功能-系统人员实体类</b>
 * @author 王晗
 * @version 1.0.0
 */
@Data
@TableName(value = "sys_admin")
public class Admin extends BaseEntity {
	private static final long serialVersionUID = -4131814912279584413L;
	/**
	 * 主键
	 */
	@TableId
	private String id;
	/**
	 * 工号
	 */
	@TableField
	private String no;
	/**
	 * 姓名
	 */
	@TableField
	private String name;
	/**
	 * 手机号码
	 */
	@TableField
	private String cellphone;
	/**
	 * 密码
	 */
	@TableField
	private String password;
	/**
	 * 角色
	 */
	@TableField
	private String role;
	/**
	 * 学历
	 */
	@TableField
	private String education;
	/**
	 * 身份
	 */
	@TableField
	private String identity;
	/**
	 * 所在部门
	 */
	@TableField
	private String department;
	/**
	 * 工作职务
	 */
	@TableField
	private String position;
	/**
	 * 专业技术职务名称
	 */
	@TableField(value = "proTitle")
	private String proTitle;
	/**
	 * 专业技术职务等级
	 */
	@TableField(value = "proRank")
	private String proRank;
}
