package controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.ws.util.StringUtils;

import model.Prolist;
import mvc.command.CommandHandler;
import service.ProlistService;

public class ProlistHandler implements CommandHandler {
	private ProlistService prolistService = new ProlistService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		List<Prolist> productListofType = new ArrayList<>();
		Map<Integer, List<Prolist>> productmap = prolistService.arrageProduct();
		
		String productTypeId = req.getParameter("productTypeId");
			
		
			if(productTypeId == null || productTypeId.isEmpty()) {
				for(Integer pdl : productmap.keySet()) {
					for(Prolist cp : productmap.get(pdl)) {
						productListofType.add(cp);
					}								
				}		
			}else {
				switch(productTypeId) {
				case "lowPrice" :
						return processArrangeLow(req, res);
				
				case "highPrice" :
						return processArrangeHigh(req, res);
				
				default : 
					int productTypeNum = Integer.parseInt(productTypeId);
					for(Integer pdl : productmap.keySet()) {
						if(pdl == productTypeNum) {
							productListofType.addAll(productmap.get(productTypeNum));
						}
					}
				}
			}
				req.setAttribute("productListofType", productListofType);
				return "/WEB-INF/view/prolist.jsp";
	}
	
	public String processArrangeLow(HttpServletRequest req, HttpServletResponse res) throws Exception{
		List<Prolist> productListofType = new ArrayList<>();
		List<Prolist> productList =  prolistService.arrageLowProduct(); //productList에 arrageLowProduct 메소드의 return 타입을 대입
		
		String productArrangeId = req.getParameter("productTypeId");
		
		if(productArrangeId.equals("lowPrice")) {
				for(Prolist x : productList) {
						productListofType.add(x);
				}
		}
		req.setAttribute("productListofType", productListofType);
		return "/WEB-INF/view/prolist.jsp";
	}
	
	public String processArrangeHigh(HttpServletRequest req, HttpServletResponse res) throws Exception{
		List<Prolist>productListofType = new ArrayList<>();
		List<Prolist> productList = prolistService.arrageHighProduct();
		
		String productArrangeId = req.getParameter("productTypeId");
		
		if(productArrangeId.equals("highPrice")) {
			for(Prolist x : productList) {
				productListofType.add(x);
			}
		}
		req.setAttribute("productListofType", productListofType);
		return "/WEB-INF/view/prolist.jsp";
	}
		
}
