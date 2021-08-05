package org.going.faq.domain;

import lombok.Data;

@Data
public class FaqVO {
	private int faqNumber;
	private String faqTitle;
	private String faqContents;
}
