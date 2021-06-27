package services.coupon;

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

import dao.CouponDao;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import model.Coupon;
import model.CouponImg;


public class CouponService {
	
	private CouponDao couponDao = new CouponDao(); 

	
	public List<Coupon> getCouponList() {
		try(Connection conn = ConnectionProvider.getConnection()){
			List<Coupon> couponList = couponDao.selectAll(conn);
			return couponList;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(); 
		}
		
	}
	
}
	/*
	public void createCoupon(HttpServletRequest req) throws IOException {
	
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
		
		// 상품ID : 시퀀스이용
		// ** Spring 환경에서 바꿔야할 코드
		String uploadPath = req.getRealPath("upload");
//		String uploadPath = "C:\\temp";
		
		uploadPath = uploadPath.replaceAll("goingAdmin", "goingFront");
		int size = 10 * 1024 * 1024;
		MultipartRequest multi = new MultipartRequest(req, uploadPath, size, "utf-8",
				new DefaultFileRenamePolicy());
		
		//쿠폰명
		String couponName = multi.getParameter("couponName");

		//쿠폰설명
		String couponDesc = null;

		//쿠폰할인
		int couponDiscount = Integer.parseInt(multi.getParameter("couponDiscount"));
		
	
		// 쿠폰만료기간 
		int couponPeriode1 = Integer.parseInt(multi.getParameter("couponPeriode1"));
		int couponPeriode2 = Integer.parseInt(multi.getParameter("couponPeriode2"));
		int couponPeriode3 = Integer.parseInt(multi.getParameter("couponPeriode3"));
		Date couponVaild = Date.valueOf(couponPeriode1+"-"+couponPeriode2+"-"+couponPeriode3);
		
		//쿠폰 이미지
		String couponImage = null;
		
		Enumeration files = multi.getFileNames();
		String[] fileArray = new String[7];
		String file, filename, origfilename;
		for(int i=0; i<7; i++) {
			file = (String) files.nextElement();
			if(file.equalsIgnoreCase("couponImg")) {
				couponImage = multi.getFilesystemName(file);
			}else if(file.equalsIgnoreCase("couponDesc")) {
				couponDesc=multi.getFilesystemName(file);
			}else {
				fileArray[i] = file;
			}
		}
			
		}
	

	 	Coupon newCoupon
		= new Coupon(	
						
					  	couponName,
					  	couponDesc,
					  	couponDiscount,
					    couponVaild
				);
		
		Connection conn = null;
	
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			int lastCouponId = couponDao.createCoupon(conn, newCoupon);
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


	public Coupon getOneItem(HttpServletRequest req, HttpServletResponse res) throws SQLException {
		int couponId = Integer.parseInt(req.getParameter("couponId"));
		Coupon result = null;
		try (Connection conn = ConnectionProvider.getConnection()){
			result = couponDao.getSelectById(conn, couponId);
		}
		return result;
	}
}
*/
