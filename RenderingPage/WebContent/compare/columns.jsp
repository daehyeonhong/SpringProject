<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Container ==> Columns</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style type="text/css">
	.{style="display: inline-block; box-sizing: border-box;"}
</style>
</head>
<body>
	<article>
		<h1>비교를 위해 제작된 페이지 입니다.</h1>
		<div class="container" style="background-color: yellow; border: 1px dotted #f33;">
			<span>container</span>
			<p class="text-right">우측</p>
			<p class="text-left">좌측</p>
		</div>
		<div class="col-sm-8" style="background-color: yellow; border: 1px dotted #f33;">
			<span>col-sm-8</span>
			<p class="text-right">우측</p>
			<p class="text-left">좌측</p>
		</div>
		<div class="container" style="background-color: yellow; border: 1px dotted #f33;">
			<div class="col-sm-8" style="border: 1px dotted #f33;">
					<span>container &gt; col-sm-8</span>
					<p class="text-right">우측</p>
					<p class="text-left">좌측</p>
			</div>
		</div>
		<hr />
		<div class="col-sm-8" style="background-color: yellow; border: 1px dotted #f33;">
			<div class="container" style="border: 1px dotted #f33;">
				<span>col-sm-8 &gt; container</span>
				<p class="text-right">우측</p>
				<p class="text-left">좌측</p>
			</div>
		</div>
		<hr />
		<div class="col-sm-8 container" style="background-color: yellow; border: 1px dotted #f33;">
			<span>col-sm-8 == container</span>
			<p class="text-right">우측</p>
			<p class="text-left">좌측</p>
		</div>
		<hr />
		<div class="container col-sm-8" style="background-color: yellow; border: 1px dotted #f33;">
			<span>container == col-sm-8</span>
			<p class="text-right">우측</p>
			<p class="text-left">좌측</p>
		</div>
	</article>
</body>
</html>