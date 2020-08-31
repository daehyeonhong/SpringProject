<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상담안내</title>
</head>
<body>

	<jsp:include page="../customerMenu.jsp" />
	<div class="container col-sm-6">
		<div class="container">
			<h1 class="display-5">고객상담</h1>
		</div>

		<!-- Nav tabs -->
		<jsp:include page="consultationNav.jsp" />

		<div class="container">
			<table class="col-sm-12" border="1">
				<tr>
					<td>
						<p>신차 다이렉트 전화 상담 운영시간: 평일 09~18 시</p>
						<p>(신차 장기 다이렉트 계약 상담): 토요일 및 공유일 휴무</p>
					</td>
					<td>
						<p>전화상담 1670-9112</p>
					</td>
				</tr>				
			</table>
			<hr />

			<table class="col-sm-12" border="1">
				<tr>
					<td rowspan="3">
						<p>일반고객 채팅/카톡상담 운영시간</p>
						<p>(단기예약/장기 계약고객)</p>
					</td>
					<td rowspan="2">
						<p>전화상담 1599-9911</p>
					</td>
				</tr>
				<tr>
				</tr>
				<tr>
					<td rowspan="2">
						<p>채팅상담</p>
					</td>
				</tr>
				<tr>
					<td rowspan="3">
						<p>일반고객 채팅/카톡상담 운영시간</p>
						<p>(단기예약/장기 계약고객)</p>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						<p>카톡으로 상담하기</p>
					</td>
				</tr>
				<tr>
				</tr>
			</table>
		</div>
	</div>

</body>
</html>