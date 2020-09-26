<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function(){
		$("#0,#1, #2, #3, #4, #5").mouseover(function(){
			$(this).css("cursor","pointer");
		});
		
 $("#0").click(function(){
		if($("#0").get(0).style.color == "black"){
					$("#0").css("color","orange");
					$("#1").css("color","orange");
					$("#2").css("color","orange");
					$("#3").css("color","orange");
					$("#4").css("color","orange");
					$("#5").css("color","orange");
				}else{
					$("#0").css("color","black");
					$("#1").css("color","black");
					$("#2").css("color","black");
					$("#3").css("color","black");
					$("#4").css("color","black");
					$("#5").css("color","black");
				}
		});  

 $("#1, #2, #3, #4, #5").click(function(){ 
		if($(this).get(0).style.color == "black") {
			$(this).css("color", "orange");
		} else {
			$(this).css("color", "black");
		}
	});
	});
</script>
</head>
<body>
  <div id="accordion">
   <div class="card-header">
        <svg id="0" style="color:black;" width="2em" height="1em" viewBox="0 0 16 16" class="bi bi-check2-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M15.354 2.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3-3a.5.5 0 1 1 .708-.708L8 9.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
  <path fill-rule="evenodd" d="M8 2.5A5.5 5.5 0 1 0 13.5 8a.5.5 0 0 1 1 0 6.5 6.5 0 1 1-3.25-5.63.5.5 0 1 1-.5.865A5.472 5.472 0 0 0 8 2.5z"/>
</svg> 
         전체동의
      </div>
    <div class="card">
      <div class="card-header">
        <svg id="1" width="2em" height="1em" viewBox="0 0 16 16" class="bi bi-check2-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M15.354 2.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3-3a.5.5 0 1 1 .708-.708L8 9.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
  <path fill-rule="evenodd" d="M8 2.5A5.5 5.5 0 1 0 13.5 8a.5.5 0 0 1 1 0 6.5 6.5 0 1 1-3.25-5.63.5.5 0 1 1-.5.865A5.472 5.472 0 0 0 8 2.5z"/>
</svg> 
        <a style="color:black;"class="card-link" data-toggle="collapse" href="#collapseOne">
          고유식별정보 수집 및 이용에 관한 동의<strong>(필수)</strong>
        </a>
      </div>
      <div id="collapseOne" class="collapse show" data-parent="#accordion">
        <div class="card-body">
         <div class="overflow-auto" style="max-height: 100px">
         <p>수집항목</p>
			<p>-면허종류, 면허번호, 면허 만료일, 면허 발급일</p>
			<p>이용목적</p>
			<p>-서비스 이용에 따른 본인 식별 절차 및 차량 대여 자격 확인</p>
			<p>보유 및 이용기간</p>
			<p>-계약에 따른 거래관계의 종료 후 1년</p>
     	</div>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header">
        <svg  id="2" width="2em" height="1em" viewBox="0 0 16 16" class="bi bi-check2-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M15.354 2.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3-3a.5.5 0 1 1 .708-.708L8 9.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
  <path fill-rule="evenodd" d="M8 2.5A5.5 5.5 0 1 0 13.5 8a.5.5 0 0 1 1 0 6.5 6.5 0 1 1-3.25-5.63.5.5 0 1 1-.5.865A5.472 5.472 0 0 0 8 2.5z"/>
</svg> 
        <a style="color:black;" class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">
        개인정보의 수집 항목 및 이용목적<strong>(필수)</strong>
      </a>
      </div>
      <div id="collapseTwo" class="collapse" data-parent="#accordion">
        <div class="card-body">
         <div class="overflow-auto" style="max-height: 100px">
         	<p>수집항목
<p>-이름, 휴대폰번호, 생년월일, 이메일, 주소, 카드번호(신용카드 및 제휴 서비스카드 이용 시)</p>
<p>이용목적</p>
<p>-구매계약 이행 및 서비스 제공에 따른 요금 정산/기타 채권회수</p>
<p>-사고발생 시 손해배상 청구 및 보험처리</p>
<p>보유 및 이용기간</p>
<p>-계약에 따른 거래관계의 종료 후 1년</p>
        </div>
      </div>
    </div>
</div>
    <div class="card">
      <div class="card-header">
        <svg id="3" width="2em" height="1em" viewBox="0 0 16 16" class="bi bi-check2-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M15.354 2.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3-3a.5.5 0 1 1 .708-.708L8 9.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
  <path fill-rule="evenodd" d="M8 2.5A5.5 5.5 0 1 0 13.5 8a.5.5 0 0 1 1 0 6.5 6.5 0 1 1-3.25-5.63.5.5 0 1 1-.5.865A5.472 5.472 0 0 0 8 2.5z"/>
