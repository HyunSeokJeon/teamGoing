package service;

import java.util.List;

import model.Order;
import model.Prolist;


public class MypageInfo {
	private String grade;
	private int couponCount;
	private List<Order> orderList;
	private int orderCount;
	
	public MypageInfo(String grade, int couponCount, List<Order> orderList, int orderCount) {
		super();
		this.grade = grade;
		this.couponCount = couponCount;
		this.orderList = orderList;
		this.orderCount = orderCount;
	}
	public String getGrade() {
		return grade;
	}
	public int getCouponCount() {
		return couponCount;
	}
	public List<Order> getOrderList() {
		return orderList;
	}
	public int getOrderCount() {
		return orderCount;
	}
	
	
	
	
}
