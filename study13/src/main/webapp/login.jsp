<%@page import="javax.swing.plaf.basic.BasicInternalFrameTitlePane.SystemMenuBar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>로그인 처리 페이지</title>
	</head>
	<body>
		<%
			//request를 통해서 데이터를 전송할 때 post를 이용하는 경우 한글이 깨질 수 있다.
			//이 경우 request의 CharacterEncoding방식을 UTF-8로 변경하여 한글깨짐을 방지할 수 있다.
			//request가 들어오는 부분에서
			request.setCharacterEncoding("UTF-8");
		
			String inputId = request.getParameter("user");
			String inputPw = request.getParameter("pw");
			
			//가설 아이디 비번
			String adminId="admin";
			String adminPw="1111";
			
			String userId="test";
			String userPw="2222";
			
			if(inputId.equals(adminId) && inputPw.equals(adminPw)){
				//입력된 아이디 비밀번호 일치 확인
				session.setAttribute("grade", "관리자");
				response.sendRedirect("main.jsp");
				
			} else if(inputId.equals(userId) && inputPw.equals(userPw)){
				session.setAttribute("grade", "일반회원");
				response.sendRedirect("main.jsp");
			} else {
				//아이디가 없거나 비밀번호가 틀렸거나.... 로그인이 이루어질 수 없는 경우
				%>
				<script>
					alert("로그인이 실패하였습니다.");
					location.href="index.jsp";
				
				</script>
				<%
			}
		%>
	</body>
</html>