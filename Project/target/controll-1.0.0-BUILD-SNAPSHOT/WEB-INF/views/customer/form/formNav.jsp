<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<c:set var="route" value="${path}/customer/form" />
<nav>
	<div class="container row">
		<span class="h2 col-sm-10">양식 다운로드</span>
		<span class="col-sm-2">breadcrumb</span>
	</div>

	<div class="container">
		<div class="container">
			<div class="row">
				<a class="btn btn-${target != 'application' ? 'outline-' : ''}dark col-sm-3" href="${route}/application">신청서</a>
				<a class="btn btn-${target != 'terminate' ? 'outline-' : ''}dark col-sm-3" href="${route}/terminate">계약종료(안내)</a>
				<a class="btn btn-${target != 'contract' ? 'outline-' : ''}dark col-sm-3" href="${route}/contract">계약서 작성(예)</a>
				<a class="btn btn-${target != 'handover' ? 'outline-' : ''}dark col-sm-3" href="${route}/handover">양도합의서	작성(예)</a>
			</div>
		</div>
		<hr>
	</div>

	<div class="container">
		<ul>
			<li style="list-style: square;">
				<span>필요한 다운로드 양식을 고객센터로 보내실 때는 SK렌터카 고객센터(1599-9111)로 연락주셔야 변경/추가 신청이 가능합니다.</span>
			</li>
			<li style="list-style: disc;">
				<span>단, 구) AJ렌터카 차량 이용 고객께서는 고객센터를 통한 변경/추가 신청이 어려운 점 양해해 주시기 바라며, 번거로우시겠지만 계약담당자를 통해 진행 부탁드립니다.</span>	
			</li>
			<li style="list-style: circle;">
				<span>계약담당자 확인 필요 시 SK렌터카 고객센터 1599-9111→ 2번으로 문의 (상담시간 : 평일 9시~18시)</span>
			</li>
		</ul>
	</div>

</nav>