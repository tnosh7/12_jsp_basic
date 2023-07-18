<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 23-07-18 11:40 ~ 11:47-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formEx07Pro_정답</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		int [] nums = new int[3];
		nums[0] = Integer.parseInt(request.getParameter("num1"));
		nums[1] = Integer.parseInt(request.getParameter("num2"));
		nums[2] = Integer.parseInt(request.getParameter("num3"));
		
		int max= 0;
		for(int i = 0; i < nums.length; i++) {
			if (max < nums[i]) {
				max = nums[i];
			}
		}
	%>
		
	<p>최대값 : <%=max %></p>
		
</body>
</html>