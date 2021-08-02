package org.going.customer.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class CustomerVo {
	private String customerId;
	private String customerPass;
	private String customerName;
	private Date customerBirthday;
	private String customerGender;
	
	private String customerEmail;
	private String customerPhonenum;
	private String customerAddresscode1;
	private String customerAddress1;
	private String customerAddress2;
	
	private String customerAccount;
	private String recommender;
	private String customerGrade;
	private String customerCouple;
	private int customerBalance;

	
}
