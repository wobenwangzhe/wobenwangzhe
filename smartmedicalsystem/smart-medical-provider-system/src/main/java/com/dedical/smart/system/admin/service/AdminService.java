package com.dedical.smart.system.admin.service;

import com.medical.smart.system.admin.pojo.vo.AdminVO;

/**
 * <b>系统功能-系统用户业务层接口</b>
 * @author 王晗
 * @version 1.0.0
 */
public interface AdminService {

	/**
	 * <b>根据手机号码查询对象信息</b>
	 * @param cellphone
	 * @return
	 * @throws Exception
	 */
	AdminVO getAdminVOByCellphone(String cellphone) throws Exception;
}
