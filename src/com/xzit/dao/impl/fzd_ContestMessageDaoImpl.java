package com.xzit.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;

import com.xzit.common.fzd_Commons;
import com.xzit.dbutils.JdbcUtils;
import com.xzit.dao.fzd_ContestMessageDao;
import com.xzit.vo.fzd_ContestMessage;
import com.xzit.vo.fzd_PageBean;

public class fzd_ContestMessageDaoImpl implements fzd_ContestMessageDao {

	private QueryRunner qr = new QueryRunner();
	//添加竞赛信息
	public int addCM(fzd_ContestMessage cm) throws SQLException {
		Connection conn = JdbcUtils.getConnection(); //获取数据库连接
		
		Date now=new Date();
	     SimpleDateFormat matter1=new SimpleDateFormat("yyyy-MM-dd");
	     String publishTime=matter1.format(now).toString();
		String sql = "insert into contestMessage(end,conName,project,enrollStart,enrollEnd,groupNum,grade,"
				+ "submitStart,submitEnd,jurorLeader,POrT,explains,publishTime,coOrganizer,supportAgency)"
				+"values(0,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		if(cm.getSubmitStart()==null || "".equals(cm.getSubmitStart()))
		{
			return 0;
		}
		//System.out.println(cm.getConName());
		int flag = qr.update(conn, sql,cm.getConName(),cm.getProject(),cm.getEnrollStart().toString(),
				cm.getEnrollEnd().toString(),cm.getGroupNum(),cm.getGrade(),cm.getSubmitStart().toString(),cm.getSubmitEnd().toString(),cm.getJurorLeader(),
				cm.getPOrT(),cm.getExplains(),publishTime,cm.getCoOrganizer(),
				cm.getSupportAgency());
		DbUtils.close(conn);
		return flag;
	}
	
	//查询所有竞赛信息

	public List<Map<String, Object>> findingAllCM() {
		Connection conn=JdbcUtils.getConnection();
		String sql="select * from contestMessage";
		List<Map<String, Object>> result = null;
		try {
			result = qr.query(conn, sql, new MapListHandler());
			DbUtils.close(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	
	

	public List<Map<String, Object>> findAllCMByConId(int conId) {
		Connection conn=JdbcUtils.getConnection();
		String sql="select * from contestMessage where conId="+conId+";";
		List<Map<String, Object>> result = null;
		try {
			result = qr.query(conn, sql, new MapListHandler());
			DbUtils.close(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}


	public int remove(int conId) throws SQLException {
		Connection conn = JdbcUtils.getConnection();// 获取数据连接
		String sql = "delete from contestMessage where conId=?";
		int flag = qr.update(conn, sql, conId);
		DbUtils.close(conn);
		return flag;
	}

	public int updateCm(fzd_ContestMessage cm) throws SQLException {
		Connection conn = JdbcUtils.getConnection();
		String sql = "update contestMessage set conName=?,project=?,"
				+ "enrollStart=?,enrollEnd=?,submitStart=?,submitEnd=?,"
				+ "jurorLeader=?,grade=?,POrT=?,groupNum=?,explains=?,"
				+ "coOrganizer=?,supportAgency=? where conId=?";
		int flag = qr.update(conn, sql,cm.getConName(),cm.getProject(),cm.getEnrollStart().toString(),
				cm.getEnrollEnd().toString(),cm.getSubmitStart().toString(),cm.getSubmitEnd().toString(),cm.getJurorLeader(),
				cm.getGrade(),cm.getPOrT(),cm.getGroupNum(),cm.getExplains(),cm.getCoOrganizer(),
				cm.getSupportAgency(),cm.getConId());
		DbUtils.close(conn);
		return flag;
	}

	public int uploadfilef(int conId, String filepath) throws SQLException {
		Connection conn = JdbcUtils.getConnection();
		String sql = "update contestMessage set extrasfile=?  where conId=?";
		int flag = qr.update(conn, sql,filepath,conId);
		DbUtils.close(conn);
		return flag;
	}


	public Map<String, Object> queryFile(int conId) throws SQLException {
		Connection conn=JdbcUtils.getConnection();
		String sql="select * from contestMessage where conId="+conId+";";
		Map<String, Object> result = null;
		try {
			result = qr.query(conn, sql,new MapHandler());
			DbUtils.close(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public fzd_PageBean findCMByPager(int pageSize, int page) {
		String sql = "select * from contestMessage ";
		fzd_PageBean pageBean  = fzd_Commons.getMyPageBean(sql, pageSize, page);
		return pageBean;
	}

	public fzd_PageBean findStartCM(int pageSize, int page) {
		 Date now=new Date();
	     SimpleDateFormat matter1=new SimpleDateFormat("yyyy-MM-dd");
	     //String sql = "select * from contestMessage ";
	    // System.out.println(matter1.format(now));
		String sql ="select * from contestmessage where DATE_FORMAT(enrollStart, '%Y-%m-%d')<='"+matter1.format(now) +"' and DATE_FORMAT(enrollEnd, '%Y-%m-%d')>'"+ matter1.format(now) +"'";
		fzd_PageBean pageBean  =fzd_Commons.getMyPageBean(sql, pageSize, page);
		return pageBean;
	}


	public fzd_PageBean findSubmitCM(int pageSize, int page) {
		 Date now=new Date();
	     SimpleDateFormat matter1=new SimpleDateFormat("yyyy-MM-dd");
	     //String sql = "select * from contestMessage ";
	    // System.out.println(matter1.format(now));
		String sql ="select * from contestmessage where DATE_FORMAT(submitStart, '%Y-%m-%d')<='"+matter1.format(now) +"' and DATE_FORMAT(submitEnd, '%Y-%m-%d')>'"+ matter1.format(now) +"'";
		fzd_PageBean pageBean  = fzd_Commons.getMyPageBean(sql, pageSize, page);
		return pageBean;
	}


	public fzd_PageBean findEndCM(int pageSize, int page) {
		 Date now=new Date();
	     SimpleDateFormat matter1=new SimpleDateFormat("yyyy-MM-dd");
	     //String sql = "select * from contestMessage ";
	    // System.out.println(matter1.format(now));
		String sql ="select * from contestmessage where DATE_FORMAT(submitEnd, '%Y-%m-%d')<='"+matter1.format(now) +"'";
		fzd_PageBean pageBean  = fzd_Commons.getMyPageBean(sql, pageSize, page);
		return pageBean;
	}

}
