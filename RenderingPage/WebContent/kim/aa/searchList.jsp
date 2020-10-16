<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"  %>

<%
request.setCharacterEncoding("utf-8");
String facname1 =request.getParameter("sellist1"); 
String cartype1 =request.getParameter("sellist2"); 
String carnum1 =request.getParameter("sellist3"); 

String checkBoxes1[] =request.getParameterValues("example1"); 
String chekcBoxex2[] =request.getParameterValues("example2");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="../resources/css/bootstrap.min.css" />

<title>중고차 장기 검색</title>

<script>
function subtest(){
let a=documenet.getElementById("sellist2").value;
alert(a);
}
</script>

<script>
$(document).ready(function(){
	$("input:checkbox[name=example1]").on("click",function(){
		if(($('#sellist1').val()!='제조사 선택') && ($('#sellist2').val()=='차량 유형 선택')){
			alert('차량 유형을 선택하세요!');
			$("input:checkbox[name=example1]").prop("checked", false);
			$('#sellist2').focus();
			$('#tess1').prop("disabled",true);
		}
		else{$('#tess1').prop("disabled",false);}
		let cont=$("input:checkbox[name=example1]:checked").length;
		alert(cont);
		let cont5=$("input:checkbox[name=example1]:checked").val();
		if(cont5=='전체'){$("input:checkbox[name=example1]").not(this).prop("disabled", "disabled");
		$("input:checkbox[name=example1]").not(this).prop("checked", false);
		
		}else {
	            $("input[name=example1]:checkbox").prop("disabled",false);
	        }
		if(cont>2){
			$(this).prop("checked", false);
			alert("2개이상 선택 불가능 ");
		}
		
	});	
	
});
</script>

<script>
$(document).ready(function(){
	$("input:checkbox[name=example2]").on("click",function(){
		if(($('#sellist1').val()!='제조사 선택') && ($('#sellist2').val()=='차량 유형 선택')){
			alert('차량 유형을 선택하세요!');
			$("input:checkbox[name=example2]").prop("checked", false);
			$('#sellist2').focus();
			$('#tess2').prop("disabled",true);
		}
		else{$('#tess1').prop("disabled",false);}
		let cont=$("input:checkbox[name=example2]:checked").length;
		alert(cont);
		let cont5=$("input:checkbox[name=example2]:checked").val();
		if(cont5=='전체'){$("input:checkbox[name=example2]").not(this).prop("disabled", "disabled");
		$("input:checkbox[name=example2]").not(this).prop("checked", false);
		
		}else {
	            $("input[name=example2]:checkbox").prop("disabled",false);
	        }


		
		if(cont>2){
			$(this).prop("checked", false);
			alert("2개이상 선택 불가능 ");
		}
		
	});	
	
});
</script>
</head>
<body>
<script>
function goDate1(){
	let form= document.userinput;
	document.getElementById("sellist2").value=null;
	form.submit();
	
}
</script>

<script>
function goDate2(){
	let form= document.userinput;
	document.getElementById("sellist3").value=null;
	form.submit();
	
}
</script>



<script>
function optest(){
	if((($('#sellist1').val()!='제조사 선택')) && (($('#sellist2').val()=='차량 유형 선택')) && ($("input:checkbox[name=example1]:checked").length!=0) ){
		alert('차량 유형을 먼저 선택하세요');
	$("input:checkbox[name=example1]").prop("checked", false);
	}

}</script>



