package service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.connection.ConnectionProvider;
import dao.Memberdao;
import model.Customer;

public class LoginService {
	
	private Memberdao memberDao = new Memberdao();
	
	public User login(String CUSTOMERID, String CUSTOMERPASS) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			Customer member = memberDao.selectById(conn, CUSTOMERID);
			if (member == null) {
				throw new LoginFailException();
			}
			if (!member.matchPassword(CUSTOMERPASS)) {
				throw new LoginFailException();
			}
			return new User(member.getCUSTOMERID(), member.getCUSTOMERNAME());
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
//	public User login(String CUSTOMERID, String CUSTOMERPASS) {
//		try (Connection conn = ConnectionProvider.getConnection()) {
//			Customer customer = memberDao.selectById(conn, CUSTOMERID);
//			if (customer == null) {
//				throw new LoginFailException();
//			}
//			if (!customer.matchPassword(CUSTOMERPASS)) {
//				throw new LoginFailException();
//			}
//			return new User(customer.getCUSTOMERID(), customer.getCUSTOMERNAME());
//		} catch (SQLException e) {
//			throw new RuntimeException(e);
//		}
//	}
}
