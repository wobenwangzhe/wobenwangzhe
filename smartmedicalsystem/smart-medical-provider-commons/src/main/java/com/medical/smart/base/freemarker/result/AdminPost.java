package com.medical.smart.base.freemarker.result;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-人员职务信息表</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "sys_admin_post")
public class AdminPost extends BaseEntity {
	private static final long serialVersionUID = 1L;
	/**
	* 人员信息
	*/
	@TableField(value="admin")
	private String admin;
	/**
	* 职务信息
	*/
	@TableField(value="position")
	private String position;
}