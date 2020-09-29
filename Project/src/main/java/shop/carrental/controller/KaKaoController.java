package shop.carrental.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.PaymentDTO;
import shop.carrental.service.KakaoPay;

@Log4j
@Controller
@RequestMapping("kakaoPay")
public class KaKaoController {

	private KakaoPay kakaoPay;

	@PostMapping("/short")
	public String kakaoPayShort(PaymentDTO dto) {
		log.info("kakaoPay");
		log.info(dto);

		return "redirect:" + kakaoPay.kakaoPayReady(dto);
	}

	@GetMapping("/kakaoPaySuccess")
	public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
		log.info("kakaoPaySuccess :: pg_token ==> " + pg_token);
	}

}