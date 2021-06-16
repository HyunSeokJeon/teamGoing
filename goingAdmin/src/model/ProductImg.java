package model;

import java.sql.Date;

public class ProductImg {
	private int productId;
	private String pImg;
	private String imgHead;
	private Date regDate;
	public ProductImg(int productId, String pImg, String imgHead, Date regDate) {
		super();
		this.productId = productId;
		this.pImg = pImg;
		this.imgHead = imgHead;
		this.regDate = regDate;
	}
	public int getProductId() {
		return productId;
	}
	public String getpImg() {
		return pImg;
	}
	public String getImgHead() {
		return imgHead;
	}
	public Date getRegDate() {
		return regDate;
	}
	
	
}
