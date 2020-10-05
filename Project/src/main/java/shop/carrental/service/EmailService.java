package shop.carrental.service;

import shop.carrental.domain.EmailDTO;

public interface EmailService {

	public String sendRegisterEmail(EmailDTO dto);

	public String searchId(EmailDTO dto);

}