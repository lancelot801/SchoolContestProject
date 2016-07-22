package com.xzit.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;

import com.xzit.dao.fzd_RaterDao;
import com.xzit.dbutils.JdbcUtils;
import com.xzit.vo.fzd_Rater;

public class fzd_RaterDaoImpl  implements fzd_RaterDao{
	
	private QueryRunner qr = new QueryRunner();
	
	//添加指导老师
	public int addRater(fzd_Rater rater) throws SQLException {
		
		Connection conn = JdbcUtils.getConnection(); //获取数据库连接
		String sql = "insert into rater(conId,teaId,headman)"
				+"values(?,?,?)";
		int flag = qr.update(conn, sql,rater.getConId(),rater.getTeaId(),rater.getHeadman());
		DbUtils.close(conn);
		return flag;
	}

}
