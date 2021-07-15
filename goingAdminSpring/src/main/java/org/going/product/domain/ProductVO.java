package org.going.product.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductVO {
	private Integer productID;
	private Integer productTypeID;
	private String productName;
	private Integer productPrice;
	private String productImage;
	private String productDesc;
	private int productPlaytime;
	private int productAgeLimit;
	private Integer productLove;
	private Date productSellStart;
	private Date productSellEnd;
	private Date productPeriods;
	private Date productPeriode;
	private Date productRegdate;
	private String productSellYN;
	
	@Override
	public String toString() {
		return "ProductVO [productID=" + productID + ", productTypeID=" + productTypeID + ", productName=" + productName+
				", productPrice=" + productPrice + ", productImage=" + productImage + ", productDesc=" + productDesc +
				", productPlayTime=" + productPlaytime + ", productAgeLimit=" + productAgeLimit + ", productLove=" + productLove +
				", productSellStart=" + productSellStart + ", productSellEnd=" + productSellEnd + ", productPeriods=" + productPeriods +
				", productPeriode=" + productPeriode + ", productRegdate=" + productRegdate + ", productSellYN=" + productSellYN;
	}
}
