package com.medical.smart.base.pojo.vo;


import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * <b>智慧医疗系统基础消费者项目-分页视图类</b>
 * @param <T> 必须继承于BaseVO
 * 形式与 Mybatis plus 分页对象 Page 一样,方便属性复制
 */
public class PageVO<T extends BaseVO> implements Serializable {
	private static final long serialVersionUID = -7499303577909727759L;
	/**
	 * 查询数据列表
	 */
	private List<T> records = Collections.emptyList();

	/**
	 * 总数
	 */
	private long total ;
	/**
	 * 每页显示条数，默认 10
	 */
	private long size ;

	/**
	 * 当前页
	 */
	private long current ;

	public List<T> getRecords() {
		return records;
	}

	public void setRecords(List<T> records) {
		this.records = records;
	}

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
			this.total = total;
	}

	public long getSize() {
		return size;
	}

	public void setSize(long size) {
		if(size>0){
			this.size = size;
		} else{
			this.size=10;
		}
	}

	public long getCurrent() {
		return current;
	}

	public void setCurrent(long current) {
		if(current>0){
			this.current = current;
		} else {
			this.current =1L;
		}

	}

	/**
	 * 总页数
	 * @return
	 */
	public long getPages() {
		if (this.getSize() == 0L) {
			return 0L;
		} else {
			long pages = this.getTotal() / this.getSize();
			if (this.getTotal() % this.getSize() != 0L) {
				++pages;
			}

			return pages;
		}
	}
}
