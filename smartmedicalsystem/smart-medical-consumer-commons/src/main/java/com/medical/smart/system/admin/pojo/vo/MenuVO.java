package com.medical.smart.system.admin.pojo.vo;

import com.medical.smart.base.pojo.vo.BaseVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * <b>系统功能-菜单视图信息</b>
 * @author 王晗
 * @version 1.0.0
 */
@Data
@ApiModel(value = "MenuVO",description = "菜单视图信息")
public class MenuVO extends BaseVO {
	private static final long serialVersionUID = -5668159822782845045L;
	/**
	 * 主键
	 */
	@ApiModelProperty(value = "主键")
	private Long id;
	/**
	 * 上级菜单编码
	 */
	@ApiModelProperty(value = "上级菜单编码")
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
	/**
	 * 菜单功能链接地址
	 */
	@ApiModelProperty(value = "菜单功能链接地址")
	private String url;
	/**
	 * 菜单图标
	 */
	@ApiModelProperty(value = "菜单图标")
	private String icon;
	/**
	 * 排序
	 */
	@ApiModelProperty(value = "排序")
	private int sort;
}
