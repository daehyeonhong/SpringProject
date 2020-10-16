package shop.carrental.domain;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class KakaoPayReadyVO {

	private String tid, next_redirect_pc_url;

	private Date created_at;

}