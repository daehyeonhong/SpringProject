<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰내역</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container col-sm-5">
  <h2>쿠폰내역</h2>
  <hr color = "black">
  <div class="btn-group">
    <h7>조회기간</h7>&nbsp;&nbsp;&nbsp;
    <button type="button" class="btn btn-outline-secondary">1개월</button>
    <button type="button" class="btn btn-outline-secondary">3개월</button>
    <button type="button" class="btn btn-outline-secondary">6개월</button>
  </div>
			<table class="col-sm-5"><br><br>
				<tr>
					<td colspan="3">
						<input type="date" class="form-control"  > 
						</td>
						<td>
					    	-
						</td>
                         <td>   
						<input type="date" class="form-control"  >
						</td>
						<td>
						<button type="button"  class="btn btn-danger col-sm-5">조회하기</button>
						</td>
				</tr>
			</table>
				<h7>사용여부</h7>&nbsp;&nbsp;&nbsp;
						<div class="input-group-prepend">
						<select class="form-control col-sm-3">
							<option value="전체">전체</option>
							<option value="미사용">미사용</option>
							<option value="사용">사용</option>
						</select>
					</div><br>
				<h7>쿠폰명</h7>&nbsp;&nbsp;&nbsp;
				 <div class="form-group col-sm-8">
				      <input type="text" class="form-control" placeholder="쿠폰명을 입력해주세요.">
				    </div>
					
			  <hr color = "black">
			  
			  <table style="border:1px solid #D5D5D5; font-size: 16px;">
			      <tr>
			        <th>
			          <ul> 
			             <li>유효기간이 지난 쿠폰은 자동소멸됩니다.</li>
			           	 <li>멤버십 쿠폰은 멤버십 내역 &gt; 사용/미사용 내역에서 확인하실 수 있습니다.</li>
			        </ul>
			        </th>
			      </tr>
			  </table>
        </div>
  
</body>
</html>