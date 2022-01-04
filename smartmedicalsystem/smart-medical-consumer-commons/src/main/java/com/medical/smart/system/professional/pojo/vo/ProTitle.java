package com.medical.smart.system.professional.pojo.vo;

import com.medical.smart.base.pojo.vo.BaseVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * <b>系统功能-专业技术职务视图信息</b>
 * @author 王晗
 * @version 1.0.0
 */
@Data
@ApiModel(value = "专业技术职务视图信息",description = "专业技术职务视图信息")
public class ProTitle extends BaseVO {
	private static final long serialVersionUID = -2514430676884519555L;
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
	/**
	 * 类别
	 */
	@ApiModelProperty(value = "专业技术职务类别")
	private ProCategoryVO category;
	/**
	 * 等级
	 */
	@ApiModelProperty(value = "专业技术职务等级")
	private ProRankVO rank;

}
