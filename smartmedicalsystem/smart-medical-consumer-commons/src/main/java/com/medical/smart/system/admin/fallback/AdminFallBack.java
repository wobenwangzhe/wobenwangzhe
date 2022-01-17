package com.medical.smart.system.admin.fallback;

import com.medical.smart.system.admin.pojo.vo.AdminVO;
import com.medical.smart.system.admin.transport.AdminTransport;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import javax.websocket.server.PathParam;

/**
 * <b>系统功能-系统用户回调类</b>
 * @author 王晗
 * @version 1.0.0
 */
@Component
public class AdminFallBack implements AdminTransport {

	/**
	 * <b>根据手机号码查询系统用户信息</b>
	 *
	 * @param cellphone
	 * @return
	 * @throws Exception
	 */
	@Override
	@GetMapping ("/system/trans/admin/cellphone/{cellphone}")
	public AdminVO getAdminVOByCellphone(@PathVariable("cellphone") String cellphone)
						throws Exception {
		System.out.println(AdminFallBack.class.getName()
				+" 调用getAdminVOByCellphone(String cellphone)方法");
		return new AdminVO();
	}
}
