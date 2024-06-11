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
		int height = Integer.parseInt(request.getParameter("height"));
		
		String withParents = request.getParameter("withParents");
		
		String result = "놀이기구를 이용할 수 없습니다.";
		if (height >= 120) {
			result = "놀이기구를 이용할 수 있습니다.";
		}
		else {
			if (withParents.equals("yes")) {
				result = "놀이기구를 이용할 수 있습니다.";
			}
		}
	%>
	
	<fieldset>
		<p>키: <%=height %>cm<br></p>
		<p>부모님을 동반하였나요? <%=withParents %>
		</p>
		<%=result %>
		<p><input type="submit" value="전송"></p>
	</fieldset>

</body>
</html>