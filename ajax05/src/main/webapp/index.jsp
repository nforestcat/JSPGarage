<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>화면의 비동가 생신</title>
	</head>
	<body>
		<form action="">
			<h3>종류 선택</h3>
			<select id="race" onchange="refreshList()">
				<option value="none">선택해주세요.</option>
				<option value="dog">강아지.</option>
				<option value="cat">고양이.</option>
				<option value="raccoon">너구리.</option>
			</select>
			
			<h3>크기 선택</h3>
			<select id="size" onchange="refreshList()">
				<option value="none">선택해주세요.</option>
				<option value="small">소형</option>
				<option value="medium">중형</option>
				<option value="large">대형</option>
			</select>
			<h3>데이터 출력</h3>
			<select id="list" size="6" style="width:300px;">
			</select>
		</form>
		<script>
			let XHR;
			function createXMLHttpRequest(){
				if(window.ActiveXObject){
					XHR = new ActiveXObject("Microsoft.XMLHTTP");
				} else if(window.XMLHttpRequest){
					XHR = new XMLHttpRequest();
				}
				
			}
			function refreshList(){
				let race=document.getElementById("race").value;
				let size=document.getElementById("size").value;
				if(race=="none" || size =="none"){
					return;
				}
				let url = "Refresh?race="+race+"&size="+size;
				createXMLHttpRequest();
				XHR.onreadystatechange=handleStateChange;	//함수가 실행되어야하므로 ()넣지 말기
				XHR.open("GET", url, true);
				XHR.send(null);
				
			}
			//상태값이 변동될 때마다 반복해서 수행될 함수
			function handleStateChange(){
				if(XHR.readyState==4){
					if(XHR.status==200){
						console.log(XHR.responseXML);
						updateList();
						
					}
				}
			}
			//화면에 결과값을 표현해주는 함수
			function updateList(){
				clearList();
				let list = document.getElementById("list");
				let result = XHR.responseXML.getElementsByTagName("pet");
				let option = null;
				/*while(list.hasChildNodes()){
					list.removeChild(list.childNodes[0]);
				}*/
				for(let i = 0; i < result.length; i++){
					option=document.createElement("option");
					option.appendChild(document.createTextNode(result[i].firstChild.nodeValue));
					list.appendChild(option);
				}
				
			}
			//기존에 있었던 표시를 제거해주는 기능
			function clearList(){
				let list = document.getElementById("list");
				while(list.childNodes.length>0){
					list.removeChild(List.childNodes[0]);
				}
			}
		</script>
	</body>
</html>