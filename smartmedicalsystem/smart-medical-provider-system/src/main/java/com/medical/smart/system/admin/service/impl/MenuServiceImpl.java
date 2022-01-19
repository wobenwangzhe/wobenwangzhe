package com.medical.smart.system.admin.service.impl;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.medical.smart.base.util.BaseProps;
import com.medical.smart.system.admin.pojo.entity.Menu;
import com.medical.smart.system.admin.pojo.entity.RoleMenu;
import com.medical.smart.system.admin.pojo.vo.MenuVO;
import com.medical.smart.system.admin.pojo.vo.RoleVO;
import com.medical.smart.system.admin.pojo.vo.RouterVO;
import com.medical.smart.system.admin.util.SystemAdminPojoMapper;
import com.medical.smart.system.admin.dao.MenuDao;
import com.medical.smart.system.admin.dao.RoleMenuDao;
import com.medical.smart.system.admin.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

/**
 * <b>系统功能-菜单业务层接口实现类</b>
 * 自行优化一次
 * @author 王晗
 * @version 1.0.0
 */
@Service("menuService")
@Transactional
public class MenuServiceImpl implements MenuService {
	/**
	 * 菜单数据持久层接口
	 */
	@Autowired
	private MenuDao menuDao;
	/**
	 * 角色-菜单持久层接口
	 */
	@Autowired
	private RoleMenuDao roleMenuDao;

	/**
	 * <b>根据角色编码查询菜单权限-路由列表</b>
	 * 角色菜单表,list查询1次
	 * 菜单表,遍历角色菜单表车讯结果查询1遍
	 * @param roleVO
	 * @return
	 * @throws Exception
	 */
	@Override
	public List<RouterVO> getRouterVOListByRoleVO(RoleVO roleVO) throws Exception {
		if(roleVO==null || StrUtil.isBlank(roleVO.getCode()) ){
			//用户的角色编码不存在,
			return new ArrayList<RouterVO>();
		}
		//先在角色-菜单中间表查询角色菜单信息 roleMenuList
		QueryWrapper<RoleMenu> queryWrapper = new QueryWrapper<>();
		queryWrapper.eq("role", roleVO.getCode());

		List<RoleMenu> roleMenuList = roleMenuDao.selectList(queryWrapper);
		if(roleMenuList==null || roleMenuList.size()==0){
			//如果未查询到角色功能权限
			return new ArrayList<RouterVO>();
		}

		//菜单实体列表
		List<Menu> menuList = new ArrayList<>(BaseProps.MAP_SMALL);
		//遍历角色菜单列表,查询所有有权限的菜单
		roleMenuList.forEach(roleMenu -> {
			//先查询所有有权限的菜单
			QueryWrapper<Menu> query = new QueryWrapper<>();
			//条件:status可用,code有权限
			query.eq("status", BaseProps.STATUS_EXIST)
					.eq("code", roleMenu.getMenu());
			//查询到的所有有权限的菜单列表
			menuList.add(menuDao.selectOne(query));
		});

		//未查询到菜单信息
		if(menuList==null || menuList.size()==0){
			return new ArrayList<RouterVO>();
		}
		//接下来将一级实体菜单 转成 路由列表
		List<RouterVO> routerVOList = new ArrayList<>(BaseProps.MAP_SMALL);
		//遍历实体菜单列表,将查询到的结果,转换为 路由列表的结构
		menuList.forEach(menu -> {
			//一级菜单没有parent字段,有code
			if(StrUtil.isBlank(menu.getParent()) &&StrUtil.isNotBlank(menu.getCode()) ){
				//该菜单没有上级菜单,便是一级菜单,转为路由
				RouterVO routerVO = SystemAdminPojoMapper.INSTANCE.parseToRouterVOFromMenu(menu);

				//遍历实体菜单列表,找到本一级菜单下的二级菜单,添加到children中
				List<RouterVO> children = new ArrayList<>(BaseProps.MAP_SMALL);
				menuList.forEach(child ->{
					//二级菜单的parent字段 与一级菜单的code字段相同
					if(StrUtil.isNotBlank(child.getParent()) && child.getParent().equals(menu.getCode())){
						//二级菜单转化形式后,添加到children中
						children.add(SystemAdminPojoMapper.INSTANCE.parseToRouterVOFromMenu(child));
					}
				});

				//将二级菜单的路由集合 children添加到一级菜单的路由 routerVO中
				routerVO.setChildren(children);
				//将已经包含二级路由的一级路由，添加到路由集合中
				routerVOList.add(routerVO);
			}
		});

		return routerVOList;
	}
}
