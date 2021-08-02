package org.going.login.domain;

import lombok.Data;

@Data
public class LoginDTO {
	private String customerId;
	private String customerPass;
	private boolean rememberId;
}
