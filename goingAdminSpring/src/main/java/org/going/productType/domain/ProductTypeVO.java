package org.going.productType.domain;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("ProductTypeVO")
@Data
public class ProductTypeVO {
	private Integer productTypeId;
	private String productType;



}
