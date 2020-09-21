package shop.carrental.domain;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CustomerInquiryVO {

	private Long seq;
	private String email, title, content;
	private int privacy;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date register_date, update_date;

}