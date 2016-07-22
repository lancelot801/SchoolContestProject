package com.xzit.vo;

import java.io.Serializable;

public class fzd_MarkDetails implements Serializable {
	
		/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
		public String conId;
		public int aspectId;
		public  String  aspect;
		public  int score;
		
		
	
		public fzd_MarkDetails() {
			super();
		}
		public fzd_MarkDetails(String conId, int aspectId, String aspect,
				int score) {
			super();
			this.conId = conId;
			this.aspectId = aspectId;
			this.aspect = aspect;
			this.score = score;
		}
		public String getConId() {
			return conId;
		}
		public void setConId(String conId) {
			this.conId = conId;
		}
		public int getAspectId() {
			return aspectId;
		}
		public void setAspectId(int aspectId) {
			this.aspectId = aspectId;
		}
		public String getAspect() {
			return aspect;
		}
		public void setAspect(String aspect) {
			this.aspect = aspect;
		}
		public int getScore() {
			return score;
		}
		public void setScore(int score) {
			this.score = score;
		}
		
}
