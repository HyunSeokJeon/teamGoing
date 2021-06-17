package model;

public class ProductType {
	private int productTypeId;
	private String productType;
	
	public ProductType(int productTypeID, String productType) {
		this.productTypeId = productTypeID;
		this.productType = productType;
	}

	public int getProductTypeId() {
		return productTypeId;
	}

	public String getProductType() {
		return productType;
	}
	
	
}
