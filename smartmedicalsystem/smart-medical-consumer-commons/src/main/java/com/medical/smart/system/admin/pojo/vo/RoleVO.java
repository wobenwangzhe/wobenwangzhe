package com.medical.smart.system.admin.pojo.vo;

import com.medical.smart.base.pojo.vo.BaseVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * <b>系统功能-角色视图信息</b>
 * @author 王晗
 * @version 1.0.0
 */
@Data
@ApiModel(value = "RoleVO",description = "角色视图信息")
public class RoleVO extends BaseVO {
	private static final long serialVersionUID = -7453468988023436123L;
	/**
	 * 主键
	 */
	@ApiModelProperty(value = "主键")
	private Long id;
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
