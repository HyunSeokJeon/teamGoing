package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.Memberdao;
import jdbc.connection.ConnectionProvider;
import model.Customer;

public class PaymentService {
		private Memberdao memberDao = new Memberdao();
		private Customer csr = new Customer();
		
		public Customer paymentInfo(String ui) throws SQLException {
			Connection conn = null;
			
				conn = ConnectionProvider.getConnection();
				Customer cus = memberDao.selectById(conn, ui);
				
				
				return cus;			
		}
}
