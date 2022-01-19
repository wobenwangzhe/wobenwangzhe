package com.medical.smart.system.admin.util;

import com.medical.smart.system.admin.pojo.entity.Admin;
import com.medical.smart.system.admin.pojo.entity.Menu;
import com.medical.smart.system.admin.pojo.vo.AdminVO;
import com.medical.smart.system.admin.pojo.vo.MenuVO;
import com.medical.smart.system.admin.pojo.vo.RouterVO;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.mapstruct.factory.Mappers;

import java.util.List;

/**
 * <b>系统功能 - 系统功能下相关类型转换</b>
 * @author 王晗
 * @version 1.0.0
 */
@Mapper(componentModel = "spring")
public interface SystemAdminPojoMapper {
	SystemAdminPojoMapper INSTANCE = Mappers.getMapper(SystemAdminPojoMapper.class);

	/**
	 * <b>系统用户实体转视图</b>
	 * @param admin 用户实体类
	 * @return 用户视图类
	 */
	@Mapping(source = "role",target="role.code")
	AdminVO parseToAdminVO(Admin admin);

	/**
	 * <b>系统菜单实体转视图</b>
	 * @param entity 实体菜单类
	 * @return 视图菜单类
	 */
	MenuVO parseToMenuVO(Menu entity);

	/**
	 * <b>菜单列表 实体转视图</b>
	 * <b>由于 mapstruct 转列表时会自动调用其实体类和视图的转换方法,所以会实现菜单实体转视图的注解.故不需要添加注解 </b>
	 * @param menuList 实体菜单列表
	 * @return 视图菜单列表
	 */
	List<MenuVO> parseToMenuVOList (List<Menu> menuList);

	/**
	 * <b>菜单实体 -> 路由视图 </b>
	 * 将菜单实体中的 网页标题 title 和 图标 icon 保存在路由视图的 meta 中
	 * @param menu 菜单实体
	 * @return 路由视图
	 */
	@Mappings({
			@Mapping(source = "title",target = "meta.title"),
			@Mapping(source = "icon",target = "meta.icon")
	})
	RouterVO parseToRouterVOFromMenu(Menu menu);
}
