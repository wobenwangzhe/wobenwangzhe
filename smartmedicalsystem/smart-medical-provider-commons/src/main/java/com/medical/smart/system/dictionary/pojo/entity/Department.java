package com.medical.smart.system.dictionary.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-医院部门信息表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "sys_department")
public class Department extends BaseEntity {
	private static final long serialVersionUID = 1L;
	/**
	* 主键
	*/
	@TableId(type = IdType.AUTO)
	private Long id;

	/**
	* 所在医院
	*/
	@TableField(value="hospital")
	private String hospital;
	/**
	* 上级部门
	*/
	@TableField(value="parent")
	private String parent;
	/**
	* 部门编码
	*/
	@TableField(value="code")
	private String code;
	/**
	* 部门名称
	*/
	@TableField(value="name")
	private String name;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}