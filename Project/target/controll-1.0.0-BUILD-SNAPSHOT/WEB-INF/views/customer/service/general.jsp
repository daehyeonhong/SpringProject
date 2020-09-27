<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<article>
	<%@ include file="../customerMenu.jsp"%>
	<div class="container col-sm-6">
		<div class="container row">
			<span class="h2 col-sm-10">고객상담</span>
			<span class="col-sm-2">breadcrumb</span>
		</div>

		<!-- Nav tabs -->
		<%@ include file="serviceNav.jsp"%>

		<!-- Tab panes -->
		<div class="container">
			<br />
			<form action="/customer/service/inquiry" method="post">
			<input type="hidden" name="inquiry_type" value="3">
			<input type="hidden" name="users_id" value="1">
				<table class="col-sm-12">
					<tr>
						<td><input type="text" class="form-control" name="name" placeholder="이름 입력" /></td>
						<td><span class="form-control">ID</span></td>
					</tr>
					<tr>
						<td><input type="text" class="form-control" name="email" placeholder="이메일 입력" /></td>
						<td>
							<div class="input-group input-group-prepend">
								<span class="form-control col-sm-1">@</span>
								<input type="text" class="form-control" name="domain" placeholder="메일 주소 입력" />
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="text" class="form-control" name="inquiry_title" placeholder="제목을 입력하해주세요." />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<textarea class="form-control" rows="5" name="inquiry_content" placeholder="내용 입력 (10자 이상 등록해주세요)"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
								<ul class="list-group list-group-flush">
									<li class="list-group-item">칭찬하기와 제안하기 및 관련 없는 내용 접수 시 별도의 답변을 드리지 않습니다.</li>
									<li class="list-group-item">상담신청내역 및 답변은 MY렌터카 > 상담내역 또는 이메일을 통해 확인이 가능합니다.</li>
									<li class="list-group-item">민원접수는 충분한 검토와 사실 관계 확인 후 빠른 시일내로 답변 드립니다.</li>
									<li id="collapseCustomer" class="collapse list-group-item">상담이 집중되거나 주말의 경우 답변이 지연될 수 있으니 이점 양지하여 주시기 바랍니다.</li>
								</ul>
							<a href="#collapseCustomer" class="btn btn-primary" data-toggle="collapse">더보기</a>
						</td>
					</tr>
				</table>
				<div align="center">
					<input type="submit" class="btn btn-warning" value="신청완료" />
				</div>
			</form>
		</div>
	</div>
</article>