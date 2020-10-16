<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
$(document).ready(function(){
	$("#all, #req1, #req2, #selec1").mouseover(function(){
		$(this).css("cursor","pointer");
	});
	$("#all").click(function(){
		if($("#all").prop("checked")){
			$("input[name=chk]").prop("checked",true);
		}else{
			$("input[name=chk]").prop("checked",false);
		}
	});
});
</script>
<script>
$(document).ready(function(){
	$("#agreeCheck").click(function(){
if($('#req1').is(":checked")==false | $('#req2').is(":checked")==false | $('#req3').is(':checked')==false){
	alert("필수사항에 동의해 주세요.");
	return false;
}else{
	location.href="/user/email" ;
}
});
});

</script>
<article>
	<div class="container col-sm-8" align="center">
		<h1 class="display-6">약관동의 및 본인확인</h1>
		<form>
			<div class="text-right col-sm-8">
				<label class="form-check-label text-warning">
					<input type="checkbox" class="form-check-input" id="all" />모든 약관확인 및 전체동의
				</label>
			</div>
			<table class="table table-bordered col-sm-8">
				<thead>
					<tr>
						<th>
							<div class="form-check-inline">
								<label class="form-check-label">
									<input type="checkbox" class="form-check-input" id="req1" name="chk" required="required" />SK렌터카 이용 약관
									<span class="text-danger">(필수)</span>
								</label>
							</div>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<p class="overflow-auto p-3" style="max-height: 100px">제1조(목적)
								본 약관은 SK렌터카 주식회사(이하 "회사"라 한다)가 운영하는 SK렌터카 서비스를 이용함에 있어 회사와 회원의 권리와 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.

								제2조 (정의)
								① "SK렌터카"라 함은 회사가 제8조에 명기된 서비스를 회원에게 제공하기 위하여 구축한 온라인 사이트, 회사가 운영하는 차량대여 렌터카사무소 등 향후 회사가 영위하게 될 제반 사업 일체
								등을 운영하는 사업자의 의미로 사용합니다.
								② "회원"이라 함은 SK렌터카가 정한 절차에 따라 회원가입을 하여 SK렌터카가 제공하는 서비스를 이용할 수 있는 권한을 부여 받은 자를 말합니다.

								제3조 (약관의 개정)
								① 본 약관은 수시로 개정 가능하며 약관을 개정하고자 할 경우 SK렌터카는 개정된 약관을 적용하고자 하는 날(이하 "효력 발생일")로부터 30일 이전에 약관이 개정된다는 사실과 개정된
								내용 등을 다음 각 호에 규정된 방법 중 1가지 이상의 방법으로 회원에게 고지합니다.
								1. E-mail통보
								2. 서면통보
								3. SK렌터카 사이트를 통한 게시
								4. 오프라인 지점 등을 통한 게시
								② SK렌터카가 E-mail통보 또는 서면통보의 방법으로 본 약관이 개정된 사실 및 개정된 내용을 회원에게 고지하는 경우에, SK렌터카는 회원이 SK렌터카에 기제공한 E-mail 주소나
								주소지 중 가장 최근에 제공된 곳으로 통보하며, 약관 제19조 2항에 따라 회원이 최근의 정보로 변경하지 않아 발생한 손해에 대해서는 SK렌터카는 어떠한 책임도 지지 않습니다.
								③ 규정에 의하여 개정된 약관(이하 "개정 약관")은 원칙적으로 그 효력 발생일로부터 장래에 향하여 유효합니다.
								④ 본 약관의 개정과 관련하여 이의가 있는 회원은 회원탈퇴를 할 수 있습니다. 단, 이의가 있음에도 불구하고 본 조 1항과 2항의 정해진 바에 따른 SK렌터카의 고지가 있은 후 30일
								이내에 회원탈퇴를 하지 않은 회원은 개정 약관에 동의한 것으로 간주합니다.
								⑤ 본 규정의 통지방법 및 통지의 효력은 본 약관의 각 조항에서 규정하는 개별적인 또는 전체적인 통지의 경우에도 이를 준용합니다.

								제4조 (약관의 해석)
								본 약관에 명시되지 않은 사항에 대해서는 약관의 규제에 관한 법률, 전자거래기본법, 전자서명법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 방문판매 등에 관한 법률, 전자상거래
								등에서의 소비자보호에 관한 법률 등 관계법령 및 회사가 정한 서비스의 세부이용지침 등의 규정에 의합니다.

								제5조 (회원가입)
								① SK렌터카의 회원이 되고자 하는 자는 SK렌터카가 정한 회원가입 절차에 의해 본 약관과 별도의 ‘개인정보의 수집 및 이용에 대한 안내’ 및 ‘개인정보의 위탁’에 동의함으로써 회원가입을
								신청합니다.
								② SK렌터카는 본 조 1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다.
								1. 가입신청자가 제6조2항에 의하여 이전에 회원자격을 상실한 적이 있는 경우(다만 회원자격 상실 후 SK렌터카의 회원 재가입 승낙을 얻은 경우에는 예외로 함)
								2. 등록 내용에 허위, 기재누락, 오기가 있는 경우
								3. 기타 회원으로 등록하는 것이 SK렌터카의 원활한 운영을 저해하거나, 기술상 현저히 지장이 있다고 판단되는 경우
								③ 회원가입계약의 성립시기는 SK렌터카가 승인한 시점으로 합니다.

								제6조 (회원탈퇴 및 자격상실)
								① 회원은 언제든지 서면, E-mail, 전화 기타 SK렌터카가 정하는 방법으로 회원탈퇴를 요청할 수 있으며, SK렌터카는 회원의 요청에 따라 조속히 회원탈퇴를 처리합니다.
								② 회원이 다음 각 호의 1에 해당하는 경우, SK렌터카는 회원자격을 상실시킬 수 있습니다.
								1. 가입 신청 시에 허위 내용을 등록한 경우
								2. SK렌터카를 이용하여 구입한 재화•용역 등의 대금, 기타 SK렌터카 이용에 관련하여 회원이 부담하는 채무 또는 책임을 기일 내에 이행하지 않는 경우
								3. 다른 사람의 SK렌터카 이용을 방해하거나 그 정보를 도용하는 등 전자거래질서를 위협하는 경우
								4. 약관 또는 관계법령에 위반되거나 공서 양속에 반하는 행위를 하는 등 회원자격을 유지시키는 것이 부적절 하다고 판단되는 경우
								③ 회원이 사망한 경우 회원 사망 일에 회원자격이 상실됩니다.

								제7조 (회원에 대한 통지)
								① SK렌터카가 회원에 대한 통지를 하는 경우, SK렌터카는 제3조1항 각 호에 규정된 방법 가운데 1가지 이상으로 당해 사항을 통지할 수 있습니다.
								② SK렌터카는 불특정다수 회원에 대한 통지의 경우 1주일이상 SK렌터카 게시판에 게시함으로써 개별 통지에 갈음할 수 있습니다.

								제8조 (서비스의 제공)
								① SK렌터카는 다음과 같은 업무를 수행합니다.
								- 차량 장기/단기 대여 및 법인차량관리 서비스
								② 본 조 1항의 서비스 이외에도 추가적인 서비스를 개발하여 회원에게 제공할 수 있습니다.

								제9조 (서비스의 변경 및 중단)
								① SK렌터카는 사업종목의 전환, 업체간의 통합, 사업폐지 불가피한 영업상의 이유 등으로 제공하는 서비스의 내용을 변경할 수 있습니다. 이 경우에는 변경된 서비스의 내용 및 제공일자를
								명시하여 현재의 서비스 내용을 게시한 곳에 그 제공일자 이전 30일 전부터 공지합니다. 단, 변동내용을 구체적으로 공지하기가 불가능한 경우에는 30일 전에 그 취지 및 공지가 불가능한
								변동사유를 현재의 서비스를 게시한 곳에 공지합니다.
								② SK렌터카는 다음 각 호의 1에 해당하는 사유가 발생한 경우 제8조에 명시된 서비스의 일부 또는 전부를 중단할 수 있습니다.
								1. 천재지변, 전쟁, 폭동, 화재, 파업 등 쟁의행위, 정부기관의 통제 기타 SK렌터카의 합리적인 노력으로 제어할 수 없는 사유가 발생하거나 발생할 우려가 있는 경우
								2. 기간통신사업자로부터 전기통신서비스가 제공되지 않은 경우
								3. SK렌터카가 시스템을 포함한 정보통신설비의 보수점검, 교체 또는 고장, 통신의 두절 등의 사유가 발생한 경우
								4. 서비스가 제3자와의 제휴를 통하여 제공되는 경우에 당해 제휴사업자의 사정에 따라 변경되거나 중지되는 경우
								5. 기타 SK렌터카의 원활한 운영을 현저히 저해하는 사유가 발생한 경우
								③ SK렌터카는 본 조 1항, 2항의 사유로 서비스 내용이 변경 또는 중단되는 경우 이로 인해 회원 또는 이용자가 입은 손해에 대해서는 고의 또는 과실이 없는 이상 배상하지 아니합니다.

								제10조 (구매신청)
								회원은 SK렌터카에서 다음 각 호의 절차에 따라 재화 또는 용역의 구매를 신청하며, SK렌터카는 재화 또는 용역의 성격에 따라 이러한 절차를 변경할 수 있으며, 이 경우 회원이 구매신청
								이전에 변경된 절차를 확인할 수 있도록 안내합니다.
								1. 구매자 정보(성명, E-mail, 전화번호, 주소 등)의 입력
								2. 재화 또는 용역의 선택
								3. 청약의 변경 또는 철회가 제한되는 서비스, 배송료, 설치비 등의 비용부담과 관련한 내용에 대한 확인
								4. 결제방법의 선택
								5. 재화 등의 구매신청 및 이에 관한 확인
								6. 기타 SK렌터카가 별도로 정하는 절차

								제11조 (계약의 성립)
								① SK렌터카는 제10조와 같은 구매신청에 대하여 다음 각 호의 1에 해당되면 승낙하지 않을 수 있습니다.
								1. 신청 내용에 허위, 기재누락, 오기가 있는 경우
								2. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우
								3. 기타 구매신청에 승낙하는 것이 SK렌터카의 기술상 또는 원활한 운영상 현저히 지장이 있다고 판단되는 경우
								② SK렌터카가 승낙한 시점에 계약이 성립한 것으로 봅니다.

								제12조 (지급방법)
								① SK렌터카에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각 호의 방법 중 결제 당시 SK렌터카가 가용할 수 있는 방법으로 합니다.
								1. 수령 시 대금지급
								2. 신용카드, 직불카드, 선불카드 등의 각종 카드결제
								3. 인터넷뱅킹, 폰뱅킹, 온라인 무통장 입금 등의 각종 계좌이체
								4. 기타 SK렌터카가 인정하는 방법
								② 위 제1항에도 불구하고, 차량 단기대여 서비스의 경우에는 대여요금 결제 시 신용카드 결제를 우선으로 하고, 현금으로 결제하는 경우 회사는 별도의 보증을 요구할 수 있으며 금융상의
								신용정보 조회에 대한 동의를 요구할 수 있습니다. 회원이 이에 동의하지 않거나 신용상태가 부적절하다고 판단되는 경우 대여가 불가능할 수 있습니다.

								제13조 (수신확인통지•구매신청 변경 및 취소)
								① SK렌터카는 회원의 구매신청이 있는 경우 회원에게 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시하고 수신확인통지를 합니다.
								② 수신확인통지를 받은 회원은 의사표시의 불일치 등이 있는 경우에는 수신확인 통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고, SK렌터카는 계약의 성립 전에 회원의 요청이
								있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다.
								③ SK렌터카는 회원이 구매 신청한 재화 또는 용역이 품절 또는 기타 부득이한 사유가 발생하여 재화 또는 용역의 제공이 불가능할 경우 이를 즉시 회원에게 통지하며, 당해 통지가 이루어진
								시점에 기존 구매계약은 취소된 것으로 봅니다.

								제14조 (청약철회 등)
								① SK렌터카와 재화 등의 구매에 관한 계약을 체결한 회원은 수신확인의 통지를 받은 날부터 7일 이내에는 청약의 철회를 할 수 있습니다. 다만, 자동차 장기대여 계약의 경우에는 해당
								계약에서 정하는 바에 따릅니다.
								② 회원은 재화 등을 배송 받은 경우 다음 각호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.
								1. 회원에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다)
								2. 회원의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우
								3. 시간의 경과에 의하여 재판매가 곤란할 정도로 재화 등의 가치가 현저히 감소한 경우
								4. 같은 성능을 지닌 재화 등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우
								③ 제2항에도 불구하고, 자동차 장기대여 계약은 소비자의 주문에따라 개별적으로 발주되는 자동차의 대여에 관한 것으로서 청약 철회 시 SK렌터카에 회복할 수 없는 피해가 발생하고 거래의
								안전이 위협받으므로 해당 계약에서 별도로 정하는 바에 따릅니다.


								제15조 (청약철회 등의 효과)
								① SK렌터카는 회원 또는 이용자로부터 재화 등을 반환 받은 경우 5영업일 이내에 이미 지급받은 재화 등의 대금을 환급합니다.
								② SK렌터카는 위 대금을 환급함에 있어서 회원이 신용카드 또는 전자화폐 등의 결제수단으로 재화 등의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의
								대금의 청구를 정지 또는 취소하도록 요청합니다.
								③ 청약철회 등의 경우 공급받은 재화 등의 반환에 필요한 비용은 회원이 부담합니다. 다만 재화 등의 내용이 표시•광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회 등을 하는 경우
								재화 등의 반환에 필요한 비용은 SK렌터카가 부담합니다.
								④ 제1항 내지 제3항의 규정에도 불구하고 자동차 장기대여 계약의 경우에는해당 계약서에서 정한 바에 따릅니다.

								제16조 (환급, 반품 및 교환)
								① SK렌터카는 회원이 구매 신청한 재화 또는 용역이 품절 등의 사유로 재화의 인도 또는 용역의 제공을 할 수 없을 때에는 지체 없이 그 사유를 회원에게 통지하고, 그 통지일로부터 3일
								이내에 계약해제 및 환급절차를 취합니다.
								② 다음 각 호의 경우에는 회원은 재화를 인도 받거나 용역을 제공 받은 날부터 20일 이내에 환급, 반품 또는 교환 청구를 할 수 있습니다.
								1. 배송된 재화와 용역이 주문내용과 상이하거나 SK렌터카가 제공한 정보와 상이할 경우
								2. 배송된 재화 또는 용역이 파손, 손상되었거나 오염되었을 경우
								3. 재화의 인도 또는 용역의 제공이 광고에 표시된 재화의 인도시기 또는 용역의 제공시기보다 늦어진 경우
								4. 관련법령에 의하여 광고에 표시하여야 할 사항을 표시하지 아니한 상태에서 회원의 청약이 이루어진 경우
								③ 회원은 본 조 2항의 규정에 의하여 상품이나 용역을 취소하는 경우에는 이미 제공받은 재화나 용역을 반환하여야 합니다.
								④ 제1항 내지 제3항의 규정에도 불구하고 자동차 장기대여 계약의 경우에는 해당 계약에서 정한 바에 따릅니다.

								제17조 (개인정보보호)
								① SK렌터카는 회원의 개인정보 수집 시 회원관리에 필요한 최소한의 정보만을 필수사항으로 수집하고 있으며, 최적화되고 고객지향적인 마케팅을 수행하기 위해 필요한 이외의 정보를 선택사항으로
								수집하고 있습니다. 회사는 개인정보 수집 시 다음 사항을 필수사항으로 하며 그 외 사항은 선택사항으로 합니다.
								② 회원은 SK렌터카에 제공한 등록정보와 관련하여 변경사항이 있는 경우에는 지체 없이 SK렌터카에 그 변경사실을 통지하여야 하며, 이를 위반하여 발생한 일체의 손해에 대하여 SK렌터카는
								어떠한 책임도 지지 않습니다.
								③ SK렌터카가 수집하는 개인 정보 및 항목은 서비스 변경이나 SK렌터카의 사정에 따라 변경 가능합니다. 이 경우 회원에게 변경사항을 약관 제3조 1항의 방법으로 통지하고 동의를 얻으며,
								별도의 약관 변경절차는 생략합니다.
								④ SK렌터카는 회원의 개인정보에 대한 개인정보처리(취급)방침을 공개하고, 그에 따라 개인정보보호 및 관리 정책을 운영하고 있습니다.
								⑤ 회원은 자신의 개인정보 처리와 관련된 자세한 내용을 홈페인지 첫 화면의 개인정보처리(취급)방침을 통해 확인할 수 있습니다.

								제18조 (회원의 ID 및 비밀번호에 대한 책임과 의무)
								① 회원의 ID와 비밀번호에 관한 관리책임은 회원에게 있으며, 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.
								② 회원이 자신의 ID 및 비밀번호를 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는 즉시 SK렌터카에 통보하고 SK렌터카의 안내가 있는 경우에는 그에 따라야 합니다.
								③ SK렌터카는 회원이 본 조 각항의 주의사항을 소홀히 하여 발생한 회원의 어떠한 불이익에 대하여도 책임을 지지 아니합니다.

								제19조 (회원의 의무)
								회원은 다음 각 호의 1에 해당하는 행위를 하여서는 안됩니다.
								1. 서비스 이용 관련 제반 신청행위 또는 변경행위 시 허위내용 기재행위
								2. SK렌터카에 게시된 각종 정보의 무단 변경, 삭제 등 훼손행위
								3. SK렌터카가 허용한 정보 이외의 다른 정보(컴퓨터 프로그램 및 광고 등)를 송신하거나 게시하는 행위
								4. SK렌터카 기타 제3자의 저작권 등 지적재산권에 대한 침해행위
								5. SK렌터카 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
								6. 외설 또는 폭력적인 메시지•화상•음성 기타 공서 양속에 반하는 정보를 SK렌터카 통합사이트에 공개 또는 게시하는 행위

								제20조 (피연결회사와 SK렌터카의 책임)
								SK렌터카 통합사이트와 다른 피연결회사(회사의 서비스 화면과 링크 등으로 연결된 사이트를 운영하는 회사를 말합니다)는 독자적으로 운영되며, SK렌터카는 회원과 피 연결회사간에 이루어진
								일체의 거래에 대해서 어떠한 책임도 지지 않습니다.

								제21조 (저작권의 귀속 및 이용제한)
								① SK렌터카가 작성한 저작물에 대한 저작권 기타 지적재산권은 SK렌터카에 귀속합니다.
								② 회원은 SK렌터카를 이용함으로써 얻은 정보를 SK렌터카의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는
								안됩니다.

								제22조 (공개게시물의 삭제)
								회원의 공개게시물의 내용이 다음 각 호에 해당되는 경우 SK렌터카는 회원에게 사전 통지 없이 공개게시물을 삭제할 수 있고 해당 회원의 회원 자격을 제한 및 정지 또는 상실시킬 수
								있습니다.
								1. 회사, 다른 회원 또는 제 3자를 비방하거나 중상 모략으로 명예를 손상시키는 내용인 경우
								2. 공서양속에 위반하는 내용의 정보, 문장, 도형 등의 유포에 해당하는 경우
								3. 범죄행위와 관련이 있다고 판단되는 내용인 경우
								4. 회사의 저작권, 제 3자의 저작권 등 기타 권리를 침해하는 내용인 경우
								5. 불필요하거나 승인되지 않은 광고, 판촉물을 게재하는 경우
								6. 동일한 내용을 중복하여 다수 게시하는 등 게시의 목적에 어긋나는 경우
								7. 기타 관계법령 및 회사의 지침 등에 위배된다고 판단되는 경우

								제23조 (분쟁해결)
								① SK렌터카는 회원이 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 SK렌터카 고객센터를 설치•운영합니다.
								② SK렌터카는 회원으로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 회원께 그 사유와 처리일정을 즉시 통보해 드립니다.

								제24조 (손해배상)
								① SK렌터카는 회원에게 제공되는 서비스와 관련하여 회원에게 어떠한 손해가 발생하더라도 동 손해가 회사의 고의 또는 과실에 의한 경우를 제외하고 이에 대하여 책임을 부담하지 않습니다.
								② 회원이 서비스를 이용함에 있어 행한 불법행위나 본 약관 위반행위로 인하여 회사가 당해 회원 이외의 제3자로부터 손해배상 청구 또는 소송을 비롯한 각종 이의제기를 받는 경우 당해 회원은
								자신의 책임과 비용으로 회사를 면책시켜야 하며, 회사가 면책되지 못한 경우 당해 회원은 그로 인하여 회사에 발생한 모든 손해를 배상하여야 합니다.

								제25조 (면책사항)
								① 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.
								② 회사는 회원의 귀책사유로 인한 서비스의 이용장애에 대하여 책임을 지지 않습니다.
								③ 회사는 회원 상호간 또는 회원과 제3자 상호간에 서비스를 매개로 발생한 분쟁에 대해서는 개입할 의무가 없으며 이로 인한 손해를 배상할 책임도 없습니다.

								제26조 (준거법 및 합의관할)
								① 본 약관에서 정하지 않은 사항과 본 약관의 해석에 관하여는 대한민국법 및 상관례에 따릅니다.
								② 본 약관 중 회원의 구매신청에 따라 체결되는 개별•구체적인 구매계약서에 배치되는 사항에 대하여는 해당 구매계약서가 본 약관보다 우선합니다.
								③ 본 약관 중 자동차 장기대여계약 이용약관에 배치되는 사항에 대하여는 자동차 장기대여계약 이용약관이 본 약관보다 우선합니다.
								④ 본 약관 중 SK렌터카 멤버십 서비스 이용약관에 배치되는 사항에 대하여는 본 약관이 우선합니다.
								⑤ SK렌터카 서비스 및 본 약관과 관련한 제반 분쟁 및 소송은 제소 당시의 회원의 주소에 의하고, 회원의 주소가 불분명한 경우에는 민사소송법상의 관할법원에서 제기합니다.

								[부칙]
								본 약관은 2018년 3월 14일부터 시행됩니다.
							</p>
						</td>
					</tr>
				</tbody>
			</table>
			<table class="table table-bordered col-sm-8">
				<thead>
					<tr>
						<th>
							<div class="form-check-inline">
								<label class="form-check-label">
									<input type="checkbox" class="form-check-input" id="req2" name="chk" required="required"/>개인정보 수집, 이용안내
									<span class="text-danger">(필수)</span>
								</label>
							</div>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<div class="overflow-auto p-3" style="max-height: 100px">
								<table class="table table-bordered">
									<thead class="table-secondary">
										<tr>
											<th>구분</th>
											<th>수집항목</th>
											<th>이용목적</th>
											<th>보유기간</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												<p>필수</p>
											</td>
											<td>
												<p>성명, 생년월일, 아이디(ID),</p>
												<p> 비밀번호(PW),CI(암호화된 개인식별정보)</p>
												<p>DI(중복확인정보), 성별, 휴대폰번호</p>
											</td>
											<td>
												<p>- 회원제 서비스 이용에 따른</p>
												<p>본인식별절차에 이용</p>
											</td>
											<td>회원탈퇴시까지</td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<table class="table col-sm-8 border">
				<thead>
					<tr>
						<th>
							<div class="form-check-inline">
								<label class="form-check-label">
									<input type="checkbox" class="form-check-input" id="req3" name="chk" required="required"/>개인정보 수집, 이용안내<span class="text-danger">(필수)</span>
								</label>
							</div>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<div class="overflow-auto p-3" style="max-height: 100px">
								<table class="table table-bordered">
									<thead class="table-secondary">
										<tr>
											<th>활용항목</th>
											<th>이용목적</th>
											<th>보유 및 이용기간</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												<p>휴대폰번호, 이메일</p>
											</td>
											<td>
												<p>─ 렌터카 관련 프로모션 안내</p>
												<p>─ 렌터카 관련 신제품 및 신규서비스 안내</p>
												<p>─ 기타 광고성 정보 전송 </p>
											</td>
											<td>
												<p>회원 탈퇴</p>
												<p>또는</p>
												<p>동의 철회시까지</p>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<br>
			<div class="container col-sm-8">
				<button class="row btn btn-primary btn-block" type="button" id="agreeCheck">약관 동의 및 회원가입</button><!--='location.href="/user/register"  -->
			</div>
		</form>
	</div>
</article>