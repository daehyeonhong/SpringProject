package shop.carrental.service;

import shop.carrental.domain.KakaoPayApprovalVO;
import shop.carrental.domain.ReserveVO;

public interface PaymentService {

	public String kakaoPay(ReserveVO vo);

	public KakaoPayApprovalVO kakaoPayInfo(String pg_token, ReserveVO vo);

}