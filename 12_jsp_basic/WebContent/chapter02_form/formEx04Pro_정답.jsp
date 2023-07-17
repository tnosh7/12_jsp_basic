<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--  23-07-17 17:08 ~ 17:16  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formEx04Pro정답</title>
</head>
<body>
	<%
		String result = "";
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String dbId = request.getParameter("dbId");
		String dbPw = request.getParameter("dbPw");
		if (dbId.equals(id)) {
			if (dbPw.equals(pw)) {
				result = "로그인 성공";
			}
			else result="비밀번호 확인바랍니다.";
		}
		else {
			result= "로그인 실패";
		}
	
	%>
	<p>결과 : <%=result %></p>
	
	
</body>
</html>