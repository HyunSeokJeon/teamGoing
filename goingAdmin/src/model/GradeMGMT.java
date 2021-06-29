package model;

public class GradeMGMT {
	private String customerGrade;
	private Double customerBenefits;
	public GradeMGMT(String customerGrade, Double customerBenefits) {
		super();
		this.customerGrade = customerGrade;
		this.customerBenefits = customerBenefits;
	}
	public String getCustomerGrade() {
		return customerGrade;
	}
	public Double getCustomerBenefits() {
		return customerBenefits;
	}
	
}
