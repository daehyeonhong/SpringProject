package shop.carrental.domain;

import java.util.Date;

import org.springframework.stereotype.Service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Service
@ToString
@Setter
public class KakaoPayApprovalVO {

	private Long reserve_seq;

	private String aid, tid, cid, sid, partner_order_id, partner_user_id, payment_method_type;

	private AmountVO amount;

	private CardVO card_info;

	private String item_name, item_code, payload;

	private Integer quantity, tax_free_amount, vat_amount;

	private Date created_at, approved_at;

}