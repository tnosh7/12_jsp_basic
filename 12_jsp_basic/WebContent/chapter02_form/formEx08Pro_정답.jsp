<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formEx08Pro_정답</title>
</head>
<body>
	
	
	<%
		request.setCharacterEncoding("utf-8");
		
		String sendAcc = request.getParameter("sendAccount");
		int sendMoney = Integer.parseInt(request.getParameter("sendMoney"));

		String myAcc = request.getParameter("myAccount");
		String yourAcc = request.getParameter("yourAccount");
		int myMoney = Integer.parseInt(request.getParameter("myMoney"));
		
		int money =0;
		String result = "";
		if (sendAcc.equals(yourAcc))  {
			if(sendMoney > myMoney) {
				money = (myMoney - sendMoney) *-1; 
				result="111-111-1111 계좌에 잔액이 " + money + "만큼  부족합니다";
			}
			else {
				money = myMoney - sendMoney;
				result = "222-222-2222계좌에 "+sendMoney+ "원을 원을 이체를 완료하였습니다. 남아있는 금액은 " +money+ "원 입니다";
			}	
		}
		else result="없는 계좌번호 입니다";
	%>
	
	<p><%=result %></p>
	
</body>
</html>