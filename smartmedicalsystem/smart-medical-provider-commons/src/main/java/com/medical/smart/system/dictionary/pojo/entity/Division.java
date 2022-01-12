package com.medical.smart.system.dictionary.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-行政区划信息表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "sys_division")
public class Division extends BaseEntity {
	private static final long serialVersionUID = 1L;
	/**
	* 主键
	*/
	@TableId(type = IdType.NONE)
	private String id;

	/**
	* 上级行政区划
	*/
	@TableField(value="parent")
	private String parent;
	/**
	* 行政区划编码
	*/
	@TableField(value="code")
	private String code;
	/**
	* 行政区划名称
	*/
	@TableField(value="name")
	private String name;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}