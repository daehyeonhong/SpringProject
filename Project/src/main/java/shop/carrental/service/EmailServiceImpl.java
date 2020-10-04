package shop.carrental.service;

import java.io.UnsupportedEncodingException;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.EmailDTO;
import shop.carrental.util.Authenticode;

@Service
@Log4j
@AllArgsConstructor
public class EmailServiceImpl implements EmailService {

	private JavaMailSender javaMailSender;

	@Override
	public String sendRegisterEmail(EmailDTO dto) {
		log.info(dto);
		dto.setSenderName("TT렌터카");
		String authenticode = new Authenticode().authenticode();
		try {
			MimeMessage message = javaMailSender.createMimeMessage();
			message.addRecipient(RecipientType.TO, new InternetAddress(dto.getReceiveMail()));

			message.addFrom(new InternetAddress[] { new InternetAddress(dto.getSenderMail(), dto.getSenderName()) });

			message.setSubject("TT렌터카 가입 확인 메일");
			message.setText("인증을 위해 다음 메시지를 입력하세요 ==> " + authenticode);
			javaMailSender.send(message);
		} catch (MessagingException | UnsupportedEncodingException e) {
			e.printStackTrace();
			return null;
		}
		return authenticode;
	}

}