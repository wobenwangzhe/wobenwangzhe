package com.medical.smart.base.pojo.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * <b>智慧医疗系统基础消费者项目-基础实体类</b>
 * <b>本项目所有实体类都必须继承基础实体类</b>
 * @author 王晗
 * @version 1.0.0
 */
@Data
public class BaseEntity implements Serializable {
	private static final long serialVersionUID = -2164231066300893793L;
	/**
	 * 系统状态：0-禁用，1-启用
	 */
	@TableField(value = "status")
	private String status;
	/**
	 * 创建人
	 */
	@TableField(value = "createdBy")
	private String createdBy;
	/**
	 * 创建时间
	 */
	@TableField(value = "createdTime")
	private Date createdTime;
	/**
	 * 修改人
	 */
	@TableField(value = "modifiedBy")
	private String modifiedBy;
	/**
	 * 修改时间
	 */
	@TableField(value = "modifiedTime")
	private Date modifiedTime;
}
