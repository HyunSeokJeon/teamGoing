package org.going.customer.domain;

import lombok.Data;

@Data
public class LoginDTO {
	private String customerId;
	private String customerPass;
	private boolean useCookie;
	

}
