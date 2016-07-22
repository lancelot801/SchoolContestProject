package com.xzit.common;

import java.util.List;
import java.util.Map;

import com.xzit.dao.fzd_ResultsDao;
import com.xzit.dao.impl.fzd_ResultsDaoImpl;
import com.xzit.vo.fzd_PageBean;

/**
 * ������
 * 
 * @author dntch
 *
 */
public class fzd_Commons {

	/**
	 * �÷����û���ȡҳ�������
	 * 
	 * @param sql
	 *            ��ѯ��sql���
	 * @param pageSize
	 *            ҳ��Ĵ�С
	 * @param page
	 *            ��ǰҳ
	 * @return pageBeanÿҳ������
	 */
	public static fzd_PageBean getMyPageBean(String sql, int pageSize, int page) {
		fzd_PageBean pageBean = new fzd_PageBean();
		//MySql��ҳ���
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