</svg> 
        <a class="collapsed card-link" style="color:black;" data-toggle="collapse" href="#collapseThree">
          자동차 표준 대여 약관 동의<strong>(필수)</strong>
        </a>
      </div>
      <div id="collapseThree" class="collapse" data-parent="#accordion">
        <div class="card-body">
        <div class="overflow-auto" style="max-height: 100px">
        <p>  제1장 총칙

제1조 (약관의 목적 및 적용)
1. SK렌터카㈜(이하 "회사"라 한다)는 이 약관(이하 "본 약관"이라 한다)에 따라 대여자동차(이하 "렌터카"라 한다)를 임차인에게 임대하고 임차인은 이를 임차한다.
2. 본 약관은 회사와 임차인(공동임차인 포함) 사이에 체결되는 자동차 단기대여 계약(서면, 온라인, 스마트폰, 태블릿 PC 기타 전자문서를 통해서 제공되는 계약을 포함하며, 이하 "대여계약"이라 한다)에 있어, 회사와 임차인의 권리와 의무에 관한 사항을 규정함을 목적으로 한다.
3. 회사는, 법령에 반하지 않는 범위에서 특약을 정할 수 있으며, 특약한 때에는 그 특약이 우선한다. 단, 그 특약은 반드시 문서(전자문서 포함)에 기재되어야 한다.
4. 회사는 약관의 규제에 관한 법률, 전자문서 및 전자거래기본법, 전자서명법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전자상거래 등에서의 소비자보호에 관한 법률(이하 “전자상거래법”이라 한다) 등 관련 법령을 위배하지 않는 범위에서 본 약관을 개정할 수 있다.

제2장 대여계약

제2조 (예약 및 취소)
1. 임차인은 렌터카를 임차할 때에 미리 차종, 임대차 개시일자 및 개시시각, 임차장소, 반환장소, 운전자 기타 임차조건을 명시하고 예약할 수 있으며, 회사는 렌터카의 보유범위 내에서 예약에 응한다.
2. 전항의 예약이 있는 경우 회사는 대여예정요금의 10% 범위 내에서 예약금을 청구할 수 있다.
3. 임차인이 제1항의 예약내용을 변경하고자 할 때에는 사전에 회사의 승낙을 받아야 한다.
4. 임차인이 제1항에 의하여 예약한 임차개시 시각으로부터 1시간 이상 경과하여도 대여계약을 체결하지 않을 때에는 예약은 취소되는 것으로 한다. 이 경우 예약금은 반환하지 않는다.

제3조 (대여계약의 체결)
1. 회사는 대여할 수 있는 렌터카가 없을 때 및 임차인이 제3항 각 호에 해당할 때를 제외하고 임차인의 신청에 의하여 대여계약을 체결한다. 이 경우 임차인은 회사가 제공한 태블릿 PC 등 전자기기를 통하여 서명을 할 수 있으며, 전자서명을 완료한 경우 계약의 승낙으로 간주되어 대여계약이 성립한다.
2. 대여계약의 체결은 대여계약서에 의하며, 대여계약서에는 제2조 제1항의 임차조건을 명시하여야 한다.
3. 회사는 임차인이 다음 각 호에 해당할 때에는 대여계약의 체결을 거절할 수 있으며, 이 경우 지급받은 예약금을 반환한다.
① 임차인(임차인이 아닌 자가 대여계약서상의 운전자인 경우에는 운전자를 말한다. 이하 이 조에서 같다)이 렌터카운전에 필요한 자격의 운전면허증을 소지하지 아니한 자와 만 21세 미만인 자. 다만, 사고발생의 빈도 및 보험적용요율 등을 감안하여 임차인의 연령 및 운전경력 등은 달리 정할 수 있다.
② 신원확인이 불가능하거나 신원확인을 위한 회사의 질문이나 자료요구에 불응할 때
③ 음주상태에 있을 때
④ 마약, 각성제, 시너(신나) 등에 의한 중독상황이 의심되는 때
⑤ 예약 당시 명시한 운전자와 렌터카 인수시의 운전자가 다를 때
⑥ 과거 대여 시 대여요금 체납 이력이 있는 때
⑦ 과거 대여 시 제18조 각 호 사항에 해당하는 행위를 한 이력이 있는 때
⑧ 위 각 호에 준하는 사항으로서 대여계약의 체결을 거절할 만한 객관적인 사유가 있을 때

