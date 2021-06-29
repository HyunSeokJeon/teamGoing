package service;

import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import dao.Memberdao;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import model.Customer;

public class JoinService {

	private Memberdao memberDao = new Memberdao();

	private void join(HttpServletRequest req) throws SQLException, ParseException {
		String customerid = req.getParameter("id");
		String customerpassword = req.getParameter("password");
		String customerrepassword = req.getParameter("repassword");
		String customername = req.getParameter("name");

		String from = req.getParameter("birthday");
		Date customerbirthday1 = Date.valueOf(from);

		String customergender = req.getParameter("gender");
		String customeremail = req.getParameter("email");
		String customerphonenum = req.getParameter("phonenum");
		String customeraddresscod1 = req.getParameter("addresscod1");
		String customeraddress1 = req.getParameter("address1");

		String customeraddress2 = req.getParameter("address2");
		String customerrecommender = req.getParameter("recommender");

		try (Connection conn = ConnectionProvider.getConnection()) {
			memberDao.insert(conn,
					new Customer(customerid, customerpassword, customername, customerbirthday1, customergender,

							customeremail, customerphonenum, customeraddresscod1, customeraddress1, customeraddress2,

							null, // account
							customerrecommender, null, // grade
							null, // couple
							0)); // balance
		}
	}

	public void joinlogic(JoinRequest joinReq) {
			Connection conn = null;
			try {
				conn = ConnectionProvider.getConnection();
				conn.setAutoCommit(false);

				Customer customer = memberDao.selectById(conn, joinReq.getId());
				if (customer != null) {
					JdbcUtil.rollback(conn);
					throw new DuplicateIdException();
				}
				
//				memberDao.insert(conn, new Customer(joinReq.getId(),joinReq.getPassword(),joinReq.getName(),joinReq.getBirthday(), joinReq.getGender(), joinReq.getEmail(), joinReq.getPhonenum(), 
//						joinReq.getAddresscod1(), joinReq.getAddress1(), joinReq.getAddress2(), getCUSTOMERACCOUNT(), joinReq.getRecommender(),getCUSTOMERGRADE(),getCUSTOMERCOUPLE(),getCUSTOMERBALANCE()));

//				memberDao.insert(conn, new Customer(getCUSTOMERID(),getCUSTOMERPASS(),getCUSTOMERNAME(),getCUSTOMERBIRTHDAY(), getCUSTOMERGENDER(), getCUSTOMEREMAIL(), getCUSTOMERPHONENUM(), 
//						getCUSTOMERADDRESSCODE1(), getCUSTOMERADDRESS1(), getCUSTOMERADDRESS2(), getCUSTOMERACCOUNT(), getRECOMMENDER(),getCUSTOMERGRADE(),getCUSTOMERCOUPLE(),getCUSTOMERBALANCE));
				
				memberDao.insert(conn, new Customer(joinReq.getId(),
													joinReq.getRepassword(),
													joinReq.getName(),
													joinReq.getBirthday(),
													joinReq.getGender(),
													
													joinReq.getEmail(),
													joinReq.getPhonenum(),
													joinReq.getAddresscod1(),
													joinReq.getAddress1(),
													joinReq.getAddress2(),
													
													null,
													joinReq.getRecommender(), 
													"level1",
													null,
													0));
				
				conn.commit();
			} catch (SQLException e) {
				JdbcUtil.rollback(conn);
				throw new RuntimeException(e);
			} finally {
				JdbcUtil.close(conn);
			}
		}

	public boolean getIdCheckResult(String inputId) throws SQLException {
		Set<String> idSet = null;
		try(Connection conn = ConnectionProvider.getConnection()){
			idSet = memberDao.selectCustomerIdByAll(conn);
		}
		
		int before = idSet.size();
		idSet.add(inputId);
		int after = idSet.size();
		if(before == after) {
			return false;
		}else {
			return true;
		}
	}

}
