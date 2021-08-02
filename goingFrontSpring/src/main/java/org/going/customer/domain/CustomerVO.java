package org.going.customer.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class CustomerVO {
	private String CUSTOMERID;
	private String CUSTOMERPASS;
	private String CUSTOMERNAME;
	private Date CUSTOMERBIRTHDAY;
	private String CUSTOMERGENDER;
	
	private String CUSTOMEREMAIL;
	private String CUSTOMERPHONENUM;
	private String CUSTOMERADDRESSCODE1;
	private String CUSTOMERADDRESS1;
	private String CUSTOMERADDRESS2;
	
	private String CUSTOMERACCOUNT;
	private String RECOMMENDER;
	private String CUSTOMERGRADE;
	private String CUSTOMERCOUPLE;
	private int CUSTOMERBALANCE;
}
