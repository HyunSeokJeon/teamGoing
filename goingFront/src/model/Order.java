package model;

import java.sql.Date;

public class Order {
	private int orderNumber;
	private Date orderDate;
	private int orderPrice;
	private String orderReceiverAdCode;
	private String orderReciverAddress1;
	private String orderReciverAddress2;
	private String orderAsk;
	private int orderCnt;
	private String customerID;
	private int productID;
	public Order(int orderNumber, Date orderDate, int orderPrice, String orderReceiverAdCode,
			String orderReciverAddress1, String orderReciverAddress2, String orderAsk, int orderCnt, String customerID,
			int productID) {
		super();
		this.orderNumber = orderNumber;
		this.orderDate = orderDate;
		this.orderPrice = orderPrice;
		this.orderReceiverAdCode = orderReceiverAdCode;
		this.orderReciverAddress1 = orderReciverAddress1;
		this.orderReciverAddress2 = orderReciverAddress2;
		this.orderAsk = orderAsk;
		this.orderCnt = orderCnt;
		this.customerID = customerID;
		this.productID = productID;
	}
	public int getOrderNumber() {
		return orderNumber;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public int getOrderPrice() {
		return orderPrice;
	}
	public String getOrderReceiverAdCode() {
		return orderReceiverAdCode;
	}
	public String getOrderReciverAddress1() {
		return orderReciverAddress1;
	}
	public String getOrderReciverAddress2() {
		return orderReciverAddress2;
	}
	public String getOrderAsk() {
		return orderAsk;
	}
	public int getOrderCnt() {
		return orderCnt;
	}
	public String getCustomerID() {
		return customerID;
	}
	public int getProductID() {
		return productID;
	}
	
	
	
}
