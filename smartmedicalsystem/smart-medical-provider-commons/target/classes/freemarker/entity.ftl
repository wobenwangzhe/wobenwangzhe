package com.medical.smart.base.freemarker.result;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.medical.smart.base.pojo.entity.BaseEntity;
import lombok.Data;

import java.util.Date;
/**
* <b>代码生成器实体类</b>
* @author 王晗
* @version 1.0.0
*/
@Data
@TableName(value = "${tableName}")
public class ${className} extends BaseEntity {
	<#list propertyList as property >
		/**
		* ${property.comment}
		*/
		@TableField(value="${property.name}")
		private ${property.type} ${property.name};
	</#list>
}