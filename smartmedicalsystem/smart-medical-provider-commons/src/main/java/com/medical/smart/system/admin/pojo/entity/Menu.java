package com.medical.smart.system.admin.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;


/**
 * <b>智慧医疗系统-菜单实体类</b>
 * @author 王晗
 * @version 1.0.0
 */
@Data
@TableName(value = "sys_menu")
public class Menu extends BaseEntity {
	private static final long serialVersionUID = -6613093104985785666L;
	/**
	 * 主键
	 */
	@TableField
	private Long id;
	/**
	 * 编码
	 */
	@TableField
	private String code;
	/**
	 * 上级菜单编码
	 */
	@TableField
	private String parent;
	/**
	 * 菜单名称
	 */
	@TableField
	private String name;
	/**
	 * 菜单功能链接地址
	 */
	@TableField
	private String url;
	/**
	 * 菜单图标
	 */
	@TableField
	private String icon;
	/**
	 * 排序
	 */
	@TableField
	private int sort;

}
