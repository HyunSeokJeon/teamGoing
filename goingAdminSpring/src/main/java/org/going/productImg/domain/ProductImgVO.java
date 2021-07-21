package org.going.productImg.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class ProductImgVO {
	private Integer productID;
	private String pImg;
	private String imgHead;
	private Date regDate;
	
}
