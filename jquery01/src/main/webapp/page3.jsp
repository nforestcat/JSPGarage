<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	</head>
	<body>
		<table>
			<thead>
				<tr>
					<td></td>
					<td></td>
					<td><p>[p]</p></td>
					<td></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td><p>[p]</p></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td><p>[p]</p></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td><p>[p]</p></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td><p>[p]</p></td>
					<td></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td></td>
					<td></td>
					<td><p>[p]</p></td>
					<td></td>
				</tr>
			</tfoot>
		</table>
		<script>
			$("table").attr("style","border:1px solid black;");
			$("td").attr("style","border:1px solid black; width: 20px; height: 20px;");
			$("td:nth-child(2)").attr("style", "background-color:blue;");
			$("td:has(p)").attr("style","border:5px solid red;");
			$("tbody tr:last-child td:last-child").attr("style","background-color:black; width:20px; height:20px;");
			$("td + td").attr("style","background-color:red;width: 20px; height: 20px;");
		</script>
	</body>
</html>