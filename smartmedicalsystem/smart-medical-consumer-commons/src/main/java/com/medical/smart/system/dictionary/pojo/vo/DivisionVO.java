package com.medical.smart.system.dictionary.pojo.vo;

import com.medical.smart.base.pojo.vo.BaseVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * <b>系统功能 - 行政区划视图信息</b>
 * @author 王晗
 * @version 1.0.0
 */
@ApiModel(value = "DivisionVO",description = "行政规划视图信息")
public class DivisionVO extends BaseVO {
	private static final long serialVersionUID = 7454540234920526188L;
	/**
	 * 主键
	 */
	@ApiModelProperty(value = "主键")
	private Long id;
	/**
	 * 上级编码
	 */
	@ApiModelProperty(value = "上级编码")
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
