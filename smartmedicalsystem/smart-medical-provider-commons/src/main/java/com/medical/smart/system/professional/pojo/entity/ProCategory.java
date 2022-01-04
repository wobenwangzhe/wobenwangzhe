package com.medical.smart.system.professional.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

/**
 * <b>系统功能-专业职务类别实体信息</b>
 * @author 王晗
 * @version 1.0.0
 */
@Data
@TableName(value = "sys_pro_category")
public class ProCategory extends BaseEntity {
	private static final long serialVersionUID = -9093981185567523724L;
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
