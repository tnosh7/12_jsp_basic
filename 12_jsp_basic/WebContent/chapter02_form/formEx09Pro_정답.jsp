<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formEx09Pro_정답</title>
</head>
<body>
	
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String[]hobbies = request.getParameterValues("hobbies");
		String travel = request.getParameter("travel");
		String meno = request.getParameter("meno");
	
	
	%>
		
	
	<fieldset>
		<p>아이디 :<%=id %></p> 
		<p>비밀번호 :<%=password %></p> 
		<p>이름 :<%=name %></p> 
		<p>나이 :<%=age %></p> 
		<p>성별 :<%=gender %></p> 
		<p>취미 :<%=hobbies %></p> 
		<% 
			if(hobbies!=null) {
				for(int i = 0; i < hobbies.length; i++){
					out.println(hobbies[i] +  " ");
				}
			}	
			else {
				out.println("없음");
			}
		%>	
		<p>여행지 :<%=travel %></p> 
		<p>메모 :<%=meno %></p> 
	
	</fieldset>		
	
	
</body>
</html>