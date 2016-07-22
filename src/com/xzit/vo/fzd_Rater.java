package com.xzit.vo;

//指导老师
public class fzd_Rater {
		public String  conId;
		public String teaId;
		public int headman;
		public fzd_Rater() {
			super();
		}

		public fzd_Rater(String conId, String teaId, int headman) {
			super();
			this.conId = conId;
			this.teaId = teaId;
			this.headman = headman;
		}
		
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
		
		
}
