package model;

public class Product {
	private Integer productID;
	private Integer productType;
	private String productName;
	private Integer productPrice;
	private String productImage;
	private String productDesc;
	private Integer productLove;
	
	private String productSellStart;
	private String productSellEnd;
	private String productSellYN;
	
	
	
	
	public Product(Integer productType, String productName, int productPrice, String productImage,
			String productDesc, int productLove, String productSellYN) {
		super();
		this.productType = productType;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productImage = productImage;
		this.productDesc = productDesc;
		this.productLove = productLove;
		this.productSellYN = productSellYN;
	}



	public Product(Integer productID, Integer productType, String productName, Integer productPrice,
			String productImage, String productDesc, Integer productLove, String productSellStart,
			String productSellEnd, String productSellYN) {
		super();
		this.productID = productID;
		this.productType = productType;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productImage = productImage;
		this.productDesc = productDesc;
		this.productLove = productLove;
		this.productSellStart = productSellStart;
		this.productSellEnd = productSellEnd;
		this.productSellYN = productSellYN;
	}
	
	public Integer getProductID() {
		return productID;
	}
	public void setProductID(Integer productID) {
		this.productID = productID;
	}
	public Integer getProductType() {
		return productType;
	}
	public void setProductType(Integer productType) {
		this.productType = productType;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Integer getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(Integer productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
	public Integer getProductLove() {
		return productLove;
	}
	public void setProductLove(Integer productLove) {
		this.productLove = productLove;
	}
	public String getProductSellStart() {
		return productSellStart;
	}
	public void setProductSellStart(String productSellStart) {
		this.productSellStart = productSellStart;
	}
	public String getProductSellEnd() {
		return productSellEnd;
	}
	public void setProductSellEnd(String productSellEnd) {
		this.productSellEnd = productSellEnd;
	}
	public String getProductSellYN() {
		return productSellYN;
	}
	public void setProductSellYN(String productSellYN) {
		this.productSellYN = productSellYN;
	}

	
}
