package model;

import java.sql.Date;

public class Coupon {
	private Integer couponID;
	private String couponName;
	private String couponDesc;
	private Double couponDiscount;
	private Date couponVaild;

	// 상품등록 생성자

	public Coupon(Integer couponID, String couponName, String couponDesc, Double couponDiscount, Date couponVaild) {

		super();
		this.couponID = couponID;
		this.couponName = couponName;
		this.couponDesc = couponDesc;
		this.couponDiscount = couponDiscount;
		this.couponVaild = couponVaild;
	}
	
	public Coupon(String couponName, String couponDesc, Double couponDiscount, Date couponVaild) {

		super();
		this.couponName = couponName;
		this.couponDesc = couponDesc;
		this.couponDiscount = couponDiscount;
		this.couponVaild = couponVaild;
	}


	public Integer getCouponID() {
		return couponID;
	}

	public String getCouponName() {
		return couponName;
	}

	public String getCouponDesc() {
		return couponDesc;
	}

	public Double getCouponDiscount() {
		return couponDiscount;
	}

	public Date getCouponVaild() {
		return couponVaild;
	}

}
