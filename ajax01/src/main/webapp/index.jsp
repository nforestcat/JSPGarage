<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>AJAX의 이해</title>
	</head>
	<body>
		<input type="button" value="통신개시!" onclick="start()">
		<div id="result">
		</div>
		<%--Asynchronous Javascript And Xml --%>
		<%--자바스크립트와 xml을 이용한 비동기 통신기법 --%>
		<%--페이지의 갱신 없이 통신을 수행할 수 있다 --%>
		<script>
			//XMLHttpRequest : 과거 인터넷 익스플로러에서 ActiveX 형식으로 제공된 내용
			//인터넷 브라우저마다 조금씩 다른 구현 방법을 가진다.
			//W3C표준이 아니므로 IE에서는 ActiveX Component형식으로 구현되었고
			//다른 대부분의 브라우저에서는 Javascript Object방식으로 구현되었다
			
			//XMLHttpRequest.open(Method, url, asynch, user, pw);
			//해당 경로로 request를 전달하는 기능
			
			//XMLHttpRequest.send();
			//데이터를 전송하는 부분, get방식에서는 null을 전송, post에서는 데이터를 전송
			
			//XMLHttpRequest 속성
			//XMLHttpRequest.onreadystatechange : 상태값 변화시 수행할 function을 저장하는 부분
			//XMLHttpRequest.readyState : 요청의 상태를 저장하는 부분
			// 0 : uninitialized, 초기화 되지 않은 상태
			// 1 : loading, 읽고 있는 상태
			// 2 : loaded, 모든 정보를 읽은 상태
			// 3 : interactive, 읽은 정보를 가져오는 상태
			// 4 : complete, 모든 요청이 만료된 상태
			
			//XMLHttpRequest.responseText : 응답받은 데이터를 String타입으로 표현
			//XMLHttpRequest.responseXML : 응답받은 데이터를 XML타입으로 표현
			var XHR;
			function createXMLHttpRequest(){
				if(window.ActiveXObject){
					//console.log("인터넷 익스플로러에서 접속");
					XHR = new ActiveXObject("Microsoft.XMLHTTP")
				}else if(window.XMLHttpRequest){
					//console.log("그 이외의 브라우저에서 접속");
					XHR = new XMLHttpRequest();
				}
			}
			//createXMLHttpRequest();
			//console.log(XHR);
			function start(){
				createXMLHttpRequest();
				XHR.onreadystatechange=handleStateChange;
				console.log("request 이전 : "+ XHR.readyState);
				XHR.open("GET", "data.xml", true);
				console.log("request 이후 : "+ XHR.readyState);
				XHR.send(null);
			}
			function handleStateChange(){
				if(XHR.readyState==4){
					if(XHR.status==200){
						document.getElementById("result").innerHTML=XHR.responseText;
					}
				}
			}
		</script>
	</body>
</html>