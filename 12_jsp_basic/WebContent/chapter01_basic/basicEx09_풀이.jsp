<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		Random ran = new Random();
		int r = ran.nextInt(12)+1;
		int days = 0;
		
	
			if (r == 2) {
				days = 28;
			}
			else if (r== 4 ||r== 6||r== 9||r== 11) {
				days = 30;
			}
			else days = 31;
		
		
	%>
		<p><%=r %>월 : </p>	
		<select>
	<% 	for(int i = 1; i <= days; i++){
	%>		
			<option><%=i %>일</option>
	<% 
		}
	%>	
		</select>
		
		
		
</body>
</html>