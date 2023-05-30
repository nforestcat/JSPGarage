<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>세션 데이터 공유 확인</title>
	</head>
	<body>
		<%
			//한글이 깨질 경우
			request.setCharacterEncoding("UTF-8");
		
			String str = (String)session.getAttribute("key");
			
			//세션이 생성된 시간
			long time=session.getCreationTime();
			//클라이언트에서 세션을 마지막으로 사용한 시간
			long last = session.getLastAccessedTime();
			//세션이 활동할 수 있는 기간을 지정
			session.setMaxInactiveInterval(60*60);
			//세션이 활동할 수 있는 시간 확인
			int interval=session.getMaxInactiveInterval();
			
			//세션 만료 처리
			session.invalidate();
			
		%>
		<p>세션에 저장된 정보 : <%=str %></p>
		<p>세션이 생성된 시간 : <%=time %></p>
		<p>세션이 마지막으로 사용된 시간 : <%=last %></p>
		<p>세션 사용 가능 시간 : <%=interval %></p>
		
		<a href="view2.jsp">세션 데이터의 공유 확인</a>
	</body>
</html>