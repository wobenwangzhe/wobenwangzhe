package com.medical.smart.system.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.medical.smart.system.admin.dao.AdminDao;
import com.medical.smart.system.admin.service.AdminService;
import com.medical.smart.system.admin.pojo.entity.Admin;
import com.medical.smart.system.admin.pojo.vo.AdminVO;
import com.medical.smart.util.PojoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * <b>系统功能-系统用户业务层接口实现类</b>
 * @author 王晗
 * @version 1.0.0
 */
@Service("adminService")
@Transactional
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDao adminDao;

	/**
	 * <b>根据手机号码查询对象信息</b>
	 * @param cellphone
	 * @return
	 * @throws Exception
	 */
	@Override
	public AdminVO getAdminVOByCellphone(String cellphone) throws Exception {
		//查询条件
		QueryWrapper<Admin> query =new QueryWrapper<>();
		query.eq("cellphone", cellphone);
		// TODO: 2022/1/6 补充查询后类型转换的方法 
		//查询
		Admin admin = adminDao.selectOne(query);
		//如果查询到结果
		if(admin!=null && admin.getId()!=null){
			AdminVO adminVO = PojoMapper.INSTANCE.parseToAdminVO(admin);
			return adminVO;
		}
		//未查询到
		return null;
	}
}
