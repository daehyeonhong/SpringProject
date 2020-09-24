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

							<form class="user" action="/admin/register" method="post">
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input class="form-control form-control-user"
											id="exampleFirstName" placeholder="First Name"
											name="firstName">
									</div>
									<div class="col-sm-6">
										<input class="form-control form-control-user"
											id="exampleLastName" placeholder="Last Name" name="lastName">
									</div>
								</div>
								<div class="form-group">
									<input type="email" class="form-control form-control-user"
										id="exampleInputEmail" placeholder="Email Address"
										name="email">
								</div>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="password" class="form-control form-control-user"
											id="exampleInputPassword" placeholder="Password"
											name="password">
									</div>
									<div class="col-sm-6">
										<input type="password" class="form-control form-control-user"
											id="exampleRepeatPassword" placeholder="Repeat Password"
											name="password2">
									</div>
								</div>
								<input type="submit" class="btn btn-primary btn-user btn-block"
									value="Register Account" onclick="return chk()">
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
		function chk() {
			var pass1 = document.forms[0].password.value;
			var pass2 = document.forms[0].password2.value;
			if (pass1 != pass2) {
				alert("Incorrect Password Identified");
				document.forms[0].password.value = "";
				document.forms[0].password2.value = "";
				document.forms[0].password.focus();
				return false;
			}
		}
	</script>