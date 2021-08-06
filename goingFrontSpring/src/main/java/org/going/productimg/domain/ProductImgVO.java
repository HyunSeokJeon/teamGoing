package org.going.productimg.domain;

import java.sql.Date;

import lombok.Data;
import lombok.Getter;

@Data
@Getter
public class ProductImgVO {
	
	private Integer productId;
	private String pImg;
	private String imgHead;
	private Date regDate;
}
