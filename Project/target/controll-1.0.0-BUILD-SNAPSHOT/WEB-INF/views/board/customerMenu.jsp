<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<div class="container col-sm-6" align="center">
	<nav class="navbar navbar-expand-sm bg-light navbar-light">
		<table class="navbar-nav">
			<tr>
				<td class="nav-item">
					<a class="nav-link h3 "style="border: 1px solid #000;" href="${pageContext.request.contextPath}/board/notice">고객센터</a>
				</td>
				<td class="nav-item">
					<a class="nav-link h5" href="${pageContext.request.contextPath}/board/notice">공지사항</a>
				</td>
				<td class="nav-item">
					<a class="nav-link h5" href="${pageContext.request.contextPath}/board/consultation/rent?category=usedCar">고객상담</a>
				</td>
				<td class="nav-item">
					<a class="nav-link h5" href="${pageContext.request.contextPath}/board/faq?keyword=all">자주찾는질문</a>
				</td>
				<td class="nav-item">
					<a class="nav-link h5" href="${pageContext.request.contextPath}/board/branch">지점안내</a>
				</td>
				<td class="nav-item">
					<a class="nav-link h5" href="${pageContext.request.contextPath}/board/form/applicationForm">양식다운로드</a>
				</td>
			</tr>
		</table>
	</nav>
</div>