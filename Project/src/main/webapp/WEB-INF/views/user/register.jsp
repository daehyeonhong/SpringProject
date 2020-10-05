<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	.chk_register{font-size: 10px; color: red;}
</style>
<article>
	<div class="container col-sm-4 card" align="center">
	<br>
		<h1 class="display-6">기본 정보 입력</h1>
		<br>
		<form class="form-group" action="/user/register" method="post" name="userForm" id="userForm">
			<table class="col-sm-10">
				<tr>
					<td>
					    <!-- <span class="form-control"></span> -->
						<b>아이디</b>	
						<div class="input-group">
						<input type="text" class="col form-control" id="users_id" name="users_id" placeholder="아이디" required="required" autofocus="autofocus" maxlength="19" onkeypress="if(event.keyCode ==32) event.returnValue=false;" />
							<div class="input-group-append">
						<button class="col btn btn-primary" id="idBtn" type="button" onclick="chk_id()">중복 확인</button>
							</div></div>
						<div class="chk_register" id="chk_id"></div>
						<input type="hidden" class="chkD" id="chk_idD"></input>
					</td>
				</tr>
				<tr>
					<td>
						<b>비밀번호</b>
						<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호" required="required" maxlength="19"/>
						<div class="chk_register" id="chk_pw1"></div>
					</td>
				</tr>
				<tr>
					<td>
						<b>비밀번호 확인</b>
						<input type="password" class="form-control" id="passwordConfirm" name="passwordConfirm" placeholder="비밀번호 재입력" required="required" maxlength="19"/>
						<div class="chk_register" id="chk_pw2"></div>
					</td>
				</tr>
				<tr>
					<td>
						<!--기능구현할때  전에 입력한 이름,전화번호 같이 넘어와야함 -->
						<b>이름</b>
						<input type="text" class="form-control" id="users_name" name="users_name" required="required" maxlength="5"/>
						<div class="chk_register" id="chk_name"></div>
					</td>
				</tr>
				<tr>
					<td>
					    <b>닉네임</b>
					    <div class="input-group">
						<input type="text" class="form-control" id="users_nickname" name="users_nickname" placeholder="닉네임" required="required" maxlength="5"onkeypress="if(event.keyCode ==32) event.returnValue=false;"/>
						<div class="input-group-append">
						<button class="col btn btn-primary" id="nicknameBtn" type="button" onclick="nicknameChk()">중복 확인</button>
						</div></div>
						<div class="chk_register" id="chk_nickname"></div>
						<input type="hidden" class="chkD" id="chk_nicknameD"></input>
					</td>
				</tr>
				<tr>
					<td>
					   <b>생일</b>
						<input type="text" class="form-control" id="birth_date" name="birth_date" placeholder="yyyy-MM-dd" required="required" maxlength="10"/>
						<div class="chk_register" id="chk_birth"></div>
					</td>
				</tr>
				<tr>
					<td>
					    <b>핸드폰</b>
					     <div class="input-group">
						<input type="text" class="form-control" id="users_phone" name="users_phone" required="required" maxlength="13"onkeypress="if(event.keyCode ==32) event.returnValue=false;"/>
						<div class="input-group-append">
						<button class="col btn btn-primary" id="phoneBtn" type="button" onclick="phoneChk()">중복 확인</button>
						</div></div>
						<div class="chk_register" id="chk_phone"></div>
						<input type="hidden" class="chkD" id="chk_phoneD"></input>
					</td>
				</tr>
				<tr>
					<td>
					    <b>이메일</b>
						<input type="text" class="form-control" id="users_email" name="users_email" value="${users.users_email}" readonly="readonly" required="required" />
						<div class="chk_register" id="chk_email"></div>
					</td>
				</tr>
				<tr>
					<td>
					    <b>운전 면허증</b>
					    <div class="input-group">
						<input type="text" class="form-control" id="license" name="license" required="required" onkeypress="if(event.keyCode ==32) event.returnValue=false;"/>
						<div class="input-group-append">
						<button class="col btn btn-primary" id="licenseBtn" type="button" onclick="licenseChk()">중복 확인</button>
						</div></div>
						<div class="chk_register" id="chk_license"></div>
						<input type="hidden" class="chkD" id="chk_licenseD"></input>
					</td>
				</tr>
				
			</table>
			<br>
			<div class="container col-sm-10">
			<input type="submit" class="row btn btn-danger" value="가입완료" id="registerBtn" name="registerBtn"/>
			</div>
			
			<input type="hidden" value="" name=""></input>
		</form>
	<br>
	</div>
