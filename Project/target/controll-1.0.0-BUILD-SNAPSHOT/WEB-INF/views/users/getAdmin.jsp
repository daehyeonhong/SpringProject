<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Users</title>
</head>
<body>
${userVO}
${UserMapper}
${UserMapper.getAdmin}
${vo.getAdmin}
${vo.admin}
${UserVO.getAdmin}
${vo.id}
${vo.getId}
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
				<td>${vo.id}</td>
				<td>${vo.password}</td>
				<td>${vo.name}</td>
				<td>${vo.role}</td>
			</tr>
		</tbody>
	</table>
</body>
</html>