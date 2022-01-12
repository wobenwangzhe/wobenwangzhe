package com.medical.smart.base.freemarker.result;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类-${tableComment}</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "${tableName}")
public class ${className} extends BaseEntity {
	private static final long serialVersionUID = 1L;
<#list propertyList as property >
<#if property.name=="id">
	/**
	* ${property.comment}
	*/
<#if property.type = "String">
	@TableId(type = IdType.NONE)
	<#else>
	@TableId(type = IdType.AUTO)
</#if>
	private ${property.type} ${property.name};

<#else >
	/**
	* ${property.comment}
	*/
	@TableField(value="${property.name}")
	private ${property.type} ${property.name};
</#if>
</#list>
}