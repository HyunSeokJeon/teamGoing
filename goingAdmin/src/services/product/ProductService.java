package services.product;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.ProductDao;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import model.Product;
import model.ProductImg;

public class ProductService {
	
	private ProductDao productDao = new ProductDao(); 
	private FileService fs = new FileService();
	
	public List<Product> getProductList() {
		try(Connection conn = ConnectionProvider.getConnection()){
			List<Product> productList = productDao.selectAll(conn);
			return productList;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(); 
		}
		
	}
	
	public void createProduct(HttpServletRequest req) throws IOException {
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
		String uploadPath = req.getRealPath("upload");
		int size = 10 * 1024 * 1024;
		MultipartRequest multi = new MultipartRequest(req, uploadPath, size, "utf-8",
				new DefaultFileRenamePolicy());
		
		
		int productType = Integer.parseInt(multi.getParameter("productType")); // 상품종류ID
		String productName = multi.getParameter("productName"); // 상품명
		int productPrice = Integer.parseInt(multi.getParameter("productPrice")); // 상품가격 
		String productImage = null;
		String productDesc = null;
		int productLove = 0; // 상품좋아요 초기값 0
		// 판매시작일자 초기값 현재날짜
		// 판매종료일자 초기값 null
		String productSellYN = "0"; // 상품게시여부 초기값 '0'
		
		Enumeration files = multi.getFileNames();
		String[] fileArray = new String[7];
		String file, filename, origfilename;
		for(int i=1; i<5; i++) {
			file = (String) files.nextElement();
			System.out.println(file);
			if(file.equalsIgnoreCase("productImg")) {
				productImage = file;
			}else if(file.equalsIgnoreCase("productDesc")) {
				productDesc=file;
			}else {
				fileArray[i] = file;
			}
			
			
		}
		System.out.println(multi.getFilesystemName(productImage));
		Product newProduct = new Product(productType, productName, productPrice,
				multi.getFilesystemName(productImage), multi.getFilesystemName(productDesc), productLove, productSellYN);
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			int lastProductId = productDao.createProduct(conn, newProduct);
			fs.uploadFile(multi, conn, fileArray, lastProductId);
			conn.rollback();
		}catch (SQLException e) {
			JdbcUtil.rollback(conn);
			e.getStackTrace();
		} catch (RuntimeException e) {
			JdbcUtil.rollback(conn);
			e.getStackTrace();
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
