package com.xzit.dao;

import java.sql.SQLException;

import com.xzit.vo.fzd_Rater;

public interface fzd_RaterDao {
	//���ָ����ʦ
		public int  addRater(fzd_Rater rater) throws SQLException;
}
