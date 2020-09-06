package shop.carrental.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import shop.carrental.model.UserVO;
import shop.carrental.user.domain.UserDTO;

public interface UserMapper {

	@Select("SELECT*FROM users WHERE id=#{id}")
	public UserVO getAdmin(String id);

	@Insert("INSERT INTO test_user(user_seq,id,password,name,email,birth_date,licence)VALUES(user_seq.NEXTVAL,#{id},#{password},#{name},#{email},#{birth_date},#{licence});")
	public void insertUser(UserDTO user);

	@Select("SELECT COUNT(*)FROM test_user WHERE id=#{user.id}")
	public boolean login(UserDTO user);

}