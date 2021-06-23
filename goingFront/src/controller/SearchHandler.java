package controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Prolist;
import mvc.command.CommandHandler;
import service.ProlistService;
import service.SearchService;

public class SearchHandler implements CommandHandler {
		private SearchService searchService = new SearchService();
//		private ProlistService prolistService = new ProlistService();

		@Override
		public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
			
			String Keyword = req.getParameter("Keyword");
			
			List<Prolist> searchPro = new ArrayList<>();
			List<Prolist> searchKey = searchService.searchKey(Keyword);
			if(Keyword == null || Keyword.isEmpty()) {
					return "/WEB-INF/view/main.jsp";
				}else if(Keyword != null){
					for(Prolist a : searchKey) {
						searchPro.add(a);
					}
				}
			req.setAttribute("Keyword", searchPro);
			return "/WEB-INF/view/prolistSearch.jsp";
		}
		
		
//		public String processForm(HttpServletRequest req, HttpServletResponse res) throws Exception {
//			
//		}
//			
//		public String processSubmit(HttpServletRequest req, HttpServletResponse res) throws Exception {
//			
//		}
//		
}
