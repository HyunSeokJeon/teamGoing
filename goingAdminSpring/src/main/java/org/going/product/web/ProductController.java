package org.going.product.web;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.commons.io.IOUtils;
import org.going.product.domain.ProductRownum;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/manage/*")
@Log4j
public class ProductController {

	@Resource(name = "uploadPath")
	private String uploadPath;

	@Inject
	ProductTypeService typeService;

	@Inject
	ProductService service;

	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String listRead(Model model, ProductRownum rownum) throws Exception {
		List<ProductVO> voList = service.getProductList(rownum);
		log.info(voList);
		model.addAttribute("productList", voList);
		return "/product/productMGMT";
	}

	@RequestMapping(value = "/uploadForm", method = RequestMethod.GET)
	public String uploadForm(Model model) throws Exception {
		model.addAttribute("productTypeList", typeService.listAll());
		return "/product/uploadForm";
	}

	/**
	 * 
	 * @param Request file, text 혼합정보
	 * @return /product/uploadForm.jsp 페이지
	 * @author JeonHyunSeok
	 * @throws Exception
	 */
	@RequestMapping(value = "/uploadForm", method = RequestMethod.POST)
	@Transactional
	public String uploadForm(MultipartHttpServletRequest Request) throws Exception {
		service.productRegister(Request);

		return "/product/uploadForm";

	}

	@RequestMapping(value = "/viewimg")
	public ResponseEntity<byte[]> displayFile(String fileName) throws Exception {

		InputStream in = null;
		ResponseEntity<byte[]> entity = null;

		log.info("file name : " + fileName);

		try {

			String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);

			MediaType mType = MediaUtils.getMediaType(formatName);

			HttpHeaders headers = new HttpHeaders();

			in = new FileInputStream(uploadPath + fileName);

			if (mType != null) {
				headers.setContentType(mType);
			} else {
				fileName = fileName.substring(fileName.indexOf("_") + 1);
				headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
				headers.add("Content-Disposition",
						"attachment; filename=\"" + new String(fileName.getBytes("UTF-8"), "ISO-8859-1") + "\"");
			}

			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		} finally {
			in.close();
		}
		return entity;
	}

	@RequestMapping(value = "modifyForm", method = RequestMethod.GET)
	public String modifyForm(Integer productID, Model model) throws Exception {
		model.addAttribute("productTypeList", typeService.listAll());
		model.addAttribute("product", service.getProductVO(productID));
		return "/product/modifyForm";
	}

	@RequestMapping(value = "modifyForm", method = RequestMethod.POST)
	public void modifyPost(MultipartHttpServletRequest Request) throws Exception {
		Map<String, String[]> paramMap = Request.getParameterMap();
		Map<String, MultipartFile> imgMap = Request.getFileMap();
		Map<String, List<MultipartFile>> imgsMap = Request.getMultiFileMap();

		service.productUpdater(paramMap, imgMap, imgsMap);

	}
	
	@RequestMapping(value="getMore")
	@ResponseBody
	public ResponseEntity<List<ProductVO>> getMoreProduct(ProductRownum rownum) throws Exception{
		List<ProductVO> voList = service.getProductList(rownum);
		return new ResponseEntity<List<ProductVO>>(voList, HttpStatus.CREATED);
	}

}