<div class="jumbotron">
<h2>중고차 장기 렌트</h2>
  </div>
  
  
  
  <div class="container">
   
  <div class="container" style="border:solid 2px;">
  
 <form method="post" action="#" name="userinput" >
    <div class="row" >
     <span class="col-sm-1">&nbsp;</span>
     <div class="col-sm-3">
     <sql:setDataSource var="dataSource"
			url="jdbc:oracle:thin:@localhost:1521:XE"
			driver="oracle.jdbc.driver.OracleDriver"
			user="hr" password="hr"/>
			
			<sql:query var="resultSet" dataSource="${dataSource}">
			select distinct facname from member 
			</sql:query>
		
       <select  class="form-control" id="sellist1" name="sellist1" onchange="goDate1()" >
        <option>제조사 선택 </option>
        <c:forEach var="row" items="${resultSet.rows}">
        	<option value="<c:out value="${row.facname}"/>" <c:if test="${param.sellist1==row.facname}">selected</c:if>><c:out value="${row.facname}"/></option>
        </c:forEach>
      </select>
      </div>
      
      <sql:query var="resultSet" dataSource="${dataSource}">
			select distinct cartype from member where facname=? 
			 <sql:param value="${param.sellist1}"/>
			</sql:query>
		
      <div class="col-sm-3">
    
      <select class="form-control" id="sellist2" name="sellist2" onchange="goDate2()"  >
        <option>차량 유형 선택</option>
        <option value="all" <c:if test="${param.sellist2=='all'}">selected</c:if>>전체</option>
       <c:forEach var="row" items="${resultSet.rows}">
				<option value="<c:out value="${row.cartype}"/>" <c:if test="${param.sellist2==row.cartype}">selected</c:if>><c:out value="${row.cartype}"/></option>
				</c:forEach>
      </select>
      </div>
      
      <div class="col-sm-3">
    <sql:query var="resultSet" dataSource="${dataSource}">
			select distinct carnum from member where facname=? and cartype=? order by carnum 
			 <sql:param value="${param.sellist1}"/>
			 <sql:param value="${param.sellist2}"/>
			</sql:query> 
		
			  <c:if test="${param.sellist2=='all'}">
      <sql:query var="resultSet" dataSource="${dataSource}">
       select distinct carnum from member where facname=? order by carnum 
      <sql:param value="${param.sellist1}"/>
      </sql:query>
      </c:if>
      
      <select class="form-control" id="sellist3" name="sellist3" >
        <option disabled>차량 선택 </option>
       <c:forEach var="row" items="${resultSet.rows}">
				<option value="<c:out value="${row.carnum}"/>" <c:if test="${param.sellist3==row.carnum}">selected</c:if>><c:out value="${row.carnum}"/></option>
				</c:forEach>
      </select>
      </div>
     
 <input id="tess" type="submit" class="btn btn-primary col-sm-1" value="검색" onclick="optest()">

    
    </div>
  
  
  <br><br>
  

     <div class="row">
     <span class="col-sm-1"> &nbsp;&nbsp;&nbsp;</span> 
    <span class="col-sm-1"><strong>연료 :</strong></span>
  
     <div class="col-sm-8">
      <span class="col-sm-1">&nbsp;&nbsp;&nbsp;</span> 
     <c:if test="${not empty paramValues.example1 }">
     
     <c:set var="ff" value="${paramValues.example1[0]}"/>
     <c:set var="ff1" value="${paramValues.example1[1]}"/>
      </c:if>
    <div class="form-check-inline">
       <input <c:if test="${ff=='전체' or ff1=='전체'}">checked</c:if>  type="checkbox" value="전체" name="example1"><strong>&nbsp;전체&nbsp;</strong>
    </div>
    <div class="form-check-inline">
      <input <c:if test="${ff=='휘발유' or ff1=='휘발유'}">checked</c:if>   type="checkbox" value="휘발유" name="example1"><strong>&nbsp;휘발유&nbsp;</strong>
    </div>
     <div class="form-check-inline">
      <input <c:if test="${ff=='경유' or ff1=='경유'}">checked</c:if>    type="checkbox" value="경유" name="example1"><strong>&nbsp;경유&nbsp;</strong>
    </div>
     <div class="form-check-inline">
      <input <c:if test="${ff=='LPG' or ff1=='LPG'}">checked</c:if>   type="checkbox" value="LPG" name="example1"><strong>&nbsp;LPG&nbsp;</strong>
    </div>
    <div class="form-check-inline">
      <input  <c:if test="${ff=='전기' or ff1=='전기'}">checked</c:if>    type="checkbox" value="전기" name="example1"><strong>&nbsp;전기&nbsp;</strong>
    </div>
    <div class="form-check-inline">
      <input <c:if test="${ff=='하이브리드' or ff1=='하이브리드'}">checked</c:if>   type="checkbox" value="하이브리드" name="example1"><strong>&nbsp;하이브리드&nbsp;</strong>
    </div>
    <c:remove var="ff"/>
    <c:remove var="ff1"/>
    </div>



   <input id="tess1" type="submit" value="검색" class= "btn btn-info col-sm-1" onclick="optest()">
  </div>
  
 

  
  
  <br>
  

     <div class="row">
     <span class="col-sm-1">&nbsp;&nbsp;&nbsp;</span> 
    <span class="col-sm-1"><strong>지점 :</strong></span>
    
    <div class="col-sm-8">
     <span class="col-sm-1">&nbsp;&nbsp;&nbsp;</span> 
       <c:if test="${not empty paramValues.example2 }">
     
     <c:set var="dd" value="${paramValues.example2[0]}"/>
     <c:set var="dd1" value="${paramValues.example2[1]}"/>
      </c:if>
    <div class="form-check-inline">
       <input <c:if test="${dd=='전체' or dd1=='전체'}">checked</c:if> type="checkbox" value="전체" name="example2"><strong>&nbsp;전체&nbsp;</strong>
    </div>
 
    <div class="form-check-inline">
      <input  <c:if test="${dd=='서울' or dd1=='서울'}">checked</c:if> type="checkbox" value="서울" name="example2"><strong>&nbsp;서울&nbsp;</strong>
    </div>
    
     <div class="form-check-inline">
      <input  <c:if test="${dd=='경기' or dd1=='경기'}">checked</c:if> type="checkbox" value="경기" name="example2"><strong>&nbsp;경기&nbsp;</strong>
    </div>
    
     <div class="form-check-inline">
      <input  <c:if test="${dd=='충청' or dd1=='충청'}">checked</c:if> type="checkbox" value="충청" name="example2"><strong>&nbsp;충청&nbsp;</strong>
    </div>
    
    <div class="form-check-inline">
      <input <c:if test="${dd=='강원' or dd1=='강원'}">checked</c:if> type="checkbox" value="강원" name="example2"><strong>&nbsp;강원&nbsp;</strong>
    </div>
    
    <div class="form-check-inline">
      <input <c:if test="${dd=='경상' or dd1=='경상'}">checked</c:if> type="checkbox" value="경상" name="example2"><strong>&nbsp;경상&nbsp;</strong>
    </div>
    
    <div class="form-check-inline">
      <input <c:if test="${dd=='제주' or dd1=='제주'}">checked</c:if> type="checkbox" value="제주" name="example2"><strong>&nbsp;제주&nbsp;</strong>
    </div>
     <c:remove var="dd"/>
    <c:remove var="dd1"/>
    </div>
    <input id="tess2" type="submit" value="검색" class="btn btn-info col-sm-1" onclick="optest()">
  </div>
    </form>
  
  
  </div>
