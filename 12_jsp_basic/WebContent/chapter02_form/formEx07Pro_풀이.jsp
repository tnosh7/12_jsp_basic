<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>연습문제</title>

</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");	
		int num1= Integer.parseInt(request.getParameter("num1"));
		int num2= Integer.parseInt(request.getParameter("num2"));
		int num3= Integer.parseInt(request.getParameter("num3"));
		
		int maxNum = num1;
		if (maxNum < num2) {
			maxNum = num2;
		}
		if (maxNum < num3) {
			maxNum = num3;
		}
	
		
	%>

	<p>값 1: <%=num1 %></p>
	<p>값 2: <%=num2 %></p>
	<p>값 3: <%=num3 %></p>
	<p>최대값 : <%=maxNum %></p>

</body>
</html>