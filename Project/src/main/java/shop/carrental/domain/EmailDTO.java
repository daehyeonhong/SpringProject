package shop.carrental.domain;

import lombok.ToString;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@ToString
public class EmailDTO {

	private String senderName, senderMail, receiveMail, subject, message;

}