package services.product;

import java.util.ArrayList;

import model.Product;

public class ProductList {
	private ArrayList<Product> productList = new ArrayList<>();

	public ArrayList<Product> getProductList() {
		return productList;
	}

	public void setProductList(ArrayList<Product> productList) {
		this.productList = productList;
	}
	
}
