<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>XML 파싱</title>
	</head>
	<body>
		<input type="button" value="iot과목확인" onclick="start('iot')">
		<br>
		<input type="button" value="web과목확인" onclick="start('web')">
		<br>
		<input type="button" value="app과목확인" onclick="start('app')">
		<br>
		<input type="button" value="전체과목조회" onclick="start()">
		<hr>
		<div id="result"></div>
		<script>
			var XHR;
			var type=""; //클릭된 버튼을 통해서 서비스를 구현하기 위한 전역변수
			//XHR변수 내에 통신을 위한 ActiveX 또는 XMLHttpRequest 객체를 저장하는 기능
			function createXMLHttpRequest(){
				if(window.ActiveXObject){
					//console.log("인터넷 익스플로러에서 접속");
					XHR = new ActiveXObject("Microsoft.XMLHTTP")
				}else if(window.XMLHttpRequest){
					//console.log("그 이외의 브라우저에서 접속");
					XHR = new XMLHttpRequest();
				}
			}
			//XMLHttpRequest의 readyState값이 변동될 때 자동으로 수행될 함수
			//수행의 결과 통신에 이상이 없고(4) 데이터가 정상적으로 반환된 경우(200) 실행되는 기능
			function handleStateChange(){
				if(XHR.readyState==4){
					if(XHR.status==200){
						//console.log("이상없음");
						//console.log(XHR.responseXML);
						if(type=="iot"){
							listIOT();
						} else if(type=="web"){
							listWEB();
						} else if(type=="app"){
							listAPP();
						} else{
							list();
						}
						
						
					}
				}
			}
			function start(requestType){
				type=requestType; //눌린 버튼에 대한 정보를 전역변수에 저장
				createXMLHttpRequest();
				XHR.onreadystatechange=handleStateChange;
				XHR.open("get", "parse.xml", true);
				XHR.send(null);
			}
			//받아온 XML데이터를 쪼개내어 필요한 부분만 추출하는 기능
			//iot과목 정보만 추출하는 기능
			function listIOT(){
				var XMLDOC = XHR.responseXML;
				var iot = XMLDOC.getElementsByTagName("iot")[0];
				var subjects = iot.getElementsByTagName("subject");
				var out = "iot과목 목록";
				output(out, subjects);
			} 
			//web과목 정보만 추출하는 기능
			function listWEB(){
				var XMLDOC = XHR.responseXML;
				var iot = XMLDOC.getElementsByTagName("web")[0];
				var subjects = iot.getElementsByTagName("subject");
				var out = "web과목 목록";
				output(out, subjects);
			} 
			//app과목 정보만 추출하는 기능
			function listAPP(){
				var XMLDOC = XHR.responseXML;
				var iot = XMLDOC.getElementsByTagName("app")[0];
				var subjects = iot.getElementsByTagName("subject");
				var out = "app과목 목록";
				output(out, subjects);
			} 
			//추출 정보를 표현하기 쉽게 가공하는 기능 
			function output(title, subject) {
				var out = title;
				var name;
				for(var i = 0; i < subject.length; i++){
					out+= "\n"+subject[i].childNodes[0].nodeValue;
					
				}
				alert(out);
			}
			function list(){
				var XMLDOC = XHR.responseXML;
				//var iot = XMLDOC.getElementsByTagName("iot")[0];
				var cla = XMLDOC.getElementsByTagName("class")[0];
				var subjects = XMLDOC.getElementsByTagName("subject");
				var out = "전체 과목 목록";
				//var web = XMLDOC.getElementsByTagName("web")[0];
				output(out, subjects);
			} 
			
		</script>
	</body>
</html>