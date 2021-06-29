package model;

public class Faq {
	private int FAQNUMBER;
	private String FAQTITLE;
	private String FAQCONTENTS;
	
	
	
	public Faq(int fAQNUMBER, String fAQTITLE, String fAQCONTENTS) {
		super();
		FAQNUMBER = fAQNUMBER;
		FAQTITLE = fAQTITLE;
		FAQCONTENTS = fAQCONTENTS;
	}

	public int getFAQNUMBER() {
		return FAQNUMBER;
	}

	public void setFAQNUMBER(int fAQNUMBER) {
		FAQNUMBER = fAQNUMBER;
	}

	public String getFAQTITLE() {
		return FAQTITLE;
	}

	public void setFAQTITLE(String fAQTITLE) {
		FAQTITLE = fAQTITLE;
	}

	public String getFAQCONTENTS() {
		return FAQCONTENTS;
	}

	public void setFAQCONTENTS(String fAQCONTENTS) {
		FAQCONTENTS = fAQCONTENTS;
	}	
	
	
}
