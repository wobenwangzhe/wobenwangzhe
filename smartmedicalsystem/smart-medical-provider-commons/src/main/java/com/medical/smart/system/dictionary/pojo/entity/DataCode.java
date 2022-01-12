package com.medical.smart.system.dictionary.pojo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-数据元值域信息表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "sys_data_code")
public class DataCode extends BaseEntity {
	private static final long serialVersionUID = 1L;
	/**
	* 主键
	*/
	@TableId(type = IdType.NONE)
	private String id;

	/**
	* 上级数据元
	*/
	@TableField(value="parent")
	private String parent;
	/**
	* 数据元值域
	*/
	@TableField(value="code")
	private String code;
	/**
	* 数据元说明
	*/
	@TableField(value="remark")
	private String remark;
	/**
	* 修改时间
	*/
	@TableField(value="modifiedTime")
	private Date modifiedTime;
}