<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<script>
$(document).ready(function(){
	  $("#long_term").mouseover(function(){
	    $("#panel").slideDown("fast");
	    $("#long_list").css("color","red");
	    $("#panel").mouseleave(function(){
	    	if( $("#long_list").css("color","red")==true){
	    		 $("#long_list").css("color","black");
	    		 $(this).slideUp("fast");
	    	}  	
	    });
		}); 
	});
	
$(document).ready(function(){
	   $("#short_term").mouseover(function(){
		    $("#panel").slideDown("fast");
		    $("#short_list1").css("background-color","orange");
		    $("#short_list2").css("color","red");
		    
		    $("#panel").mouseleave(function(){
		    $(this).slideUp("fast");
		  });
	}); 
});

$(document).ready(function(){
	   $("#used").mouseover(function(){
		    $("#panel").slideDown("fast");
		    $("#used_list").css("color","red");
		    $("#panel").mouseleave(function(){
		    $(this).slideUp("fast");
		  });
	}); 
});
/* $(document).ready(function(){
			if($("#long_term").mouseover==true){
				  $("#panel").slideDown("fast");
				    $("#long_list").css("color","red");
			}else if($("#short_term").mouseover()==true){
				  $("#panel").slideDown("fast");
				    $("#short_list1").css("background-color","orange");
				    $("#short_list1").css("color","white");
				   $("#short_list2").css("color","red");
		    }else if($("#used").mouseover()==true){
		    	 $("#panel").slideDown("fast");
		    	 $("#used_list").css("color","red");
		    }
			$("#panel").mouseleave(function(){
			    $(this).slideUp("fast");
			}); 
		}); */

</script>
</head>
<body>
<div class="jumbotron bg-white" style="margin:0px;" id="menuBar">
<div class="row">
  <div class="col-sm-3"><h1 style="color:orange;">TT렌터카</h1></div>
  <div class="col-sm-2" id="long_term"><h3>장기렌터카</h3></div>
  <div class="col-sm-2" id="short_term"><h3>단기렌터카</h3></div>
  <div class="col-sm-2" id="used"><h3>중고렌터카</h3></div>
  <div class="col-sm-3" style="color:silver;">
  	<p>
  		로그인
		My렌터카
		이벤트
		<a href="board.jsp" style="color:orange;">고객센터</a>
	</p>
  </div>
</div>
</div>
<hr style="border: solid 1px orange; margin:0px; ">


</body>
</html>
