package com.xzit.vo;

public class fzd_Admin {

		public String adminId;  //����Ա�˺�		
		
		public String password; //����Ա����
		
		public fzd_Admin(String adminId, String password) {
			super();
			this.adminId = adminId;
			this.password = password;
		}

		public fzd_Admin(){
			super();
		}

		public String getAdminId() {
			return adminId;
		}

		public void setAdminId(String adminId) {
			this.adminId = adminId;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}	
		
}
