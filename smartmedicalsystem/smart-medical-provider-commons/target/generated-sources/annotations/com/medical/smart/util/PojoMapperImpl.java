package com.medical.smart.util;

import com.medical.smart.system.admin.pojo.entity.Admin;
import com.medical.smart.system.admin.pojo.vo.AdminVO;
import com.medical.smart.system.admin.pojo.vo.RoleVO;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2022-01-18T12:16:22+0800",
    comments = "version: 1.3.0.Final, compiler: javac, environment: Java 1.8.0_301 (Oracle Corporation)"
)
@Component
public class PojoMapperImpl implements PojoMapper {


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

    protected RoleVO adminToRoleVO(Admin admin) {
        if ( admin == null ) {
            return null;
        }

        RoleVO roleVO = new RoleVO();

        roleVO.setCode( admin.getRole() );

        return roleVO;
    }
}
