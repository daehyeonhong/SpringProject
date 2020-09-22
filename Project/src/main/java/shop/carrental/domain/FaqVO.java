package shop.carrental.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FaqVO {

	private Long seq;
	private int type;/* 공통 0, 다이렉트 1, 장기 2, 단기 3, 전기차 4 */
	private String title, content;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date register_date, update_date;

}