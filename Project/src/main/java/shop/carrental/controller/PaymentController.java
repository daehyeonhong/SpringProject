package shop.carrental.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.ReserveVO;
import shop.carrental.service.PaymentService;

@Log4j
@Controller
@RequestMapping("/payment/*")
public class PaymentController {

	@Setter(onMethod_ = @Autowired)
	private PaymentService paymentService;

	@GetMapping("/kakaoPay")
	public void kakaoPay() {
		log.info("kakaoPay");
	}

	@PostMapping("/kakaoPay")
	public String kakaoPayResult(@ModelAttribute("vo") ReserveVO vo) {
		log.info("kakaoPay");

		log.info(vo);

		return "redirect:" + paymentService.kakaoPay(vo);
	}

	@GetMapping("/kakaoPaySuccess")
	public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, @RequestAttribute("vo") ReserveVO vo,
			Model model) {
		log.info("kakaoPaySuccess :: pg_token ==> " + pg_token);

		model.addAttribute("info", paymentService.kakaoPayInfo(pg_token, vo));
	}

}