<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습풀이</title>
</head>
<body>
	
	<table border=" ">
		<%
			int i = 1;
			while (i <= 10) {
		%>
				<tr>
					<td><%=i%>번</td>
				</tr>
				
		<% 		
				i++;
				
			}
		
		%>
		
	</table>


</body>
</html>