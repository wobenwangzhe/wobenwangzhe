package com.medical.smart.system.position.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

/**
 * <b>系统功能-人员职务实体信息</b>
 * @author 王晗
 * @version 1.0.0
 */
@Data
@TableName(value = "sys_position")
public class Position extends BaseEntity {
	private static final long serialVersionUID = 5947731434420404242L;
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
