package org.going.customer.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class CustomerDTO {
	
	private String customerId;
	private String customerPass;
	private String customerRePass;
	private String customerName;
	private String birthday1;
	private String birthday2;
	private String birthday3;
	private Date customerBirthday;
	private String customerGender;
	private String email1;
	private String email2;
	private String customerEmail;
	private String customerPhonenum;
	private String customerAddresscode1;
	private String customerAddress1;
	private String customerAddress2;
	private String customerRecommender;
	
}
