package com.medical.smart.system.admin.transport;

import com.auth0.jwt.impl.PublicClaims;
import com.medical.smart.system.admin.fallback.MenuFallback;
import com.medical.smart.system.admin.pojo.vo.MenuVO;
import com.medical.smart.system.admin.pojo.vo.RoleVO;
import com.medical.smart.system.admin.pojo.vo.RouterVO;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <b>系统功能-菜单传输层接口</b>
 * @author 王晗
 * @version 1.0.0
 */
@FeignClient(value = "smart-medical-provider-system")
public interface MenuTransport {

	/**
	 * <b>根据角色查询路由列表</b>
	 * @return
	 * @throws Exception
	 */
	@PostMapping ("/system/trans/menu/role")
	List<RouterVO> getRouterVOListByRoleVO(@RequestBody RoleVO roleVO)
			throws Exception;
}
