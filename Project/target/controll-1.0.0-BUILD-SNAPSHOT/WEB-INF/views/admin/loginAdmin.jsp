<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<body class="bg-gradient-primary">
</body>
<div class="container">
	<!-- Outer Row -->
	<div class="row justify-content-center">
		<div class="col-xl-10 col-lg-12 col-md-9">
			<div class="card o-hidden border-0 shadow-lg my-5">
				<div class="card-body p-0">
					<!-- Nested Row within Card Body -->
					<div class="row">
						<div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
						<div class="col-lg-6">
							<div class="p-5">
								<div class="text-center">
									<h1 class="h4 text-gray-900 mb-4">Admin Login</h1>
								</div>
								<form class="user" action="j_security_check" method="post">
									<div class="form-group">
										<input class="form-control form-control-user"
											id="adminIdInput" aria-describedby="emailHelp"
											placeholder="Enter Admin ID..." name="j_username">
									</div>
									<div class="form-group">
										<input type="password" class="form-control form-control-user"
											id="exampleInputPassword" placeholder="Password"
											name="j_password">
									</div>		
									<input class="btn btn-primary btn-user btn-block" type="submit"
										value="Login">
								</form>
								<hr>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	//var d = document.createElement("div");
	//d.setAttribute("class","alert alert-danger");
	
	//d.setAttribute("text","아이디와 비밀번호를 확인해 주세요");
	
	var error = ${error};
	var str = "";

	$().ready(function(){
		if(error!=null){		
			//document.getElementsByClassName("text-center")[0].appendChild(d);
			//$(".alert alert-danger").append("아이디와 비밀번호를 확인해 주세요");
			//$(".alert alert-danger").html("<span>heelo</span>");
			//alert($(".alert alert-danger").text("hello");	

			str = "<div class='alert alert-danger' >아이디와 비밀번호를 확인해 주세요</div>";
			$(".text-center").append(str);
			$("#adminIdInput").focus();
		}
	});
</script>