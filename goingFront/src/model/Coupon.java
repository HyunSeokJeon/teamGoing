package model;

import java.util.Date;

public class Coupon {
	
		private int couponID;
		private String couponName;
		private String couponDesc;
		private float couponDiscount;
		private Date couponVaild;
		
		
		public Coupon() {
			
		}
		
		public Coupon(int couponID, String couponName, String couponDesc, float couponDiscount, Date couponVaild) {
			this.couponID = couponID;
			this.couponName = couponName;
			this.couponDesc = couponDesc;
			this.couponDiscount = couponDiscount;
			this.couponVaild = couponVaild;
		}

		public int getCouponID() {
			return couponID;
		}
		
		public void setCouponID(int couponID) {
			this.couponID = couponID;
		}
		
		public String getCouponName() {
			return couponName;
		}
		
		public void setCouponName(String couponName) {
			this.couponName = couponName;
		}
		
		public String getCouponDesc() {
			return couponDesc;
		}
		
		public void setCouponDesc(String couponDesc) {
			this.couponDesc = couponDesc;
		}
		
		public float getCouponDiscount() {
			return couponDiscount;
		}
		
		public void setCounponDiscount(float couponDiscount) {
			this.couponDiscount = couponDiscount;
		}
	
		public void setCouponVaild(Date couponVaild) {
			this.couponVaild = couponVaild;
		}
		
		public Date getCouponVaild() {
			return couponVaild;
		}
}
