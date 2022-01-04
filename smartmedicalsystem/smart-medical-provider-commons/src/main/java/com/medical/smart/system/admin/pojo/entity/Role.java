package com.medical.smart.system.admin.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.io.Serializable;

/**
 * <b>系统功能-角色实体类</b>
 * @author 王晗
 * @version 1.0.0
 */
@Data
@TableName(value = "sys_icon")
public class Role extends BaseEntity {
	private static final long serialVersionUID = -1926567332744835388L;
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
	 * 名称
	 */
	@TableField
	private String name;


}