</article>
<script>
/* id유효성검사 */
$("#users_id").blur(function(){
   if(idV.test($("#users_id").val())){
      $("#chk_id").text("");
      $("#users_id").css("border","");
   }else{
      $("#chk_id").text("띄어쓰기 없이 영문 소문자, 숫자 포함 4 ~ 20자 이내");
      $("#users_id").css("border","1px solid red");
      /* $("#chk_id").css("color","red"); */
   }
});
/* 아이디 중복검사 */
 $("#idBtn").on('click',function(){
		var users_id = $('#users_id').val();
	$.get('/user/checkId/' + users_id, function(result){
			if(result=="success"){
				$("#chk_id").text("사용가능한 아이디입니다.");
				$("#chk_id").css("color","green");
				$("#chk_idD").val("success");
				$("#users_id").attr('readonly',true);
				$("#users_id").val(users_id);
			}else if(result=="failure"){
				$("#chk_id").text("이미 사용중인 아이디입니다.");
				$("#chk_id").css("color","red");
				$("#chk_idD").val("failure");
			}
		});
	});
	 
/* 비밀번호 일치확인/유효성 검사 */
$("#password").blur(function(){
if(pwV.test($("#password").val())){
      $("#chk_pw1").text("");
      $("#password").css("border","");
   }else{
      $("#chk_pw1").text("띄어쓰기 없이 영문, 숫자 포함 10 ~ 20자 이내");
      /* $("#chk_pw1").css("color","red"); */
      $("#password").css("border","1px solid red");
   }
});
$("#passwordConfirm").blur(function(){
   if($("#password").val() != $(this).val()){
      $("#chk_pw2").text("비밀번호가 일치하지 않습니다.");
      $("#passwordConfirm").css("border","1px solid red");
      /* $("#passwordConfirm").focus(); */
   }else{
      $("#chk_pw2").text("");
      $("#passwordConfirm").css("border","");
   }
});
/*  이름유효성 검사 */
$("#users_name").blur(function(){
   if(nameV.test($("#users_name").val())){
      $("#chk_name").text("");
      $("#users_name").css("border","");
   }else{
      $("#chk_name").text("한글로 2~6자 이내로 입력해주세요.");
      $("#users_name").css("border","1px solid red");      }
});
/* 이메일 유효검사 */
$("#users_email").blur(function(){
   if(mailV.test($("#users_email").val())){
      $("#chk_email").text("");
      $("#users_email").css("border","");
   }else{
      $("#chk_email").text("메일형식에 맞지않습니다.");
      $("#users_email").css("border","1px solid red");      }
});
/* 휴대폰 유효검사 */
$("#users_phone").blur(function(){
   if(phoneV.test($("#users_phone").val())){
      $("#chk_phone").text("");
      $("#users_phone").css("border","");
   }else{
      $("#chk_phone").text("형식에 맞지않습니다.(ex.010-0000-0000)");
      $("#users_phone").css("border","1px solid red");      }
});
/* 휴대폰 중복확인 */
$("#phoneBtn").on('click',function(){
	var users_phone = $('#users_phone').val();
/* 	alert(users_phone); */
$.get('/user/checkPhone/' + users_phone, function(result){
		if(result=="success"){
			$("#chk_phone").text("사용가능한 번호입니다.");
			$("#chk_phone").css("color","green");
			$("#chk_phoneD").val("success");
			$("#users_phone").attr('readonly',true);
			$("#users_phone").val(users_phone);
		}else if(result=="failure"){
			$("#chk_phone").text("이미 사용중인 번호입니다.");
			$("#chk_phone").css("color","red");
			$("#chk_phoneD").val("failure");
		}
	});
});


/* 닉네임 유효검사 */
$("#users_nickname").blur(function(){
   if(nickV.test($("#users_nickname").val())){
      $("#chk_nickname").text("");
      $("#users_nickname").css("border","");
   }else{
      $("#chk_nickname").text("한글 2~6자 이내로 입력해주세요.");
      $("#users_nickname").css("border","1px solid red");   
   }
});
/* 닉네임 중복확인*/
$("#nicknameBtn").on('click',function(){
	var users_nickname = $('#users_nickname').val();
$.get('/user/checkNickname/' + users_nickname, function(result){
		if(result=="success"){
			$("#chk_nickname").text("사용가능한 닉네임입니다.");
			$("#chk_nickname").css("color","green");
			$("#chk_nicknameD").val("success");
			$("#users_nickname").attr('readonly',true);
			$("#users_nickname").val(users_nickname);
		}else if(result=="failure"){
			$("#chk_nickname").text("이미 사용중인 닉네임입니다.");
			$("#chk_nickname").css("color","red");
			$("#chk_nicknameD").val("failure");
		}
	});
});



/* 생일 유효검사 */
$("#birth_date").blur(function(){
   if(birthV.test($("#birth_date").val())){
      $("#chk_birth").text("");
      $("#birth_date").css("border","");
   }else{
      $("#chk_birth").text("형식에 맞지않습니다.(ex.1990-01-01)");
      $("#birth_date").css("border","1px solid red");      }
});


/*운전면허 유효검사  */
$("#license").blur(function(){
   if(licenseV.test($("#license").val())){
      $("#chk_license").text("");
      $("#license").css("border","");
   }else{
      $("#chk_license").text("형식에 맞지않습니다.");
      $("#license").css("border","1px solid red");      }
});

