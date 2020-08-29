<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Users</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>PASSWORD</th>
				<th>NAME</th>
				<th>ROLE</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${users.id}</td>
				<td>${password}</td>
				<td>${name}</td>
				<td>${role}</td>
			</tr>
		</tbody>
	</table>
</body>
</html>