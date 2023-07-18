<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 23-07-18 10:50 ~ 11:18 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formEx05Pro</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		int answer = Integer.parseInt(request.getParameter("answer"));
		
		int result = num1 * num2;

		String idx = "";
		if (result == answer) {
			idx = "정답";
		}
		else idx= "땡";
	%>	
	<p><%=num1 %> X <%=num2 %> = <%=result %></p>
	<p>결과 : <%=idx %></p>	
	

</body>
</html>