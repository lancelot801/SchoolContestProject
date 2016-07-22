package com.xzit.vo;

public class fzd_Admin {

		public String adminId;  //管理员账号		
		
		public String password; //管理员密码
		
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
