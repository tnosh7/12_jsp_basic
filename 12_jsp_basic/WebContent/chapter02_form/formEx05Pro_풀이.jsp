<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>연습문제</title>
</head>

	<%
		request.setCharacterEncoding("utf-8");
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		String mulitply  = (num1 * num2) + "";
		String answer = request.getParameter("answer");
		
		String result = "틀렸습니다.";
		if (mulitply.equals(answer)) {
			result = "정답입니다.";
		}
	
	
	%>
	<fieldset>
		<legend><%=num1 %> * <%=num2 %>= <%=mulitply %></legend>
		<p>
			<%=result %>
		</p>
	</fieldset>		
</body>
</html>