</div>
 
  
  
<div class="container">
<br>
<h3>검색결과</h3>
<hr style="border: solid 1px black " /> 

<div class="row" >

<sql:setDataSource var="dataSource"
			url="jdbc:oracle:thin:@localhost:1521:XE"
			driver="oracle.jdbc.driver.OracleDriver"
			user="hr" password="hr"/>



<c:choose>
<c:when test="${param.sellist1==null or param.sellist2==null or param.sellist3==null}">
<sql:query var="resultSet" dataSource="${dataSource}">
			select * from member
			</sql:query>
			
<c:if test="${not empty paramValues.example1 and empty paramValues.example2}">
 	<c:set var="ff" value="${paramValues.example1[0]}"/>
    <c:set var="ff1" value="${paramValues.example1[1]}"/>

<sql:query var="resultSet" dataSource="${dataSource}">
select * from member where fuel=? or fuel=?
 <sql:param value="${ff}"/>
 <sql:param value="${ff1}"/>

</sql:query>  
  
 <c:if test="${ff=='전체'}">
		<sql:query var="resultSet" dataSource="${dataSource}">
			select * from member
			</sql:query> 
  </c:if>

</c:if>

  <c:if test="${empty paramValues.example1 and  not empty paramValues.example2 }">
 
 <c:set var="dd" value="${paramValues.example2[0]}"/>
     <c:set var="dd1" value="${paramValues.example2[1]}"/>
<sql:query var="resultSet" dataSource="${dataSource}">
select * from member where lentoffice=? or lentoffice=?

 <sql:param value="${dd}"/>
 <sql:param value="${dd1}"/>

</sql:query>  
  
 <c:if test="${dd=='전체'}">
		<sql:query var="resultSet" dataSource="${dataSource}">
			select * from member
			</sql:query> 
  </c:if>

