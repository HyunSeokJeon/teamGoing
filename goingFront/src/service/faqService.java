package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import dao.FaqDao;
import jdbc.connection.ConnectionProvider;
import model.Faq;

public class faqService {

	private FaqDao faqDao = new FaqDao();
	
	public List<Faq> getFaqList(){		
		try(Connection conn = ConnectionProvider.getConnection()){
			List<Faq> faqList = faqDao.selectAll(conn);
			return faqList;			
		} catch(SQLException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
		
		
	}
	

