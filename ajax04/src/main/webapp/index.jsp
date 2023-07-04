<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>검증처리</title>
	</head>
	<body>
		<h1>다음의 내용을 검증합니다.</h1>
		생일을 입력해 주세요
		<br>
		<input type="text" size="10" id="birthDate" onkeyup="validate()">
		<hr>
		<div id="dateMessage">
		
		</div>
		<script>
			var XHR;
			function createXMLHttpRequest(){
				if(window.ActiveXObject){
					XHR=new ActiveXObject("Microsoft.XMLHTTP");
				} else if(window.XMLHttpRequest){
					XHR = new XMLHttpRequest();
				}
			}
			function validate(){
				createXMLHttpRequest();
				var date = document.getElementById("birthDate").value;
				var url = "Sample?birthDate="+date;
				XHR.open("GET", url, true);
				XHR.onreadystatechange=handleStateChange;
				XHR.send(null);
				
			}
			function handleStateChange(){
				if(XHR.readyState==4){
					if(XHR.status==200){
						//console.log(document.getElementById("birthDate").value);
						//console.log(XHR.responseXML);
						var mes = XHR.responseXML.getElementsByTagName("message")[0].firstChild.data;
						var pas = XHR.responseXML.getElementsByTagName("passed")[0].firstChild.data;
						setMessage(mes, pas);
					}
				}
			}
			//response되어 온 데이터를 화면에 표시하는 기능
			function setMessage(mess, pass){
				var dateMessage = document.getElementById("dateMessage");
				var fontColor = "red";
				if(pass=="true"){
					fontColor="green";
				}
				dateMessage.innerHTML = "<span style='color:"+fontColor+";'>"+mess+"</span>";
			}
		</script>
	</body>
</html>