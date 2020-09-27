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

	private Long notice_seq;

	private String notice_type, notice_title, notice_writer, notice_content;

	private int notice_count, notice_good, notice_bad;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date notice_reg_date, notice_update;

}