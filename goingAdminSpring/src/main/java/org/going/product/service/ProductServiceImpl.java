package org.going.product.service;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.sql.Date;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.going.product.domain.ProductVO;
import org.going.product.persistence.ProductMapper;
import org.going.productImg.domain.ProductImgVO;
import org.going.productImg.persistence.ProductImgMapper;
import org.going.productType.domain.ProductTypeVO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ProductServiceImpl implements ProductService {
	
	@Resource(name = "uploadPath")
	private String uploadPath;

	@Inject
	ProductMapper mapper;

	@Inject
	ProductImgMapper imgMapper;


	@Override
	@Transactional
	public void productRegister(MultipartHttpServletRequest Request) throws Exception {
		List<MultipartFile> fileList = Request.getFiles("productImg");
		MultipartFile productImage = Request.getFile("productImage");
		MultipartFile productDesc = Request.getFile("productDesc");

		ProductVO vo = convertProductVO(Request);

		String[] imgsName = new String[fileList.size()];

		for (int i = 0; i < fileList.size(); i++) {
			String originFileName = fileList.get(i).getOriginalFilename();
			String SaveFileName = System.currentTimeMillis() + originFileName;
			imgsName[i] = SaveFileName;

		}
		String ImageFileName = SingleFileMake(productImage);
		String DescFileName = SingleFileMake(productDesc);
		vo.setProductImage(ImageFileName);
		vo.setProductDesc(DescFileName);

		mapper.create(vo);
		int lastId = mapper.selectLastValue();

		ProductImgVO imgvo = new ProductImgVO();
		imgvo.setProductID(lastId);
		for (int i = 0; i < imgsName.length; i++) {
			imgvo.setPImg(imgsName[i]);
			imgMapper.insert(imgvo);
		}

		for (int i = 0; i < fileList.size(); i++) {
			fileSave(fileList.get(i), imgsName[i]);
		}
		fileSave(productImage, ImageFileName);
		fileSave(productDesc, DescFileName);

	}

	@Override
	public List<ProductVO> getProductList() throws Exception {
		return mapper.listAll();
	}

	@Override
	public ProductVO getProductVO(Integer productID) throws Exception {
		return mapper.read(productID);
	}

	@Override
	@Transactional
	public void productUpdater(Map<String, String[]> paramMap, Map<String, MultipartFile> imgMap,
			Map<String, List<MultipartFile>> imgsMap) throws Exception {

		// key : 이미지 이름
		// value : false=값이 있음, true=값이 없음
		Map<String, Boolean> imgChangeCheck = new HashMap<String, Boolean>();
		Iterator<String> imgIter = imgMap.keySet().iterator();
		while (imgIter.hasNext()) {
			String imgkey = imgIter.next();
			imgChangeCheck.put(imgkey, imgMap.get(imgkey).isEmpty());
			if (!imgMap.get(imgkey).isEmpty()) {
				paramMap.put(imgkey,
						new String[] { System.currentTimeMillis() + imgMap.get(imgkey).getOriginalFilename() });
			}
		}
		ProductVO vo = mapToProductVO(paramMap);
		
		ProductVO oldOne = mapper.read(vo.getProductID());
		mapper.update(vo, imgChangeCheck);
		
		
		ProductImgVO imgVO = new ProductImgVO();
		imgVO.setProductID(vo.getProductID());
		List<MultipartFile> fileList = imgsMap.get("productImg");
		List<ProductImgVO> oldImgVOList = imgMapper.listAll(oldOne.getProductID());
		imgMapper.deleteAllById(vo.getProductID());
		
		String[] imgsName = new String[fileList.size()];
		if (fileList.get(0).isEmpty() == false) {
			
			for (int i = 0; i < fileList.size(); i++) {
				String originFileName = fileList.get(i).getOriginalFilename();
				String SaveFileName = System.currentTimeMillis() + originFileName;
				imgsName[i] = SaveFileName;
				imgVO.setPImg(SaveFileName);
				imgMapper.insert(imgVO);
			}
			for (ProductImgVO oldImgVO : oldImgVOList) {
				deleteFile(oldImgVO.getPImg());
			}
			
			for (int i = 0; i < fileList.size(); i++) {
				fileSave(fileList.get(i), imgsName[i]);
			}
		}
		
		

		// db업데이트 이후 오류가 던져지지 않으면
		// 파일삭제를 위해 이전버전의 vo에서 파일 이름을 찾아 해당 파일을 삭제
		imgIter = imgMap.keySet().iterator();
		while (imgIter.hasNext()) {
			String imgkey = imgIter.next();
			if(imgkey.equals("productImg")) {continue;}
			Method[] methodArray = oldOne.getClass().getDeclaredMethods();
			if (!imgChangeCheck.get(imgkey)) {
				for (Method m : methodArray) {
					if (m.getName().equals("get" + imgkey.substring(0, 1).toUpperCase() + imgkey.substring(1))) {
						
						String imgName = (String) m.invoke(oldOne);
						deleteFile(imgName);
					}
				}
				
				fileSave(imgMap.get(imgkey), paramMap.get(imgkey)[0]);
			}
		}
		
		

	}

	private ProductVO convertProductVO(MultipartHttpServletRequest req) {
		ProductVO vo = new ProductVO();
		ProductTypeVO typeVO = new ProductTypeVO();
		typeVO.setProductTypeId(Integer.parseInt(req.getParameter("productTypeID")));
		vo.setProductTypeVO(typeVO);
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
		int year = Integer.parseInt(req.getParameter(param + "1"));
		int month = Integer.parseInt(req.getParameter(param + "2"));
		int day = Integer.parseInt(req.getParameter(param + "3"));
		return Date.valueOf(year + "-" + month + "-" + day);
	}

	private String SingleFileMake(MultipartFile file) {
		String fileName = file.getOriginalFilename();
		String saveFileName = System.currentTimeMillis() + fileName;
		return saveFileName;
	}

	private void fileSave(MultipartFile file, String safeFile) {
		try {
			file.transferTo(new File(uploadPath + safeFile));

		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void deleteFile(String imgName) {
		File file = new File(uploadPath + imgName);
		if (file.exists()) {
			if (file.delete()) {
				log.info("삭제 완료");
			} else {
				log.warn("삭제 실패 원인확인바람!!!" + imgName);
			}
		} else {
			log.warn("파일이 존재하지 않음!!" + imgName);
		}

	}

	private ProductVO mapToProductVO(Map<String, String[]> paramMap) {
		List<String> intList = Arrays
				.asList(new String[] { "productID", "productPrice", "productPlaytime", "productAgeLimit" });
		List<String> dateList = Arrays.asList(new String[] { "productSellStart", "productSellEnd", "productPeriods",
				"productPeriode", "productRegdate" });

		String key;
		String set = "set";
		String methodString;
		ProductVO vo = new ProductVO();
		Method[] methods = vo.getClass().getDeclaredMethods();
		Iterator<String> paramMapIter = paramMap.keySet().iterator();
		while (paramMapIter.hasNext()) {
			key = paramMapIter.next();
			
			if (paramMap.get(key) == null) {continue;}
			methodString = set + key.substring(0, 1).toUpperCase() + key.substring(1);
			for (Method m : methods) {
				if (m.getParameterCount() != 1) {
					continue;
				}

				if (methodString.equals(m.getName())) {
					try {
						if (intList.contains(key)) {
							m.invoke(vo, Integer.parseInt(paramMap.get(key)[0]));
						} else if (dateList.contains(key)) {
							m.invoke(vo, Date.valueOf((paramMap.get(key))[0]));
						} else {
							m.invoke(vo, ((paramMap.get(key))[0]));
						}

					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				
				if (m.getName().equals("setProductTypeVO") && key.equals("productTypeID")) {
					ProductTypeVO typeVO = new ProductTypeVO();
					typeVO.setProductTypeId(Integer.parseInt((paramMap.get(key))[0]));
					try {
						m.invoke(vo, typeVO);
					}catch(Exception e) {
						e.getStackTrace();
					}
				}
						
			}
		}
		return vo;
	}

}
