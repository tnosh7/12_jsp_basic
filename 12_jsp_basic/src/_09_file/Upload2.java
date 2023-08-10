package _09_file;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/upload2")
public class Upload2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String saveDirectory = "C:\\Users\\15_web_ysh\\git\\12_jsp_basic\\12_jsp_basic\\WebContent\\chapter09_file\\file_repository";
		
		MultipartRequest multipartRequest = new MultipartRequest(request, saveDirectory, 1024*1024*100 , "utf-8", new DefaultFileRenamePolicy());
		
		Enumeration<?> files =  multipartRequest.getFileNames();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String date = sdf.format(new Date());
		
		while (files.hasMoreElements()) {
			
			
			String element = (String)files.nextElement();
			
			if (multipartRequest.getOriginalFileName(element) != null) { 		// 원본파일명이 있으면 > 파일을 업로드했으면 
				
				String originalFileName = multipartRequest.getOriginalFileName(element);
				
				UUID uuid = UUID.randomUUID(); // UUID.randomUUID(); 해쉬 생성 기능 
				
				String renameFileName = date + "_" + uuid + "_" + originalFileName;
				
				//	System.out.println("originalFileName : " + originalFileName);
				//	System.out.println("renameFileName : " + renameFileName);
				File file = new File(saveDirectory + "\\" + originalFileName);  	//기존에 업로드한 파일을 읽어온다.
				File renameFile = new File(saveDirectory + "\\" + renameFileName);	//새로운 파일을 생성
				file.renameTo(renameFile);		// 기존에 업로드한 파일명을 새로운 파일명으로 변환. 
			}
		}
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String jsScript = "<script>";
				jsScript += "alert('파일을 업로드 하였습니다.');";
				jsScript += "location.href='fileMain';";
				jsScript += "</script>";
		out.print(jsScript);
	
	}

}
