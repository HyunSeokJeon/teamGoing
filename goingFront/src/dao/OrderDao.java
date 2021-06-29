package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Order;

public class OrderDao {
	public int getOrderNumber(Connection conn, String userId) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		pstmt = conn.prepareStatement("select count(orderNumber) from orderlist where customerid=?");
		pstmt.setString(1, userId);
		rs = pstmt.executeQuery();
		int result = 0;
		if(rs.next()){
			result = rs.getInt(1);
		}
		
		return result;
	}

	public List<Order> getOrderList(Connection conn, String userId) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		pstmt = conn.prepareStatement("select * from orderlist where customerid=?");
		pstmt.setString(1, userId);
		rs = pstmt.executeQuery();
		List<Order> orderList = new ArrayList<Order>();
		while(rs.next()) {
			orderList.add(convertOrder(rs));
		}
		return orderList;
	}
	
	private Order convertOrder(ResultSet rs) throws SQLException {
		Order order = new Order(
				rs.getInt("orderNumber"),
				rs.getDate("orderDate"),
				rs.getInt("orderPrice"),
				rs.getString("orderReceiverAdCode"),
				rs.getString("orderReciverAddress1"),
				rs.getString("orderReciverAddress2"),
				rs.getString("orderAsk"),
				rs.getInt("orderCnt"),
				rs.getString("customerID"),
				rs.getInt("productID")
				);
		return order;
	}
}
