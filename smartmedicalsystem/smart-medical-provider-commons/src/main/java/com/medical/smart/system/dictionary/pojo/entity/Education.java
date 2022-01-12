package com.medical.smart.system.dictionary.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-学历信息表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "sys_education")
public class Education extends BaseEntity {
	private static final long serialVersionUID = 1L;
	/**
	* 主键
	*/
	@TableId(type = IdType.AUTO)
	private Long id;

	/**
	* 编码
	*/
	@TableField(value="code")
	private String code;
	/**
	* 名称
	*/
	@TableField(value="name")
	private String name;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}