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
		String com = request.getParameter("com");
		String me = request.getParameter("me");
		String result = "";
		if (com.equals(me)) result ="비겼다";
		else if (me.equals("가위")) result = "내가 졌다.";
		else if (me.equals("보")) result = "내가 이겼다.";
	%>
		
		<h2><%=result %></h2>
		
</body>
</html>