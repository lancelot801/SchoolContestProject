package com.xzit.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapHandler;

import com.xzit.dao.fzd_AdminDao;
import com.xzit.dbutils.JdbcUtils;
import com.xzit.vo.fzd_Admin;

public class fzd_AdminDaoImpl  implements fzd_AdminDao{
		/**
		 * 登录验证
		 */
	private QueryRunner qr = new QueryRunner();
	@Override
	public fzd_Admin login(fzd_Admin admin) throws SQLException {
		Connection conn = JdbcUtils.getConnection();// 获取数据库连接
		fzd_Admin result = new fzd_Admin();// 实例化一个accont类
		//Role role = new Role();// 实例化一个role类
		String sql = "select * from admin where adminId=?";
		Map<String, Object> map = qr.query(conn, sql, new MapHandler(),
				admin.getAdminId());// 结果
		if (map == null) {
			return null;
		} else {
			result.setAdminId(map.get("adminId").toString().trim());
			result.setPassword(map.get("password").toString().trim());
			DbUtils.close(conn);// 关闭数据连接
			return result;
		}
	}

}
