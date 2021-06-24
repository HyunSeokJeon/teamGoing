package service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.FaqDao;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import model.Faq;
import model.Product;

public class FaqService {

	private FaqDao faqDao = new FaqDao();
	
	public List<Faq> getFaqList(){		
		Faq a[] = null;	
		try(Connection conn = ConnectionProvider.getConnection()){
			int size = faqDao.selectcount(conn);
			List<Faq> faqList = faqDao.selectAll(conn);
			return faqList;			
		} catch(SQLException e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
	
	public void createFaq(HttpServletRequest req) throws SQLException {
		String faqtitle = req.getParameter("FAQ_Q");
		String faqcontents = req.getParameter("FAQ_A");
		try(Connection conn = ConnectionProvider.getConnection()){
			faqDao.insert(conn, faqtitle, faqcontents);			
			
		}		
	}
	

	
}









