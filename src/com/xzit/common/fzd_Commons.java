package com.xzit.common;

import java.util.List;
import java.util.Map;

import com.xzit.dao.fzd_ResultsDao;
import com.xzit.dao.impl.fzd_ResultsDaoImpl;
import com.xzit.vo.fzd_PageBean;

/**
 * 工具类
 * 
 * @author dntch
 *
 */
public class fzd_Commons {

	/**
	 * 该方法用户获取页面的数据
	 * 
	 * @param sql
	 *            查询的sql语句
	 * @param pageSize
	 *            页面的大小
	 * @param page
	 *            当前页
	 * @return pageBean每页的数据
	 */
	public static fzd_PageBean getMyPageBean(String sql, int pageSize, int page) {
		fzd_PageBean pageBean = new fzd_PageBean();
		//MySql分页语句
		String sql2 = sql + " limit ?,?;";
		
		fzd_ResultsDao<Map<String, Object>> resultsDao = new fzd_ResultsDaoImpl();
		int allRows = resultsDao.getAllRowCount(sql);
		int totalPage = pageBean.getTotalPages(pageSize, allRows);
		int currentPage = pageBean.getCurrentPage(page);
		int offset = pageBean.getCurrentPageOffset(pageSize, currentPage);
		List<Map<String, Object>> list = resultsDao.queryByPage(sql2, offset, pageSize);
		pageBean.setList(list);
		pageBean.setAllRows(allRows);
		pageBean.setCurrentPage(currentPage);
		pageBean.setTotalPage(totalPage);
		return pageBean;
	}
	 
}
