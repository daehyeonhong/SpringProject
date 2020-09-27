package shop.carrental.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class InquiryDTO {

	private Long inquiry_seq;

	private int inquiry_type;

	private String inquiry_title, inquiry_content, users_id;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date inquiry_reg_date, inquiry_update;

}