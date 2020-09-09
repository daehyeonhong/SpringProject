<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="dbconn.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="./resources/css/bootstrap.min.css" />

<title>중고차 장기 검색</title>
</head>
<body>



<script>
function chtest1(){
	document.getElementById("sellist2").value=null;
	document.getElementById("sellist2").disabled=false;
	
}
</script>

<script>
function chtest2(){
	document.getElementById("sellist3").value=null;
	document.getElementById("sellist3").disabled=false;
	
}
</script>
 
 <script>
 function test1(){
	 
 let target1=document.getElementById("sellist1");

/*  alert('선택된 옵션 text 값=' + target1.options[target1.selectedIndex].text);     // 옵션 text 값 */
 alert('선택된 옵션 value 값=' + target1.options[target1.selectedIndex].value);     // 옵션 value 값

 let target2=document.getElementById("sellist2");

/*  alert('선택된 옵션 text 값=' + target2.options[target2.selectedIndex].text);     // 옵션 text 값 */
 alert('선택된 옵션 value 값=' + target2.options[target2.selectedIndex].value);     // 옵션 value 값

 let target3=document.getElementById("sellist3");

/*  alert('선택된 옵션 text 값=' + target3.options[target3.selectedIndex].text);     // 옵션 text 값 */
 alert('선택된 옵션 value 값=' + target3.options[target3.selectedIndex].value);     // 옵션 value 값

 
 }
 
 </script>
 
<script>
function fchk(){
	let chk_obj = document.getElementsByName("example1");
	let chk_leng = chk_obj.length;
	let checked = 0; 

	for(i=0;i<chk_leng;i++){
		if(chk_obj[i].checked==true){
		
			checked +=1;
			alert(chk_obj[i].value);
		}

}

if(checked==0){
	alert("선택한정보가 없습니다.");
	return;
}else{
	alert(checked+"개선택");
	return;

 }
}

</script>

<script>
function fchk1(){
	let chk_obj = document.getElementsByName("example2");
	let chk_leng = chk_obj.length;
	let checked = 0; 

	for(i=0;i<chk_leng;i++){
		if(chk_obj[i].checked==true){
		
			checked +=1;
			alert(chk_obj[i].value);
		}

}

if(checked==0){
	alert("선택한정보가 없습니다.");
	return;
}else{
	alert(checked+"개선택");
	return;

 }
}

</script>


	

<div class="jumbotron">
<h2>중고차 장기 렌트</h2>
  </div>
  
  
  
  <div class="container">
  
  <div class="container" style="border:solid 2px;">
  
 <form method="post" onsubmit="test1();">
    <div class="row" >
     <span class="col-sm-1">&nbsp;</span>
     <div class="col-sm-3">
      <select class="form-control" id="sellist1" name="sellist1" onchange="chtest1()">
        <option>제조사 선택</option>
        <option value="기아">기아</option>
        <option value="현대">현대</option>
        <option value="르노/삼성">르노/삼성</option>
      </select>
      </div>
      
      <div class="col-sm-3">
      <select class="form-control" id="sellist2" name="sellist2" onchange="chtest2()" disabled>
        <option>차량 유형 선택</option>
        <option>소형</option>
        <option>중형</option>
        <option>대형</option>
      </select>
      </div>
      
      <div class="col-sm-3">
      <select class="form-control" id="sellist3" name="sellist3" disabled>
        <option>차량 선택</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
      </select>
      </div>
      

    <button type="submit" class="btn btn-primary col-sm-1">검색</button>
    
    
    </div>
   </form>
  
  <br><br>
  
     <form method="post" onsubmit="fchk();">
     <div class="row">
     <span class="col-sm-1">&nbsp;&nbsp;&nbsp;</span> 
    <span class="col-sm-1"><strong>연료 :</strong></span>
    <div class="col-sm-8">
     <span class="col-sm-1">&nbsp;&nbsp;&nbsp;</span> 
    <div class="form-check-inline">
       <input type="checkbox" value="전체" name="example1"><strong>&nbsp;전체&nbsp;</strong>
     <!--  <label class="custom-control-label" for="customRadio1"><strong>&nbsp;전체&nbsp;</strong></label> -->
    </div>
    <div class="form-check-inline">
      <input type="checkbox" value="휘발유" name="example1"><strong>&nbsp;휘발유&nbsp;</strong>
      <!-- <label class="custom-control-label" for="customRadio2"><strong>&nbsp;휘발유&nbsp;</strong></label> -->
    </div>
     <div class="form-check-inline">
      <input type="checkbox" value="경유" name="example1"><strong>&nbsp;경유&nbsp;</strong>
     <!--  <label class="custom-control-label" for="customRadio3"><strong>&nbsp;경유&nbsp;</strong></label> -->
    </div>
     <div class="form-check-inline">
      <input type="checkbox" value="LPG"name="example1"><strong>&nbsp;LPG&nbsp;</strong>
    <!--   <label class="custom-control-label" for="customRadio4"><strong>&nbsp;LPG&nbsp;</strong></label> -->
    </div>
    <div class="form-check-inline">
      <input type="checkbox" value="전기" name="example1"><strong>&nbsp;전기&nbsp;</strong>
    <!--   <label class="custom-control-label" for="customRadio5"><strong>&nbsp;전기&nbsp;</strong></label> -->
    </div>
    <div class="form-check-inline">
      <input type="checkbox" value="하이브리드" name="example1"><strong>&nbsp;하이브리드&nbsp;</strong>
   <!--    <label class="custom-control-label" for="customRadio6"><strong>&nbsp;하이브리드&nbsp;</strong></label> -->
    </div>
    </div>
  <!--    <input type="button" value="확인" onclick="Check(this.form);"> -->
    <input type="submit" value="검색" class= "col-sm-1">
  </div>
  </form>
  
  
  <br>
  
   <form method="post" onsubmit="fchk1();">
     <div class="row">
     <span class="col-sm-1">&nbsp;&nbsp;&nbsp;</span> 
    <span class="col-sm-1"><strong>지점 :</strong></span>
    <div class="col-sm-8">
     <span class="col-sm-1">&nbsp;&nbsp;&nbsp;</span> 
    <div class="form-check-inline">
       <input type="checkbox" value="전체" name="example2"><strong>&nbsp;전체&nbsp;</strong>
     <!--  <label class="custom-control-label" for="customRadio7"><strong>&nbsp;전체&nbsp;</strong></label> -->
    </div>
    <div class="form-check-inline">
      <input type="checkbox" value="서울" name="example2"><strong>&nbsp;서울&nbsp;</strong>
      <!-- <label class="custom-control-label" for="customRadio8"><strong>&nbsp;서울&nbsp;</strong></label> -->
    </div>
     <div class="form-check-inline">
      <input type="checkbox" value="경기" name="example2"><strong>&nbsp;경기&nbsp;</strong>
