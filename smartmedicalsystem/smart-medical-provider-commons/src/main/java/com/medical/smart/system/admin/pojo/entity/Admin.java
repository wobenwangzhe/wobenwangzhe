package com.medical.smart.system.admin.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-系统用户信息表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "sys_admin")
public class Admin extends BaseEntity {
	private static final long serialVersionUID = 1L;
	/**
	* 主键
	*/
	@TableId(type = IdType.NONE)
	private String id;

	/**
	* 工号
	*/
	@TableField(value="no")
	private String no;
	/**
	* 姓名
	*/
	@TableField(value="name")
	private String name;
	/**
	* 手机号码
	*/
	@TableField(value="cellphone")
	private String cellphone;
	/**
	* 登录密码
	*/
	@TableField(value="password")
	private String password;
	/**
	* 角色
	*/
	@TableField(value="role")
	private String role;
	/**
	* 身份
	*/
	@TableField(value="identity")
	private String identity;
	/**
	* 所在部门
	*/
	@TableField(value="department")
	private String department;
	/**
	* 服务者专业技术职务
	*/
	@TableField(value="techPostTitle")
	private String techPostTitle;
	/**
	* 学历
	*/
	@TableField(value="education")
	private String education;
	/**
	* 服务者专业技术职务等级
	*/
	@TableField(value="techPostRank")
	private String techPostRank;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}