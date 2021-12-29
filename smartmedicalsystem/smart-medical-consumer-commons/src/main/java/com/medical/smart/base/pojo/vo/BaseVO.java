package com.medical.smart.base.pojo.vo;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * <b>智慧医疗系统基础消费者项目-基础视图类</b>
 * <p>
 *     基础视图类定义了
 *     1,status 系统状态：0-禁用，1-启用<br />
 *     2,createdBy 创建人
 *     3,createdTime 创建时间
 *     4,modifiedBy 修改人
 *     5,modifiedTime 修改时间
 *     本项目所有视图信息都继承于基础视图类
 * </p>
 */
public class BaseVO implements Serializable {
	private static final long serialVersionUID = -8919285487147895029L;

	private String status;                      // 系统状态：0-禁用，1-启用
	private String createdBy;                   // 创建人
	private Date createdTime;                   // 创建时间
	private String modifiedBy;                  // 修改人
	private Date modifiedTime;                  // 修改时间

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public Date getCreatedTime() {
		return createdTime;
	}

	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}

	public String getModifiedBy() {
		return modifiedBy;
	}

	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	public Date getModifiedTime() {
		return modifiedTime;
	}

	public void setModifiedTime(Date modifiedTime) {
		this.modifiedTime = modifiedTime;
	}
}