</c:if>

  <c:if test="${not empty paramValues.example1 and not empty paramValues.example2}">
 <c:set var="ff" value="${paramValues.example1[0]}"/>
     <c:set var="ff1" value="${paramValues.example1[1]}"/>
      <c:set var="dd" value="${paramValues.example2[0]}"/>
     <c:set var="dd1" value="${paramValues.example2[1]}"/>
     
<sql:query var="resultSet" dataSource="${dataSource}">
select * from (select * from member where fuel=? or fuel=?) where lentoffice=? or lentoffice=? 


 <sql:param value="${ff}"/>
 <sql:param value="${ff1}"/>
  <sql:param value="${dd}"/>
 <sql:param value="${dd1}"/>
</sql:query>  
  

 <c:if test="${ff=='전체' and dd=='전체'}">
		<sql:query var="resultSet" dataSource="${dataSource}">
			select * from member
			</sql:query> 
  </c:if>
  
  <c:if test="${ff=='전체' and dd!='전체'}">
		<sql:query var="resultSet" dataSource="${dataSource}">
			select * from member where lentoffice=? or lentoffice=?
			  <sql:param value="${dd}"/>
 			<sql:param value="${dd1}"/>
			</sql:query> 
  </c:if>
    <c:if test="${ff!='전체' and dd=='전체'}">
		<sql:query var="resultSet" dataSource="${dataSource}">
			select * from member where fuel=? or fuel=?
			<sql:param value="${ff}"/>
 			<sql:param value="${ff1}"/>
			</sql:query> 
  </c:if>
  

</c:if>	
</c:when>

	<c:when test="${empty paramValues.example1 and not empty param.sellist3 and not empty paramValues.example2}">

	<sql:query var="resultSet" dataSource="${dataSource}">
	<c:set var="dd" value="${paramValues.example2[0]}"/>
     <c:set var="dd1" value="${paramValues.example2[1]}"/>
	select * from member where facname=? and cartype=? and carnum=? and lentoffice=? or lentoffice=?
	<sql:param value="${param.sellist1}"></sql:param>
	<sql:param value="${param.sellist2}"></sql:param>
	<sql:param value="${param.sellist3}"></sql:param>
	 <sql:param value="${dd}"/>
	  <sql:param value="${dd1}"/>
	</sql:query>
	
	
	<c:if test="${param.sellist2=='all' and dd!='전체'}">
	<sql:query var="resultSet" dataSource="${dataSource}">
	select * from member where facname=? and carnum=? and lentoffice=? or lentoffice=?
	<sql:param value="${param.sellist1}"></sql:param>
	<sql:param value="${param.sellist3}"></sql:param>	
	<sql:param value="${dd}"/>
	  <sql:param value="${dd1}"/>
	</sql:query>
	</c:if>
	
	 <c:if test="${param.sellist2!='all' and  dd=='전체'}">
		<sql:query var="resultSet" dataSource="${dataSource}">
		select * from member where facname=? and cartype=? and carnum=? 
	<sql:param value="${param.sellist1}"></sql:param>
	<sql:param value="${param.sellist2}"></sql:param>
	<sql:param value="${param.sellist3}"></sql:param>
			</sql:query> 
  </c:if>
  
  <c:if test="${param.sellist2=='all' and dd=='전체'}">
	<sql:query var="resultSet" dataSource="${dataSource}">
	select * from member where facname=? and carnum=?
	<sql:param value="${param.sellist1}"></sql:param>
	<sql:param value="${param.sellist3}"></sql:param>	
	
	</sql:query>
	</c:if>
	
</c:when>

	<c:when test="${empty paramValues.example1 and not empty param.sellist3 and empty paramValues.example2}">

	<sql:query var="resultSet" dataSource="${dataSource}">

	select * from member where facname=? and cartype=? and carnum=? 
	<sql:param value="${param.sellist1}"></sql:param>
	<sql:param value="${param.sellist2}"></sql:param>
	<sql:param value="${param.sellist3}"></sql:param>

	</sql:query>
	
	
	<c:if test="${param.sellist2=='all'}">
	<sql:query var="resultSet" dataSource="${dataSource}">
	select * from member where facname=? and carnum=? 
	<sql:param value="${param.sellist1}"></sql:param>
	<sql:param value="${param.sellist3}"></sql:param>	
	</sql:query>
	</c:if>
</c:when>

