package com.medical.smart.system.admin.transport.impl;

import com.medical.smart.system.admin.pojo.vo.MenuVO;
import com.medical.smart.system.admin.pojo.vo.RoleVO;
import com.medical.smart.system.admin.pojo.vo.RouterVO;
import com.medical.smart.system.admin.transport.MenuTransport;
import com.medical.smart.system.admin.service.MenuService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * <b>系统功能-菜单传输层接口实现类</b>
 * @author 王晗
 * @version 1.0.0
 */
@RestController
@RequestMapping("/system/trans/menu")
public class MenuTransportImpl implements MenuTransport {
	@Resource(name = "menuService")
	private MenuService menuService;

	/**
	 * <b>根据角色查询路由列表</b>
	 *
	 * @return
	 * @throws Exception
	 */
	@Override
	@PostMapping("/role")
	public List<RouterVO> getRouterVOListByRoleVO(@RequestBody RoleVO roleVO) throws Exception {
		return menuService.getRouterVOListByRoleVO(roleVO);
	}


}
