package com.medical.smart.system.professional.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

/**
 * <b>系统功能-专业职务实体信息</b>
 * @author 王晗
 * @version 1.0.0
 */
@Data
@TableName(value = "sys_pro")
public class ProTitle extends BaseEntity {
	private static final long serialVersionUID = 6520467279803553271L;
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
	/**
	 * 类别
	 */
	@TableField
	private String category;
	/**
	 * 等级
	 */
	@TableField
	private String rank;

}
