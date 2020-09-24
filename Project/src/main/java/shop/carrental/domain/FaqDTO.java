package shop.carrental.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class FaqDTO {

	private Long faq_seq;

	private String faq_type, faq_title, faq_content;

	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date faq_reg_date, faq_update;

}