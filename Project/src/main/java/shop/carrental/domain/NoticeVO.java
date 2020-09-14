package shop.carrental.domain;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeVO {

	private int notice_seq, count, like_it, category;
	private String title, writer_id, content;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date reg_date, update_date;

}