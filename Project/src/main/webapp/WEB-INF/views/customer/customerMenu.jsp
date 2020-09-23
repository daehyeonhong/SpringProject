<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="route" value="${pageContext.request.contextPath}/customer" />
<div class="container col-sm-6" align="center">
	<nav class="navbar navbar-expand-sm bg-light navbar-light">
		<table class="navbar-nav">
			<tr>
				<td class="nav-item">
					<a class="nav-link h3 "style="border: 1px solid #000;" href="${route}/notice/list">고객센터</a>
				</td>
				<td class="nav-item">
					<a class="nav-link h5" href="${route}/notice/list">공지사항</a>
				</td>
				<td class="nav-item">
					<a class="nav-link h5" href="${route}/service/rental">고객상담</a>
				</td>
				<td class="nav-item">
					<a class="nav-link h5" href="${route}/faq?type=장기">자주찾는질문</a>
				</td>
				<td class="nav-item">
					<a class="nav-link h5" href="${route}/branch">지점안내</a>
				</td>
				<td class="nav-item">
					<a class="nav-link h5" href="${route}/form/application">양식다운로드</a>
				</td>
			</tr>
		</table>
	</nav>
</div>