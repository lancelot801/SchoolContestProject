package com.xzit.dao;

import java.sql.SQLException;

import com.xzit.vo.fzd_MarkDetails;

public interface fzd_MarkDetailsDao {
		public int quertMarkExits(String conId) throws SQLException;//��ѯ���ֱ�׼�Ƿ��Ѿ�����
		public int addMarkDetails(fzd_MarkDetails md) throws SQLException; //�������ϸ��
}
