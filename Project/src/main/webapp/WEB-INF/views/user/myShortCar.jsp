<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<article>

	<div class="container">

		<table class="table table-hover">
			<thead class="thead-light">
				<tr>
					<th>예약 번호</th>
					<th>모델 명</th>
					<th>대여 일자</th>
					<th>반납 일자</th>
					<th>지점</th>
				</tr>
			</thead>
			<c:forEach var="mycar" items="${shortuser}">
				<tbody>
					<tr>
						<td><c:out value="${mycar.reserve_seq}"></c:out></td>
						<td>[<c:out value="${mycar.mfgco_name}"></c:out>]<c:out
								value="${mycar.car_model}"></c:out>/<c:out
								value="${mycar.trim_name}"></c:out></td>
						<td><fmt:formatDate value="${mycar.start_date }"
								pattern="yyyy년  MM월 dd일" /></td>
						<td><fmt:formatDate value="${mycar.end_date }"
								pattern="yyyy년  MM월 dd일" /></td>
						<td><c:out value="${mycar.branch_name}"></c:out></td>
					</tr>
			</c:forEach>

			</tbody>
		</table>
	</div>
</article>
