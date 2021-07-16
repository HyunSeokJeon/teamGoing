package org.going.product.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.commons.io.IOUtils;
import org.going.product.domain.ProductVO;
import org.going.product.service.ProductService;
import org.going.productType.service.ProductTypeService;
import org.going.web.util.MediaUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/manage/*")
@Log4j
public class ProductController {
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@Inject
	ProductTypeService typeService;
	
	@Inject
	ProductService service;
	
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String listRead(Model model) throws Exception {
		List<ProductVO> voList = service.getProductList();
		System.out.println("asdfasdfasdf");
		log.info(voList);
		model.addAttribute("productList", voList);
		return "/product/productMGMT";
	}
	
	@RequestMapping(value = "/uploadForm", method = RequestMethod.GET)
	public String uploadForm(Model model) throws Exception {
		model.addAttribute("productTypeList", typeService.listAll());
		return "/product/uploadForm";
	}
	
	@RequestMapping(value = "/uploadForm", method = RequestMethod.POST)
	@Transactional
	public String uploadForm(MultipartHttpServletRequest Request) throws Exception{
		List<MultipartFile> fileList = Request.getFiles("productImg");
		MultipartFile productImage = Request.getFile("productImage");
		MultipartFile productDesc = Request.getFile("productDesc");
		
		ProductVO vo = convertProductVO(Request);
		
		String[] productImgsName = new String[fileList.size()];
		
		for(int i = 0; i < fileList.size(); i++) {
			String originFileName = fileList.get(i).getOriginalFilename();
			String SaveFileName = System.currentTimeMillis() + originFileName;
			productImgsName[i] = SaveFileName;
			long fileSize = fileList.get(i).getSize();
			
			String safeFile = uploadPath + SaveFileName;
			saveFile(fileList.get(i), safeFile);
		}
		
		vo.setProductImage(SingleFileUpload(productImage));
		vo.setProductDesc(SingleFileUpload(productDesc));
		
		service.productRegister(vo, productImgsName);
		
		return "/product/uploadForm";
		
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
	
	
	private ProductVO convertProductVO(MultipartHttpServletRequest req) {
		ProductVO vo = new ProductVO();
		vo.setProductTypeID(Integer.parseInt(req.getParameter("productTypeID")));
		vo.setProductName(req.getParameter("productName"));
		vo.setProductPrice(Integer.parseInt(req.getParameter("productPrice")));
		vo.setProductPlaytime(Integer.parseInt(req.getParameter("productPlaytime")));
		vo.setProductAgeLimit(Integer.parseInt(req.getParameter("productAgeLimit")));
		
		
		vo.setProductSellStart(dateMaker(req, "productSellStart"));
		vo.setProductSellEnd(dateMaker(req, "productSellEnd"));
		vo.setProductPeriods(dateMaker(req, "productPeriods"));
		vo.setProductPeriode(dateMaker(req, "productPeriode"));
		vo.setProductSellYN(req.getParameter("productSellYN"));
		
		return vo;
	}
	
	private Date dateMaker(MultipartHttpServletRequest req, String param) {
		int year = Integer.parseInt(req.getParameter(param+"1"));
		int month = Integer.parseInt(req.getParameter(param+"2"));
		int day  = Integer.parseInt(req.getParameter(param+"2"));
		return new Date(year, month, day);
	}
	
	private String SingleFileUpload(MultipartFile file) {
		String fileName = file.getOriginalFilename();
		String saveFileName = System.currentTimeMillis() + fileName;
		String saveFile = uploadPath + saveFileName;
		saveFile(file, saveFile);
		
		return saveFileName;
	}
	
	private void saveFile(MultipartFile file, String safeFile) {
		try {
			file.transferTo(new File(safeFile));
		}catch(IllegalStateException e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	

}
