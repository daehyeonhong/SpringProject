package shop.carrental.service;

import java.net.URI;
import java.net.URISyntaxException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.KakaoPayReadyVO;
import shop.carrental.domain.PaymentDTO;

@Log4j
public class KakaoPay {

	@Setter(onMethod_ = @Autowired)
	private KakaoPayReadyVO kakaoPayReadyVO;

	private static final String HOST = "https://kapi.kakao.com";

	public String kakaoPayReady(PaymentDTO dto) {
		RestTemplate restTemplate = new RestTemplate();

		log.info(dto);
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK " + "d1eab6dd51025f134bc8db1c267b4fa8");
		headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
		headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
		MultiValueMap<String, String> parameters = new LinkedMultiValueMap<String, String>();
		parameters.add("cid", "TC0ONETIME");
		parameters.add("partner_order_id", "1001");
		parameters.add("partner_user_id", "gorany");
		parameters.add("item_name", "갤럭시S9");
		parameters.add("quantity", "1");
		parameters.add("total_amount", "2100");
		parameters.add("tax_free_amount", "100");
		parameters.add("approval_url", "http://localhost:8181/kakaoPaySuccess");
		parameters.add("cancel_url", "http://localhost:8181/kakaoPayCancel");
		parameters.add("fail_url", "http://localhost:8181/kakaoPaySuccessFail");
		HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(parameters,
				headers);
		try {
			kakaoPayReadyVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body,
					KakaoPayReadyVO.class);
			log.info(kakaoPayReadyVO);

			return kakaoPayReadyVO.getNext_redirect_pc_url();
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return "/pay";

	}

}