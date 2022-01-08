package com.medical.smart.util;

import com.medical.smart.system.admin.pojo.entity.Admin;
import com.medical.smart.system.admin.pojo.vo.AdminVO;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2022-01-07T18:18:01+0800",
    comments = "version: 1.3.0.Final, compiler: javac, environment: Java 1.8.0_301 (Oracle Corporation)"
)
@Component
public class PojoMapperImpl implements PojoMapper {

    @Override
    public AdminVO parseToAdminVO(Admin admin) {
        if ( admin == null ) {
            return null;
        }

        AdminVO adminVO = new AdminVO();

        adminVO.setStatus( admin.getStatus() );
        adminVO.setCreatedBy( admin.getCreatedBy() );
        adminVO.setCreatedTime( admin.getCreatedTime() );
        adminVO.setModifiedBy( admin.getModifiedBy() );
        adminVO.setModifiedTime( admin.getModifiedTime() );
        adminVO.setId( admin.getId() );
        adminVO.setNo( admin.getNo() );
        adminVO.setName( admin.getName() );
        adminVO.setCellphone( admin.getCellphone() );
        adminVO.setPassword( admin.getPassword() );
        adminVO.setProTitle( admin.getProTitle() );

        return adminVO;
    }
}
