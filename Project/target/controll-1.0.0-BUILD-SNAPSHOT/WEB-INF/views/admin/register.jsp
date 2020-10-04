<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<body class="bg-gradient-primary">

	<div class="container">

		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
					<div class="col-lg-7">
						<div class="p-5">
							<div class="text-center">
								<h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
							</div>

							<form class="user" action="/admin/register" method="post" id="newMember">
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input class="form-control form-control-user"
											id="exampleFirstName" placeholder="First Name"
											name="firstName"required>
									</div>
									<div class="col-sm-6">
										<input class="form-control form-control-user"
											id="exampleLastName" placeholder="Last Name" name="lastName"required>
									</div>
								</div>
								<div class="form-group">
									<input type="email" class="form-control form-control-user"
										id="exampleInputEmail" placeholder="Email Address"
										name="email"required>
								</div>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="password" class="form-control form-control-user"
											id="password" placeholder="Password"
											name="password"required>
									</div>
									<div class="col-sm-6">
										<input type="password" class="form-control form-control-user"
											id="password_Confirm" placeholder="Repeat Password"
											name="password2"required>
											<label id="checkPasswordResult"></label>
											<input type="hidden" id="passwordConfirm" value="false"/>
									</div>
								</div>
								<input type="submit" class="btn btn-primary btn-user btn-block"
									value="Register Account" name="submitBtn">
								<hr>
								<a href="index.html" class="btn btn-google btn-user btn-block">
									<i class="fab fa-google fa-fw"></i> Register with Google
								</a> <a href="index.html"
									class="btn btn-facebook btn-user btn-block"> <i
									class="fab fa-facebook-f fa-fw"></i> Register with Facebook
								</a>
							</form>
							<hr>
							<div class="text-center">
								<a class="small" href="forgot-password.html">Forgot
									Password?</a>
							</div>
							<div class="text-center">
								<a class="small" href="/admin/login">Already have an
									account? Login!</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<script>
		
	$().ready(function(){
	    
		$('#submitBtn').click(function() {
			
			if ($('#password_Confirm').val() == 'true') {
				let confirmSignIn = confirm("정말 가입하시겠습니까?");
				
					if (confirmSignIn){
						$('#newMember').submit();
					} else {
						alert('요청이 취소되었습니다.');
					}
			} else {
				alert('비밀번호 오류!');
				$("#password").val('');
				$("#password_Confirm").val('');
				$("#password").focus();
			}
		});
		
		
		$("#password_Confirm").change(function() {
			let password1 = $("#password").val();
			let password2 = $("#password_Confirm").val();
			
			if ((password1 != '') && (password2 != '')) {
				
				if ((password1 == password2)){
					$("#passwordConfirm").val('true');
					$("#checkPasswordResult").attr("class", "form-control badge badge-success");
					$("#checkPasswordResult").html('비밀번호 확인');
				} else {
					$("#passwordConfirm").val('false');
					$("#checkPasswordResult").attr('class', 'form-control badge badge-danger');
					$("#checkPasswordResult").html('비밀번호가 다릅니다.');
				}
			} else {
				$("#checkPasswordResult").attr('class', '');
				$("#checkPasswordResult").html('');
			}
		});
		
		$("#password").change(function() {
			let password1 = $("#password").val();
			let password2 = $("#password_confirm").val();
			
			if ((password2 != '') && (password1 != '')) {
				
				if (password1 == password2) {
					$("#passwordConfirm").val('true');
					$("#checkPasswordResult").attr("class", "form-control badge badge-success");
					$("#checkPasswordResult").html('비밀번호 확인');
				} else {
					$("#passwordConfirm").val('false');
					$("#checkPasswordResult").attr('class', 'form-control badge badge-danger');
					$("#checkPasswordResult").html('비밀번호가 다릅니다.');
				}
			} else {
				$("#checkPasswordResult").attr('class', '');
				$("#checkPasswordResult").html('');
			}
		});
		

		
	});
			
	</script>