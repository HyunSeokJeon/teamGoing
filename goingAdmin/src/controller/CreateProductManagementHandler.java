package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.connection.ConnectionProvider;
import model.ProductType;
import mvc.command.CommandHandler;

public class CreateProductManagementHandler implements CommandHandler{

	private static final String FORM_VIEW = "/WEB-INF/view/management/product/createProduct.jsp";
	//제품생성서비스
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("get")) {
			return processForm(req, res);
		} else if(req.getMethod().equalsIgnoreCase("post")){
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	
	private String processForm(HttpServletRequest req, HttpServletResponse res) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null; 
		List<ProductType> pTypeList = new ArrayList<>();
		try(Connection conn = ConnectionProvider.getConnection()){
			pstmt = conn.prepareStatement("select * from producttype");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				pTypeList.add(new ProductType(rs.getInt("productTypeID"), rs.getString("productType")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			pstmt.close();
			rs.close();
		}
		
		req.setAttribute("productTypeList", pTypeList);
		
		return FORM_VIEW;
	}
	
	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws SQLException {
		PreparedStatement pstmt = null;
		String productTypeS = req.getParameter("productType");
		int productType = Integer.parseInt(productTypeS);
		String productName = req.getParameter("productName");
		String productPriceS = req.getParameter("productPrice");
		int productPrice = Integer.parseInt(productPriceS);
		try(Connection conn = ConnectionProvider.getConnection()){
			pstmt=conn.prepareStatement(
"insert into product values (12, ?, ?, ?,null,null,0,sysdate,null,null)");
			pstmt.setInt(1, productType);
			pstmt.setString(2, productName);
			pstmt.setInt(3, productPrice);
			
			int insertedCount=pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			pstmt.close();
		}
		
		return "/WEB-INF/view/management/product/createProduct.jsp";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
