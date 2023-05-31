<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>데이터 입력 페이지</title>
		<style>
			th, td{
				border: 1px solid black;
			}
			input[type=text]{
				width:40px;
			}
			input[type=submit]{
				width:100%
			}
		
		</style>
	</head>
	<body>
		<form method="post" action="next.jsp">
			<table>
				<tr>
					<th>이름</th>
					<th>국어</th>
					<th>영어</th>
					<th>수학</th>
				</tr>
				<tr>
					<td><input type="text" name="nm"></td>
					<td><input type="text" name="kr"></td>
					<td><input type="text" name="en"></td>
					<td><input type="text" name="mt"></td>
				</tr>
				<tr>
					<td colspan="4"><input type="submit" value="전송"></td>
				</tr>
			</table>
		
		
		</form>
	</body>
</html>