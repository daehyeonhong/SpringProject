<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tempus Dominus</title>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script type="text/javascript" src="./tempusdominus.js"></script>
<link rel="stylesheet" href="./a.css" />
</head>
<body>
	<div class="container">
		<div class='col-md-5'>
			<div class="form-group">
				<div class="input-group date" id="datetimepickerStart" data-target-input="nearest">
					<input type="text" id="datetimepickerStartValue" class="form-control datetimepicker-input" data-target="#datetimepickerStart" />
					<div class="input-group-append" data-target="#datetimepickerStart" data-toggle="datetimepicker">
						<div class="input-group-text">
							<i class="fa fa-calendar">a</i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class='col-md-5'>
			<div class="form-group">
				<div class="input-group date" id="datetimepickerEnd" data-target-input="nearest">
					<input type="text" id="datetimepickerEndValue" class="form-control datetimepicker-input" data-target="#datetimepickerEnd" />
					<div class="input-group-append" data-target="#datetimepickerEnd" data-toggle="datetimepicker">
						<div class="input-group-text">
							<i class="fa fa-calendar">a</i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<input type="text" id="datetimepickerStartResult" required="required" readonly="readonly"/>
	<input type="text" id="datetimepickerEndResult" required="required" readonly="readonly"/>
	<script type="text/javascript">
	$().ready(function () {
		let start = document.getElementById('datetimepickerStartValue').value;
		let end = document.getElementById('datetimepickerEndValue').value;
		alert(start);
		alert(end);
	});
	let date = new Date();
		$(function() {
			$('#datetimepickerStart').datetimepicker({
				format : 'L',
				locale : 'ko'
			});
			$('#datetimepickerEnd').datetimepicker({
				format : 'L',
				locale : 'ko',
				useCurrent : false
			});
			$('#datetimepickerEnd').datetimepicker('minDate', date);
			$('#datetimepickerStart').datetimepicker('minDate', date);
			$('#datetimepickerStart').on('change.datetimepicker', function(e) {
				$('#datetimepickerStartResult').val(e.date);
				$('#datetimepickerEnd').datetimepicker('minDate', e.date);
			});
			$('#datetimepickerEnd').on('change.datetimepicker', function(e) {
				$('#datetimepickerEndResult').val(e.date);
				$('#datetimepickerStart').datetimepicker('maxDate', e.date);
			});
		});
	</script>
</body>
</html>