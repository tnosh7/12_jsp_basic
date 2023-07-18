<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formEx10Pro_정답</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String contact=request.getParameter("contact");
		String email=request.getParameter("email");
		String modelName=request.getParameter("modelName");
		String quantity=request.getParameter("quantity");
		String agreeSafeCare=request.getParameter("agreeSafeCare");
		String requestInfo=request.getParameter("requestInfo");
		String agreePrivateInform=request.getParameter("agreePrivateInform");
		
	%>
	<fieldset>
		<p>이름 : <%=name %></p>
		<p>연락처 : <%=contact %></p>
		<p>이메일 : <%=email %></p>
		<p>주문모델 : <%=modelName %></p>
		<p>수량 : <%=quantity %></p>
		<p>안심케어서비스 : 
			<%
				if (agreeSafeCare==null) {
					out.println("n");
				}
				else out.println("y");
			%>
		</p>	
		<p>주문시 요청사항 : <%=requestInfo %></p>
		<p>개인정보 수집 동의 : 
			<%
				if (agreePrivateInform==null) {
					out.println("n");
				}
				else out.println("y");
			%>
		</p>
	</fieldset>
	
	
	
</body>
</html>