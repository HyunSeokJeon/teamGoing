package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Prolist;
import mvc.command.CommandHandler;
import service.MainService;

public class MainHandler implements CommandHandler{
	
	MainService mainService = new MainService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		List<Prolist> threeDaysleftList = new ArrayList<Prolist>();
 		List<Prolist> top3list = new ArrayList<Prolist>();
 		
 		threeDaysleftList = mainService.get7Daysleft();
		top3list = mainService.getTop3List();
		req.setAttribute("top3itmes", top3list);
		return "/WEB-INF/view/main.jsp";
	}
	
}
