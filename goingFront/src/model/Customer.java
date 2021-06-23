package model;

import java.sql.Date;

public class Customer {
	
	private String CUSTOMERID;
	private String CUSTOMERPASS;
	private String CUSTOMERNAME;
	private Date CUSTOMERBIRTHDAY;
	private String CUSTOMERGENDER;
	
	private String CUSTOMEREMAIL;
	private String CUSTOMERPHONENUM;
	private String CUSTOMERADDRESSCODE1;
	private String CUSTOMERADDRESS1;
	private String CUSTOMERADDRESS2;
	
	private String CUSTOMERACCOUNT;
	private String RECOMMENDER;
	private String CUSTOMERGRADE;
	private String CUSTOMERCOUPLE;
	private int CUSTOMERBALANCE;

	
		
	
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
	
	
	public String getCUSTOMERID() {
		return CUSTOMERID;
	}
	public void setCUSTOMERID(String cUSTOMERID) {
		CUSTOMERID = cUSTOMERID;
	}
	public String getCUSTOMERPASS() {
		return CUSTOMERPASS;
	}
	public void setCUSTOMERPASS(String cUSTOMERPASS) {
		CUSTOMERPASS = cUSTOMERPASS;
	}
	public String getCUSTOMERNAME() {
		return CUSTOMERNAME;
	}
	public void setCUSTOMERNAME(String cUSTOMERNAME) {
		CUSTOMERNAME = cUSTOMERNAME;
	}
	public Date getCUSTOMERBIRTHDAY() {
		return CUSTOMERBIRTHDAY;
	}
	public void setCUSTOMERBIRTHDAY(Date cUSTOMERBIRTHDAY) {
		CUSTOMERBIRTHDAY = cUSTOMERBIRTHDAY;
	}
	public String getCUSTOMERGENDER() {
		return CUSTOMERGENDER;
	}
	public void setCUSTOMERGENDER(String cUSTOMERGENDER) {
		CUSTOMERGENDER = cUSTOMERGENDER;
	}
	public String getCUSTOMEREMAIL() {
		return CUSTOMEREMAIL;
	}
	public void setCUSTOMEREMAIL(String cUSTOMEREMAIL) {
		CUSTOMEREMAIL = cUSTOMEREMAIL;
	}
	public String getCUSTOMERPHONENUM() {
		return CUSTOMERPHONENUM;
	}
	public void setCUSTOMERPHONENUM(String cUSTOMERPHONENUM) {
		CUSTOMERPHONENUM = cUSTOMERPHONENUM;
	}
	public String getCUSTOMERADDRESSCODE1() {
		return CUSTOMERADDRESSCODE1;
	}
	public void setCUSTOMERADDRESSCODE1(String cUSTOMERADDRESSCODE1) {
		CUSTOMERADDRESSCODE1 = cUSTOMERADDRESSCODE1;
	}
	public String getCUSTOMERADDRESS1() {
		return CUSTOMERADDRESS1;
	}
	public void setCUSTOMERADDRESS1(String cUSTOMERADDRESS1) {
		CUSTOMERADDRESS1 = cUSTOMERADDRESS1;
	}
	public String getCUSTOMERADDRESS2() {
		return CUSTOMERADDRESS2;
	}
	public void setCUSTOMERADDRESS2(String cUSTOMERADDRESS2) {
		CUSTOMERADDRESS2 = cUSTOMERADDRESS2;
	}
	public String getCUSTOMERACCOUNT() {
		return CUSTOMERACCOUNT;
	}
	public void setCUSTOMERACCOUNT(String cUSTOMERACCOUNT) {
		CUSTOMERACCOUNT = cUSTOMERACCOUNT;
	}
	public String getRECOMMENDER() {
		return RECOMMENDER;
	}
	public void setRECOMMENDER(String rECOMMENDER) {
		RECOMMENDER = rECOMMENDER;
	}
	public String getCUSTOMERGRADE() {
		return CUSTOMERGRADE;
	}
	public void setCUSTOMERGRADE(String cUSTOMERGRADE) {
		CUSTOMERGRADE = cUSTOMERGRADE;
	}
	public String getCUSTOMERCOUPLE() {
		return CUSTOMERCOUPLE;
	}
	public void setCUSTOMERCOUPLE(String cUSTOMERCOUPLE) {
		CUSTOMERCOUPLE = cUSTOMERCOUPLE;
	}
	public int getCUSTOMERBALANCE() {
		return CUSTOMERBALANCE;
	}
	public void setCUSTOMERBALANCE(int cUSTOMERBALANCE) {
		CUSTOMERBALANCE = cUSTOMERBALANCE;
	}
	
	public Customer(String cUSTOMERID,
			String cUSTOMERPASS,
			String cUSTOMERNAME,
			Date cUSTOMERBIRTHDAY,
			String cUSTOMERGENDER,
			
			String cUSTOMEREMAIL,
			String cUSTOMERPHONENUM,
			String cUSTOMERADDRESSCODE1,
			String cUSTOMERADDRESS1,
			String cUSTOMERADDRESS2,
			
			String cUSTOMERACCOUNT,
			String rECOMMENDER,
			String cUSTOMERGRADE,
			String cUSTOMERCOUPLE,
			int cUSTOMERBALANCE) {
		super();
		CUSTOMERID = cUSTOMERID;
		CUSTOMERPASS = cUSTOMERPASS;
		CUSTOMERNAME = cUSTOMERNAME;
		CUSTOMERBIRTHDAY = cUSTOMERBIRTHDAY;
		CUSTOMERGENDER = cUSTOMERGENDER;
		CUSTOMEREMAIL = cUSTOMEREMAIL;
		CUSTOMERPHONENUM = cUSTOMERPHONENUM;
		CUSTOMERADDRESSCODE1 = cUSTOMERADDRESSCODE1;
		CUSTOMERADDRESS1 = cUSTOMERADDRESS1;
		CUSTOMERADDRESS2 = cUSTOMERADDRESS2;
		CUSTOMERACCOUNT = cUSTOMERACCOUNT;
		RECOMMENDER = rECOMMENDER;
		CUSTOMERGRADE = cUSTOMERGRADE;
		CUSTOMERCOUPLE = cUSTOMERCOUPLE;
		CUSTOMERBALANCE = cUSTOMERBALANCE;
	}
	
	public boolean matchPassword(String pwd) {
		return CUSTOMERPASS.equals(pwd);
	}
	
	public Customer() {
		
	}
	
}
