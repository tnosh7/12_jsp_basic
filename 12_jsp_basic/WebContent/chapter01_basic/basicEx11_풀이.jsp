<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int day= 0;
		for(int i = 1; i < 13; i++) {
			if (i==2) day=28;
			else if (i==4 || i==6 || i==9|| i==11) day=30;
			else day=31;
		
	
	
	%>
		<%=i %>월:
		<select>
	<%
		for(int j = 1; j <= day; j++){
	%>
			
			<option><%=j %></option>
	<%	
		}
	%>
		
		</select>일		
		<br>
	<%	
	}
	%>
	
	
	
		   
	
	
	
</body>
</html>