<!--       <label class="custom-control-label" for="customRadio9"><strong>&nbsp;경기&nbsp;</strong></label> -->
    </div>
     <div class="form-check-inline">
      <input type="checkbox" value="충청" name="example2"><strong>&nbsp;충청&nbsp;</strong>
     <!--  <label class="custom-control-label" for="customRadio10"><strong>&nbsp;충청&nbsp;</strong></label> -->
    </div>
    <div class="form-check-inline">
      <input type="checkbox" value="강원" name="example2"><strong>&nbsp;강원&nbsp;</strong>
 <!--      <label class="custom-control-label" for="customRadio11"><strong>&nbsp;강원&nbsp;</strong></label> -->
    </div>
    <div class="form-check-inline">
      <input type="checkbox" value="경상" name="example2"><strong>&nbsp;경상&nbsp;</strong>
   <!--    <label class="custom-control-label" for="customRadio12"><strong>&nbsp;경상&nbsp;</strong></label> -->
    </div>
    </div>
    <input type="submit" value="검색" class="col-sm-1">
  </div>
  </form>
  
  
  </div>
</div>
 
  
  
<div class="container">
<br>
<h3>검색결과</h3>
<hr style="border: solid 1px black " /> 

<%ResultSet rs=null;
PreparedStatement pstmt=null;
try{
	String sql="select * from member where facname=?";
	pstmt = con.prepareStatement(sql); 
 	pstmt.setString(1, "기아");
	rs=pstmt.executeQuery();%>
	
	<div class="row" >
	<% while(rs.next()){
		String id=rs.getString("id");
		String carname=rs.getString("carname");
		String facname=rs.getString("facname");
		%>


  <div  onclick="location.href='lent_long_old.jsp?carname=<%=carname%>'" class="card col-sm-6 " style="width:500px; height:300px; ">
    <div>
   <img class="card-img-top col-sm-8" src="./resources/images/car.jpg" alt="Card image" style="width:250px">
    <span class="col-sm-3"><%=carname%> </span>
    </div>
    <div class="card-body">
      <a class="card-title" style="border:1px solid">소비자가 </a>
      <a >&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;14,860,000원&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</a>
      <a class="card-title" style="border:1px solid red"><span style="color:red"><strong>월 렌탈료</strong></span></a>
      <a >&nbsp;&nbsp; <span style="color:red"><strong>346,000원~</strong></span></a>
     
      <hr style="border:1px solid"></hr>
      <div class="row">
      <ul class="col-sm-6">
      
      <li>차량 등록 &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;<span><%=id%></span></li>
      <li>주행거리  &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;<span><%=facname%></span></li>
      </ul>
      <ul class="col-sm-6">
      <li>계약기간  &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;<span>최대21개월</span></li>
      <li>지역   &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;<span>부산</span></li>
      </ul>
     </div>
     
    </div>
  </div>

 
 
  <% 
	}
}catch(Exception e){
	e.getStackTrace();
}finally{
	
		if(rs != null)
		rs.close();
		if(pstmt != null)
			pstmt.close();
		if(con != null)
			con.close();
	
}
%>

  </div>

    </div>

  
  
  
  
</body>
</html>