package com.xzit.dao;

import java.util.List;

/**
 * 该接口为数据分页访问的接口
 * @author dntch
 *
 */
public interface fzd_ResultsDao<T> {
	public List<T> queryByPage(String sql,int offSet,int pageSize);//按需查询数据
	public int getAllRowCount(String sql);//获取数据的所有的行数
}
