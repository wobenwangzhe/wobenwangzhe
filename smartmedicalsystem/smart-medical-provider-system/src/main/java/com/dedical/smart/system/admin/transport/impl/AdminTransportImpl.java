package com.dedical.smart.system.admin.transport.impl;

import com.dedical.smart.system.admin.service.AdminService;
import com.medical.smart.system.admin.pojo.vo.AdminVO;
import com.medical.smart.system.admin.transport.AdminTransport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * <b>系统功能-系统用户传输层接口实现类</b>
 * @author 王晗
 * @version 1.0.0
 */
@RestController("adminTransport")
@RequestMapping("/system/admin/admin/trans")
public class AdminTransportImpl implements AdminTransport {
	@Autowired
	private AdminService adminService;


	/**
	 * <b>根据手机号码查询用户信息</b>
	 *
	 * @param cellphone
	 * @return
	 * @throws Exception
	 */
	@Override
	@GetMapping("/cellphone/{cellphone}")
	public AdminVO getAdminVOByCellphone(@PathVariable("cellphone") String cellphone)
			throws Exception {

		return adminService.getAdminVOByCellphone(cellphone);
	}
}