제4조 (대여계약의 성립 등)
1. 대여계약은 회사가 대여요금을 징수하고 임차인에게 렌터카를 인도한 때 효력이 발생한다. 이 때 예약금은 대여요금의 일부로 충당된다.
2. 회사는 사고, 도난, 기타 회사의 귀책사유에 의하지 아니하는 사유로 인하여 예약차종의 렌터카를 대여할 수 없을 때에는 유사한 다른 차종의 렌터카(이하 ”대체렌터카”라 한다)를 대여할 수 있다.
3. 전항에 의하여 대여하는 대체렌터카의 대여요금이 예약차종의 대여요금보다 비싸게 될 때에는 예약차종의 대여요금에 의하고 예약차종의 대여요금보다 싸게 될 때에는 당해 대체렌터카의 대여요금에 의한다.
4. 임차인은 제2항에 의한 대체렌터카의 인수를 거절하고 예약을 취소할 수 있으며, 이 경우 회사는 임차인에게 예약금 전액을 반환한다.

제5조 (대여계약의 해지)
1. 회사는 임차인이 대여기간 중에 다음 각 호에 해당한 때에는 대여계약의 해지사유를 설명하고 즉시 대여계약을 해지하고 렌터카의 반환을 청구할 수 있다.
① 임차인이 계약의 중요한 사항을 위반하여 계약을 유지하기 어려운 객관적인 사정이 존재할 때
② 계약 당시 임차인이 제공한 개인정보, 운전자정보 등이 허위로 판명된 때
③ 대여요금을 분할납부하기로 한 경우로서 대여기간 중 연체가 2기에 달한 때
④ 임차인(임차인 아닌 자가 대여계약서상의 운전자인 경우에는 운전자를 말한다. 이하 이항에서 같다)의 운전면허가 취소 또는 정지된 때
⑤ 임차인이 교통사고를 야기한 때
⑥ 제3조 제3항 각 호에 해당하게 되었을 때
⑦ 제18조의 금지행위를 한 때
⑧ 음주운전을 한 때
2. 임차인은 다음의 경우에 계약을 해지할 수 있다.
① 렌터카가 임차인에게 인도되기 이전의 하자로 인하여 사용 불가능하게 된 때(제23조 3항에 의한 조치를 받은 경우는 제외)
② 임차인의 사정에 의하여 해지하는 때

제6조 (불가항력 사유로 인한 대여계약의 중도종료)
1. 렌터카의 대여기간 중에 천재지변, 기타 불가항력 사유로 인하여 렌터카의 사용이 불능하게 된 때에는 대여계약은 종료된 것으로 한다.
2. 임차인은 전항에 해당하게 된 때에는 그 뜻을 회사에 연락하여야 한다.

제7조 (중도해지)
1. 임차인은 임차기간 중에라도 회사의 동의 하에 대여계약을 해지할 수 있다.
2. 임차인의 귀책사유로 인하여 렌터카의 사고 또는 고장으로 대여기간 중에 반환한 때에는 대여계약은 해지된다.

제8조 (임차조건의 변경)
1. 대여계약의 성립 후 제2조 제1항의 임차조건을 변경하고자 할 때에는 미리 회사에 승낙을 받아야 한다.
2. 회사는 변경된 임차조건에 따라 업무를 수행하기 어려운 경우에는 전항에 의한 임차조건의 변경을 승낙하지 않을 수 있다.
3. 임차인이 임차기간을 연장하고자 하는 경우에는 변경 후의 임차기간에 해당하는 대여요금을 지불해야 한다.

제3장 대여자동차

제9조 (자동차의 종류)
1. 회사가 대여할 수 있는 자동차는 대여 및 회사 홈페이지(www.skcarrental.com)에 대여용으로 게시된 자동차로 한다.
2. 대여계약의 내용에 따라 렌터카에 네비게이션, 하이패스 단말기 등이 장착될 수 있고, 계약시점에 따라 공급제품이 변경될 수 있다.

제10조 (보험가입 등)
회사는 제3조 제2항에 의해 명시한 개시일자와 임차장소에 따라, 자동차손해배상보장법에 의한 책임보험과 자동차 종합보험(대인, 대물, 자손)에 가입되고 제15조에 부합하는 렌터카를 임차인에게 대여한다.

제11조 (차량체크리스트작성 등)
1. 회사는 임차인과 공동으로 점검표를 사용하여 인도 전 일상점검과 차체외관 및 차량운행에 필요한 기본공구의 적재여부 및 연료량을 확인한 다음 당해 렌터카를 대여한다.
2. 회사는 전항의 확인에 있어 렌터카에 정비불량 등을 발견한 때에는 교환 등의 조치를 강구하고 그 내용을 기록∙유지하여야 한다.
3. 회사는 렌터카를 인도한 때에는 자동차 임대계약서를 교부하고 주요내용을 설명하여야 한다.

