package com.medical.smart.system.admin.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-系统菜单信息表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "sys_menu")
public class Menu extends BaseEntity {
	private static final long serialVersionUID = 1L;
	/**
	* 主键
	*/
	@TableId(type = IdType.AUTO)
	private Long id;
	/**
	 * 上级菜单
	 */
	@TableField(value="parent")
	private String parent;
	/**
	 * 菜单文本
	 */
	@TableField(value="name")
	private String name;
	/**
	* 菜单编码
	*/
	@TableField(value="code")
	private String code;
	/**
	* 链接地址
	*/
	@TableField(value="path")
	private String path;
	/**
	 * 组件名称
	 */
	@TableField
	private String component;
	/**
	 * 菜单标题
	 */
	@TableField
	private String title;
	/**
	* 菜单图标样式
	*/
	@TableField(value="icon")
	private String icon;
	/**
	* 排序
	*/
	@TableField(value="sort")
	private Long sort;

}