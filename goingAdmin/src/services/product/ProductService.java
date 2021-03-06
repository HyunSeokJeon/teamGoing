package services.product;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
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
		// ** Spring 환경에서 바꿔야할 코드
		String uploadPath = req.getRealPath("upload");
//		String uploadPath = "C:\\temp";
		
		uploadPath = uploadPath.replaceAll("goingAdmin", "goingFront");
		int size = 10 * 1024 * 1024;
		MultipartRequest multi = new MultipartRequest(req, uploadPath, size, "utf-8",
				new DefaultFileRenamePolicy());
		
		//상품종류
		int productType = Integer.parseInt(multi.getParameter("productType"));
		
		//상품명
		String productName = multi.getParameter("productName");
		
		//상품가격
		int productPrice = Integer.parseInt(multi.getParameter("productPrice"));
		
		//상품이미지
		String productImage = null;
		
		//상품정보
		String productDesc = null;
		
		//상품 상영 시간(분)
		int productPlaytime = Integer.parseInt(multi.getParameter("productPlaytime"));
		
		//상품(공연)연령제한
		int productAgeLimit = Integer.parseInt(multi.getParameter("productAgeLimit"));
		
		//상품좋아요
		int productLove = 0;
		
		// 판매시작일자
		int productSellStart1 = Integer.parseInt(multi.getParameter("productSellStart1"));
		int productSellStart2 = Integer.parseInt(multi.getParameter("productSellStart2"));
		int productSellStart3 = Integer.parseInt(multi.getParameter("productSellStart3"));
		Date productsellStart = Date.valueOf(productSellStart1+"-"+productSellStart2+"-"+productSellStart3);
		
		// 판매종료일자
		int productSellEnd1 = Integer.parseInt(multi.getParameter("productSellEnd1"));
		int productSellEnd2 = Integer.parseInt(multi.getParameter("productSellEnd2"));
		int productSellEnd3 = Integer.parseInt(multi.getParameter("productSellEnd3"));
		Date productSellEnd = Date.valueOf(productSellEnd1+"-"+productSellEnd2+"-"+productSellEnd3);
		
		// 상품기간시작 - 공연기간
		int productPeriods1 = Integer.parseInt(multi.getParameter("productPeriods1"));
		int productPeriods2 = Integer.parseInt(multi.getParameter("productPeriods2"));
		int productPeriods3 = Integer.parseInt(multi.getParameter("productPeriods3"));
		Date productPeriods = Date.valueOf(productPeriods1+"-"+productPeriods2+"-"+productPeriods3);
		
		// 상품기간시작 - 공연기간
		int productPeriode1 = Integer.parseInt(multi.getParameter("productPeriode1"));
		int productPeriode2 = Integer.parseInt(multi.getParameter("productPeriode2"));
		int productPeriode3 = Integer.parseInt(multi.getParameter("productPeriode3"));
		Date productPeriode = Date.valueOf(productPeriode1+"-"+productPeriode2+"-"+productPeriode3);
		
		String productSellYN = multi.getParameter("productSellYN"); // 상품게시여부 초기값 '0'
		
		Enumeration files = multi.getFileNames();
		String[] fileArray = new String[7];
		String file, filename, origfilename;
		for(int i=0; i<7; i++) {
			file = (String) files.nextElement();
			if(file.equalsIgnoreCase("productImg")) {
				productImage = multi.getFilesystemName(file);
			}else if(file.equalsIgnoreCase("productDesc")) {
				productDesc=multi.getFilesystemName(file);
			}else {
				fileArray[i] = file;
			}
			
			
		}
		Product newProduct
		= new Product(	productType,
					  	productName,
					  	productPrice,
					  	productImage,
					  	productDesc,
					  	productPlaytime,
					  	productAgeLimit,
					  	productLove,
					  	productsellStart,
					  	productSellEnd,
					  	productPeriods,
					  	productPeriode,
					  	productSellYN
				);
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			int lastProductId = productDao.createProduct(conn, newProduct);
			fs.uploadFile(multi, conn, fileArray, lastProductId);
			conn.commit();
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

	public void modifyProduct(HttpServletRequest req) throws SQLException {
		String productId = req.getParameter("productId");
		String productType = req.getParameter("productType");
		String productName = req.getParameter("productName");
		String productPrice = req.getParameter("productPrice");
		String productPlaytime = req.getParameter("productPlaytime");
		String productAgeLimit = req.getParameter("productAgeLimit");
		
		String productSellStart1 = req.getParameter("productSellStart1");
		String productSellStart2 = req.getParameter("productSellStart2");
		String productSellStart3 = req.getParameter("productSellStart3");
		
		Date productSellStart 
		= new Date(Integer.parseInt(productSellStart1), Integer.parseInt(productSellStart2), Integer.parseInt(productSellStart3));
		
		String productSellEnd1 = req.getParameter("productSellEnd1");
		String productSellEnd2 = req.getParameter("productSellEnd2");
		String productSellEnd3 = req.getParameter("productSellEnd3");
		
		Date productSellEnd 
		= new Date(Integer.parseInt(productSellEnd1), Integer.parseInt(productSellEnd2), Integer.parseInt(productSellEnd3));
		
		String productPeriods1 = req.getParameter("productPeriods1");
		String productPeriods2 = req.getParameter("productPeriods2");
		String productPeriods3 = req.getParameter("productPeriods3");
		
		Date productPeriods 
		= new Date(Integer.parseInt(productPeriods1), Integer.parseInt(productPeriods2), Integer.parseInt(productPeriods3));
		
		
		String productPeriode1 = req.getParameter("productPeriode1");
		String productPeriode2 = req.getParameter("productPeriode2");
		String productPeriode3 = req.getParameter("productPeriode3");
		
		Date productPeriode 
		= new Date(Integer.parseInt(productPeriode1), Integer.parseInt(productPeriode2), Integer.parseInt(productPeriode3));
		
		
		
		String productSellYN = req.getParameter("productSellYN");
		
		Product product = new Product(	Integer.parseInt(productId),
				Integer.parseInt(productType),
				productName,
				Integer.parseInt(productPrice),
				Integer.parseInt(productPlaytime),
				Integer.parseInt(productAgeLimit),
				productSellStart,
				productSellEnd,
				productPeriods,
				productPeriode,
				productSellYN);
		
		try(Connection conn = ConnectionProvider.getConnection()){
			productDao.update(conn, product);
		}
	}
	
	
}