/*운전면허 중복확인 */
$("#licenseBtn").on('click',function(){
		var license = $('#license').val();
	$.get('/user/checkLicense/' + license, function(result){
			if(result=="success"){
				$("#chk_license").text("사용가능한 번호입니다.");
				$("#chk_license").css("color","green");
				$("#chk_licenseD").val("success");
				$("#license").attr('readonly',true);
				$("#license").val(license);
			}else if(result=="failure"){
				$("#chk_license").text("이미 사용중인 번호입니다.");
				$("#chk_license").css("color","red");
				$("#chk_licenseD").val("failure");
			}
		});
	});


/* 생년월일 유효검사 */
/*  var birthV = false;
$('#birth_date').blur(function(){
   var dateStr = $(this).val();      
    var year = Number(dateStr.substr(0,4));
    var month = Number(dateStr.substr(4,2));
    var day = Number(dateStr.substr(6,2));
    var today = new Date(); 
    var yearNow = today.getFullYear();
   
    if (dateStr.length <=8) {
       if (1900 > year || year > yearNow){
          $('#chk_birth').text('생년월일을 확인해주세요.');
          $("#birth_date").css("border","1px solid red");   
       }else if (month < 1 || month > 12) {
          $('#chk_birth').text('생년월일을 확인해주세요.');
          $("#birth_date").css("border","1px solid red");   
       }else if (day < 1 || day > 31) {
          $('#chk_birth').text('생년월일을 확인해주세요.');
          $("#birth_date").css("border","1px solid red");   
       }else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
          $('#chk_birth').text('생년월일을 확인해주세요.');
          $("#birth_date").css("border","1px solid red");   
       }else if (month == 2) {
             var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
           if (day>29 || (day==29 && !isleap)) {
              $('#chk_birth').text('생년월일을 확인해주세요.');
              $("#birth_date").css("border","1px solid red");   
         }else{
            $('#chk_birth').text('');
            $("#birth_date").css("border","");   
            birthV = true;
         }
       }else{
          $('#chk_birth').text(''); 
          $("#birth_date").css("border","");   
         birthV = true;
      }
      }else{
         $('#chk_birth').text('생년월일을 확인해주세요.');
         $("#birth_date").css("border","1px solid red");   
      }
});  */
var chk_register = new Array(8).fill(false);
$('#registerBtn').click(function(){
   /* id정규식 */
   if (idV.test($('#users_id').val())$("#chk_idD").val()=='success'){
      chk_register[0] = true;
   } else {
      chk_register[0] = false;
   }
    // 비밀번호가 같은 경우 && 비밀번호 정규식
   if (($('#password').val() == ($('#passwordConfirm').val()))
         && pwV.test($('#password').val())) {
      chk_register[1] = true;
   } else {
      chk_register[1] = false;
   }
   // 이름 정규식
   if (nameV.test($('#users_name').val())) {
      chk_register[2] = true;   
   } else {
      chk_register[2] = false;
   }
   //닉네임
   if (nickV.test($('#users_nickname').val())&& $("#chk_nicknameD").val()=='success') {
      console.log(nickV.test($('#users_nickname').val()));
      alert("$('#chk_nicknameD').val()");
      chk_register[3] = true;
   } else {
      chk_register[3] = false;
   }
   // 생년월일 정규식
   if (birthV.test($('#birth_date').val())) {
      chk_register[4] = true;
   } else {
      chk_register[4] = false;
   }
   // 휴대폰번호 정규식
   if (phoneV.test($('#users_phone').val()) && $("#chk_phoneD").val()=='success') {
      console.log(phoneV.test($('#users_phone').val()));
      chk_register[5] = true;
   } else {
      chk_register[5] = false;
   }
    // 이메일 정규식
   if (mailV.test($('#users_email').val())){
      console.log(phoneV.test($('#users_email').val()));
      chk_register[6] = true;
   } else {
      chk_register[6] = false;
   }
    // 면허증
   if (licenseV.test($('#license').val())&& $("#chk_licenseD").val()=='success') {
      console.log(licenseV.test($('#license').val()));
      chk_register[7] = true;
   } else {
      chk_register[7] = false;
   } 
   
   var validAll = true;
   for(var i = 0; i < chk_register.length; i++){
      if(chk_register[i] == false){
         validAll = false;
      }
   }
   if(validAll){ 
      alert('가입이 완료되었습니다.');
      /* userForm1.submit();  */ 
   } else{
      alert('입력한 정보들을 다시 한번 확인해주세요.')
      return false;
   }
});
</script>    
<script>
var idV=/^[a-z0-9]{4,20}$/;
var pwV=/^[a-z0-9]{1,2}$/;
var mailV=/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
var phoneV=/^010-([0-9]{3,4})-([0-9]{4})$/;
var nameV=/^[가-힣]{2,6}$/;
var nickV=/^[가-힣]{2,6}$/;
var licenseV=/^[0-9]{2,6}$/;
var birthV=/^([0-9]{4})-([0-9]{2})-([0-9]{2})$/;
</script>

