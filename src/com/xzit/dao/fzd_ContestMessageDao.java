package com.xzit.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.xzit.vo.fzd_ContestMessage;
import com.xzit.vo.fzd_PageBean;

public interface fzd_ContestMessageDao {
	//��Ӿ�����Ϣ
	public int addCM(fzd_ContestMessage contestmessage)throws SQLException; 
	//��ѯ���о�����Ϣ
	public List<Map<String,Object>> findingAllCM()throws SQLException;
	//���ݾ�����Ų�ѯ������Ϣ
	public List<Map<String,Object>> findAllCMByConId(int conId) throws SQLException;
	//���ݾ������ɾ��������Ϣ
	public int remove(int conId) throws SQLException;
	//���ݾ�������޸ľ�����Ϣ
	public int updateCm(fzd_ContestMessage contestmessage)throws SQLException;
	//��Ӿ�������
	public int uploadfilef(int conId,String filepath)throws SQLException;
	//��ѯ����
	public Map<String,Object> queryFile(int conId)throws SQLException;
	//ͨ����ҳ��ѯ����
	public fzd_PageBean findCMByPager(int pageSize,int page);
	//��ѯ�����еľ���
	public fzd_PageBean findStartCM(int pageSize,int page);
	//��ѯ�ύ��Ʒ�еľ���
	public fzd_PageBean findSubmitCM(int pageSize,int page);
	//��ѯ�ѽ����ľ���
	public fzd_PageBean findEndCM(int pageSize,int page);
}
