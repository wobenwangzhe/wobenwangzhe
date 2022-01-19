package com.medical.smart.system.admin.transport;


import com.medical.smart.system.admin.pojo.vo.AdminVO;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.*;

/**
 * <b>系统功能-系统用户传输层接口</b>
 * @author 王晗
 * @version 1.0.0
 */
@FeignClient(name = "smart-medical-provider-system")
public interface AdminTransport {

	/**
	 * <b>根据手机号码查询系统用户信息</b>
	 * @param cellphone
	 * @return
	 * @throws Exception
	 */
	@GetMapping ("/system/trans/admin/cellphone/{cellphone}")
	AdminVO getAdminVOByCellphone(@PathVariable("cellphone") String cellphone)
							throws Exception;

}
