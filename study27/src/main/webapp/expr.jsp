<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>EL의 연산확인</title>
	</head>
	<body>
		<h1>산술연산</h1>
		\${1+2 } : ${1+2 }<br>
		\${3-4 } : ${3-4 }<br>
		\${5*6 } : ${5*6 }<br>
		\${7/8 } : ${7/8 }<br>
		\${9%10 } : ${9%10 }<br>
		\${11 div 12 } : ${11 div 12 } <!-- 나누기와 동일 --><br>
		\${13 mod 14 } : ${13 mod 14 } <!-- 나머지와 동일 --><br>

		<h1>관계연산</h1>
		\${1==2} : ${1==2 }<br>
		\${1 eq 2 } : ${1 eq 2 }<br>
		\${3 != 4 } : ${3 != 4 }<br>
		\${3 ne 4 } : ${3 ne 4 }<br>
		\${5 < 6 } : ${5 < 6 }<br>
		\${5 lt 6 } : ${5 lt 6 }<br>
		\${7 > 8 } : ${7 > 8 }<br>
		\${7 gt 8 } : ${7 gt 8 }<br>
		\${9 >= 10 } : ${9 >= 10 }<br>
		\${9 le 10 } : ${9 le 10 }<br>
		\${11 <= 12 } :${11 <= 12 }<br>
		\${11 ge 12 } : ${11 ge 12 }<br>
		
		<h1>논리연산</h1>
		\${true && true } : ${true && true }<br>
		\${true || false } : ${true || false }<br>
		\${!true } : ${!true }<br>
		
		<h1>null 확인 연산</h1>
		\${empty null } : ${empty null }<br> <!-- 비어있으면 참 반환 -->
		
	</body>
</html>