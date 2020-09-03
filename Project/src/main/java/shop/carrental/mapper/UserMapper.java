package shop.carrental.mapper;

import org.apache.ibatis.annotations.Select;
import shop.carrental.model.UserVO;

public interface UserMapper {

	@Select("SELECT*FROM users WHERE id=#{id}")
	public UserVO getAdmin(String id);

}