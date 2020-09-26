$(function () {
  let date = new Date();
  $('#datetimepicker7').datetimepicker({
    format: 'L'
  });
  $('#datetimepicker8').datetimepicker({
    format: 'L',
    useCurrent: false
  });
  $('#datetimepicker7').datetimepicker('minDate', date);

  $("#datetimepicker7").on("change.datetimepicker", function (e) {
    $('#datetimepicker8').datetimepicker('minDate', e.date);


  });
  $("#datetimepicker8").on("change.datetimepicker", function (e) {
    $('#datetimepicker7').datetimepicker('maxDate', e.date);

  });
});

function checkTest() {

  let testValue11 = new Date(document.getElementById("datep7").value);
  let testValue22 = new Date(document.getElementById("datep8").value);
  let testValue33 = document.getElementById("time_hour7").value;
  let testValue44 = document.getElementById("time_hour8").value;

  var total_day = ((testValue22 - testValue11) / (24 * 60 * 60 * 1000));

  if (testValue33 < testValue44) {
    var hourhour = testValue44 - testValue33;
  } else {
    var hourhour = 0;
  }

  document.getElementById("total_day").innerHTML = total_day;
  document.getElementById("hourhour").innerHTML = hourhour;

  /* alert(testValue11); */
  let year = testValue22.getFullYear();
  var month = (1 + testValue22.getMonth());
  month = month >= 10 ? month : '0' + month;
  var day = testValue22.getDate();
  day = day >= 10 ? day : '0' + day;
  /* alert(year+"-"+month+"-"+day); */
  document.getElementById("date8888h").value = year + "-" + month + "-" + day + "&nbsp;" + testValue33 + ":00";
}

function insurance() {
  var insuranceFrame = window.open("z_shortTerm_Insurance.jsp", "", "left=600, top=300, width=600, height=600,toolbar=no, scrollbars=no, status=no, resizable=no");
}
function reser() {
  if (form.datep7.value == "") { alert("대여일을 입력해주세요."); form.datep7.focus(); return; }
  else if (form.datep8.value == "") { alert("반납일을 입력해주세요."); form.datep8.focus(); return; }
  else if (form.branch.value == "") { alert("대여지점을 입력해주세요."); form.branch.focus(); return; }
  else if (form.branch2.value == "") { alert("반납지점을 입력해주세요."); form.branch2.focus(); return; }
  /* 	else if( form.datep7.value  == "" ) { alert("대여일을 입력해주세요."); form.datep7.focus(); return false;}   */
  /*  else if(form.datep8.value == "" ){form.datep8.focus();} */
  else { form.submit(); }
}

function dd7() {

  let testValue11 = new Date(document.getElementById("datep7").value);
  /* alert(testValue11); */
  let year = testValue11.getFullYear();
  var month = (1 + testValue11.getMonth());
  month = month >= 10 ? month : '0' + month;
  var day = testValue11.getDate();
  day = day >= 10 ? day : '0' + day;
  let testValue33 = document.getElementById("time_hour7").value;
  document.getElementById("date7777").innerHTML = year + "-" + month + "-" + day + "&nbsp;" + testValue33 + ":00";
  /* document.getElementById("date7777h").innerHTML=year+"-"+month+"-"+day+"&nbsp;"+testValue33+":00"; */
  document.getElementById("date7777h").value = year + "-" + month + "-" + day + "&nbsp;" + testValue33 + ":00";

}
function branch_selec() {
  let branch = document.getElementById("branch").value;
  document.getElementById("branch").innerHTML = branch;
  /* 	document.getElementById("branch7777h").value = branch_inland7; */
  let branch2 = document.getElementById("branch2").value;
  /* 	document.getElementById("branch8888").innerHTML = branch_inland8; */
  document.getElementById("branch2").value = branch2;
}
function addop(add) {
  let addoption = document.getElementById(add).value;
  document.getElementById("addoptionh").innerHTML = addoption;
  alert(addoption);
}

function addselec(seq) {
  //let addselect = document.getElementById(selec).value;
  let seq_a = seq;
  //document.getElementById("addselech").innerHTML=result;

  $.ajax({
    type: 'get',
    url: '/short/carInfo?segment_seq=' + seq_a,
    //data:JSON.stringify(reply),
    //contentType:"application/json; charset=utf-8",
    success: function (result, status, xhr) {
      alert(JSON.stringify(result));
      alert(${ result.reserve_seq });
      alert(result.car_model);
      var str = "<ul>";
      str += "<li>" + result.car_model + "</li>";
      str += "</ul>"
      $(".carInfo").html(str);
    },
    error: function (xhr, status, er) {
      alert(er);
      alert(status);
    }
  })
}
$(document).ready(function () {
  $("#driver_qualification, #insurance").mouseover(function () {
    $(this).css("cursor", "pointer");
  });

});
function reset() {
  var result = confirm("정말 취소하시겠습니까?");
  if (result) {
    /* $("#reservationForm").ready(function(){
      $("#reset").click(function(){
        $(body).each( function () {
                this.reset();
        });
      });
    }); */
    location.reload();
  } else {
    result.close();
  }
}