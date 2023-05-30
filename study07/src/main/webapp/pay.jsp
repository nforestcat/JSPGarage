<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.*" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>결제처리</title>
	</head>
	<body>
		
		<%
			String com=request.getParameter("com");
			String phone=request.getParameter("phone");
			//System.out.println(com);
			//System.out.println(phone);
			if(com==null || phone==null){
				out.print("<h1 style='color:red;'>허가되지 않은 경로로 접근하셨습니다</h1>");
			}
			else if(com.equals("0") && phone.equals("0")){
				out.print("<h1 style='color:blue;'>구매하신 상품이 없습니다.</h1>");
			} else {
				int num1 = Integer.parseInt(com)*1000000;
				int num2 = Integer.parseInt(phone)*1500000;
				int result = num1 + num2;
				
				//천 단위 구분 기호 사용
				DecimalFormat df = new DecimalFormat("#,###");
				String change=df.format(result);
				//문자열 타입이기 때문에 데이터 처리 힘듬(백엔드에서는 안씀)
				%>
				<table>
					<tr>
						<th>상품명</th>
						<th>가격</th>
						<th>수량</th>
						<th>총액</th>
					</tr>
					<tr>
						<th>컴퓨터</th>
						<th>1000000원</th>
						<th><%=com%>개</th>
						<th><%=num1%>원</th>
					</tr>
					<tr>
						<th>스마트폰</th>
						<th>1500000원</th>
						<th><%=phone%>개</th>
						<th><%=num2%>원</th>
					</tr>
					<tr>
						<th>합계</th>
						<th colspan="3"><%=change%>원</th>
					</tr>
					
				</table>
				<%
			}
		
		%>
	</body>
</html>