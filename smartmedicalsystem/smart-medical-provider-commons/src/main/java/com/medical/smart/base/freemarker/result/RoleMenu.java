package com.medical.smart.base.freemarker.result;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-角色菜单功能中间表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "sys_role_menu")
public class RoleMenu extends BaseEntity {
	private static final long serialVersionUID = 1L;
	/**
	* 角色信息
	*/
	@TableField(value="role")
	private String role;
	/**
	* 菜单功能信息
	*/
	@TableField(value="menu")
	private String menu;
}