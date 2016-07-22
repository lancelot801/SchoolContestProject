package com.xzit.action;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.xzit.common.MD5;
import com.xzit.dao.fzd_AdminDao;
import com.xzit.dao.impl.fzd_AdminDaoImpl;
import com.xzit.vo.fzd_Admin;


public class fzd_AdminAction extends ActionSupport  implements ModelDriven<fzd_Admin> {
	
	private fzd_Admin  admin = new fzd_Admin();
	public fzd_Admin getModel() {
		// TODO Auto-generated method stub
		return this.admin;
	}
	
	public String login() throws Exception
	{
			String password;
			fzd_AdminDao  dao=new  fzd_AdminDaoImpl();
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			fzd_Admin result;
			result=dao.login(admin);
			//System.out.println(result.getAdminId().trim()+"123");
			if(result==null){
				addFieldError("user" , "用户名或密码错误！");
				return "error";
			}else
			{
				password=result.getPassword().trim();
			}
			//System.out.println(password);
			if(password.trim().equals(MD5.MD5Encoding(admin.getPassword()+"xzit".trim())))   //MD5加掩
			{
				ActionContext ac=ActionContext.getContext();
				ac.getSession().put("account",admin.getAdminId());
				return "success";
			}
			else {
				addFieldError("user" , "用户名或密码错误！");
				return "error";
			}
				
	}

}
