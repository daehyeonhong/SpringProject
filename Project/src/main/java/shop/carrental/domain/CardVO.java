package shop.carrental.domain;

import org.springframework.stereotype.Service;
import lombok.Getter;
import lombok.ToString;

@Getter
@Service
@ToString
public class CardVO {

	private String purchase_corp, purchase_corp_code, issuer_corp, issuer_corp_code, bin, card_type, install_month,
			approved_id, card_mid, interest_free_install, card_item_code;

}