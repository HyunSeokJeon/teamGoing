package controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import service.JoinService;

public class idCheckHandler implements CommandHandler{
	
	JoinService js = new JoinService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String inputId = req.getParameter("inputId");
		boolean result = js.getIdCheckResult(inputId);
		PrintWriter out = res.getWriter();
		if(result) {
			out.write("true");
		} else {
			out.write("false");
		}
		
		return null;
	}

}
