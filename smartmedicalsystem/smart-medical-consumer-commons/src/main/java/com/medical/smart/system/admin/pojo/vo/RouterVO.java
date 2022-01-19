package com.medical.smart.system.admin.pojo.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * <b>系统功能-系统用户角色Vue操作路由视图信息</b>
 * @author 王晗
 * @version 1.0.0
 */
@ApiModel(value = "RourterVO",description = "系统角色用户操作路由视图信息")
@Data
public class RouterVO implements Serializable {
	private static final long serialVersionUID = 481951822380339573L;
	@ApiModelProperty(value = "菜单文本")
	private String name;
	@ApiModelProperty(value = "连接地址")
	private String path;
	@ApiModelProperty(value = "菜单组件")
	private String component;
	@ApiModelProperty(value = "路由显示图标")
	private Meta meta;
	@ApiModelProperty(value = "下级菜单的路由集合")
	private List<RouterVO> children;

	/**
	 * <b>系统角色用户操作路由视图信息-路由显示图标</b>
	 * @author 王晗
	 * @version 1.0.0
	 */
	@ApiModel(value = "Meta",description = "路由显示图标")
	@Data
	public static class Meta implements Serializable {
		private static final long serialVersionUID = 1745954260749977830L;
		@ApiModelProperty(value = "网页名称")
		private String title;                       // 网页名称
		@ApiModelProperty(value = "网页图标")
		private String icon;                        // 网页图标
	}
}
