package com.medical.smart.system.admin.service;

import com.medical.smart.system.admin.pojo.vo.MenuVO;
import com.medical.smart.system.admin.pojo.vo.RoleVO;

import java.util.List;

/**
 * <b>系统功能-菜单业务层接口</b>
 * @author 王晗
 * @version 1.0.0
 */
public interface MenuService {
	/**
	 * <b>根据角色查询菜单权限</b>
	 * @param roleVO
	 * @return
	 * @throws Exception
	 */
	List<MenuVO> getMenuVOListByRoleCode(RoleVO roleVO) throws Exception;
}
