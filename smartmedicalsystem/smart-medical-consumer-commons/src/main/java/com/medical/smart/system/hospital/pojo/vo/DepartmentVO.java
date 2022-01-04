package com.medical.smart.system.hospital.pojo.vo;

import com.medical.smart.base.pojo.vo.BaseVO;
import com.medical.smart.system.hospital.pojo.vo.HospitalVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * <b>系统功能-部门视图信息</b>
 * @author 王晗
 * @version 1.0.0
 */
@Data
@ApiModel(value = "部门视图信息",description = "部门视图信息")
public class DepartmentVO  extends BaseVO {
	private static final long serialVersionUID = 547703153473078226L;
	/**
	 * 主键
	 */
	@ApiModelProperty(value = "主键")
	private Long id;
	/**
	 * 所属医院编码
	 */
	@ApiModelProperty(value = "所属医院")
	private HospitalVO hospital;
	/**
	 * 上级部门编码
	 */
	@ApiModelProperty(value = "上级部门编码")
	private String parent;
	/**
	 * 编码
	 */
	@ApiModelProperty(value = "编码")
	private String code;
	/**
	 * 名称
	 */
	@ApiModelProperty(value = "名称")
	private String name;
}
