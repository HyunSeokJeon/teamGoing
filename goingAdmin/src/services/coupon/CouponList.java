package services.coupon;

import java.util.ArrayList;

import model.Coupon;

public class CouponList {
	private ArrayList<Coupon> couponList = new ArrayList<>();

	public ArrayList<Coupon> getCouponList() {
		return couponList;
	}

	public void setCouponList(ArrayList<Coupon> couponList) {
		this.couponList = couponList;
	}
	
}
