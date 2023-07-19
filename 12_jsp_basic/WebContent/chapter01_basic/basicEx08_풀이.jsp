<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int year = 1900;
		int month = 12;
		int day = 31;
		if (month == 2) {
			day = 28;
		}
		else if (month == 4 || month == 6 || month ==9 || month == 11) {
			day = 30;
		}	
	%>
		<select>
	<% 
			for(int i = year; i < 2022; i++) {
	%>	
			<option><%=i %>년</option>
	<%
			}
	%>	
		</select>
		
		<select>
	<% 
			for(int i = 1; i <= month; i++) {
	%>	
			<option><%=i %>월</option>
	<%
			}
	%>			
		</select>
		<select>
	<% 
			for(int i = 1; i <= day; i++) {
	%>	
			<option><%=i %>일</option>
	<%
			}
	%>			
		</select>	

</body>
</html>