<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>양식다운로드</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<!-- <link rel="stylesheet" href="./resources/css/bootstrap.min.css" /> -->
<%@include file="mainBar.jsp"%>	
<%@include file="customerCenterBar.jsp"%>
<br>
<br>
<div class="container">
  <h1>양식다운로드</h1>
  <br>
  <br>
  <!-- Nav tabs -->
  <ul class="container nav nav-tabs" role="tablist">
    <li class="col nav-item">
      <a class="nav-link active" data-toggle="tab" href="#1">신청서</a>
    </li>
    <li class="col nav-item">
      <a class="nav-link" data-toggle="tab" href="#2">계약종료(안내)</a>
    </li>
    <li class="col nav-item">
      <a class="nav-link" data-toggle="tab" href="#3">계약서 작성(예)</a>
    </li>
    <li class="col nav-item">
      <a class="nav-link" data-toggle="tab" href="#4">양도합의서 작성(예)</a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="container tab-content">
    <div id="1" class="tab-pane active"><br>
   	 <table style="width:100%;">
      	<tr>
      	<td>
      	 	<div class="card">
    		<div class="card-body"> <!-- style="height:150px;" -->
      		<h4 class="card-title">장기렌터카 보험조건 변경 신청서(PDF)</h4>
     		<p class="card-text">보험 조건 변경 신청서 양식</p>
     		<img src="./resources/images/downloadIcon.gif">
    		</div>
    		</div>
      	</td>
      	<td>
      		<div class="card">
    		<div class="card-body"> <!-- style="height:150px;" -->
      		<h4 class="card-title">장기렌터카 결제 정보 변경 신청서(PDF)</h4>
     		<p class="card-text">결제 정보 변경 신청서 양식 및 필요서류 안내</p>
     		<img src="./resources/images/downloadIcon.gif">
    		</div>
    		</div>
      	</td>
      	</tr>
      	
      	<tr>
      	<td>
      	 	<div class="card">
    		<div class="card-body"> <!-- style="height:150px;" -->
      		<h4 class="card-title">장기렌터카 단기 운전자 추가 신청서(PDF)</h4>
     		<p class="card-text">단기 운전자 추가 신청 양식</p>
     		<img src="./resources/images/downloadIcon.gif">
    		</div>
    		</div>
      	</td>
      	<td>
      		<div class="card">
    		<div class="card-body"> <!-- style="height:150px;" -->
      		<h4 class="card-title">장기렌터카 계약이관 신청서 및 안내문(PDF)</h4>
     		<p class="card-text">계약이관 신청서 양식 및 필요서류안내</p>
     		<img src="./resources/images/downloadIcon.gif">
    		</div>
    		</div>
      	</td>
      	</tr>
      	
      		<tr>
      	<td>
      	 	<div class="card">
    		<div class="card-body"> <!-- style="height:150px;" -->
      		<h4 class="card-title">장기렌터카 중도해지 신청서 및 안내문(PDF)</h4>
     		<p class="card-text">중도해지 신청서 양식 및 필요서류안내</p>
     		<img src="./resources/images/downloadIcon.gif">
    		</div>
    		</div>
      	</td>
      	<td>
      	</td>
      	</tr>
    </table>
    </div>
    
    <div id="2" class="container tab-pane fade"><br>
        <table style="width:100%;">
        <tr>
      	<td>
      	 	<div class="card">
    		<div class="card-body"> <!-- style="height:150px;" -->
      		<h4 class="card-title">장기렌터카 계약종료 안내문(PDF)</h4>
     		<p class="card-text">계약종료 필요서류안내</p>
     		<img src="./resources/images/downloadIcon.gif">
    		</div>
    		</div>
      	</td>
      	<td>
      	</td>
      	</tr>
        </table>
   </div>
   <div id="3" class="container tab-pane fade"><br>
      <table style="width:100%;">
        <tr>
      	<td>
      	 	<div class="card">
    		<div class="card-body"> <!-- style="height:150px;" -->
      		<h4 class="card-title">장기상품 계약서(PDF)</h4>
     		<p class="card-text">계약서 작성 예시</p>
     		<img src="./resources/images/downloadIcon.gif">
    		</div>
    		</div>
      	</td>
      	<td>
      		<div class="card">
    		<div class="card-body"> <!-- style="height:150px;" -->
      		<h4 class="card-title">개인장기상품 이관계약서_개인(PDF)</h4>
     		<p class="card-text">계약서 작성 예시</p>
     		<img src="./resources/images/downloadIcon.gif">
    		</div>
    		</div>
      	</td>
      	</tr>
      	 <tr>
      	<td>
      	 	<div class="card">
    		<div class="card-body"> <!-- style="height:150px;" -->
      		<h4 class="card-title">개인장기상품 이관계약서_법인(PDF)</h4>
     		<p class="card-text">계약서 작성 예시</p>
     		<img src="./resources/images/downloadIcon.gif">
    		</div>
    		</div>
      	</td>
      	<td>
      	</td>
      	</tr>
        </table>
    </div>
    <div id="4" class="container tab-pane fade"><br>
       <table style="width:100%;">
        <tr>
      	<td>
      	 	<div class="card">
    		<div class="card-body"> <!-- style="height:150px;" -->
      		<h4 class="card-title">개인 양도합의서(PDF)</h4>
     		<p class="card-text">계약서 작성 예시</p>
     		<img src="./resources/images/downloadIcon.gif">
    		</div>
    		</div>
      	</td>
      	<td>
      	</td>
      	</tr>
      </table>
    </div>

</div>
</div>

<br>
<br>
<%@include file="footer.jsp"%>
</body>
</html>