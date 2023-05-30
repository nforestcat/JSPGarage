<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>데이터 전송 실습</title>
		<link rel="stylesheet" href="css/style.css">
		<script src="script/script.js"></script>
	</head>
	<body>
		<div id="wrap">
			<table class="buy">
				<tr class="title">
					<td>상품명</td>
					<td>가격</td>
					<td>수량</td>
				</tr>
				<tr>
					<td>컴퓨터</td>
					<td>1000000</td>
					<td>
						<select name="computer">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>스마트폰</td>
					<td>1500000</td>
					<td>
						<select name="smartphone">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="3" id="result">
						<h1>결제총액</h1>
						<h1 id="total">0원</h1>
						<form method="post" action="pay.jsp">
							<input type="hidden" name="com" value="0">
							<input type="hidden" name="phone" value="0">
							<input type="submit" value="결제하기">
						</form>
						<!--<h3><span id="send">결제하기</span></h3>  -->
					</td>
				</tr>
			</table>
		
		
		</div>
		
	</body>
</html>