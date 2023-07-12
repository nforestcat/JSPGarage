<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 등록 페이지</title>
		<style>
			#wrap{
				width:900px;
				margin: 0 auto;
			}
			table{
				width: 100%;
				line-height: 25px;
				border-collapse:collapse;
			}
			td, th{
				border: 1px solid black;
			}
			th {
				background-color: yellowgreen;
			}
			img{
				width:300px;
			}
		</style>
	</head>
	<body>
		<div id="wrap">
			<h1>상품등록</h1>
			<form method="post" enctype="multipart/form-data" name="frm" action="ProductWrite">
			<table>
				<tr>
					<th>상품명</th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<th>가격</th>
					<td><input type="text" name="price"></td>
				</tr>
				<tr>
					<th>사진경로</th>
					<td><input type="file" name="pictureurl"></td>
				</tr>
				<tr>
					<th>설명</th>
					<td><textarea cols="80" rows="10" name="description"></textarea></td>
				</tr>
			</table>
			<input type="submit" value="등록">
			<input type="reset" value="초기화">
			<input type="button" value="목록보기" onclick="location.href='ProductList'">
		</form>
		</div>
		<script>
			function check(){
				if(document.frm.name.value.length==0){
					alert("상품명을 써주세요.");
					frm.name.focus();
					return false;
				}
				if(document.frm.price.value.length==0){
					alert("가격을 써주세요.");
					frm.value.focus();
					return false;
				}
				if(isNaN(document.frm.price.value.length==0){
					alert("숫자를 입력해주셔야 합니다.");
					frm.value.focus();
					return false;
				}
				if(document.frm.description.value.length==0){
					alert("설명을 써주세요.");
					frm.description.focus();
					return false;
				}
				return true;
			}
		</script>
	</body>
</html>