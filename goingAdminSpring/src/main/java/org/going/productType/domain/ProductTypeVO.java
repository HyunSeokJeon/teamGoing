package org.going.productType.domain;

import org.apache.ibatis.type.Alias;

@Alias("ProductTypeVO")
public class ProductTypeVO {
	private Integer productTypeId;
	private String productType;
	
	public Integer getProductTypeId() {
		return productTypeId;
	}

	public String getProductType() {
		return productType;
	}

	public void setProductTypeId(Integer productTypeId) {
		this.productTypeId = productTypeId;
	}

	public void setProductType(String productType) {
		this.productType = productType;
	}
	
	public String toString() {
		return "ProductTypeVO [productTypeId = " + productTypeId + ", productType = " + productType;
	}
	
}
