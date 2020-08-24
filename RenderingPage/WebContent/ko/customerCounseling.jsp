<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객상담</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
span {
	font-weight: bold;
}
</style>
<script>
	/* 	$(document).ready(function(){
	 $(".btn btn-light col").click(function(){				
	 $(this).css("background-color","orange");	
	 });
	 }); */
</script>
</head>
<body>
	<%@include file="mainBar.jsp"%>
	<%@include file="customerCenterBar.jsp"%>
	<br>
	<br>
	<div class="container">
		<h1>고객상담</h1>
		<br> <br>
		<div class="row">

			<!-- Nav tabs -->
			<ul class="container nav nav-tabs" role="tablist"
				style="margin: 0px;">
				<li class="col nav-item"><a class="nav-link active"
					data-toggle="tab" href="#1">일반상담</a></li>
				<li class="col nav-item"><a class="nav-link" data-toggle="tab"
					href="#2">렌터카상담</a></li>
				<li class="col nav-item"><a class="nav-link" data-toggle="tab"
					href="#3">상담안내</a></li>
			</ul>
			<hr style="border: solid 0.5px silver; margin: 0px;">
			<br> <br>
		</div>

		<!-- Tab panes -->
		<div class="container tab-content">
			<div id="1" class="tab-pane active">
				<br>
				<div class="container">
					<div class="form-group">
						<div class="row">
							<input type="text" class="col" name="name" placeholder="이름 입력" />
							<input type="text" class="col" name="phone"
								placeholder="휴대폰 번호(-없이) 입력" />
						</div>
						<br>
						<div class="row">
							<input type="email" class="col" name="email" placeholder="이메일 입력" />
						</div>
						<br>
						<div class="row">
							<input type="email" class="col" name="email"
								placeholder="제목을 입력해 주세요." />
						</div>
						<br>
						<div class="row">
							<textarea class="form-control" rows="8" id="comment" name="text"
								placeholder="내용입력 (10자 이상 등록해주세요.)"></textarea>
						</div>
						<br>
						<div class="panel panel-default"
							style="width: 100%; padding: 10px;">
							<ul class="panel-body" style="width: 100%;">
								<li>칭찬하기와 제안하기 및 관련 없는 내용 접수 시 별도의 답변을 드리지 않습니다.</li>
								<li>상담신청내역 및 답변은 MY렌터카 > 상담내역 또는 이메일을 통해 확인이 가능합니다.</li>
								<li>민원접수는 충분한 검토와 사실 관계 확인 후 빠른 시일내로 답변 드립니다.</li>
								<li>상담이 집중되거나 주말의 경우 답변이 지연될 수 있으니 이점 양지하여 주시기 바랍니다.</li>
							</ul>
						</div>
						<div align="center">
							<button type="submit" class="btn btn-lg btn-warning"
								style="width: 200px;">신청완료</button>
						</div>

					</div>
				</div>
			</div>

			<div id="2" class="container tab-pane fade">
				<br>
				<form action="#">
					<p style="color: red;">*상담신청 시 등록하신 유선 또는 이메일로만 답변을 받으실 수 있으며,
						홈페이지에서는 답변 확인 불가능합니다.</p>
					<hr>
					<div class="row">
						<span class="col-2">상담유형</span>
						<button type="button" class="col-3 btn bg-white">중고차 렌터카</button>
						<button type="button" class="col-3 btn bg-white">개인 장기렌터카</button>
						<button type="button" class="col-3 btn bg-white">개인 단기렌터카</button>
					</div>
					<hr>

					<div class="container">
						<span>차종 선택</span>
						<div class="form-check-inline">
							<label class="form-check-label" for="radio1"> <input
								type="radio" class="form-check-input" id="radio" name="optradio"
								value="option1" checked>경차
							</label>
						</div>
						<div class="form-check-inline">
							<label class="form-check-label" for="radio2"> <input
								type="radio" class="form-check-input" id="radio" name="optradio"
								value="option2">소형
							</label>
						</div>
						<div class="form-check-inline">
							<label class="form-check-label"> <input type="radio"
								class="form-check-input" id="radio" name="optradio"
								value="option3">중형
							</label>
						</div>
						<div class="form-check-inline">
							<label class="form-check-label"> <input type="radio"
								class="form-check-input" id="radio" name="optradio"
								value="option4">대형
							</label>
						</div>
						<div class="form-check-inline">
							<label class="form-check-label"> <input type="radio"
								class="form-check-input" id="radio" name="optradio"
								value="option5">승합
							</label>
						</div>
						<div class="form-check-inline">
							<label class="form-check-label"> <input type="radio"
								class="form-check-input" id="radio" name="optradio"
								value="option6">SUV
							</label>
						</div>
						<div class="form-check-inline">
							<label class="form-check-label"> <input type="radio"
								class="form-check-input" id="radio" name="optradio"
								value="option7">수입차
							</label>
						</div>
						<div class="form-check-inline">
							<label class="form-check-label"> <input type="radio"
								class="form-check-input" id="radio" name="optradio"
								value="option8">전기차
							</label>
						</div>
					</div>
					<hr>
					<div class="container">
						<div class="form-group">
							<div class="row">
								<input type="text" class="col" name="name" placeholder="이름 입력" />
								<input type="text" class="col" name="name1" placeholder="지역선택" />
								<input type="text" class="col" name="name2"
									placeholder="지역선택(구/군)" />
							</div>
							<br>
							<div class="row">
								<input type="text" class="col" name="phone"
									placeholder="휴대폰 번호(-없이) 입력" /> <input type="email"
									class="col" name="email" placeholder="이메일 입력" />
							</div>
							<br>
							<textarea class="form-control" rows="8" id="comment" name="text"
								placeholder="문의내용입력"></textarea>
						</div>
						<br>
						<%@include file="agreement.jsp"%>
						<br> <br>
						<div align="center">
							<button type="submit" class="btn btn-lg btn-warning"
								style="width: 200px;">신청완료</button>
						</div>
					</div>
				</form>
			</div>

			<div id="3" class="container tab-pane fade">
				<br>
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="row">
							<div class="col-sm-8 bg-danger">
								<h5>
									<span style="color: orange;">신차 다이렉트</span> 전화상담 운영시간
								</h5>
								<p>(신차 장기 다이렉트 계약 상담)</p>
							</div>
							<div class="col-sm-4 bg-info">
								<span style="font-size: 15px;"><img
									src="./resources/images/call.png" style="width: 30px;">전화상담
									<b style="color: orange;">1670-9112</b></span>
							</div>

						</div>
					</div>
				</div>
				<table style="border: solid 1px silver; width: 100%;">
					<tr>
						<td rowspan="3" class="col bg-danger" style="width: 65%;">
							<h5>
								<span style="color: orange;">일반고객 </span>채팅/카톡상담 운영시간
							</h5>
							<p>(단기예약/장기 계약고객)</p>
						</td>
						<td rowspan="2" class="col bg-info"><span
							style="font-size: 15px;"><img
								src="./resources/images/call.png" style="width: 30px;">전화상담
								<b style="color: orange;">1670-9112</b></span></td>
					</tr>
					<tr>
						<td rowspan="3" class="col bg-danger" style="width: 65%;">
							<h5>전화상담 운영시간</h5>
						</td>
						<td colspan="2">채팅상담</td>
					</tr>
					<tr>
					</tr>
				</table>
			</div>
		</div>
	</div>





	<%@include file="footer.jsp"%>
</body>
</html>