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
		 * ��¼��֤
		 */
	private QueryRunner qr = new QueryRunner();
	@Override
	public fzd_Admin login(fzd_Admin admin) throws SQLException {
		Connection conn = JdbcUtils.getConnection();// ��ȡ���ݿ�����
		fzd_Admin result = new fzd_Admin();// ʵ����һ��accont��
		//Role role = new Role();// ʵ����һ��role��
		String sql = "select * from admin where adminId=?";
		Map<String, Object> map = qr.query(conn, sql, new MapHandler(),
				admin.getAdminId());// ���
		if (map == null) {
			return null;
		} else {
			result.setAdminId(map.get("adminId").toString().trim());
			result.setPassword(map.get("password").toString().trim());
			DbUtils.close(conn);// �ر���������
			return result;
		}
	}

}
