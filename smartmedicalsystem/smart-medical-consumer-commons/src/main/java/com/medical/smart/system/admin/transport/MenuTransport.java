package com.medical.smart.system.admin.transport;

import com.auth0.jwt.impl.PublicClaims;
import com.medical.smart.system.admin.pojo.vo.MenuVO;
import com.medical.smart.system.admin.pojo.vo.RoleVO;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <b>系统功能-菜单传输层接口</b>
 * @author 王晗
 * @version 1.0.0
 */
@FeignClient("smart-medical-provider-system")
public interface MenuTransport {

	/**
	 * <b>根据角色查询功能权限列表</b>
	 * @return
	 * @throws Exception
	 */
	@PostMapping ("/system/trans/menu/role")
	public List<MenuVO> getMenuVOListByRoleCode(@RequestBody RoleVO roleVO)
			throws Exception;
}
