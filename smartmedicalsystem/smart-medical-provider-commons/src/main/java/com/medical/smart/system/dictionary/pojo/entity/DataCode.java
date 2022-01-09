package com.medical.smart.system.dictionary.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;



/**
 * <b>系统功能-数据元值域代码实体信息类</b>
 * @author 王晗
 * @version 1.0.0
 */
@Data
@TableName(value = "sys_data_code")
public class DataCode extends BaseEntity {
	private static final long serialVersionUID = 3465401234607696849L;
	/**
	 * 主键
	 */
	@TableField
	private Long id;
	/**
	 * 上级编码
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
