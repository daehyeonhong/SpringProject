package shop.carrental.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AnswerDTO {

	/* 문의 답변 */
	private Long answer_seq;

	private String answer_title, answer_writer, answer_content;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date answer_reg_date, answer_update;

}