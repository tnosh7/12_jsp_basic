package _07_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





@WebServlet("/abc")
public class ServletEx02 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//서블렛에서 뷰로 데이터를 전송할 경우 request.setAttribute("속성명", 값); 메서드를 통해서 전송한다.
		request.setAttribute("data1", "글자데이터");
		request.setAttribute("data2", 10);
		request.setAttribute("data3", 3.14);
		request.setAttribute("data4", true);
		
			
		/* 스프링 참고
		 * request.setAttribute("data1", "글자데이터"); 
		 * model.addAttribute("data1", "글자데이터");
		 * mv.addObject("data1", "글자데이터");
		 */
		
		
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter07_servlet/servletEx02.jsp");
		dis.forward(request, response);
	}
}
