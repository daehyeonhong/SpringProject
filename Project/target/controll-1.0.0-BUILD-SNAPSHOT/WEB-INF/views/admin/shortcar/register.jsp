<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<article>
	<form action="/admin/registerShortCar" method="post">
		<table id="rcheckbox">
			<tr>
				<td><span>번호판</span></td>
				<td><input type="text" name="license_plate" /></td>
			</tr>
			<tr>
				<td><span>블랙박스</span></td>
				<td><input type="hidden" name="dash_cam" value="no"checked/>
				<input type="checkbox" name="dash_cam" value="yes"/></td>
			</tr>
			<tr>
				<td><span>후방카메라</span></td>
				<td><input type="hidden" name="back_camera" value="no"checked/>
				<input type="checkbox" name="back_camera" value="yes"/></td>
			</tr>
			<tr>
				<td><span>내비게이션</span></td>
				<td><input type="hidden" name="navigation" value="no"checked/>
				<input type="checkbox" name="navigation" value="yes"/></td>
			</tr>
			<tr>
				<td><span>썬루프</span></td>
				<td><input type="hidden" name="sunroof" value="no"checked/>
				<input type="checkbox" name="sunroof" value="yes"/></td>
			</tr>
			<tr>
				<td><span>블루투스</span></td>
				<td><input type="hidden" name="bluetooth" value="no"checked/>
				<input type="checkbox" name="bluetooth" value="yes"/></td>
			</tr>
			<tr>
				<td><span>AUX</span></td>
				<td><input type="hidden" name="aux" value="no"checked/>
				<input type="checkbox" name="aux" value="yes"/></td>
			</tr>
			<tr>
				<td><span>스마트키</span></td>
				<td><input type="hidden" name="smart_key" value="no"checked/>
				<input type="checkbox" name="smart_key" value="yes"/></td>
			</tr>
			<tr>
				<td><span>평일가격</span></td>
				<td><input type="text" name="nomal_price" /></td>
			</tr>
			<tr>
				<td><span>주말가격</span></td>
				<td><input type="text" name="weekend_price" /></td>
			</tr>
			<tr>
				<td><span>차량 모델 번호</span></td>
				<td><input type="text" name="trim_seq" /></td>
			</tr>
			<tr>
				<td><span>지점</span></td>
				<td><input type="text" name="branch_seq" /></td>
			</tr>
		</table>
		<button type="submit">입력</button>
		<button type="reset">초기화</button>
	</form>
</article>

<script>
	$().ready(function(){
		$("#rcheckbox").change(function(){
			//$("#rcheckbox input[type=checkbox]").attr("value","1");
			val v = $("#rcheckbox input[type=checkbox]").prop();
			log.console(v);
		});
		

	});
</script>