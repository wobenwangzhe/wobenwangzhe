package com.medical.smart.system.admin.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.medical.smart.system.admin.pojo.entity.Menu;
import org.springframework.stereotype.Repository;

/**
 * <b>系统功能-菜单数据持久层接口</b>
 * @author 王晗
 * @version 1.0.0
 */
@Repository
public interface MenuDao extends BaseMapper<Menu> {
}
