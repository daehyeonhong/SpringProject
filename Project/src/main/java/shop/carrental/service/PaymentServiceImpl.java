package shop.carrental.service;

import java.net.URI;
import java.net.URISyntaxException;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.KakaoPayApprovalVO;
import shop.carrental.domain.KakaoPayReadyVO;
import shop.carrental.domain.ReserveVO;

@Service
@Log4j
public class PaymentServiceImpl implements PaymentService {
	private static final String HOST = "https://kapi.kakao.com";

	private KakaoPayReadyVO kakaoPayReadyVO;
	private KakaoPayApprovalVO kakaoPayApprovalVO;

	@Override
	public String kakaoPay(ReserveVO vo) {
		log.info("KakaoPay :: ==> " + vo);

		RestTemplate restTemplate = new RestTemplate();

		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK " + "d1eab6dd51025f134bc8db1c267b4fa8");
		headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
		headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");

		MultiValueMap<String, String> parameters = new LinkedMultiValueMap<String, String>();
		String users_id = vo.getUsers_id();
		String item_name = vo.getCar_model() + vo.getTrim_name();
		String total_amount = Integer.toString(vo.getTotal_amount() * 100);
		parameters.add("cid", "TC0ONETIME");
		parameters.add("partner_order_id", "1001");
		parameters.add("partner_user_id", users_id);
		parameters.add("item_name", item_name);
		parameters.add("quantity", "4");
		parameters.add("total_amount", total_amount);
		parameters.add("tax_free_amount", "0");
		parameters.add("approval_url", "http://localhost:8181/payment/kakaoPaySuccess");
		parameters.add("cancel_url", "http://localhost:8181/payment/kakaoPayCancel");
		parameters.add("fail_url", "http://localhost:8181/payment/kakaoPaySuccessFail");
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

	@Override
	public KakaoPayApprovalVO kakaoPayInfo(String pg_token, ReserveVO vo) {
		log.info("kakaoPayInfo :: ");
		log.info(vo);

		RestTemplate restTemplate = new RestTemplate();

		HttpHeaders headers = new HttpHeaders();

		headers.add("Authorization", "KakaoAK " + "d1eab6dd51025f134bc8db1c267b4fa8");
		headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
		headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
		String total_amount = Integer.toString(vo.getTotal_amount() * 100);

		MultiValueMap<String, String> parameters = new LinkedMultiValueMap<String, String>();

		parameters.add("cid", "TC0ONETIME");
		parameters.add("tid", kakaoPayReadyVO.getTid());
		parameters.add("partner_order_id", "1001");
		parameters.add("partner_user_id", vo.getUsers_id());
		parameters.add("pg_token", pg_token);
		parameters.add("total_amount", total_amount);

		HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(parameters,
				headers);

		try {
			kakaoPayApprovalVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body,
					KakaoPayApprovalVO.class);

			log.info("" + kakaoPayApprovalVO);

			return kakaoPayApprovalVO;
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}

		return null;
	}

}
