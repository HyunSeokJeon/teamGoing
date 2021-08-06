package org.going.payment.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class KakaoPayVo {
		
	
	private String tid;
	private Boolean tms_result;
	private String next_redirect_app_url;
	private String next_redirect_mobile_url;
	private String next_redirect_pc_url;
	private String android_app_scheme;
	private String ios_app_scheme;
	private Date created_at;
	private String msg;
	private String code;
}