<c:when test="${not empty paramValues.example1 and not empty param.sellist3 and  empty paramValues.example2}">

	<sql:query var="resultSet" dataSource="${dataSource}">
	<c:set var="ff" value="${paramValues.example1[0]}"/>
     <c:set var="ff1" value="${paramValues.example1[1]}"/>
   
select * from (select * from member where facname=? and cartype=? and carnum=?) where  fuel=? or fuel=?
	<sql:param value="${param.sellist1}"></sql:param>
	<sql:param value="${param.sellist2}"></sql:param>
	<sql:param value="${param.sellist3}"></sql:param>
	 <sql:param value="${ff}"/>
	  <sql:param value="${ff1}"/>
	</sql:query>
	
	
	<c:if test="${param.sellist2=='all' and ff!='전체'}">
	<sql:query var="resultSet" dataSource="${dataSource}">
	select * from (select * from member where facname=? and carnum=?) where fuel=? or fuel=?
	<sql:param value="${param.sellist1}"></sql:param>
	<sql:param value="${param.sellist3}"></sql:param>	
	<sql:param value="${ff}"/>
	  <sql:param value="${ff1}"/>
	</sql:query>
	</c:if>
	
	 <c:if test="${param.sellist2!='all' and  ff=='전체'}">
		<sql:query var="resultSet" dataSource="${dataSource}">
		select * from member where facname=? and cartype=? and carnum=? 
	<sql:param value="${param.sellist1}"></sql:param>
	<sql:param value="${param.sellist2}"></sql:param>
	<sql:param value="${param.sellist3}"></sql:param>
			</sql:query> 
  </c:if>
  
  <c:if test="${param.sellist2=='all' and ff=='전체'}">
	<sql:query var="resultSet" dataSource="${dataSource}">
	select * from member where facname=? and carnum=?
	<sql:param value="${param.sellist1}"></sql:param>
	<sql:param value="${param.sellist3}"></sql:param>	
	
	</sql:query>
	</c:if>
	
</c:when>


<c:when test="${not empty paramValues.example1 and not empty param.sellist3 and not empty paramValues.example2 and param.sellist2 !='all'}">
	<c:set var="ff" value="${paramValues.example1[0]}"/>
     <c:set var="ff1" value="${paramValues.example1[1]}"/>
      <c:set var="dd" value="${paramValues.example2[0]}"/>
     <c:set var="dd1" value="${paramValues.example2[1]}"/>
     
<sql:query var="resultSet" dataSource="${dataSource}">
select * from (select * from member where facname=? and cartype=? and carnum=?)
where fuel=? or fuel=? and  lentoffice=? or lentoffice=? 

<sql:param value="${param.sellist1}"></sql:param>
<sql:param value="${param.sellist2}"></sql:param>
<sql:param value="${param.sellist3}"></sql:param>
 <sql:param value="${ff}"/>
 <sql:param value="${ff1}"/>
  <sql:param value="${dd}"/>
 <sql:param value="${dd1}"/>
</sql:query> 

 <c:if test="${ff=='전체' and dd=='전체'}">
		<sql:query var="resultSet" dataSource="${dataSource}">
	select * from member where facname=? and cartype=? and carnum=? 
	<sql:param value="${param.sellist1}"></sql:param>
	<sql:param value="${param.sellist2}"></sql:param>
	<sql:param value="${param.sellist3}"></sql:param>
			</sql:query> 
  </c:if>
  
  <c:if test="${ff=='전체' and dd!='전체'}">
		<sql:query var="resultSet" dataSource="${dataSource}">
			select * from (select * from member where facname=? and cartype=? and carnum=?) where  lentoffice=? or lentoffice=? 
			
			<sql:param value="${param.sellist1}"></sql:param>
			<sql:param value="${param.sellist2}"></sql:param>
			<sql:param value="${param.sellist3}"></sql:param> 
			<sql:param value="${dd}"/>
 			<sql:param value="${dd1}"/>
			</sql:query> 
  </c:if>
    <c:if test="${ff!='전체' and dd=='전체'}">
		<sql:query var="resultSet" dataSource="${dataSource}">
			select * from (select * from member where facname=? and cartype=? and carnum=?) where fuel=? or fuel=? 
			
			<sql:param value="${param.sellist1}"></sql:param>
			<sql:param value="${param.sellist2}"></sql:param>
			<sql:param value="${param.sellist3}"></sql:param> 
			<sql:param value="${ff}"/>
 			<sql:param value="${ff1}"/>
			</sql:query> 
  </c:if> 


