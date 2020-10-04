package shop.carrental.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.EmailDTO;
import shop.carrental.service.EmailService;

@Log4j
@RestController
@RequestMapping("/mail/*")
@AllArgsConstructor
public class MailController {

	private EmailService emailService;

	@PostMapping(value = "/register/{domain}/{email}")
	public ResponseEntity<String> register(@PathVariable("domain") String domain, @PathVariable("email") String email) {
		log.info("sendEmail");

		EmailDTO dto = new EmailDTO();
		dto.setReceiveMail(email + "@" + domain);
		return new ResponseEntity<String>(emailService.sendRegisterEmail(dto), HttpStatus.OK);
	}

}