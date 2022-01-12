package com.medical.smart.base.freemarker.base;

import lombok.Data;

/**
 * <b>查询表字段结果</b>
 */
@Data
public class Result {
	/**
	 * 字段名
	 */
	private String name;
	/**
	 * 字段类型
	 */
	private String type;
	/**
	 * 注释
	 */
	private String comment;

	public Result(String name, String type, String comment) {
		this.name = name;
		this.type = type;
		this.comment = comment;
	}

	public Result() {
	}
}
