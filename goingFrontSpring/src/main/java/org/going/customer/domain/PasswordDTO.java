package org.going.customer.domain;

import lombok.Data;

@Data
public class PasswordDTO {
	private String currentPassword;
	private String changePassword;
	private String changeRePassword;
}
