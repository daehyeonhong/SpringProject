<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		let date1 = new Date();
		let date2 = new Date(2020, 12, 30, 33, 30, 0);
		alert(date1);
		alert(date2);
		let a = date2 - date1;
		let b = Math.floor(a / (24*60*60*1000));
		alert(b);
	</script>
</body>
</html>