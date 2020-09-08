package shop.carrental.customerService.domain;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeDTO {

	private long seq;
	private int count, likeIt;
	private String title, writer, content;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date regDate;

}