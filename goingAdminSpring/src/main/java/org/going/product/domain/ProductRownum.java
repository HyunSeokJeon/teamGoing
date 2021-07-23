package org.going.product.domain;

import lombok.Data;

@Data
public class ProductRownum {
	private int rownum = 1;
	private int rownumEnd = 10;
	public void setRownum(int rownum) {
		this.rownum = rownum;
		this.rownumEnd = rownum+10;
	}
}
