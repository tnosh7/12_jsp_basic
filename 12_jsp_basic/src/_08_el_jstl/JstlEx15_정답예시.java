package _08_el_jstl;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import _05_bean.ProductBean;

@WebServlet("/jstlEx15_정답예시")
public class JstlEx15_정답예시 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<ProductBean> productList = new ArrayList<ProductBean>();
		
		for (int i = 1; i < 10; i++) {
			ProductBean product = new ProductBean();
			product.setPdCd("P00" + i);
			product.setPdNm("기계식키보드" + i);
			product.setDeptCd("dept" + i);
			product.setDeptNm("생산부서" + i);
			product.setMgrCd("m" + i);
			product.setMgrNm("홍길동" + i);
			productList.add(product);
		}
		
		request.setAttribute("productList" , productList);
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter08_el_jstl/jstlEx15_정답예시.jsp"); 
		dis.forward(request, response);
		
	}


}
