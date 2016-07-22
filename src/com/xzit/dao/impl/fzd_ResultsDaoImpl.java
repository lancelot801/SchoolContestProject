package com.xzit.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;

import com.xzit.dao.fzd_ResultsDao;
import com.xzit.dbutils.JdbcUtils;

/**
 * 通过继承resultsDao的方法来实现分页的按需查询数据
 * 
 * @author dntch
 *
 */
public class fzd_ResultsDaoImpl implements fzd_ResultsDao<Map<String, Object>> {
	private QueryRunner qr = new QueryRunner();

	// 查询所有行的行数
	@Override
	public int getAllRowCount(String sql) {
		Connection conn = JdbcUtils.getConnection();
		int allRows = 0;// 总行数
		try {
			allRows = qr.query(conn,sql, new MapListHandler()).size();
			DbUtils.close(conn);// 关闭数据源
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return allRows;
	}

	// 按需查询数据
	@Override
	public List<Map<String, Object>> queryByPage(String sql, int offSet, int pageSize) {
		Connection conn = JdbcUtils.getConnection();
		List<Map<String, Object>> result = null;
		try {
			result = qr.query(conn, sql, new MapListHandler(), offSet, (offSet + pageSize));
			DbUtils.close(conn);// 关闭数据源
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
