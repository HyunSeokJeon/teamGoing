package org.going.product.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.going.customer.domain.CustomerVo;
import org.going.product.domain.ProductVo;
import org.going.product.domain.TypeVo;
import org.going.product.service.ProductListService;
import org.going.webF.util.MediaUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class ProductController {
	
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	
	@Inject
	ProductListService productListService;
	
	@RequestMapping(value="/prolist", method= {RequestMethod.GET, RequestMethod.POST})
	public String ListAll(Model model, String code) throws Exception {
		System.out.println("카카오톡 코드=" + code);
		List<TypeVo> pType = productListService.selectPType();
		ObjectMapper obm = new ObjectMapper();
		String jsonStr =obm.writeValueAsString(productListService.selectAll());
		model.addAttribute("productJson", jsonStr);
		model.addAttribute("productType", pType);
		model.addAttribute("productListofType", productListService.selectAll());
		return "/prolist";
	}
	
	@RequestMapping(value="/prolist/{productTypeId}", method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<List<ProductVo>> selectById(@PathVariable("productTypeId") Integer productTypeId) throws Exception{
		List<ProductVo> list = productListService.selectById(productTypeId);
		return  ResponseEntity.ok(list);
	}
	
	
	@RequestMapping(value = "/viewimg")
	public ResponseEntity<byte[]> displayFile(String fileName, HttpServletRequest req) throws Exception{
		
		InputStream in = null;
		ResponseEntity<byte[]> entity = null;
		
		log.info("file name : " + fileName);
		
		try {
			
			String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
			
			MediaType mType = MediaUtils.getMediaType(formatName);
			
			HttpHeaders headers = new HttpHeaders();
			
			File file = new File(uploadPath + fileName);
			if(!file.exists()) {
				String path = req.getSession().getServletContext().getRealPath("");
				file = new File(path + "/frontResource/dist/img/image-not-found.png");
			}
			in = new FileInputStream(file);
			
			if (mType != null) {
				headers.setContentType(mType);
			}else {
				fileName = fileName.substring(fileName.indexOf("_")+1);
				headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
				headers.add("Content-Disposition", "attachment; filename=\""+
						new String(fileName.getBytes("UTF-8"), "ISO-8859-1") + "\"");
			}
			
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		}finally {
			in.close();
		}
		return entity;
	}
	
	@RequestMapping(value = "/proDesc/{productID}", method=RequestMethod.POST)
	public String proDesc(@PathVariable("productID")Integer productID, Model model) throws Exception{
		ProductVo desc = productListService.selectProductId(productID);
		model.addAttribute("product", desc);
		return "productDes";
	}
	
	@RequestMapping(value = "/proDesc/{productID}", method=RequestMethod.GET)
	public String proDes(@PathVariable("productID")Integer productID, Model model, HttpServletRequest req) throws Exception{
		ProductVo desc = productListService.selectProductId(productID);
		boolean likeThisItem = false;
		if(req.getSession().getAttribute("authUser") != null) {
			CustomerVo user = (CustomerVo)req.getSession().getAttribute("authUser");
			likeThisItem = productListService.isLikeThisItem(productID, user.getCustomerId());
		}
		System.out.println(likeThisItem);
		model.addAttribute("likeYN", likeThisItem);
		model.addAttribute("product", desc);
		return "productDes";
	}
	
	
	@RequestMapping(value = "/prolist/{productTypeId}/{sort}", method = RequestMethod.POST)
	public String LowPrice(@RequestParam("productTypeId") int productTypeId, @RequestParam("sort") int sort, Model model) throws Exception {
		if(productTypeId==0) {
			List<ProductVo> noSort = productListService.selectAll();
			model.addAttribute("productListofType", noSort);
		}else {
			List<ProductVo> yesSort = productListService.selectByLowPrice(productTypeId);
			model.addAttribute("", yesSort);
		}
		
		
		return "prolist";
	}
	
	/*
	 * @RequestMapping(value="/prolist/{productTypeId}", method=RequestMethod.POST)
	 * 
	 * @ResponseBody public List<ProductVo> selectById(@PathVariable Integer
	 * productTypeId, Model model) throws Exception{
	 * System.out.println("id="+productTypeId); List<ProductVo> list =
	 * productListService.selectById(productTypeId);
	 * model.addAttribute("productListofType", list); System.out.println("List=" +
	 * list); return list;
	 * 
	 * }
	 */
	
	@RequestMapping(value="/product/productLove", method=RequestMethod.POST)
	@ResponseBody
	public String process(@RequestParam("pId")String productId, @RequestParam("customerid")String userId, @RequestParam("action")String action) throws Exception {
		productListService.productLove(productId, userId, action);
		return null;
	}
	
	
}
