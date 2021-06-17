package services.product;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.ProductImgDao;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import model.ProductImg;

public class FileService {
	
	private ProductImgDao productImgDao = new ProductImgDao();
	
	public String downloadFile(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		// Form에서 name="fileName" 파일이름을 받는다.
		String fileName = req.getParameter("fileName");
		
		String savePath = "upload";
		
		ServletContext context = req.getServletContext();
		String downloadPath = context.getRealPath(savePath);
		String filePath = downloadPath + "\\" + fileName;
		
		byte b[] = new byte[4096];
		File file = new File(filePath);
		
		FileInputStream in = new FileInputStream(filePath);
		
		String mimeType = context.getMimeType(filePath);
		
		if (mimeType == null) {
			mimeType = "application/octet-stream";
		}
		
		res.setContentType(mimeType);
		
		String encoding = new String(fileName.getBytes("utf-8"), "8859-1");
		
		res.setHeader("Content-Disposition", "attachment; filename= " + encoding);
		
		ServletOutputStream out2 = res.getOutputStream();
		int numRead;
		
		while((numRead = in.read(b, 0, b.length)) != -1) {
			out2.write(b, 0, numRead);
		}
		
		out2.flush();
		out2.close();
		in.close();
		
		return null;
	}
	
	public String uploadFile(MultipartRequest multi, Connection conn, String[] fileArray, int productId) throws IOException, SQLException {
		ProductImg productimg = null;
		List<ProductImg> pImgList = new ArrayList<>();
		
		String file, filename, origfilename;
		
		java.util.Date nowDate = new java.util.Date();
		String imgHead =  "0";
		for(int i=1; i<fileArray.length; i++) {
			file = fileArray[i];
			System.out.println(file);
			filename = multi.getFilesystemName(file);
			origfilename = multi.getOriginalFileName(file);
			
			if(filename == null) {
				continue;
			}
			
			productimg = new ProductImg(productId, filename, imgHead, new Date(nowDate.getTime()));
			pImgList.add(productimg);
		}
		
		upload(pImgList, conn);
		
		
		return null;
	}
	
	private void upload(List<ProductImg> pImgList, Connection conn) throws SQLException {
			System.out.println(pImgList.size());
			for(int i=0; i<pImgList.size(); i++) {
				productImgDao.insert(conn, pImgList.get(i));
			}
	}
}
