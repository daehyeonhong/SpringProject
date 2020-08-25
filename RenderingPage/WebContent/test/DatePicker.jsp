<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<body>
	<script>
		$(function() {

			//오늘 날짜를 출력
			$("#today").text(new Date().toLocaleDateString());

			//datepicker 한국어로 사용하기 위한 언어설정
			$.datepicker.setDefaults($.datepicker.regional['ko']);

			// 시작일(fromDate)은 종료일(toDate) 이후 날짜 선택 불가
			// 종료일(toDate)은 시작일(fromDate) 이전 날짜 선택 불가

			//시작일.
			$('#fromDate').datepicker({
				showOn : "both", // 달력을 표시할 타이밍 (both: focus or button)
				buttonImage : "images/calendar.gif", // 버튼 이미지
				buttonImageOnly : true, // 버튼 이미지만 표시할지 여부
				buttonText : "날짜선택", // 버튼의 대체 텍스트
				dateFormat : "yy-mm-dd", // 날짜의 형식
				changeMonth : true, // 월을 이동하기 위한 선택상자 표시여부
				//minDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이전 날짜 선택 불가)
				onClose : function(selectedDate) {
					// 시작일(fromDate) datepicker가 닫힐때
					// 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
					$("#toDate").datepicker("option", "minDate", selectedDate);
				}
			});

			//종료일
			$('#toDate').datepicker(
					{
						showOn : "both",
						buttonImage : "images/calendar.gif",
						buttonImageOnly : true,
						buttonText : "날짜선택",
						dateFormat : "yy-mm-dd",
						changeMonth : true,
						//minDate: 0, // 오늘 이전 날짜 선택 불가
						onClose : function(selectedDate) {
							// 종료일(toDate) datepicker가 닫힐때
							// 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
							$("#fromDate").datepicker("option", "maxDate",
									selectedDate);
						}
					});
		});
		$(function() {

			//datepicker 한국어로 사용하기 위한 언어설정
			$.datepicker.setDefaults($.datepicker.regional['ko']);

			// 시작일(fromDate)은 종료일(toDate) 이후 날짜 선택 불가
			// 종료일(toDate)은 시작일(fromDate) 이전 날짜 선택 불가

			//시작일.
			$('#fromDate').datepicker({
				//dateFormat: "yy-mm-dd",
				//monthNamesShort: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
				//dayNamesMin:["일","월","화","수","목","금","토"],
				//buttonImage: "/jdAdmin/images/calendar.png", // 버튼 이미지
				//buttonImageOnly : true,             // 버튼 이미지만 표시할지 여부
				//buttonText: "날짜선택",             // 버튼의 대체 텍스트
				dateFormat : "yy-mm-dd", // 날짜의 형식
				changeMonth : true, // 월을 이동하기 위한 선택상자 표시여부
				maxDate : 0, // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
				onClose : function(selectedDate) {
					// 시작일(fromDate) datepicker가 닫힐때
					// 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
					$("#toDate").datepicker("option", "minDate", selectedDate);

					var date = $(this).datepicker('getDate');

					date.setDate(date.getDate() + 7); // Add 7 days
					$('#toDate').datepicker("option", "maxDate", date); // Set as default
				}
			});

			//종료일
			$('#toDate').datepicker(
					{
						//dateFormat: "yy-mm-dd",
						//monthNamesShort: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
						//dayNamesMin:["일","월","화","수","목","금","토"], 
						dateFormat : "yy-mm-dd",
						changeMonth : true,
						maxDate : 0, // 오늘 이후 날짜 선택 불가
						onClose : function(selectedDate) {
							// 종료일(toDate) datepicker가 닫힐때
							// 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
							$("#fromDate").datepicker("option", "maxDate",
									selectedDate);
						}
					});

		});
		function checkForm() {
			let from = document.getElementById("fromDate").value;
			let to = document.getElementById("toDate").value;
			
			document.getElementById("result").innerHTML = from + to; 
		}
	</script>
	<form action="#">
		<input type="text" name="sdate" id="fromDate" value="" />
		<input type="text" name="edate" id="toDate" value="" />
		<input type="button" value="전송" onclick="checkForm()"/>
	</form>
	<p id="result">
</body>
</html>