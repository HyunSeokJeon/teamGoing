package org.going.product.domain;

import java.sql.Date;

import org.going.productType.domain.ProductTypeVO;

import lombok.Data;

@Data
public class ProductVO {
	private Integer productID;
	private ProductTypeVO productTypeVO;
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

	public Integer getProductTypeId() {
		return productTypeVO.getProductTypeId();
	}
}
