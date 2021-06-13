package services.product;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDao;
import jdbc.connection.ConnectionProvider;
import model.Product;

public class ProductService {
	
	private ProductDao productDao = new ProductDao(); 
	
	public List<Product> getProductList() {
		try(Connection conn = ConnectionProvider.getConnection()){
			List<Product> productList = productDao.selectAll(conn);
			return productList;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(); 
		}
		
	}
	
	public void createProduct(HttpServletRequest req) throws SQLException {
		/*
		 * 상품ID
		 * 상품종류ID
		 * 상품명
		 * 상품가격
		 * 상품 이미지
		 * 상품 정보
		 * 상품 좋아요
		 * 판매시작일자
		 * 판매종료일자
		 * 상품게시여부
		 */
		// 상품ID : 시퀀스이용
		int productType = Integer.parseInt(req.getParameter("productType")); // 상품종류ID
		String productName = req.getParameter("productName"); // 상품명
		int productPrice = Integer.parseInt(req.getParameter("productPrice")); // 상품가격 
		String productImage = req.getParameter("productImg");
		String productDesc = req.getParameter("productDesc");
		int productLove = 0; // 상품좋아요 초기값 0
		// 판매시작일자 초기값 현재날짜
		// 판매종료일자 초기값 null
		String productSellYN = "0"; // 상품게시여부 초기값 '0'
		
		Product newProduct = new Product(productType, productName, productPrice, productImage, productDesc, productLove, productSellYN);
		try (Connection conn = ConnectionProvider.getConnection()){
			int result = productDao.createProduct(conn, newProduct);
		}
	}

	public Product getOneItem(HttpServletRequest req, HttpServletResponse res) throws SQLException {
		int productId = Integer.parseInt(req.getParameter("productId"));
		Product result = null;
		try (Connection conn = ConnectionProvider.getConnection()){
			result = productDao.getSelectById(conn, productId);
		}
		return result;
	}
}
