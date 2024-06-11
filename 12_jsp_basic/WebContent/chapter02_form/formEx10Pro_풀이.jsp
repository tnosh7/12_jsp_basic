<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습문제</title>
<script>

	function sendData(){
		document.f.submit();
	}
	function sendReset(){
		return false;
	}

</script>
</head>
<body>

	<%
	
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String contact = request.getParameter("contact");
	String email = request.getParameter("email");
	String modelName = request.getParameter("modelName");
	String quantity = request.getParameter("quantity");
	String agreeSafeCare = request.getParameter("agreeSafeCare");
	String requestInfo = request.getParameter("requestInfo");
	String agreePrivateInform = request.getParameter("agreePrivateInform");
	
	%>	
	
		<fieldset>
  			<legend>비회원 주문 정보 입력</legend>
  			<p>
				합리적인 비용의 강력한 비즈니스 성능<br>
				ThinkPad L13 노트북은 10세대 인텔®코어™프로세서, <br>
				SSD, DDR4 메모리 그리고 초고속 WiFi 6를 탑재하여 강력한 고성능을 발휘합니다. <br>
				슬림하고 가벼운 무게의 이 33.78cm (13.3형) 비즈니스 노트북을 블랙 혹은 실버 색상으로 만나보세요. <br>
				빈틈없는 보안과 프라이버시 보호 기능, 고속 충전 기술까지 비즈니스에 필요한 모든 요소를 갖추었습니다.<br> 				 
  				<span style="color: red">가격 : 750,000</span><br>
  			</p>
  			<p>
  				<span style="color:red">* </span>이름 : <%=modelName %>
  			</p>
  			<p>
  				<span style="color:red">* </span> 연락처 :  <%=contact %>
  			<p>
  				<span style="color:red">* </span>이메일 :  <%=email %><br>
  				<small><span style="color:red">이메일 주소가 틀리면 배송관련정보를 받으실 수 없습니다.</span></small>	
  			</p>
		    <p>
         		주문모델 :  <%=modelName %>
	         	
		   	</p>   
          	<p>
		        구매수량 : <%=quantity %>
		    
	        </p>
	        <p>
				안심케어 서비스 <%=agreeSafeCare %>
	        </p>
	        <p>
	        	주문시 요청 사항<br>
	        	<%=requestInfo %>
	        </p>
	        
	        <p>
	        	 <span style="color:red"> * </span>개인정보 수집 동의 : <%=agreePrivateInform %>
	        </p>
         </fieldset>
</body>
</html>