<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>패러미터의 전송</title>
	</head>
	<body>
		<h1>패러미터를 입력하여 전송</h1>
		첫번째 패러미터 : <input type="text" id="first"><br>
		두번째 패러미터 : <input type="text" id="second"><br>
		마지막 패러미터 : <input type="text" id="last"><br>
		<form action="#">
			<input type="button" value="Get방식의 전송" onclick="request_doGet()">
			<br>
			<input type="button" value="Post방식의 전송" onclick="request_doPost()">
		</form>
		<hr>
		<h2>서버 response데이터</h2>
		<div id="serverResponse"></div>
		<script>
			var XHR; //XMLHttpRequest 객체를 저장하기 위한 변수
			function createXMLHttpRequest(){ //XHR내부에 객체를 넣는 함수
				if(window.ActiveXObject){	//IE
					XHR=new ActiveXObject("Microsoft.XMLHTTP");	//ActiveX
				} else if(window.XMLHttpRequest){	//다른 브라우저
					XHR=new XMLHttpRequest();		//XMLHttpRequest방식
				}
			}
			// http://127.0.0.1:8080/ajax03/Test?....
			function createString(){
				var first=document.getElementById("first").value;
				var second=document.getElementById("second").value;
				var last=document.getElementById("last").value;
				var dataString="first="+first+"&second="+second+"&last="+last;
				return dataString;
			}
			//버튼 중 get방식 전송에 onclick으로 실행할 수 있도록 해주어야 함
			function request_doGet(){
				createXMLHttpRequest();	//통신을 진행해 줄 XHR객체를 생성
				var dataString = "Test?";
				dataString+=createString();
				//console.log(dataString);
				XHR.onreadystatechange=handleStateChange; //통신진행 중 상황 0~4까지 변동할 때 마다 실행할 함수 입력
				XHR.open("GET", dataString, true); //XHR.open(method, location, async(t,f));
				XHR.send(null); //GET방식 통신에서는 null을 전송
			}
			function request_doPost(){
				createXMLHttpRequest();
				var url="Test";
				var dataString =createString();
				XHR.onreadystatechange=handleStateChange; //통신진행 중 상황 0~4까지 변동할 때 마다 실행할 함수 입력
				XHR.open("POST", url, true); //XHR.open(method, location, async(t,f));
				XHR.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
				XHR.send(dataString); //GET방식 통신에서는 null을 전송
			}
			function handleStateChange(){
				if(XHR.readyState==4){		//통신이 이상없이 완료된 경우
					if(XHR.status==200){	//반환된 데이터가 있는 경우
						parseResult();		//통신이 잘 되면 response된 데이터를 화면에 보여주세요.
					}
				}
			}
			//서버에서 response된 데이터를 화면에 표시해주는 기능
			function parseResult(){
				var div = document.getElementById("serverResponse");
				if(div.hasChildNodes()){
					div.removeChild(div.childNodes[0]);
				}
				var text = document.createTextNode(XHR.responseText);
				div.appendChild(text);
			}
		</script>
	</body>
</html>