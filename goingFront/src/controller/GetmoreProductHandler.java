package controller;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import model.Prolist;
import mvc.command.CommandHandler;
import service.ProlistService;

public class GetmoreProductHandler implements CommandHandler{

	private ProlistService ps = new ProlistService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Prolist pl = ps.getProduct("2");
		Map<String, String> pMap = pl.convertMap();
		JSONObject jo = new JSONObject(pMap);
		res.setContentType("application/json");
		res.setCharacterEncoding("UTF-8");
		PrintWriter out = res.getWriter();
		out.print(jo.toJSONString());
		out.flush();
		return null;
	}
	
}
