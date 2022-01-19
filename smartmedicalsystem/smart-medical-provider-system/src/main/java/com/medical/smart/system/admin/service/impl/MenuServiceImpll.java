package com.medical.smart.system.admin.service.impl;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.medical.smart.base.util.BaseProps;
import com.medical.smart.system.admin.dao.MenuDao;
import com.medical.smart.system.admin.dao.RoleMenuDao;
import com.medical.smart.system.admin.pojo.entity.Menu;
import com.medical.smart.system.admin.pojo.entity.RoleMenu;
import com.medical.smart.system.admin.pojo.vo.MenuVO;
import com.medical.smart.system.admin.pojo.vo.RoleVO;
import com.medical.smart.system.admin.service.MenuService;
import com.medical.smart.system.admin.util.SystemAdminPojoMapper;
import javafx.scene.control.MenuItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * <b>系统功能-菜单业务层接口实现类</b>
 * @author 王晗
 * @version 1.0.0
 */

@Transactional

public class MenuServiceImpll{
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
	 * <b>根据角色查询菜单权限</b>
	 * 角色菜单表,1次查list
	 * 菜单表,遍历角色菜单表结果查询1遍
	 *  菜单表 ,嵌套循环遍历前两次查询1遍
	 * @param roleVO
	 * @return
	 * @throws Exception
	 */

	public List<MenuVO> getMenuVOListByRole(RoleVO roleVO) throws Exception {
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

		//菜单实体列表
		List<Menu> menuList = new ArrayList<>();
		//遍历角色菜单列表
		roleMenuList.forEach(roleMenu -> {
			//先查询所有有权限的菜单
			QueryWrapper<Menu> query = new QueryWrapper<>();
			//条件:status可用,code有权限,parent无上级菜单
			query.eq("status", BaseProps.STATUS_EXIST)
					.eq("code", roleMenu.getMenu())
					.isNull("parent").or().eq("parent", "");
			//将查询到一级菜单,转变成菜单视图再添加到菜单视图列表中
			menuList.add(menuDao.selectOne(query));
		});

		//未查询到一级菜单信息
		if(menuList==null || menuList.size()==0){
			return null;
		}
		//接下来将一级实体菜单转成视图菜单列表
		List<MenuVO> menuVOList = SystemAdminPojoMapper.INSTANCE.parseToMenuVOList(menuList);

		//遍历一级菜单视图结合,查询对应的二级菜单
		menuVOList.forEach(menuVO -> {
			//二级菜单集合
			List<MenuVO> children = new ArrayList<>();
			//遍历角色菜单列表 roleMenu,查询二级菜单
			roleMenuList.forEach(roleMenu -> {
				QueryWrapper<Menu> query = new QueryWrapper<>();
				//条件:status可用,code有权限,parent上级菜单是对应的一级菜单
				query.eq("status", BaseProps.STATUS_EXIST)
						.eq("parent", menuVO.getId())
						.eq("code", roleMenu.getMenu());
				//这个一级菜单下的一个二级菜单
				Menu child = menuDao.selectOne(query);
				children.add(SystemAdminPojoMapper.INSTANCE.parseToMenuVO(child));
			});
			//将二级菜单视图集合children添加到一级菜单集合中
			menuVO.setChildren(children);
		});

		return menuVOList;
	}
}
