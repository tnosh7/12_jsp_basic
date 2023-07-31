package _08_el_jstl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/jstlEx07_풀이")
public class JstlEx07_풀이 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		Random ran = new Random();
		
		int r = ran.nextInt(3);
		
		String value = "";
		if (r == 0) value = "가위";
		else if (r == 1) value = "바위";
		else value= "보";
		
		
		ArrayList<String> numList = new ArrayList<String>(); 
		for (int i =1; i < 4; i++) {
			numList = 
		}
		
		
		
		request.setAttribute("me" , value);
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter08_el_jstl/jstlEx07_정답예시.jsp"); 
		dis.forward(request, response);
		
	}

}
