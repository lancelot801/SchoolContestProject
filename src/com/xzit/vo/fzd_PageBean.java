package com.xzit.vo;

import java.util.List;
import java.util.Map;

/**
 * 在分页查询中每一页要显示的数据
 * 
 * @author dntch
 *
 */
public class fzd_PageBean {
	private List<Map<String, Object>> list;// 通过sql语句查询的所有的数据
	private int allRows;// 总记录数
	private int totalPage;// 总页数
	private int currentPage;// 当前页

	// 下面是getter和setter方法
	public List<Map<String, Object>> getList() {
		return list;
	}

	public void setList(List<Map<String, Object>> list) {
		this.list = list;
	}

	public int getAllRows() {
		return allRows;
	}

	public void setAllRows(int allRows) {
		this.allRows = allRows;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	/**
	 * 得到总页数
	 * 
	 * @param pageSize
	 *            每页记录数
	 * @param allRows
	 *            总页数
	 * @return 总页数
	 */
	public int getTotalPages(int pageSize, int allRows) {
		// 获取总页面数,如果能够整除，就直接相除，如果不能则加一
		int totalPage = (allRows % pageSize == 0) ? (allRows / pageSize) : (allRows / pageSize + 1);
		return totalPage;
	}

	/**
	 * 得到當前開始的記錄號
	 * 
	 * @param pageSize
	 *            煤業記錄數
	 * @param currentPage
	 *            當前頁
	 * @return
	 */
	public int getCurrentPageOffset(int pageSize, int currentPage) {
		int offset = pageSize * (currentPage - 1);
		return offset;
	}

	/**
	 * 得到當前頁
	 * 
	 * @param page
	 * @return
	 */
	public int getCurrentPage(int page) {
		int currentPage = (page == 0) ? 1 : page;
		return currentPage;
	}

}