</c:when>

<c:when test="${not empty paramValues.example1 and not empty param.sellist3 and not empty paramValues.example2 and param.sellist2 =='all'}">
	<c:set var="ff" value="${paramValues.example1[0]}"/>
     <c:set var="ff1" value="${paramValues.example1[1]}"/>
      <c:set var="dd" value="${paramValues.example2[0]}"/>
     <c:set var="dd1" value="${paramValues.example2[1]}"/>
     
<sql:query var="resultSet" dataSource="${dataSource}">
select * from (select * from member where facname=?  and carnum=?)
where fuel=? or fuel=? and  lentoffice=? or lentoffice=? 

<sql:param value="${param.sellist1}"></sql:param>
<sql:param value="${param.sellist3}"></sql:param>
 <sql:param value="${ff}"/>
 <sql:param value="${ff1}"/>
  <sql:param value="${dd}"/>
 <sql:param value="${dd1}"/>
</sql:query> 

 <c:if test="${ff=='전체' and dd=='전체'}">
		<sql:query var="resultSet" dataSource="${dataSource}">
	select * from member where facname=?  and carnum=? 
	<sql:param value="${param.sellist1}"></sql:param>
	<sql:param value="${param.sellist3}"></sql:param>
			</sql:query> 
  </c:if>
  
  <c:if test="${ff=='전체' and dd!='전체'}">
		<sql:query var="resultSet" dataSource="${dataSource}">
			select * from (select * from member where facname=? and carnum=?) where  lentoffice=? or lentoffice=? 
			
			<sql:param value="${param.sellist1}"></sql:param>
			<sql:param value="${param.sellist3}"></sql:param> 
			<sql:param value="${dd}"/>
 			<sql:param value="${dd1}"/>
			</sql:query> 
  </c:if>
    <c:if test="${ff!='전체' and dd=='전체'}">
		<sql:query var="resultSet" dataSource="${dataSource}">
			select * from (select * from member where facname=? and carnum=?) where fuel=? or fuel=? 
			
			<sql:param value="${param.sellist1}"></sql:param>
			<sql:param value="${param.sellist3}"></sql:param> 
			<sql:param value="${ff}"/>
 			<sql:param value="${ff1}"/>
			</sql:query> 
  </c:if> 


</c:when>


	




<c:otherwise>선택 항목 없음</c:otherwise>

</c:choose>
</div>

<div class="container row">
		<c:forEach var="row" items="${resultSet.rows}">
		
		<c:url value="carLent.jsp" var="url"> <c:param name="carname" value="${row.id}" /></c:url>		
  <div onclick="location.href='${url}'" class="card col-sm-6 " >
    <div class="row">
   <img class="card-img-top col-sm-7" src="../resources/images/${row.carname}.jpg" alt="Card image" width="150" height="150">
    <span class="col-sm-5"><br><br><br><strong> [<c:out value="${row.facname}"/>]<c:out value="${row.carname}"/></strong></span>
    </div>
    <div class="card-body">
    <div class="row">
    <div class="col-sm-6">
      <button type="button" class="btn btn-outline-dark " disabled>소비자가</button>
      <strong><c:out value="${row.carPrice }"></c:out></strong></div>
      <div class="col-sm-6">
      <button type="button" class="btn btn-outline-danger" >월 렌탈료</button>
      <strong style="color:red"><c:out value="${row.monthPrice }"></c:out>원~</strong></div>
     </div>
      <hr style="border:1px solid"></hr>
      <div class="row">
      <ul class="col-sm-6">
      <li>차량번호 <span>${row.id}</span></li>
      <li>차량유형 <span>${row.cartype}</span></li>
      
      </ul>
      <ul class="col-sm-6">
      <li>연료 <span>${row.fuel}</span></li>
      <li>지점 <span>${row.lentoffice }</span></li>
      </ul>
     </div>
     
    </div>
  </div>
</c:forEach>
 </div>
    <c:remove var="ff"/>
    <c:remove var="ff1"/>
    
    <c:remove var="dd"/>
    <c:remove var="dd1"/>
  

  </div>

    

  

  
  
</body>
</html>