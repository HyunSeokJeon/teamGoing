package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import dao.CouponDao;
import dao.Memberdao;
import dao.OrderDao;
import jdbc.connection.ConnectionProvider;
import model.Order;

public class MypageService {
	
	private CouponDao couponDao = new CouponDao();
	private Memberdao memberDao = new Memberdao();
	private OrderDao orderDao = new OrderDao();
	
	public MypageInfo getMypageInfo(String userId) {
		//dao를 사용해서 정보수집 MypageInfo 객체에 넣는다.
		MypageInfo mypageInfo = null;
		try(Connection conn = ConnectionProvider.getConnection()){
			System.out.println("getMypageInfo-userID=" + userId);
			String grade = Memberdao.getGrade(conn, userId);
			int couponCount = couponDao.getAvailableCoupon(conn, userId);
			List<Order> orderList = orderDao.getOrderList(conn, userId);
			int ordercount = orderList.size();
			mypageInfo = new MypageInfo(grade, couponCount, orderList, ordercount);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return mypageInfo;
	}
	
}
