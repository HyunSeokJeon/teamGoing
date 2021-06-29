package model;

import java.sql.Date;

public class CouponImg {
	private int couponId;
	private String cImg;
	private String imgHead;
	private Date regDate;
	public CouponImg(int couponId, String cImg, String imgHead, Date regDate) {
		super();
		this.couponId = couponId;
		this.cImg = cImg;
		this.imgHead = imgHead;
		this.regDate = regDate;
	}
	public int getCouponId() {
		return couponId;
	}
	public String getcImg() {
		return cImg;
	}
	public String getImgHead() {
		return imgHead;
	}
	public Date getRegDate() {
		return regDate;
	}
	
	
}
