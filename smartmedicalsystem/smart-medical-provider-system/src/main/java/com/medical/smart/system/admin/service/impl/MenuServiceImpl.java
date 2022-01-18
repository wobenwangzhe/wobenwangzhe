package com.medical.smart.system.admin.service.impl;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.medical.smart.base.util.BaseProps;
import com.medical.smart.system.admin.pojo.entity.Menu;
import com.medical.smart.system.admin.pojo.entity.RoleMenu;
import com.medical.smart.system.admin.pojo.vo.MenuVO;
import com.medical.smart.system.admin.pojo.vo.RoleVO;
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
	 * <b>根据角色编码查询菜单权限</b>
	 * 角色菜单表,list查询1次
	 * 菜单表,遍历角色菜单表车讯结果查询1遍
	 * @param roleVO
	 * @return
	 * @throws Exception
	 */
	@Override
	public List<MenuVO> getMenuVOListByRoleCode(RoleVO roleVO) throws Exception {
		if(roleVO==null || StrUtil.isBlank(roleVO.getCode()) ){
			//用户的角色编码没有传入方法,
			return new ArrayList<MenuVO>();
		}
		//先在角色-菜单中间表查询角色菜单信息 roleMenuList
		QueryWrapper<RoleMenu> queryWrapper = new QueryWrapper<>();
		queryWrapper.eq("role", roleVO.getCode());

		List<RoleMenu> roleMenuList = roleMenuDao.selectList(queryWrapper);
		if(roleMenuList==null || roleMenuList.size()==0){
			//如果未查询到角色功能权限
			return new ArrayList<MenuVO>();
		}

		//菜单列表
		List<Menu> menuList = new ArrayList<>();
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
			return null;
		}
		//接下来将一级实体菜单转成视图菜单列表
		List<MenuVO> menuVOList = new ArrayList<>();
		menuList.forEach(menu -> {
			if(StrUtil.isBlank(menu.getParent())){
				//该菜单没有上级菜单,便是一级菜单
				menuVOList.add(SystemAdminPojoMapper.INSTANCE.parseToMenuVO(menu));
			}
		});

		//未查询到一级菜单
		if(menuVOList==null || menuList.size()==0){
			return null;
		}

		//将二级菜单添加到对应的一级菜单中
		//遍历一级菜单视图结合
		menuVOList.forEach(menuVO -> {
			//二级菜单视图集合
			List<MenuVO> children = new ArrayList<>();
			//遍历从数据库查询到的实体菜单集合
			menuList.forEach(menu -> {
				if(StrUtil.isNotBlank(menu.getParent()) && menuVO.getId().equals(Long.parseLong(menu.getParent()))){
					//这个菜单实体,是对应一级菜单的子菜单,添加到children中
					children.add(SystemAdminPojoMapper.INSTANCE.parseToMenuVO(menu));
				}
			});
			//将二级菜单视图集合children添加到一级菜单集合中
			menuVO.setChildren(children);
		});

		return menuVOList;
	}
}
