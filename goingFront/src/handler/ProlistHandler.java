package handler;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Prolist;
import mvc.command.CommandHandler;
import service.ProlistService;

public class ProlistHandler implements CommandHandler {
			private ProlistService prolistService = new ProlistService();
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
					//String rq = req.getParameter("productTypeID");
					//int typeNum = Integer.parseInt(rq);
					List<Prolist> productListofType = new ArrayList<>();
										
					Map<Integer, List<Prolist>> productmap = prolistService.arrageProduct();
					
					for(Integer pdl : productmap.keySet()) {
								for( Prolist cp : productmap.get(pdl)) {
									productListofType.add(cp);
								}
					}
					req.setAttribute("productListofType", productListofType);
					return "/WEB-INF/view/prolist.jsp";

				
	}
	
}
