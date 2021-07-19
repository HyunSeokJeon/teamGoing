package org.going.productImg.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductImgVO {
	private Integer productID;
	private String pImg;
	private String imgHead;
	private Date regDate;
	
}
