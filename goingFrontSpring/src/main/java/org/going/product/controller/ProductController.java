package org.going.product.controller;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.commons.io.IOUtils;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class ProductController {
	
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	
	@Inject
	ProductListService productListService;
	
	@RequestMapping(value="/prolist", method=RequestMethod.GET)
	public String ListAll(Model model) throws Exception {
		List<TypeVo> pType = productListService.selectPType();
		model.addAttribute("productType", pType);
		model.addAttribute("productListofType", productListService.selectAll());
		System.out.println(productListService.selectAll());
		System.out.println("상품타입출력="+pType);
		return "/prolist";
	}
	
	@RequestMapping(value="/prolist/{productTypeId}", method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<List<ProductVo>> selectById(@PathVariable("productTypeId") Integer productTypeId) throws Exception{
		System.out.println("productTypeId="+productTypeId);
		
		List<ProductVo> list = productListService.selectById(productTypeId);
		System.out.println("List="+list);
		return  ResponseEntity.ok(list);
		
	}
	
	
	@RequestMapping(value = "/viewimg")
	public ResponseEntity<byte[]> displayFile(String fileName) throws Exception{
		
		InputStream in = null;
		ResponseEntity<byte[]> entity = null;
		
		log.info("file name : " + fileName);
		
		try {
			
			String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
			
			MediaType mType = MediaUtils.getMediaType(formatName);
			
			HttpHeaders headers = new HttpHeaders();
			
			in = new FileInputStream(uploadPath + fileName);
			
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
	
	
	
}