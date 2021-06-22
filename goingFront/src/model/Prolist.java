package model;

import java.sql.Date;

public class Prolist {
	
	private Integer productID;
	private Integer productTypeID;
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
		
	
	private String productType;
	
		public Prolist() {
			
		}
		
		public Prolist(int productID, int productTypeID, String productName, int productPrice, String productDesc,
				int productLove, Date productSellStart, Date productSellEnd, String productSellYN,
				String productImage) {
			super();
			this.productID = productID;
			this.productTypeID = productTypeID;
			this.productName = productName;
			this.productPrice = productPrice;
			this.productDesc = productDesc;
			this.productLove = productLove;
			this.productSellStart = productSellStart;
			this.productSellEnd = productSellEnd;
			this.productSellYN = productSellYN;
			this.productImage = productImage;
		}
		
		
		
		public Prolist(Integer productID, Integer productTypeID, String productName, Integer productPrice,
				String productImage, String productDesc, int productPlaytime, int productAgeLimit, Integer productLove,
				Date productSellStart, Date productSellEnd, Date productPeriods, Date productPeriode,
				Date productRegdate, String productSellYN) {
			super();
			this.productID = productID;
			this.productTypeID = productTypeID;
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

		public int getProductID() {
			return productID;
		}
		public void setProductID(int productID) {
			this.productID = productID;
		}
		public int getProductTypeID() {
			return productTypeID;
		}
		public void setProductTypeID(int productTypeID) {
			this.productTypeID = productTypeID;
		}
		public String getProductName() {
			return productName;
		}
		public void setProductName(String productName) {
			this.productName = productName;
		}
		public int getProductPrice() {
			return productPrice;
		}
		public void setProductPrice(int productPrice) {
			this.productPrice = productPrice;
		}
		public String getProductDesc() {
			return productDesc;
		}
		public void setProductDesc(String productDesc) {
			this.productDesc = productDesc;
		}
		public int getProductLove() {
			return productLove;
		}
		public void setProductLove(int productLove) {
			this.productLove = productLove;
		}
		public Date getProductSellStart() {
			return productSellStart;
		}
		public void setProductSellStart(Date productSellStart) {
			this.productSellStart = productSellStart;
		}
		public Date getProductSellEnd() {
			return productSellEnd;
		}
		public void setProductSellEnd(Date productSellEnd) {
			this.productSellEnd = productSellEnd;
		}
		public String getProductSellYN() {
			return productSellYN;
		}
		public void setProductSellYN(String productSellYN) {
			this.productSellYN = productSellYN;
		}
		public String getProductImage() {
			return productImage;
		}
		public void setProductImage(String productImage) {
			this.productImage = productImage;
		}

		public int getProductPlaytime() {
			return productPlaytime;
		}

		public int getProductAgeLimit() {
			return productAgeLimit;
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
		
		public String getProductType() {
			return productType;
		}

		public void setProductType(String productType) {
			this.productType = productType;
		}

		
}
