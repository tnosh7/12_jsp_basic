<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 23-07-18 11:32 ~ 11:39-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formEx06Pro_정답</title>
</head>
<body>
	
	<%
	
		request.setCharacterEncoding("utf-8");
		
		double height= Double.parseDouble(request.getParameter("height"));
		String parent = request.getParameter("withParents");
		String result = "";
		
		if (height >= 120.0) {
			result = "놀이기구를 이용할 수 있습니다.";
		}
		else {
			if (parent.equals("yes")) {
				result= "놀이기구를 이용할 수 있습니다.";
			}
			else result= "놀이기구를 이용할 수 없습니다.";
		}
	
	%>
	
	<p>결과 : <%=result %></p>
	
	
	
</body>
</html>