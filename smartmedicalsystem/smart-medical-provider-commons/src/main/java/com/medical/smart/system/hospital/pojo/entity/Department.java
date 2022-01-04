package com.medical.smart.system.hospital.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

/**
 * <b>系统功能-医院部门实体信息</b>
 * @author 王晗
 * @version 1.0.0
 */
@Data
@TableName(value = "sys_department")
public class Department extends BaseEntity {
	private static final long serialVersionUID = 1274768770006728194L;
	/**
	 * 主键
	 */
	@TableField
	private Long id;
	/**
	 * 所属医院编码
	 */
	@TableField(value = "hospitalCode")
	private String hospitalCode;
	/**
	 * 上级部门编码
	 */
	@TableField
	private String parent;
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
