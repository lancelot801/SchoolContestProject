package com.xzit.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.xzit.vo.fzd_ContestMessage;
import com.xzit.vo.fzd_PageBean;

public interface fzd_ContestMessageDao {
	//添加竞赛信息
	public int addCM(fzd_ContestMessage contestmessage)throws SQLException; 
	//查询所有竞赛信息
	public List<Map<String,Object>> findingAllCM()throws SQLException;
	//根据竞赛编号查询竞赛信息
	public List<Map<String,Object>> findAllCMByConId(int conId) throws SQLException;
	//根据竞赛编号删除竞赛信息
	public int remove(int conId) throws SQLException;
	//根据竞赛编号修改竞赛信息
	public int updateCm(fzd_ContestMessage contestmessage)throws SQLException;
	//添加竞赛附件
	public int uploadfilef(int conId,String filepath)throws SQLException;
	//查询附件
	public Map<String,Object> queryFile(int conId)throws SQLException;
	//通过分页查询数据
	public fzd_PageBean findCMByPager(int pageSize,int page);
	//查询报名中的竞赛
	public fzd_PageBean findStartCM(int pageSize,int page);
	//查询提交作品中的竞赛
	public fzd_PageBean findSubmitCM(int pageSize,int page);
	//查询已结束的竞赛
	public fzd_PageBean findEndCM(int pageSize,int page);
}
