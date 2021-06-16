package dto;

import java.util.Date;

public class Prolist {
	
		private int productID;
		private int productTypeID;
		private String productName;
		private int productPrice;
		private String productDesc;
		private int productLove;
		private Date productSellStart;
		private Date productSellEnd;
		private String productSellYN;
		private String productImage;
		
		
		
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
		
}
