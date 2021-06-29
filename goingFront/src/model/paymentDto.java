package model;

import java.util.Date;

public class paymentDto {
		int orderNumber;
		Date orderDate;
		int orderPrice;
		String name;
		String phoneNumber;
		String orderReciverAddress;
		String Email;
		String orderAsk;
		int orderCnt;
		
		
		
		public paymentDto() {
			
		}
		
		public paymentDto(String name, String phoneNumber, String orderReciverAddress, String orderAsk, String Email) {
			this.name = name;
			this.phoneNumber = phoneNumber;
			this.orderReciverAddress = orderReciverAddress;
			this.orderAsk = orderAsk;
			this.Email = Email;
		}
		
		public int getorderNumber() {
			return orderNumber;
			
		}
		
		public void setorderDate() {
			this.orderDate = orderDate;
			
		}
		
		public void getorderDate() {
			this.orderDate = orderDate;
			
		}
		
		public void setorderPrice() {
			this.orderPrice = orderPrice;
			
		}
		
		public int getorderPrice() {
			return orderPrice;
		}
		
		public void setName() {
			this.name = name;
		}
		
		public String getName() {
		return name;
		}
		
		public void setphoneNumber() {
			this.phoneNumber = phoneNumber;
		}
		
		public String getphoneNumber() {
			return phoneNumber;
		}
		
		public void setorderReciverAddress() {
			this.orderReciverAddress = orderReciverAddress;
		}
		
		public String getorderReciverAddress() {
		return orderReciverAddress;
		}
		
		public void setEmail() {
			this.Email = Email;
		}
		
		public String getEmail() {
			return Email;
		}
		
		public void setorderAsk() {
			this.orderAsk = orderAsk;
		}
		
		public String getorderAsk() {
			return orderAsk;
		}
		
		public int getorderCnt() {
			return orderCnt;
		}
}
