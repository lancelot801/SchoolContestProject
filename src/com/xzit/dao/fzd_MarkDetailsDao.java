package com.xzit.dao;

import java.sql.SQLException;

import com.xzit.vo.fzd_MarkDetails;

public interface fzd_MarkDetailsDao {
		public int quertMarkExits(String conId) throws SQLException;//查询评分标准是否已经存在
		public int addMarkDetails(fzd_MarkDetails md) throws SQLException; //添加评分细则
}
