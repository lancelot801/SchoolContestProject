
package com.xzit.action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.xzit.dao.fzd_RaterDao;
import com.xzit.dao.impl.fzd_RaterDaoImpl;
import com.xzit.vo.fzd_Rater;

public class fzd_RaterAction {
	private HttpServletResponse response = ServletActionContext.getResponse();
	private String conId;
	private String teaId;
	private int headman;

	public String getConId() {
		return conId;
	}

	public void setConId(String conId) {
		this.conId = conId;
	}

	public String getTeaId() {
		return teaId;
	}

	public void setTeaId(String teaId) {
		this.teaId = teaId;
	}

	public int getHeadman() {
		return headman;
	}

	public void setHeadman(int headman) {
		this.headman = headman;
	}

	// 添加评委组长
	public void addHeadman() throws Exception {
		fzd_Rater rater = new fzd_Rater();
		fzd_RaterDao dao = new fzd_RaterDaoImpl();
		String teacher=new String(teaId.getBytes("ISO-8859-1"),"UTF-8");
		rater.setHeadman(1);
		rater.setTeaId(teacher);
		rater.setConId(this.conId);
		
		int i=dao.addRater(rater);
	}

	// 添加其他评委老师
	public void otherTeacher() throws Exception {
		fzd_Rater rater = new fzd_Rater();
		fzd_RaterDao dao = new fzd_RaterDaoImpl();
		String teacher=new String(teaId.getBytes("ISO-8859-1"),"UTF-8");
		rater.setHeadman(0);
		rater.setTeaId(teacher);
		rater.setConId(this.conId);
		
		int i=dao.addRater(rater);
	}
}
