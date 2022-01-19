package com.medical.smart.base.configuration;

import com.medical.smart.system.admin.pojo.vo.AdminVO;

public class Child extends AbstractAdminTransport {

	/**
	 * <b>根据手机号码查询系统用户信息</b>
	 *
	 * @param cellphone
	 * @return
	 * @throws Exception
	 */
	@Override
	public AdminVO getAdminVOByCellphone(String cellphone) throws Exception {
		return null;
	}
}
