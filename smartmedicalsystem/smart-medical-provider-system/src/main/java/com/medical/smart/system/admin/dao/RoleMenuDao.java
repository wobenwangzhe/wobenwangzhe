package com.medical.smart.system.admin.dao;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.medical.smart.system.admin.pojo.entity.RoleMenu;
import org.springframework.stereotype.Repository;

/**
 * <b>系统功能-角色菜单中间表数据持久层接口</b>
 * <b>或者角色的权限表</b>
 * @author 王晗
 * @version 1.0.0
 */
@Repository
public interface RoleMenuDao extends BaseMapper<RoleMenu> {
}
