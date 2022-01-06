package com.medical.smart.base.freemarker;

import lombok.Data;

import java.util.List;

/**
 * <b>freemarker代码生成实体类-描述</b>
 */
@Data
public class Entity {
	/**
	 * 对应表的名称
	 */
	private String tableName;
	/**
	 * 生成的类名
	 */
	private String className;
	/**
	 * 包名
	 */
	private String packageName;
	/**
	 * 表的字段查询结果集合
	 */
	private List<Result> propertyList;
}
