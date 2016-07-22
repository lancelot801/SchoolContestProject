package com.xzit.action;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionSupport;
import com.xzit.dao.fzd_MarkDetailsDao;
import com.xzit.dao.impl.fzd_MarkDetailsDaoImpl;
import com.xzit.vo.fzd_MarkDetails;

public class fzd_MarkDetailsAction  extends ActionSupport{
	private HttpServletResponse response = ServletActionContext.getResponse();
//	private String conId;
//	private String markDetails;
//	private int aspectId;
//	private int score;
//	private String aspect;
//	
	private String aspectConId;
	
	public String getAspectConId() {
		return aspectConId;
	}
	public void setAspectConId(String aspectConId) {
		this.aspectConId = aspectConId;
	}
	//一次插入多条记录
	private List<fzd_MarkDetails> markList =new ArrayList<fzd_MarkDetails>();
	
	public List<fzd_MarkDetails> getMarkList() {
		return markList;
	}
	public void setMarkList(List<fzd_MarkDetails> markList) {
		this.markList = markList;
	}
	
//	public String getConId() {
//		return conId;
//	}
//	public void setConId(String conId) {
//		this.conId = conId;
//	}
//	public String getMarkDetails() {
//		return markDetails;
//	}
//	public void setMarkDetails(String markDetails) {
//		this.markDetails = markDetails;
//	}
//	public int getAspectId() {
//		return aspectId;
//	}
//	public void setAspectId(int aspectId) {
//		this.aspectId = aspectId;
//	}
//	public int getScore() {
//		return score;
//	}
//	public void setScore(int score) {
//		this.score = score;
//	}
//	public String getAspect() {
//		return aspect;
//	}
//	public void setAspect(String aspect) {
//		this.aspect = aspect;
//	}
	public void addMarkDetails()throws Exception{
//		fzd_MarkDetailsDao dao=new   fzd_MarkDetailsDaoImpl();
//		//实例化
//		fzd_MarkDetails  md=new fzd_MarkDetails();
//		response.setContentType("text/html;charset=utf-8");
//		//String s2 = new String(markDetails.getBytes("ISO-8859-1"),"UTF-8");
//		
//		//String[] arr = s2.split(",");
//	//	md.setConId(this.conId);
//		md.setAspect(arr[1]);
//		md.setAspectId(Integer.parseInt(arr[0]));
//		md.setScore(Integer.parseInt(arr[2]));
//		/*
//		md.conId=conId;
//		md.aspectId=Integer.parseInt(arr[0]);
//		md.aspect=arr[1];
//		md.score=Integer.parseInt(arr[2]);
//		*/
//		int i=dao.addMarkDetails(md);
	}
	//以List方式添加多条数据
	public void addMarkList()throws Exception{
			//System.out.println(markList.size());
		response.setContentType("text/html;charset=utf-8");   //中文乱码解决
		fzd_MarkDetailsDao dao=new   fzd_MarkDetailsDaoImpl();
		//判断评分标准是否已经存在
		int j=dao.quertMarkExits(aspectConId);
		if(j==0){
			ServletActionContext.getResponse().getWriter().println("<script>alert('你已添加过评分标准,请勿重复添加')</script>");
			ServletActionContext.getResponse().getWriter().println("<script>window.location.href='findStartCM.action?pno=1';</script>");
			ServletActionContext.getResponse().getWriter().flush();;
			ServletActionContext.getResponse().getWriter().close();
			return;
		}
		else{
			//循环遍历List添加评分细则
			for (int i = 0; i < markList.size(); i++) {
				fzd_MarkDetails md = new fzd_MarkDetails();
				//response.setContentType("text/html;charset=utf-8");
				md.setConId(aspectConId);
				md.setAspect(markList.get(i).aspect);
				md.setAspectId(markList.get(i).aspectId);
				md.setScore(markList.get(i).score);
				//System.out.println(markList.get(i).aspect);
				dao.addMarkDetails(md);
			}
			//保持URL链接不变
			ServletActionContext.getResponse().getWriter().println("<script>alert('添加评分标准成功')</script>");
			ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
			ServletActionContext.getResponse().getWriter().println("<script>window.location.href='findStartCM.action?pno=1';</script>");
			ServletActionContext.getResponse().getWriter().flush();;
			ServletActionContext.getResponse().getWriter().close();
		}
			
	}
}
