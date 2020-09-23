package shop.carrental.domain;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeDTO {

	private Long seq;
	private int count, good, bad;
	private String title, writer, content, category;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date register_date, update_date;

}