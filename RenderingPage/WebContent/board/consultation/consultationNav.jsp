<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<meta charset="UTF-8">
<c:set var="URL" value="${pageContext.request.requestURL}" />
${URL}
<br />
<c:set var="path" value="${pageContext.request.contextPath}" />
${path}
<br />
<c:set var="URI" value="${pageContext.request.requestURI}" />
${URI}
<nav class="navbar text-center">
	<a class="btn btn-light col-sm-4" href="${pageContext.request.contextPath}/board/consultation/customer.jsp">일반상담</a>
	<a class="btn btn-info col-sm-4" href="${pageContext.request.contextPath}/board/consultation/rent.jsp">렌터카상담</a>
	<a class="btn btn-light col-sm-4" href="${pageContext.request.contextPath}/board/consultation/info.jsp">상담안내</a>
</nav>