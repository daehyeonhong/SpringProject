package shop.carrental.mapper;

import org.apache.ibatis.annotations.Select;
import shop.carrental.model.UserVO;

public interface UserMapper {

	@Select("SELECT id FROM users WHERE id='admin'")
	public String getAdmin();

}