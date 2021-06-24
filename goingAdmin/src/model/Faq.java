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

	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return super.hashCode();
	}

	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		return super.equals(obj);
	}

	@Override
	protected Object clone() throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		return super.clone();
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}

	@Override
	protected void finalize() throws Throwable {
		// TODO Auto-generated method stub
		super.finalize();
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
