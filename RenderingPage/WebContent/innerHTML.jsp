<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InnerHTML</title>
</head>
<body>
	<script type="text/javascript">
		function checkTest() {
			let testValue = document.getElementById("test").value;
			document.getElementById("result").innerHTML = testValue;
		}
	</script>
	<select id="test" onchange="checkTest()">
		<option value="firstOption">첫번째 옵션</option>
		<option value="secondOption">두번째 옵션</option>
		<option value="lastOption">마지막 옵션</option>
	</select>
	<span id="result"></span>
</body>
</html>