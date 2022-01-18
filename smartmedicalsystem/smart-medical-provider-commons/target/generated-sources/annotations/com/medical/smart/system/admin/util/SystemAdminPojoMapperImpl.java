package com.medical.smart.system.admin.util;

import com.medical.smart.system.admin.pojo.entity.Admin;
import com.medical.smart.system.admin.pojo.entity.Menu;
import com.medical.smart.system.admin.pojo.vo.AdminVO;
import com.medical.smart.system.admin.pojo.vo.MenuVO;
import com.medical.smart.system.admin.pojo.vo.MenuVO.Meta;
import com.medical.smart.system.admin.pojo.vo.RoleVO;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2022-01-18T12:28:20+0800",
    comments = "version: 1.3.0.Final, compiler: javac, environment: Java 1.8.0_301 (Oracle Corporation)"
)
@Component
public class SystemAdminPojoMapperImpl implements SystemAdminPojoMapper {

    @Override
    public AdminVO parseToAdminVO(Admin admin) {
        if ( admin == null ) {
            return null;
        }

        AdminVO adminVO = new AdminVO();

        adminVO.setRole( adminToRoleVO( admin ) );
        adminVO.setStatus( admin.getStatus() );
        adminVO.setCreatedBy( admin.getCreatedBy() );
        adminVO.setCreatedTime( admin.getCreatedTime() );
        adminVO.setModifiedBy( admin.getModifiedBy() );
        adminVO.setModifiedTime( admin.getModifiedTime() );
        adminVO.setId( admin.getId() );
        adminVO.setNo( admin.getNo() );
        adminVO.setName( admin.getName() );
        adminVO.setAvatar( admin.getAvatar() );
        adminVO.setCellphone( admin.getCellphone() );
        adminVO.setPassword( admin.getPassword() );
        adminVO.setEducation( admin.getEducation() );
        adminVO.setIdentity( admin.getIdentity() );
        adminVO.setDepartment( admin.getDepartment() );
        adminVO.setTechPostTitle( admin.getTechPostTitle() );
        adminVO.setTechPostRank( admin.getTechPostRank() );

        return adminVO;
    }

    @Override
    public MenuVO parseToMenuVO(Menu entity) {
        if ( entity == null ) {
            return null;
        }

        MenuVO menuVO = new MenuVO();

        menuVO.setMeta( menuToMeta( entity ) );
        menuVO.setStatus( entity.getStatus() );
        menuVO.setCreatedBy( entity.getCreatedBy() );
        menuVO.setCreatedTime( entity.getCreatedTime() );
        menuVO.setModifiedBy( entity.getModifiedBy() );
        menuVO.setModifiedTime( entity.getModifiedTime() );
        menuVO.setId( entity.getId() );
        menuVO.setName( entity.getName() );
        menuVO.setCode( entity.getCode() );
        menuVO.setPath( entity.getPath() );
        menuVO.setComponent( entity.getComponent() );

        return menuVO;
    }

    @Override
    public List<MenuVO> parseToMenuVOList(List<Menu> menuList) {
        if ( menuList == null ) {
            return null;
        }

        List<MenuVO> list = new ArrayList<MenuVO>( menuList.size() );
        for ( Menu menu : menuList ) {
            list.add( parseToMenuVO( menu ) );
        }

        return list;
    }

    protected RoleVO adminToRoleVO(Admin admin) {
        if ( admin == null ) {
            return null;
        }

        RoleVO roleVO = new RoleVO();

        roleVO.setCode( admin.getRole() );

        return roleVO;
    }

    protected Meta menuToMeta(Menu menu) {
        if ( menu == null ) {
            return null;
        }

        Meta meta = new Meta();

        meta.setIcon( menu.getIcon() );
        meta.setTitle( menu.getTitle() );

        return meta;
    }
}
