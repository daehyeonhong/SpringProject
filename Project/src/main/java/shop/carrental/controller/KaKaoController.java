package shop.carrental.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import shop.carrental.service.KakaoPay;

@Log4j
@Controller
public class KaKaoController {

	@Setter(onMethod_ = @Autowired)
	private KakaoPay kakaoPay;

	@GetMapping("/kakaoPay")
	public void kakaoPay() {
		log.info("kakaoPay");
	}

	@PostMapping("/kakaoPay")
	public String kakaoPayResult(int a) {
		log.info("kakaoPay");

		return "redirect:" + kakaoPay.kakaoPayReady(a);
	}

	@GetMapping("/kakaoPaySuccess")
	public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
		log.info("kakaoPaySuccess :: pg_token ==> " + pg_token);
	}

}