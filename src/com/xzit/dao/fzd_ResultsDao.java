package com.xzit.dao;

import java.util.List;

/**
 * �ýӿ�Ϊ���ݷ�ҳ���ʵĽӿ�
 * @author dntch
 *
 */
public interface fzd_ResultsDao<T> {
	public List<T> queryByPage(String sql,int offSet,int pageSize);//�����ѯ����
	public int getAllRowCount(String sql);//��ȡ���ݵ����е�����
}