제12조 (운전자의 알선)
1. 회사는 운전자를 알선하지 않는다. 다만, 법령의 규정에 의해 운전자를 알선할 수 있는 경우에는 임차인의 렌터카 사용에 불편이 없도록 성실한 운전자를 알선하여야 한다. 이때 알선 수수료는 받지 아니한다.
2. 제1항에 의하여 알선한 운전자의 신원은 회사가 보증하여야 한다.

제4장 대여요금 등

제13조 (대여요금 및 추가비용)
1. 회사가 영수하는 대여요금은 회사가 게시한 대여요금표(회사의 홈페이지 및 인쇄물 등에 게시)를 기준으로 하며, 대여요금은 본 약관 제36조 차량손해면책제도 가입 수수료를 포함한다.
2. 회사는 영업정책에 따라 회원, 임직원, 제휴사 등에 전항의 대여요금에 대해 별도의 인하 혜택을 제공하며, 탄력적으로 대여요금을 적용할 수 있다.
3. 임차인은 임차인의 요구로 인하여 대여요금 외에 추가비용이 발생한 경우에는 그 추가비용을 부담하여야 한다.

제14조 (요금의 수수방법)
1. 임차인은 렌터카 인수 시에 소정의 예정대여요금을 선납한다.
2. 사용기간 초과 등으로 선불요금에 부족이 있을 때에는 렌터카 반환 시에 정산한다.

제5장 책임

제15조 (정기점검의 의무 등)
회사는 자동차관리법 제36조(자동차의 정비)의 정기점검 정비를 실시한 렌터카를 대여하여야 한다.
</p>
</div>
</div>
        </div>
      </div>
    <div class="card">
      <div class="card-header">
        <svg id="4" width="2em" height="1em" viewBox="0 0 16 16" class="bi bi-check2-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M15.354 2.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3-3a.5.5 0 1 1 .708-.708L8 9.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
  <path fill-rule="evenodd" d="M8 2.5A5.5 5.5 0 1 0 13.5 8a.5.5 0 0 1 1 0 6.5 6.5 0 1 1-3.25-5.63.5.5 0 1 1-.5.865A5.472 5.472 0 0 0 8 2.5z"/>
</svg> 
        <a class="collapsed card-link" style="color:black;" data-toggle="collapse" href="#collapseFour">
          취소 및 위약금 규정 동의<strong>(필수)</strong>
        </a>
      </div>
      <div id="collapseFour" class="collapse" data-parent="#accordion">
        <div class="card-body">
        <div class="overflow-auto" style="max-height: 100px">
        <ul>
       <li>대여시간 24시간 이내 취소시 순수차량 대여요금의 10% 위약금이 발생합니다.</li>
		<li>대여시간 이후(NO-Show) 취소시 순수차량 대여요금의 10% 위약금이 발생합니다.</li>
		<li>대여시간에서 2시간 경과시 예약이 임의로 취소됩니다.</li>
		</ul>
</div>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header">
        <svg id="5" width="2em" height="1em" viewBox="0 0 16 16" class="bi bi-check2-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M15.354 2.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3-3a.5.5 0 1 1 .708-.708L8 9.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
  <path fill-rule="evenodd" d="M8 2.5A5.5 5.5 0 1 0 13.5 8a.5.5 0 0 1 1 0 6.5 6.5 0 1 1-3.25-5.63.5.5 0 1 1-.5.865A5.472 5.472 0 0 0 8 2.5z"/>
</svg> 
        <a class="collapsed card-link" style="color:black;" data-toggle="collapse" href="#collapseFive">
         대여자격 확인 동의<strong>(필수)</strong>
        </a>
      </div>
      <div id="collapseFive" class="collapse" data-parent="#accordion">
        <div class="card-body">
        <div class="overflow-auto" style="max-height: 100px">
        <ul>  
        <li>11인승 이상 차량 : 만 26세 이상, 1종 보통면허 이상, 운전경력 3년 이상(재취득포함)</li>
<li>수입차 : 만 26세 이상, 운전경력 3년 이상(재취득포함)</li>
<p>(내륙예약시)</p>
<li>경, 소, 중형 이하 차량 : 만 21세 이상, 2종 보통면허 이상, 운전경력 1년 이상(재취득포함)</li>
<li>대형, SUV 차량 : 만26세 이상, 2종 보통면허 이상, 운전경력 3년 이상(재취득포함)</li>
<li>11인승 이상 차량 : 만 26세 이상, 1종 보통면허 이상, 운전경력 3년 이상(재취득포함)</li>
<li>수입차 : 만 26세 이상, 2종 보통면허 이상, 운전경력 3년 이상(재취득포함)</li>
<strong>* 운전자가 위의 대여자격조건에 맞지 않을 경우 현장에서 차량인수가 불가할 수 있습니다.</strong>
</ul>
        </div>
        </div>
      </div>
    </div>
    
  </div>
</body>
</html>