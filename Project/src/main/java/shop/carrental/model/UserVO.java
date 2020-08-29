package shop.carrental.model;

import org.springframework.stereotype.Component;
import lombok.Data;

@Component
@Data
public class UserVO {

	private String id, password, name, role;

}