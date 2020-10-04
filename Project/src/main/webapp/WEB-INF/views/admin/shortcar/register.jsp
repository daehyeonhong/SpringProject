<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<article>
	<form action="/admin/shortcar/register" method="post">
		<table>
			<tr>
				<td><span>번호판</span></td>
				<td><input type="text" name="license_plate" required/></td>
			</tr>
			<tr>
				<td><span>블랙박스</span></td>
				<td><input type="checkbox" name="dash_cam" class="rcheckbox"/></td>
			</tr>
			<tr>
				<td><span>후방카메라</span></td>
				<td><input type="checkbox" name="back_camera" class="rcheckbox"/></td>
			</tr>
			<tr>
				<td><span>내비게이션</span></td>
				<td><input type="checkbox" name="navigation" class="rcheckbox"/></td>
			</tr>
			<tr>
				<td><span>블루투스</span></td>
				<td><input type="checkbox" name="bluetooth" class="rcheckbox"/></td>
			</tr>
			<tr>
				<td><span>AUX</span></td>
				<td><input type="checkbox" name="aux" class="rcheckbox"/></td>
			</tr>
			<tr>
				<td><span>스마트키</span></td>
				<td><input type="checkbox" name="smart_key" class="rcheckbox"/></td>
			</tr>
			<tr>
				<td><span>평일가격</span></td>
				<td><input type="text" name="nomal_price" required/></td>
			</tr>
			<tr>
				<td><span>주말가격</span></td>
				<td><input type="text" name="weekend_price" required/></td>
			</tr>
			<tr>
				<td><span>차량 모델 번호</span></td>
				<td><input type="text" name="trim_seq" required/></td>
			</tr>
			<tr>
				<td><span>지점</span></td>
				<td><input type="text" name="branch_seq" required/></td>
			</tr>
		</table>
		<button type="submit">입력</button>
		<button type="reset">초기화</button>
	</form>
</article>

<script>
	$().ready(function(){
		$(".rcheckbox").prop("value",0);

		$(".rcheckbox").change(function(){
			if($(this).is(":checked")){
				$(this).val(1);
				var v = $(this).val();
				console.log(v);
			}else{
				$(this).val(0);
				var v = $(this).val();
				console.log(v);
			}
		});
	});
</script>