<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<article>
	<div class="container col-sm-5">
		<div class="text-left">
			<h2>MY렌터카</h2>
		</div>
		<div class="text-center">
			<table class="table table-bordered">
				<tr>
					<th>계약된 개인장기렌터카 정보가 없습니다. <br> <small>개인장기렌터카
							계약정보가 안 보이시나요 ? </small><br>
						<button type="button" class="btn btn-secondary btn-sm">차량등록
							하기</button></th>
					<th>단기/중고차(준장기) <br> <small>예약차량 </small></th>
				</tr>
			</table>
			<div class="text-left">
				<h3>차량관리</h3>
			</div>
			<table class="table table-bordered">
				<tr>
					<th>정비내역</th>
					<th>사고내역</th>
					<th>대차내역</th>
					<th>과태료 발생내역</th>
				</tr>
			</table>
			<table class="table table-bordered">
				<tr>
					<th>쿠폰내역<br> <small>보유 쿠폰과 사용 쿠폰내역을 확인해보세요.</small><br>
						<button type="button" class="btn btn-outline-secondary btn-sm">자세히
							보기</button></th>
					<th>
						<p>상담내역</p>
						<p>
							<small>요청하신 상담내역을 확인해보세요.</small>
						</p>
						<button type="button" class="btn btn-outline-secondary btn-sm" onclick="location.href='/user/myPage/general'">자세히 보기</button>
					</th>
					<th>이벤트 당첨자 발표<br> <small>참여하신 이벤트 당첨결과를 확인해보세요.</small><br>
						<button type="button" class="btn btn-outline-secondary btn-sm">자세히
							보기</button></th>

				</tr>
			</table>
		</div>
	</div>
</article>