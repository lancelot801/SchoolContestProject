package com.xzit.vo;

import java.io.Serializable;
import java.util.Date;

public class fzd_ContestMessage  {

	private int conId; // �������
	private String conName; // ��������
	private String project; // �����������
	private String enrollStart; // ������ʼʱ��
	private String enrollEnd; // ������ֹʱ��
	private String submitStart; // ��Ʒ��ʼ�ύʱ��
	private String submitEnd; // ��Ʒ�ύ��ֹʱ��
	private String jurorLeader; // ��ί�鳤
	private int POrT; // ������ʽ �Ŷ�/����
	private String explains; // ����˵��
	private String publishTime; // ��������ʱ��
	private String coOrganizer;// ������֯��λ
	private String supportAgency; // ����������λ
	private int grade; //�꼶
	private int groupNum;  //һ������
	private String teaId; //�����ʦ
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
