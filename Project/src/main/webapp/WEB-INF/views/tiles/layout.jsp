<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<html>
<head>
<title>어쩌고 렌터카</title>
<tiles:insertAttribute name="css" />
<tiles:insertAttribute name="script" />
</head>
<body>
	<tiles:insertAttribute name="header" />
	<div id="content">
		<div class="page-contentinbe">
			<tiles:insertAttribute name="body" />
		</div>
	</div>
	<tiles:insertAttribute name="footer" />
</body>
</html>