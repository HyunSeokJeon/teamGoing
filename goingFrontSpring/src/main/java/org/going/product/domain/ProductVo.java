package org.going.product.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class ProductVo {

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
	private String productType;

}
