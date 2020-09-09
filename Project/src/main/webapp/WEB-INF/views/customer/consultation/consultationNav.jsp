<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<nav class="navbar text-center">
	<a class="btn btn<c:if test="${target == 'customer'}">-secondary</c:if><c:if test="${target != 'customer'}">-outline-secondary</c:if> col-sm-4" href="${path}/customer/consultation/customer">일반상담</a>
	<a class="btn btn<c:if test="${target == 'rent'}">-secondary</c:if><c:if test="${target != 'rent'}">-outline-secondary</c:if> col-sm-4" href="${path}/customer/consultation/rent?category=usedCar">렌터카상담</a>
	<a class="btn btn<c:if test="${target == 'info'}">-secondary</c:if><c:if test="${target != 'info'}">-outline-secondary</c:if> col-sm-4" href="${path}/customer/consultation/info">상담안내</a>
</nav>