package com.medical.smart.system.admin.pojo.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * <b>系统功能-系统用户登录 权限视图信息</b>
 * <p>
 *      登录成功后,前端发送info请求获得系统登录权限视图,包括
 *      1、当前登录用户视图 adminVO <br>
 *      2、当前登录用户操作路由列表 routerVOList <br/>
 * </p>
 *
 * @author 王晗
 * @version 1.0.0
 */
@Data
@ApiModel(value = "AdminInfo",description = "系统登录 权限视图信息")
public class AdminInfo implements Serializable {
	private static final long serialVersionUID = 4425099976984160011L;

	@ApiModelProperty(value = "当前登录用户信息")
	private AdminVO adminVO;

	@ApiModelProperty(value = "当前登录用户操作路由列表")
	private List<RouterVO> routerVOList;

	public AdminInfo(){}
	public AdminInfo(AdminVO adminVO,List<RouterVO> routerVOList){
		this.setAdminVO(adminVO);
		this.setRouterVOList(routerVOList);
	}
}
