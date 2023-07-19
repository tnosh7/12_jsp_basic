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
		int r = ran.nextInt(3);
		if (r == 0) {
	%>		
			<select>
				<option>HTML5</option>
				<option>CSS3</option>
				<option>JAVASCRIPT</option>
			</select>
	<% 	
		}
		else if (r==1) {
	%>		
			<input type="checkbox">HTML5
			<input type="checkbox">CSS3
			<input type="checkbox">JAVASCRIPT
	<% 
		}
		else {
	%>
			<input type="radio">HTML5
			<input type="radio">CSS3
			<input type="radio">JAVASCRIPT
	<% 	
		}
	%>
	
	
	
</body>
</html>