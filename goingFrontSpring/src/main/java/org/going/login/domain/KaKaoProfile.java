package org.going.login.domain;

import lombok.Data;

@Data
public class KaKaoProfile {
		
	public Integer id;
	public String connected_at;
	public Properties properties;
	public KaKaoAccount kakao_account;
	
	@Data
	public class Properties{
		public String nickname;
		public String profile_image;
		public String thumbnail_image;
	}
	
	@Data
	public class KaKaoAccount{
		public boolean profile_needs_agreement;
		public Profile profile;
		public boolean has_email;
		public boolean email_needs_agreement;
		public boolean is_email_valid;
		public boolean is_email_verified;
		public String email;
		public boolean has_gender;
		public boolean gender_needs_agreement;
		public String gender;
		
		
		@Data
		public class Profile{
			public String nickname;
			public String thumbnail_image_url;
			public String profile_image_url;
			public boolean is_default_image;
		}
	}
}
