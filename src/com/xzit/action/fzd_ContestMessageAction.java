package com.xzit.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.xzit.dao.fzd_ContestMessageDao;
import com.xzit.dao.impl.fzd_ContestMessageDaoImpl;
import com.xzit.vo.fzd_ContestMessage;
import com.xzit.vo.fzd_PageBean;

public class fzd_ContestMessageAction extends ActionSupport implements
		ModelDriven<fzd_ContestMessage> {

	private fzd_ContestMessage contestmessage = new fzd_ContestMessage();
	private int theConId;

	private int pno = 0;// ��ǰ�ǵڼ�ҳ

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public int getTheConId() {
		return theConId;
	}

	public void setTheConId(int theConId) {
		this.theConId = theConId;
	}

	// private ContestMessageDao cmdao = new ContestMessageDaoImpl();
	public fzd_ContestMessage getModel() {
		// TODO Auto-generated method stub
		return this.contestmessage;
	}

	// ��Ӿ�����Ϣ
//	public String addContestMessage() throws IOException, SQLException {
//		fzd_ContestMessageDao cmdao = new fzd_ContestMessageDaoImpl();
//		HttpServletResponse response = ServletActionContext.getResponse();
//		response.setContentType("text/html;charset=utf-8");
//		PrintWriter out = response.getWriter();
//		// System.out.println(contestmessage.getConName());
//		if (cmdao.addCM(this.contestmessage) == 1) {
//			out.println("<script>alert('��Ӿ�����Ϣ�ɹ���');</script>");
//			out.flush();
//			return SUCCESS;
//		} else {
//			out.println("<script>alert('��Ӿ�����Ϣʧ��');</script>");
//			out.flush();
//			return ERROR;
//		}
//	}
	
	public String addContestMessage() {
		try {
			fzd_ContestMessageDao cmdao = new fzd_ContestMessageDaoImpl();
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			// System.out.println(contestmessage.getConName());
			if (cmdao.addCM(this.contestmessage) == 1) {
				out.println("<script>alert('��Ӿ�����Ϣ�ɹ���');</script>");
				out.flush();
				return SUCCESS;
			} else {
				out.println("<script>alert('��Ӿ�����Ϣʧ��');</script>");
				out.flush();
				return ERROR;
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ERROR;
	}

	// ��ѯ���о�����Ϣ
	public void findAllCM() throws IOException, SQLException {
		fzd_ContestMessageDao cmdao = new fzd_ContestMessageDaoImpl();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(JSON.toJSONString(cmdao.findingAllCM()));
		out.flush();
	}

	// ���ݾ�����Ų�ѯ������Ϣ
	public void findCMByConId() throws IOException, SQLException {
		fzd_ContestMessageDao cmdao = new fzd_ContestMessageDaoImpl();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(JSON.toJSONString(cmdao.findAllCMByConId(theConId)));
		// System.out.println(JSON.toJSONString(cmdao.findAllCMByConId(theConId)));
		out.flush();
	}

	// ͨ����ҳ��ѯ����
	public String findByPager() {
		fzd_ContestMessageDaoImpl daoImpl = new fzd_ContestMessageDaoImpl();
		fzd_PageBean pageBean = daoImpl.findCMByPager(5, this.pno);
		ServletActionContext.getRequest().setAttribute("pageBean",pageBean);
		//System.out.println(JSON.toJSONString(pageBean.getList()));
		return "cmresult";
	}
	
	public String findStartCM()
	{
		fzd_ContestMessageDaoImpl daoImpl = new fzd_ContestMessageDaoImpl();
		fzd_PageBean pageBean = daoImpl.findStartCM(5, this.pno);
		ServletActionContext.getRequest().setAttribute("pageBean",pageBean);
		//System.out.println(JSON.toJSONString(pageBean.getList()));
		return "cmresult";
	}
	public String findSubmitCM()
	{
		fzd_ContestMessageDaoImpl daoImpl = new fzd_ContestMessageDaoImpl();
		fzd_PageBean pageBean = daoImpl.findSubmitCM(5, this.pno);
		ServletActionContext.getRequest().setAttribute("pageBean",pageBean);
		//System.out.println(JSON.toJSONString(pageBean.getList()));
		return "cmresult";
	}
	public String findEndCM()
	{
		fzd_ContestMessageDaoImpl daoImpl = new fzd_ContestMessageDaoImpl();
		fzd_PageBean pageBean = daoImpl.findEndCM(5, this.pno);
		ServletActionContext.getRequest().setAttribute("pageBean",pageBean);
		//System.out.println(JSON.toJSONString(pageBean.getList()));
		return "cmresult";
	}
	// ���ݾ�����Ų�ѯ�ļ�
	public void findCMFileByConId() throws IOException, SQLException {
		fzd_ContestMessageDao cmdao = new fzd_ContestMessageDaoImpl();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(JSON.toJSONString(cmdao.queryFile(theConId)));
		// System.out.println(JSON.toJSONString(cmdao.findAllCMByConId(theConId)));
		out.flush();
	}

	// ���ݾ������ɾ��������Ϣ
	public String removeCM() throws IOException, SQLException {
		fzd_ContestMessageDao cmdao = new fzd_ContestMessageDaoImpl();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		// System.out.println(contestmessage.getConName());
		if (cmdao.remove(theConId) == 1) {
			out.println("<script>alert('ɾ��������Ϣ�ɹ���');</script>");
			out.flush();
			return SUCCESS;
		} else {
			out.println("<script>alert('ɾ��������Ϣʧ��');</script>");
			out.flush();
			return ERROR;
		}
	}

	// ���ݾ�������޸ľ�����Ϣ
	public String updateCM() throws IOException, SQLException {
		fzd_ContestMessageDao cmdao = new fzd_ContestMessageDaoImpl();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		// System.out.println(contestmessage.getConName());
		if (cmdao.updateCm(contestmessage) == 1) {
			out.println("<script>alert('�޸ľ�����Ϣ�ɹ���');</script>");
			out.flush();
			return SUCCESS;
		} else {
			out.println("<script>alert('�޸ľ�����Ϣʧ��');</script>");
			out.flush();
			return ERROR;
		}
	}
}
