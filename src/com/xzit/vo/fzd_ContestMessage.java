package com.xzit.vo;

import java.io.Serializable;
import java.util.Date;

public class fzd_ContestMessage  {

	private int conId; // 竞赛编号
	private String conName; // 竞赛名称
	private String project; // 竞赛所属类别
	private String enrollStart; // 报名开始时间
	private String enrollEnd; // 报名截止时间
	private String submitStart; // 作品开始提交时间
	private String submitEnd; // 作品提交截止时间
	private String jurorLeader; // 评委组长
	private int POrT; // 报名方式 团队/个人
	private String explains; // 竞赛说明
	private String publishTime; // 竞赛发布时间
	private String coOrganizer;// 竞赛组织单位
	private String supportAgency; // 竞赛赞助单位
	private int grade; //年级
	private int groupNum;  //一组人数
	private String teaId; //负责教师
	public int getConId() {
		return conId;
	}

	public void setConId(int conId) {
		this.conId = conId;
	}

	public String getConName() {
		return conName;
	}

	public void setConName(String conName) {
		this.conName = conName;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}

	public String getEnrollStart() {
		return enrollStart;
	}

	public void setEnrollStart(String enrollStart) {
		this.enrollStart = enrollStart;
	}

	public String getEnrollEnd() {
		return enrollEnd;
	}

	public void setEnrollEnd(String enrollEnd) {
		this.enrollEnd = enrollEnd;
	}

	public String getSubmitStart() {
		return submitStart;
	}

	public void setSubmitStart(String submitStart) {
		this.submitStart = submitStart;
	}

	public String getSubmitEnd() {
		return submitEnd;
	}

	public void setSubmitEnd(String submitEnd) {
		this.submitEnd = submitEnd;
	}

	public String getJurorLeader() {
		return jurorLeader;
	}

	public void setJurorLeader(String jurorLeader) {
		this.jurorLeader = jurorLeader;
	}

	public int getPOrT() {
		return POrT;
	}

	public void setPOrT(int pOrT) {
		POrT = pOrT;
	}

	public String getExplains() {
		return explains;
	}

	public void setExplains(String explains) {
		this.explains = explains;
	}

	public String getPublishTime() {
		return publishTime;
	}

	public void setPublishTime(String publishTime) {
		this.publishTime = publishTime;
	}

	public String getCoOrganizer() {
		return coOrganizer;
	}

	public void setCoOrganizer(String coOrganizer) {
		this.coOrganizer = coOrganizer;
	}

	public String getSupportAgency() {
		return supportAgency;
	}

	public void setSupportAgency(String supportAgency) {
		this.supportAgency = supportAgency;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public int getGroupNum() {
		return groupNum;
	}

	public void setGroupNum(int groupNum) {
		this.groupNum = groupNum;
	}

	public String getTeaId() {
		return teaId;
	}

	public void setTeaId(String teaId) {
		this.teaId = teaId;
	}
		
}
