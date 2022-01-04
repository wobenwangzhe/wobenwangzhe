package com.medical.smart.system.professional.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

/**
 * <b>系统功能-专业职务等级实体信息</b>
 * @author 王晗
 * @version 1.0.0
 */
@Data
@TableName("sys_pro_rank")
public class Prorank extends BaseEntity {
	private static final long serialVersionUID = -8257128570675405125L;
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
