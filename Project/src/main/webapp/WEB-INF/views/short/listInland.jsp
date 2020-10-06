<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" /> -->
<style>
strong {
	color: orange;
}

hr {
	background-color: black;
}
</style>
<script>
	$(function() {

		let date = new Date();
		$('#datetimepicker7').datetimepicker({
			format : 'L'
		});
		$('#datetimepicker8').datetimepicker({
			format : 'L',
			useCurrent : false
		});
		$('#datetimepicker7').datetimepicker('minDate', date);

		$("#datetimepicker7").on("change.datetimepicker", function(e) {
			$('#datetimepicker8').datetimepicker('minDate', e.date);

		});
		$("#datetimepicker8").on("change.datetimepicker", function(e) {
			$('#datetimepicker7').datetimepicker('maxDate', e.date);

		});
	});
</script>

<script type="text/javascript">
	function insurance() {
		var insuranceFrame = window
				.open(
						"z_shortTerm_Insurance.jsp",
						"",
						"left=600, top=300, width=600, height=600,toolbar=no, scrollbars=no, status=no, resizable=no");
	}/* 
			function list_photo(){
					reserveForm.submit();
				} */
	function addop(add) {
		let addoption = document.getElementById(add).value;
		document.getElementById("addoptionh").innerHTML = addoption;
		alert(addoption);
	}
</script>

<script>
	$(document).ready(function() {
		$("#driver_qualification, #insurance").mouseover(function() {
			$(this).css("cursor", "pointer");
		});

	});
</script>
<script>
	function reset() {
		var result = confirm("정말 취소하시겠습니까?");
		if (result) {
			/* $("#reservationForm").ready(function(){
				$("#reset").click(function(){
					$(body).each( function () {
			            this.reset();
					});
				});
			}); */
			location.reload();
		} else {
			result.close();
		}
	}
</script>

<div class="container-fluid">
	<div class="row">
		<h3 class="row col m-0 p-0">
			기간ㆍ지점ㆍ차량 선택 <span style="font-size: 12px; margin-bottom: 0px; padding-bottom: 0px;"><strong>기간ㆍ지점ㆍ차량</strong>은
				순서와 관계없이 <strong>선택 예약이 가능</strong>합니다.</span>
		</h3>
		<button class="col-sm-2 btn btn-outline-warning" id="btnSc" style="margin-bottom:0px;">목록보기</button>
	</div>
	<!--  comment row글씨 아래로 -->
<hr class="row">
	<%@ include file="list.jsp"%>
	<!-- 기간지점선택테이블 -->
	<table class="col-sm-12" style="width: 100%">
		<!-- rest추가 -->
		<tr>
			<td colspan="3"><br> <br>
				<div class="row form-group" style="border: 1px solid orange;">
					<fieldset>
						<br>
						<ul>
							<li>예약가능시간 : 대여/반납 06:00 ~ 22:00</li>
							<li>반려동물 동반 탑승은 불가합니다. (케이지 포함) <br> (* 다음 이용 고객에 알레르기
								등 불편을 줄 수 있어, 동반 탑승 시 클리닝 비용(10만원 이상)이 추가 발생할 수 있습니다.)
							</li>
						</ul>
						<br>
					</fieldset>
				</div></td>
				</tr>
	</table>
</div>