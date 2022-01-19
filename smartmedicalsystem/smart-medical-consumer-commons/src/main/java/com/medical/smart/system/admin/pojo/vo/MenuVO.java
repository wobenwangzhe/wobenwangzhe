package com.medical.smart.system.admin.pojo.vo;

import com.medical.smart.base.pojo.vo.BaseVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.sound.midi.MetaEventListener;
import java.io.Serializable;
import java.util.List;

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
	 * 菜单文本
	 */
	@ApiModelProperty(value = "菜单文本")
	private String name;
	/**
	 * 菜单编码
	 */
	@ApiModelProperty(value = "菜单编码")
	private String code;
	/**
	 * 链接地址
	 */
	@ApiModelProperty(value = "链接地址")
	private String path;
	/**
	 * 组件名称
	 */
	@ApiModelProperty(value = "组件")
	private String component;

	@ApiModelProperty(value = "下级菜单")
	private List<MenuVO> children;
	/**
	 * 菜单标题
	 */
	@ApiModelProperty(value = "菜单标题")
	private String title;
	/**
	 * 菜单图标样式
	 */
	@ApiModelProperty(value = "菜单图标样式")
	private String icon;
}
