package com.xzit.dao.impl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;
import org.apache.struts2.ServletActionContext;

import com.xzit.dao.fzd_MarkDetailsDao;
import com.xzit.dbutils.JdbcUtils;
import com.xzit.vo.fzd_MarkDetails;

public class fzd_MarkDetailsDaoImpl  implements fzd_MarkDetailsDao{

	private QueryRunner qr = new QueryRunner();
	@Override
	public int addMarkDetails(fzd_MarkDetails md) throws SQLException {
		Connection conn = JdbcUtils.getConnection(); //获取数据库连接
		//查询是否已存在数据
//		String sql1 = "select * from markdetails where conId=?";
//		List<Map<String, Object>> result = qr.query(conn,sql1,
//				new MapListHandler(), md.getConId());
//		if (result!=null&&result.size()!=0)
//			return 0;
		String sql = "insert into markdetails(conId,aspectId,aspect,score)"
				+"values(?,?,?,?)";
		int flag = qr.update(conn, sql,md.getConId(),md.getAspectId(),md.getAspect(),md.getScore());
		DbUtils.close(conn);
		//System.out.println(flag);
		return flag;
	}
	@Override
	public int quertMarkExits(String conId) throws SQLException {
		Connection conn = JdbcUtils.getConnection(); //获取数据库连接
		///查询是否已存在数据
		String sql1 = "select * from markdetails where conId=?";
		List<Map<String, Object>> result = qr.query(conn,sql1,
				new MapListHandler(), conId);
		if (result!=null&&result.size()!=0){
			return 0;
		}
		else {
			return 1;
		}
		
	}

}
