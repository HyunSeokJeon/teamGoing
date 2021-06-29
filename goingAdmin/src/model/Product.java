package model;

import java.sql.Date;

public class Product {
	private Integer productID;
	private Integer productType;
	private String productName;
	private Integer productPrice;
	private String productImage;
	private String productDesc;
	private int productPlaytime;
	private int productAgeLimit;
	private Integer productLove;
	private Date productSellStart;
	private Date productSellEnd;
	private Date productPeriods;
	private Date productPeriode;
	private Date productRegdate;
	private String productSellYN;
	
	//상품등록 생성자
	
	
	
	public Product(Integer productType, String productName, Integer productPrice, String productImage,
			String productDesc, int productPlaytime, int productAgeLimit, Integer productLove, Date productSellStart,
			Date productSellEnd, Date productPeriods, Date productPeriode, String productSellYN) {
		super();
		this.productType = productType;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productImage = productImage;
		this.productDesc = productDesc;
		this.productPlaytime = productPlaytime;
		this.productAgeLimit = productAgeLimit;
		this.productLove = productLove;
		this.productSellStart = productSellStart;
		this.productSellEnd = productSellEnd;
		this.productPeriods = productPeriods;
		this.productPeriode = productPeriode;
		this.productSellYN = productSellYN;
	}
	public Product(Integer productID, Integer productType, String productName, Integer productPrice,
			String productImage, String productDesc, int productPlaytime, int productAgeLimit, Integer productLove,
			Date productSellStart, Date productSellEnd, Date productPeriods, Date productPeriode, Date productRegdate,
			String productSellYN) {
		super();
		this.productID = productID;
		this.productType = productType;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productImage = productImage;
		this.productDesc = productDesc;
		this.productPlaytime = productPlaytime;
		this.productAgeLimit = productAgeLimit;
		this.productLove = productLove;
		this.productSellStart = productSellStart;
		this.productSellEnd = productSellEnd;
		this.productPeriods = productPeriods;
		this.productPeriode = productPeriode;
		this.productRegdate = productRegdate;
		this.productSellYN = productSellYN;
	}
	
	//상품수정 생성자
	
	public Product(Integer productID, Integer productType, String productName, Integer productPrice,
			int productPlaytime, int productAgeLimit, Date productSellStart, Date productSellEnd, Date productPeriods,
			Date productPeriode, String productSellYN) {
		super();
		this.productID = productID;
		this.productType = productType;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productPlaytime = productPlaytime;
		this.productAgeLimit = productAgeLimit;
		this.productSellStart = productSellStart;
		this.productSellEnd = productSellEnd;
		this.productPeriods = productPeriods;
		this.productPeriode = productPeriode;
		this.productSellYN = productSellYN;
	}
	
	public Integer getProductID() {
		return productID;
	}
	
	public Integer getProductType() {
		return productType;
	}
	public String getProductName() {
		return productName;
	}
	public Integer getProductPrice() {
		return productPrice;
	}
	public String getProductImage() {
		return productImage;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public int getProductPlaytime() {
		return productPlaytime;
	}
	public int getProductAgeLimit() {
		return productAgeLimit;
	}
	public Integer getProductLove() {
		return productLove;
	}
	public Date getProductSellStart() {
		return productSellStart;
	}
	public Date getProductSellEnd() {
		return productSellEnd;
	}
	public Date getProductPeriods() {
		return productPeriods;
	}
	public Date getProductPeriode() {
		return productPeriode;
	}
	public Date getProductRegdate() {
		return productRegdate;
	}
	public String getProductSellYN() {
		return productSellYN;
	}
	
	
	

	
}
