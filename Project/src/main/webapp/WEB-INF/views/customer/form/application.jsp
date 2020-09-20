<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>
	<%@ include file="../customerMenu.jsp"%>
	<div class="container col-sm-6">
		<%@ include file="formNav.jsp"%>

		<div align="center">
			<div class="container row">
				<c:forEach var="row" begin="0" end="4">
					<div class="col-sm-6">
						<table class="table table-sm table-bordered">
							<tr>
								<td colspan="2"><span>장기렌터카 보험조건 변경 신청서(PDF)</span></td>
							</tr>
							<tr>
								<td><span>보험 조건 변경 신청서 양식</span></td>
								<td rowspan="2"><img alt="${row}PDF" src="form.pdf">
								</td>
							</tr>
							<tr>
								<td><input type="button" value="다운로드" /></td>
							</tr>
						</table>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</article>