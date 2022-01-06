package com.medical.smart.util;

import com.medical.smart.system.admin.pojo.entity.Admin;
import com.medical.smart.system.admin.pojo.vo.AdminVO;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.mapstruct.factory.Mappers;

/**
 * <b>类型转换工具类</b>
 * @author 王晗
 * @version 1.0.0
 */
@Mapper(componentModel = "spring")
public interface PojoMapper {
	PojoMapper INSTANCE = Mappers.getMapper(PojoMapper.class);

	/**
	 * <b>系统用户实体转为视图-</b>
	 * @param admin
	 * @return
	 */
	@Mappings({
			@Mapping(target="role",ignore = true),
			@Mapping(target="education",ignore = true),
			@Mapping(target="identity",ignore = true),
			@Mapping(target="department",ignore = true),
			@Mapping(target="position",ignore = true),
			@Mapping(target="proRank",ignore = true)
	})
	AdminVO parseToAdminVO(Admin admin);
}
