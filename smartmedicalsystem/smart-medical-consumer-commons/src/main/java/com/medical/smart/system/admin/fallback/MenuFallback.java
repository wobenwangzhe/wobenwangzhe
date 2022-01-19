package com.medical.smart.system.admin.fallback;

import com.medical.smart.system.admin.pojo.vo.RoleVO;
import com.medical.smart.system.admin.pojo.vo.RouterVO;
import com.medical.smart.system.admin.transport.MenuTransport;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

/**
 * <b>系统功能-菜单传输层接口熔断实现类</b>
 * @author 王晗
 */
public class MenuFallback implements MenuTransport {
	/**
	 * <b>根据角色查询路由列表</b>
	 *
	 * @param roleVO
	 * @return
	 * @throws Exception
	 */
	@Override
	@PostMapping ("/system/trans/menu/role")
	public List<RouterVO> getRouterVOListByRoleVO( @RequestBody RoleVO roleVO) throws Exception {
		System.out.println("调用系统菜单熔断类");
		return null;
	}
}
