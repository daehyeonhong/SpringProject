<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<html>
<head>
<title>title</title>
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